{*******************************************************}
{                                                       }
{       ��Ȩ���� (C) 2018 �����Ƽ�                      }
{                                                       }
{       Author: EvanChen 2018-08-20 16:24:34            }
{*******************************************************}

unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB,Controls,Vcl.Forms,Winapi.ActiveX;

type
  TDM = class(TDataModule)
    conHAIMIS: TADOConnection;
    qryStaff: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    //�ж��Ƿ�������״̬�������Ͽ�����ʵ���Զ�����
    function IsConnected: Boolean;
    //���ݿ�����
    procedure ConnectDB();

    procedure ShowDbSetting(vHasConfig: Boolean);

    procedure LoadBasicData;

  public
    { Public declarations }
  end;


var
  DM: TDM;

const CONN_NIMIS_STR = 'Provider=SQLOLEDB.1;Persist Security Info=True;Data Source=%s'+
                   ';Initial Catalog=%s;User ID=%s;Password=%s';
implementation
uses
  uDataSourceInfo, ufrmDBSetting;



{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.ConnectDB;
var
  frm: TfrmDBSetting;
begin
  conHAIMIS.Connected := False;
  conHAIMIS.ConnectionString := Format(CONN_NIMIS_STR,[NIMISDB_Host,NIMISDB_DbName,NIMISDB_DbUser,NIMISDB_DbPwd]);
  try
    conHAIMIS.Connected := True;
  except
    ShowDbSetting(True);
  end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  FormatSettings.DateSeparator := '-';
  FormatSettings.ShortDateFormat := 'yyyy-mm-dd';
  DBIniFileName := ExtractFilePath(ParamStr(0)) + '\DBConnect.ini';
  if FileExists(DBIniFileName) then
  begin
    //��ȡNIMIS���ݿ�����
    ReadDbConnectInfo(NIMISDB_SECTION,NIMISDB_Host,NIMISDB_DbName,NIMISDB_DbUser,NIMISDB_DbPwd);
    //�������ݿ�
    ConnectDB();
  end
  else
  begin
    ShowDbSetting(False);
  end;

end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  conHAIMIS.Connected := False;
end;

function TDM.IsConnected: Boolean;
begin
  Result := conHAIMIS.Connected;
end;

procedure TDM.LoadBasicData;
begin
  qryStaff.Open;
end;

procedure TDM.ShowDbSetting(vHasConfig: Boolean);
var
  frm: TfrmDBSetting;
begin
  frm := TfrmDBSetting.Create(nil);
  try
    if vHasConfig then
    begin
      frm.edtHost.Text := NIMISDB_Host;
      frm.edtDatabase.Text := NIMISDB_DbName;
      frm.edtUsername.Text := NIMISDB_DbUser;
      frm.edtPwd.Text := NIMISDB_DbPwd;
    end
    else
      frm.lbl1.Caption := '���������ݿ����ӣ�' ;
      frm.ShowModal;
    if frm.ModalResult <> mrOk then
    begin
      Application.Terminate;
    end;
    //�������ݿ�
    ConnectDB();
  finally
    frm.Free;
  end;
end;

initialization
DM := TDM.Create(nil);

finalization
DM.Free


end.
