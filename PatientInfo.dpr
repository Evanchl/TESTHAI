{*******************************************************}
{                                                       }
{       版权所有 (C) 2018 恒明科技                      }
{                                                       }
{       Author: EvanChen 2018-08-22 22:44:57            }
{*******************************************************}

library PatientInfo;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  System.SysUtils,
  System.Classes,
  Windows,
  Controls,
  Forms,
  Dialogs,Winapi.ActiveX,
  ufrmPatientInfo in 'PatientInfo\ufrmPatientInfo.pas' {frmPatientInfo};

{$R *.res}
var
  DLLApp: TApplication;

function ShowDLLForm(var AMainAPP: TApplication; AFormCategory:PChar; AParentWinControl: TWinControl; AParams: array of PChar): Boolean; export; stdcall;
var
  vfrmClass: TFormClass;
  frm: TForm;
begin
  Result := False;
  Application := AMainAPP;
  if AFormCategory = 'GET_PATIENT_INFO' then
  begin
    if High(AParams) <> 0 then
    begin
      ShowMessage('调用参数传入不对！');
      exit;
    end;
    vfrmClass := TfrmPatientInfo;
  end
  else
    Exit;
  frm := vfrmClass.CreateParented(AParentWinControl.Handle);

  frm.Align := alClient;
  frm.BorderStyle := bsNone;
  TfrmPatientInfo(frm).FormInit(AParams);
  frm.Show;
  Result := True;
end;

procedure ShowModalDLLForm(AFormCategory:PChar; AParams: array of PChar); export; stdcall;
var
  vfrmClass: TFormClass;
  frm: TForm;
begin
  if AFormCategory = 'GET_PATIENT_INFO' then
  begin
    if High(AParams) <> 0 then
    begin
      ShowMessage('调用参数传入不对！');
      exit;
    end;
  end
  else
    Exit;
  vfrmClass := TfrmPatientInfo;
  frm := vfrmClass.Create(nil);
  frm.ShowModal;
end;


procedure UnloadDLLProc(dwReason: DWORD);
begin
  if dwReason = DLL_PROCESS_DETACH  then
  begin
    Application := DLLApp; //恢复
  end;
end;

exports
  ShowDLLForm,ShowModalDLLForm;

begin
  DLLApp := Application; //保存 DLL 中初始的 Application 对象
  DLLProc := @UnloadDLLProc; //保证 DLL 卸载时恢复原来的 Application
  UnloadDLLProc(DLL_PROCESS_DETACH);

end.


