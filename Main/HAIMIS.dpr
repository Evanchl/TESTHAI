program HAIMIS;

uses
  Vcl.Forms,
  Winapi.ActiveX,
  ufrmLogin,
  ufrmMain in 'ufrmMain.pas' {frmMain},
  uLoadDll in 'uLoadDll.pas',
  ufrmHome in 'ufrmHome.pas' {frmHome};

{$R *.res}


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  if not UserLoin then
    Application.Terminate;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmHome, frmHome);
  Application.Run;
end.
