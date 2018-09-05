{*******************************************************}
{                                                       }
{       版权所有 (C) 2018 恒明科技                      }
{                                                       }
{       Author: EvanChen 2018-08-25 14:10:33            }
{*******************************************************}

unit uUser;

interface
uses
  System.SysUtils,Vcl.Imaging.jpeg,ADODB,DB,uDM,uDES;

type
  TUser = class(TObject)
  private
    FUserID: Integer;
    FUserCode: string;
    FUserName: string;
    FDeptId: Integer;
    FUserImage: TJPEGImage;
    FSystemSkin: string;
    FStaffKey: string;
    FStaffName: string;
    FJob: string;
    FTitle: string;
    FClinicNo: string;
    FInpNo: string;
    FTel: string;
    FQQ: string;
    FWeiXin: string;
    FEmail: string;
    qryUserAction: TADOQuery;
    procedure InitUser;

  protected

  public

    qryUserDept: TADOQuery;

    constructor Create(AUserID: Integer);
    destructor Destroy; override;
    property UserID: Integer read FUserID;
    property UserCode: string read FUserCode;
    property UserName: string read FUserName;
    property StaffKey: string read FStaffKey;
    property DeptId: Integer read FDeptId;
    property UserImage: TJPEGImage read FUserImage write FUserImage;
    property SystemSkin: string read FSystemSkin write FSystemSkin;
    property StaffName: string read FStaffName;
    property Job: string read FJob write FJob;
    property Title: string read FTitle write FTitle;
    property ClinicNo: string read FClinicNo;
    property InpNo: string read FInpNo;
    property Tel: string read FTel write FTel;
    property QQ: string read FQQ write FQQ;
    property WeiXin: string read FWeiXin write FWeiXin;
    property Email: string read FEmail write FEmail;
    //修改密码
    function ChangePwd(AoldPwd,ANewPwd: string): Boolean;
    //更改头像
    function ChangeImage(): Boolean;
    //更改界面风格
    function ChangeSystemSkin(ASystemSkin: string): Boolean;
    //更改用户其他资料
    function ChangeOtherInfo: Boolean;

    //权限验证
    function HasAction(AModuleActionCode: string): Boolean;

    //是否拥有某个模块
    function HasModule(AModuleCode: string): Boolean;
  end;

var
  LoginUser: TUser;

implementation

{ TUser }

function TUser.ChangeImage: Boolean;
begin

end;

function TUser.ChangeOtherInfo: Boolean;
begin

end;

function TUser.ChangePwd(AoldPwd, ANewPwd: string): Boolean;
var
  vQry: TADOQuery;
  vOldPwd,vNewPwd: string;
begin
  Result := False;
  vQry := TADOQuery.Create(nil);
  try
    vQry.SQL.Text := 'select pwd,user_id from t_user where user_id = ' + IntToStr(FUserID);
    vQry.Open;
    vOldPwd := vQry.FieldByName('pwd').AsString;
    if vOldPwd <> '' then
      vOldPwd := string(uDES.DESDecryptStrFromHex(AnsiString(vOldPwd),AnsiString('USER_CODE')));
    if AoldPwd <> vOldPwd then
    begin
      //提示旧密码不对
      Exit;
    end
    else begin
      vNewPwd := '';
      if ANewPwd <> '' then
        vNewPwd := string(uDES.DESEncryptStr(AnsiString(ANewPwd),AnsiString('USER_CODE')));
      vQry.Edit;
      vQry.FieldByName('pwd').AsString := vNewPwd;
      vQry.Post;
    end;
  finally
    vQry.Free;
  end;
  Result := True;
end;

function TUser.ChangeSystemSkin(ASystemSkin: string): Boolean;
begin

end;

constructor TUser.Create(AUserID: Integer);
begin
  FUserID := AUserID;
  qryUserDept := TADOQuery.Create(nil);
  qryUserAction := TADOQuery.Create(nil);
  qryUserDept.Connection := DM.conHAIMIS;
  qryUserAction.Connection := DM.conHAIMIS;
  qryUserDept.LockType := ltReadOnly;
  qryUserAction.LockType := ltReadOnly;
  InitUser;
end;

destructor TUser.Destroy;
begin
  qryUserDept.Free;
  qryUserAction.Free;
end;

function TUser.HasAction(AModuleActionCode: string): Boolean;
begin
  Result := qryUserAction.Locate('MODULE_ACTION_CODE',AModuleActionCode,[loCaseInsensitive]);
end;

function TUser.HasModule(AModuleCode: string): Boolean;
begin
  Result := qryUserAction.Locate('MODULE_CODE',AModuleCode,[loCaseInsensitive]);
end;

procedure TUser.InitUser;
var
  vQuery: TADOQuery;
begin
  vQuery := TADOQuery.Create(nil);
  vQuery.Connection := DM.conHAIMIS;
  try
    vQuery.SQL.Text :=
      'SELECT a.USER_ID,' +
      '       a.USER_CODE,' +
      '       a.USER_NAME,' +
      '       a.DEPT_ID,' +
      //'       a.USER_IMAGE,' +
      '       a.SYSTEM_SKIN,' +
      '       b.STAFF_KEY,' +
      '       b.STAFF_NAME,' +
      '       b.CLINIC_NO,' +
      '       b.INP_NO,' +
      '       b.HAI_JOB,' +
      '       b.HAI_TITLE,' +
      '       b.TEL,' +
      '       b.QQ,' +
      '       b.WEIXIN,' +
      '       b.EMAIL ' +
      'FROM   T_User A ' +
      '  LEFT JOIN T_STAFF B ON a.STAFF_KEY = b.STAFF_KEY ' +
      'WHERE a.USER_ID =' + IntToStr(FUserID);
    vQuery.Open;
    FUserCode := vQuery.FieldByName('USER_CODE').AsString;
    FUserName := vQuery.FieldByName('USER_NAME').AsString;
    FDeptId := vQuery.FieldByName('DEPT_ID').AsInteger;
    //FUserImage := vQuery.FieldByName('USER_IMAGE').AsString;
    FSystemSkin := vQuery.FieldByName('SYSTEM_SKIN').AsString;
    FStaffKey := vQuery.FieldByName('STAFF_KEY').AsString;
    FStaffName := vQuery.FieldByName('STAFF_NAME').AsString;
    FClinicNo := vQuery.FieldByName('CLINIC_NO').AsString;
    FInpNo := vQuery.FieldByName('INP_NO').AsString;
    FJob := vQuery.FieldByName('HAI_JOB').AsString;
    FTitle := vQuery.FieldByName('HAI_TITLE').AsString;
    FTel := vQuery.FieldByName('TEL').AsString;
    FQQ := vQuery.FieldByName('QQ').AsString;
    FWeiXin := vQuery.FieldByName('WEIXIN').AsString;
    FEmail := vQuery.FieldByName('EMAIL').AsString;

    //获取用户相关科室
    qryUserDept.Close;
    qryUserDept.SQL.Text := 'select * from V_USER_DEPT where user_id = ' + IntToStr(FUserID);
    qryUserDept.Open;
    //获取用户操作权限
    qryUserAction.Close;
    qryUserAction.SQL.Text := 'select * from V_USER_ALL_ACTION where user_id = ' + IntToStr(FUserID);
    qryUserAction.Open;
  finally
    vQuery.Free;
  end;
end;

end.
