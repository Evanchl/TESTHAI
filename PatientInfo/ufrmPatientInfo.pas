{*******************************************************}
{                                                       }
{       版权所有 (C) 2018 恒明科技                      }
{                                                       }
{       Author: EvanChen 2018-08-21 09:41:03            }
{*******************************************************}

unit ufrmPatientInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, Vcl.ExtCtrls,RzPanel,
  RzBorder, RzBckgnd, RzTabs, RzButton, Data.DB, Data.Win.ADODB,Winapi.ActiveX,uDM;

type
  TfrmPatientInfo = class(TForm)
    RzPanel1: TRzPanel;
    lblInNo1: TRzLabel;
    lblInNo: TRzLabel;
    lblBedNo1: TRzLabel;
    lblBedNo: TRzLabel;
    lblSex1: TRzLabel;
    lblSex: TRzLabel;
    lblAge1: TRzLabel;
    lblAge: TRzLabel;
    lblDept1: TRzLabel;
    lblDept: TRzLabel;
    lblInChargeDoc1: TRzLabel;
    lblInChargeDoc: TRzLabel;
    lblDiag1: TRzLabel;
    lblDiag: TRzLabel;
    lblInDate1: TRzLabel;
    lblInDate: TRzLabel;
    lblOutDate1: TRzLabel;
    lblOutDate: TRzLabel;
    lblNewBabyWeigh1: TRzLabel;
    lblNewBabyWeigh: TRzLabel;
    bntModifyWeigh: TRzButton;
    pgcPreview: TRzPageControl;
    tabDates: TRzTabSheet;
    tabFonts: TRzTabSheet;
    tabSearch: TRzTabSheet;
    tabPrint: TRzTabSheet;
    tabHighlighting: TRzTabSheet;
    tabNotes: TRzTabSheet;
    tabTemplates: TRzTabSheet;
    tabAutoComplete: TRzTabSheet;
    RzSeparator1: TRzSeparator;
    RzBorder1: TRzBorder;
    RzPageControl1: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    RzTabSheet2: TRzTabSheet;
    RzTabSheet3: TRzTabSheet;
    RzTabSheet4: TRzTabSheet;
    RzTabSheet5: TRzTabSheet;
    RzTabSheet6: TRzTabSheet;
    RzTabSheet7: TRzTabSheet;
    RzTabSheet8: TRzTabSheet;
    qryPatient: TADOQuery;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure SetDbConnect;
    procedure SetPatientBasicInfo(APatID: string);
  public
    { Public declarations }
    procedure FormInit(AParams: array of PChar);
  end;

implementation

{$R *.dfm}

{ TfrmPatientInfo }

procedure TfrmPatientInfo.FormCreate(Sender: TObject);
begin
  SetDbConnect;
end;

procedure TfrmPatientInfo.FormInit(AParams: array of PChar);
var
  vPatientID: string;
begin
  vPatientID := string(AParams[0]);
  SetPatientBasicInfo(vPatientID);
end;

procedure TfrmPatientInfo.SetDbConnect;
begin
  qryPatient.Connection := DM.conHAIMIS;
end;

procedure TfrmPatientInfo.SetPatientBasicInfo(APatID: string);
begin
  with qryPatient do
  begin
    Close();
    SQL.Text :=
      'SELECT HAIS_INPATIENT_ID,    '+
      '     HIS_INPATIENT_ID,       '+
      '     PATIENT_ID,             '+
      '     VISIT_ID,               '+
      '     PATIENT_NAME,           '+
      '     SEX,                    '+
      '     Age,                    '+
      '     BED_NO,                 '+
      '     INP_NO,                 '+
      '     DEPT_NAME,              '+
      '     IN_DATE,                '+
      '     OUT_DATE,               '+
      '     DIAGNOSIS,              '+
      '     IN_CHARGE_DOC,          '+
      '     NEWBABY_WEIGH_ACTUAL    '+
      '  FROM   T_IN_PATIENTS where HAIS_INPATIENT_ID =  ' + APatID;
    Open;
    if RecordCount > 0 then
    begin
      lblInNo.Caption := FieldByName('INP_NO').AsString;
      lblBedNo.Caption := FieldByName('BED_NO').AsString;
      lblSex.Caption := FieldByName('SEX').AsString;
      lblAge.Caption := FieldByName('Age').AsString;
      lblInDate.Caption := FieldByName('IN_DATE').AsString;
      lblOutDate.Caption := FieldByName('OUT_DATE').AsString;
      lblDept.Caption := FieldByName('DEPT_NAME').AsString;
      lblInChargeDoc.Caption := FieldByName('IN_CHARGE_DOC').AsString;
      lblDiag.Caption := FieldByName('DIAGNOSIS').AsString;
      lblNewBabyWeigh.Caption := FieldByName('NEWBABY_WEIGH_ACTUAL').AsString;
      //新生儿体重和修改按钮应该根据是否新生儿科室来决定是否显示
      if True then
      begin
        lblNewBabyWeigh1.Visible := True;
        lblNewBabyWeigh.Visible := True;
        bntModifyWeigh.Visible := True;
      end
      else begin
        lblNewBabyWeigh1.Visible := False;
        lblNewBabyWeigh.Visible := False;
        bntModifyWeigh.Visible := False;
      end;
    end;
  end;
end;



end.
