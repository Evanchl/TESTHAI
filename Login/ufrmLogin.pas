{*******************************************************}
{                                                       }
{       版权所有 (C) 2018 恒明科技                      }
{                                                       }
{       Author: EvanChen 2018-08-25 15:46:15            }
{*******************************************************}

unit ufrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, RzLabel,uDM,uDES,
  Vcl.Mask, RzEdit,ADODB, cxClasses, dxServerModeData, dxServerModeADODataSource,ufrmBase,uComm;

type
  TfrmLogin = class(TfrmBase)
    edtUserCode: TRzEdit;
    edtPwd: TRzEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    btnLogin: TRzButton;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function UserLoin: Boolean;

implementation

uses
  uUser;

{$R *.dfm}

function UserLoin: Boolean;
var
  frm: TfrmLogin;
begin
  Result := False;
  frm := TfrmLogin.Create(nil);
  try
    if frm.ShowModal = mrOk then
      Result := True;
  finally
    frm.Free;
  end;
end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
var
  vQry: TADOQuery;
  vUserCode,vPwd,vLoingPwd: string;
begin
  vUserCode := Trim(edtUserCode.Text);
  vLoingPwd := Trim(edtPwd.Text);
  if vUserCode = '' then
  begin
    //提示用户名不能为空
    Exit;
  end;
  vQry := TADOQuery.Create(nil);
  try
    vQry.Connection := DM.conHAIMIS;
    vQry.SQL.Text := 'select user_id,pwd from t_user where ENABLE_FLAG =''Y'' and user_code = '+ QuotedStr(vUserCode);
    vQry.Open;
    if vQry.RecordCount = 0 then
    begin
      ShowMessage('您输入的用户编号不正确！请重输...');
      edtUserCode.SetFocus;
      Exit;
    end;
    vPwd := vQry.FieldByName('pwd').AsString;
    if vPwd <> '' then
      vPwd := string(uDES.DESDecryptStrFromHex(AnsiString(vPwd),AnsiString('USER_CODE')));
    if vLoingPwd <> vPwd then
    begin
      //提示旧密码不对
      Application.MessageBox(pchar('您输入的密码不正确，请重新输入密码！'), '错误信息', 48);
      edtPwd.SetFocus;
      Exit;
    end;
    LoginUser := TUser.Create(vQry.FieldByName('USER_ID').AsInteger);
  finally
    vQry.Free;
  end;
  //登录成功加载基础数据
  CreateBaseDataCache;
  //加载用户权限
  ModalResult := mrOk;
end;

end.
