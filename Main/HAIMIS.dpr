program HAIMIS;

uses
  Vcl.Forms,
  Winapi.ActiveX,
  ufrmLogin,
  ufrmMain in 'ufrmMain.pas' {frmMain},
  uLoadDll in 'uLoadDll.pas';

{$R *.res}


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  if not UserLoin then
    Application.Terminate;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
