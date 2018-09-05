{*******************************************************}
{                                                       }
{       ��Ȩ���� (C) 2018 �����Ƽ�                      }
{                                                       }
{       Author: EvanChen 2018-08-22 23:44:01            }
{*******************************************************}

unit uLoadDll;

interface
uses
  Windows,Controls,Forms,SysUtils,Dialogs,System.Generics.Collections;

var
  DLLDict: TDictionary<string,HWND>;

type
  TCallDLLFun = function(var AMainAPP: TApplication; AFormCategory:PChar; AParentWinControl: TWinControl; AParams: array of PChar): Boolean; stdcall;

function RunCallDllFun(var AMainAPP: TApplication; AFormCategory:PChar; AParentWinControl: TWinControl; AParams: array of PChar): Boolean; stdcall;


//function PatientInfo_ShowDLLForm(var AMainAPP: TApplication; AFormCategory:PChar; AParentWinControl: TWinControl; AParams: array of PChar): Boolean; stdcall; external 'PatientInfo.dll' name 'ShowDLLForm';

//procedure PatientInfo_ShowModalDLLForm(AFormCategory:PChar;AParams: array of PChar); stdcall; external 'PatientInfo.dll' name 'ShowModalDLLForm';



implementation

function RunCallDllFun(var AMainAPP: TApplication; AFormCategory:PChar; AParentWinControl: TWinControl; AParams: array of PChar): Boolean; stdcall;
var
  CallDllFun: TCallDLLFun;
  vDLLName: string;
  vDLLHand: HWND;
  bExists: Boolean;
begin
  Result := False;
  if AFormCategory = 'GET_PATIENT_INFO' then
  begin
    vDLLName := 'PatientInfo.dll';
    if DLLDict.ContainsKey(vDLLName) then
      vDLLHand := DLLDict[vDLLName]
    else
    begin
      vDLLHand := LoadLibrary(PChar(vdllName));
      DLLDict.Add(vDLLName,vDLLHand);
    end;
  end;
//  try
  if vDLLHand < 32 then
  begin
    MessageBox(0, 'û���ҵ�DLL�ļ�����ȷ�ϳ����Ƿ�������','����DLLʧ��', MB_OK);
    Exit;
  end;

  @CallDllFun := GetProcAddress(vDLLHand, 'ShowDLLForm');
  if @CallDllFun <> nil then
  try
    CallDllFun(AMainAPP, PChar(AFormCategory),AParentWinControl,AParams);
  except on e: Exception do
    begin
      ShowMessage(e.Message);
      //raise Exception.Create('���á�' + vDLLName + '��' + '-ShowDLLFormʧ�ܣ�' );
      Exit;
    end;
  end;
//  finally
//    //FreeLibrary(vDLLHand);
//  end;
  Result := True;
end;

end.
