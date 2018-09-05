{*******************************************************}
{                                                       }
{       版权所有 (C) 2018 恒明科技                      }
{                                                       }
{       Author: EvanChen 2018-08-24 11:38:48            }
{*******************************************************}

unit ufrmDBSetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,Data.Win.ADODB;

type
  TfrmDBSetting = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edtHost: TEdit;
    lbl3: TLabel;
    edtDatabase: TEdit;
    lbl4: TLabel;
    edtUsername: TEdit;
    lbl5: TLabel;
    edtPwd: TEdit;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uDM, uDataSourceInfo;

{$R *.dfm}

procedure TfrmDBSetting.btn1Click(Sender: TObject);
var
  conn: TADOConnection;
begin
  conn := TADOConnection.Create(nil);
  try
    conn.LoginPrompt := False;
    conn.ConnectionString := Format(CONN_NIMIS_STR,[trim(edtHost.Text),trim(edtDatabase.Text),trim(edtUsername.Text),trim(edtPwd.Text)]);
    try
      conn.Connected := True;
      NIMISDB_Host := trim(edtHost.Text);
      NIMISDB_DbName := trim(edtDatabase.Text);
      NIMISDB_DbUser := trim(edtUsername.Text);
      NIMISDB_DbPwd := trim(edtPwd.Text);
      WriteDbConnectInfo(NIMISDB_SECTION,NIMISDB_Host,NIMISDB_DbName,NIMISDB_DbUser,NIMISDB_DbPwd);
      Self.ModalResult := mrOk;
    except
       ShowMessage('连接失败');
      Exit();
    end;
  finally
    conn.Free;
  end;

end;

end.
