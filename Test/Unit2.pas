unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.ExtCtrls, RzPanel, cxScrollBox, cxContainer, cxEdit,
  Vcl.StdCtrls, Vcl.DBCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, Vcl.Mask, Vcl.Buttons, RzEdit, RzDBEdit, cxGroupBox, RzGroupBar,
  RzDBBnEd, Data.DB, Data.Win.ADODB,uDM, Vcl.ComCtrls, Vcl.ToolWin, RzButton,ufrmFindData,
  RzRadChk, RzDBChk, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, RzDBCmbo,
  RzCmboBx,uComm;

type
  TForm2 = class(TForm)
    cxScrollBox1: TcxScrollBox;
    RzPanel1: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel2: TRzPanel;
    GrpListBox: TRzGroupBox;
    pnl3: TPanel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    btnBtnDept: TSpeedButton;
    btnBtnClinic: TSpeedButton;
    btnbgDoctor: TSpeedButton;
    btnzgDoctor: TSpeedButton;
    lbl2: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    bvl1: TBevel;
    lbl19: TLabel;
    lbl9: TLabel;
    lbl1: TLabel;
    dbedtpatient_id: TDBEdit;
    dbedtname: TDBEdit;
    dbedtage: TDBEdit;
    dbedtbase_diagnosis_desc: TDBEdit;
    dbedtdept_name: TDBEdit;
    dbedtdoctor: TDBEdit;
    dbedtoperator: TDBEdit;
    cxdbdtdtReport_date: TcxDBDateEdit;
    cxdbdtdtIn_date: TcxDBDateEdit;
    dbchkRpt: TDBCheckBox;
    cxdbdtdtBirth_date: TcxDBDateEdit;
    dbedttelphone: TDBEdit;
    dbedtname1: TDBEdit;
    cxdbdtdtdischarge_date: TcxDBDateEdit;
    dbcbbsex: TDBComboBox;
    dbchkislate: TDBCheckBox;
    dbedtFInpNO: TDBEdit;
    RzGroupBox2: TRzGroupBox;
    pnl2: TPanel;
    lbl33: TLabel;
    lbl34: TLabel;
    lbl35: TLabel;
    lbl36: TLabel;
    lbl37: TLabel;
    lbl38: TLabel;
    lbl46: TLabel;
    lbl47: TLabel;
    RzGroupBox3: TRzGroupBox;
    pnl4: TPanel;
    RzGroupBox4: TRzGroupBox;
    pnl5: TPanel;
    lbl65: TLabel;
    lbl66: TLabel;
    lbl67: TLabel;
    lbl68: TLabel;
    lbl69: TLabel;
    lbl70: TLabel;
    lbl71: TLabel;
    lbl72: TLabel;
    lbl73: TLabel;
    btn13: TSpeedButton;
    btn14: TSpeedButton;
    btn15: TSpeedButton;
    btn16: TSpeedButton;
    lbl74: TLabel;
    lbl75: TLabel;
    lbl76: TLabel;
    lbl77: TLabel;
    bvl5: TBevel;
    lbl78: TLabel;
    lbl79: TLabel;
    lbl80: TLabel;
    dbedtpatient_id4: TDBEdit;
    dbedtname5: TDBEdit;
    dbedtage4: TDBEdit;
    dbedtbase_diagnosis_desc4: TDBEdit;
    dbedtdept_name4: TDBEdit;
    dbedtdoctor4: TDBEdit;
    dbedtoperator4: TDBEdit;
    cxDBDateEdit13: TcxDBDateEdit;
    cxDBDateEdit14: TcxDBDateEdit;
    dbchkislb3: TDBCheckBox;
    cxDBDateEdit15: TcxDBDateEdit;
    dbedttelphone4: TDBEdit;
    dbedtdept_name_in3: TDBEdit;
    cxDBDateEdit16: TcxDBDateEdit;
    dbcbbsex4: TDBComboBox;
    dbchkIsLate4: TDBCheckBox;
    dbedtFInpNO4: TDBEdit;
    lbl43: TLabel;
    lbl40: TLabel;
    lbl41: TLabel;
    lbl39: TLabel;
    lbl44: TLabel;
    lbl42: TLabel;
    lbl48: TLabel;
    lbl49: TLabel;
    lbl50: TLabel;
    lbl52: TLabel;
    lbl53: TLabel;
    lbl54: TLabel;
    lbl55: TLabel;
    edtPatName: TRzDBEdit;
    edtPatUseCode: TRzDBEdit;
    edtPatientID: TRzDBEdit;
    edtSex: TRzDBEdit;
    edtVisitID: TRzDBEdit;
    edtAge: TRzDBEdit;
    edtInChargeDoc: TRzDBEdit;
    edtStatus: TRzDBEdit;
    edtInDiag: TRzDBEdit;
    edtInfectPart: TRzDBEdit;
    edtTel: TRzDBEdit;
    RzDBButtonEdit1: TRzDBButtonEdit;
    edtInfectDept: TRzDBButtonEdit;
    edtReportDoc: TRzDBButtonEdit;
    edtInfectDiag: TRzDBButtonEdit;
    edtRurnoverSituation: TRzDBButtonEdit;
    qryInfect: TADOQuery;
    dsInfect: TDataSource;
    dtpInDate: TRzDBDateTimeEdit;
    dtpInfectDate: TRzDBDateTimeEdit;
    dtpReportDate: TRzDBDateTimeEdit;
    dtpOutDate: TRzDBDateTimeEdit;
    dtpRurnoverDate: TRzDBDateTimeEdit;
    qryTemp: TADOQuery;
    tbrMain: TRzToolbar;
    btnFrames: TRzToolButton;
    btnComboBoxes: TRzToolButton;
    btnListBoxes: TRzToolButton;
    btnCommon: TRzToolButton;
    btnEdits: TRzToolButton;
    btnDatabase: TRzToolButton;
    btnSendMsg: TRzToolButton;
    btnDisplay: TRzToolButton;
    lbl3: TLabel;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    lbl4: TLabel;
    RzDBEdit1: TRzDBEdit;
    lbl5: TLabel;
    RzDBButtonEdit2: TRzDBButtonEdit;
    lbl20: TLabel;
    lbl21: TLabel;
    RzDBButtonEdit4: TRzDBButtonEdit;
    lbl22: TLabel;
    RzDBButtonEdit5: TRzDBButtonEdit;
    lbl23: TLabel;
    RzDBButtonEdit6: TRzDBButtonEdit;
    RzDBComboBox1: TRzDBComboBox;
    RzDBCheckBox1: TRzDBCheckBox;
    RzDBCheckBox2: TRzDBCheckBox;
    cxDBComboBox1: TcxDBComboBox;
    RzComboBox1: TRzComboBox;
    procedure FormCreate(Sender: TObject);
    procedure edtPatUseCodeKeyPress(Sender: TObject; var Key: Char);
    procedure edtInfectDiagButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure SetDbConnect;
    //根据住院号或者病案号或者病人ID获取患者基本信息，ALastIn 是否获取最后一次住院信息
    procedure SetInNo(const AInNo: string; const ALastIn: Boolean = True);
  public
    { Public declarations }

  end;

var
  Form2: TForm2;
implementation


{$R *.dfm}

{ TForm2 }

procedure TForm2.edtInfectDiagButtonClick(Sender: TObject);
var
  frm:  TfrmFindData;
begin
  frm := TfrmFindData.Create(nil);
  try
    frm.Caption := '选择感染诊断';
    frm.MultiType := True;
    frm.ItemNameField := 'INFECT_DIAGNOSIS';
    frm.ItemValueField := 'INFECT_PART';
    frm.CommonQueryId := 1;
    frm.SQL := 'select * from T_INFECT_DICT where ENABLE_FLAG = ''Y'' order by Display_no';
    if frm.ShowModal = mrOk then
    begin
      edtInfectPart.Text := frm.SelectedItemValues;
      edtInfectDiag.Text := frm.SelectedItemNames;
//      qryInfect.FieldByName('INFECT_DIAGNOSIS').AsString := frm.qryData.FieldByName('INFECT_DIAGNOSIS').AsString;
//      qryInfect.FieldByName('INFECT_PART').AsString := frm.qryData.FieldByName('INFECT_PART').AsString;
//      qryInfect.FieldByName('INFECT_PART_SATAT').AsString := frm.qryData.FieldByName('INFECT_TYPE').AsString;
    end;
  finally
    frm.Free;
  end;
end;

procedure TForm2.edtPatUseCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if edtPatUseCode.ReadOnly then Exit;
   	SetInNo(edtPatUseCode.Text);
  end
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  SetDbConnect;
  qryInfect.SQL.Text := 'SELECT * FROM T_INFECT_CASE_REGISTER WHERE 1=0 ';
  qryInfect.Open;
  qryInfect.Insert;
  CreateBaseDataCache;
  InitComboBoxItems(TCustomComboBox(RzDBComboBox1),cdsOprCutWound,'NAME');
end;

procedure TForm2.SetDbConnect;
begin
  qryInfect.Connection := DM.conHAIMIS;
  qryTemp.Connection := DM.conHAIMIS;
end;

procedure TForm2.SetInNo(const AInNo: string; const ALastIn: Boolean = True);
var
  vsql: string;
begin
  if not (qryInfect.State in [dsInsert]) then Exit;
  if ALastIn then
  begin
    vsql :=
      'SELECT TOP 1 HAI_INPATIENT_ID,' +
      '       HIS_INPATIENT_ID,' +
      '       PATIENT_USED_CODE,' +
      '       PATIENT_ID,' +
      '       VISIT_ID,' +
      '       PATIENT_NAME,' +
      '       SEX,' +
      '       Age,' +
      '       BIRTHDAY,' +
      '       INP_NO,' +
      '       DIAGNOSIS,' +
      '       IN_DATE,' +
      '       OUT_DATE,' +
      '       IN_CHARGE_DOC,' +
      '       A.DEPT_KEY,' +
      '       A.DEPT_NAME,' +
      '       B.DEPT_ID,' +
      '       B.TELPHONE' +
      '  FROM T_IN_PATIENTS A ' +
      ' LEFT JOIN T_DEPT B ON a.DEPT_KEY = b.HIS_DEPT_KEY ' +
      ' WHERE PATIENT_USED_CODE = ' + QuotedStr(AInNo) +
      ' ORDER BY IN_DATE DESC';
  end
  else begin
    vsql :=
      'SELECT HAI_INPATIENT_ID,' +
      '       HIS_INPATIENT_ID,' +
      '       PATIENT_ID,' +
      '       VISIT_ID,' +
      '       PATIENT_NAME,' +
      '       SEX,' +
      '       Age,' +
      '       BIRTHDAY,' +
      '       INP_NO,' +
      '       DIAGNOSIS,' +
      '       IN_DATE,' +
      '       OUT_DATE,' +
      '       IN_CHARGE_DOC,' +
      '       DEPT_KEY,' +
      '       DEPT_IN_NAME,' +
      '       B.DEPT_ID,' +
      '       B.TELPHONE' +
      '  FROM T_IN_PATIENTS A '+
      ' LEFT JOIN T_DEPT B ON a.DEPT_KEY = b.HIS_DEPT_KEY ' +
      ' WHERE INP_NO = ' + QuotedStr(AInNo) +
      ' ORDER BY IN_DATE DESC';
  end;

  with qryTemp do
  begin
    Close;
    SQL.Clear;
    sql.Add(vSql);
    Open;
  end;

  if qryTemp.RecordCount = 1 then
  begin
    qryInfect.FieldByName('HIS_INPATIENT_ID').AsString := qryTemp.fieldByName('HIS_INPATIENT_ID').AsString;
    qryInfect.FieldByName('HAI_INPATIENT_ID').AsString := qryTemp.fieldByName('HAI_INPATIENT_ID').AsString;
    qryInfect.FieldByName('PATIENT_ID').AsString := qryTemp.fieldByName('PATIENT_ID').AsString;
    qryInfect.FieldByName('VISIT_ID').AsString := qryTemp.fieldByName('VISIT_ID').AsString;
    qryInfect.FieldByName('PATIENT_NAME').AsString := qryTemp.fieldByName('PATIENT_NAME').AsString;
    qryInfect.FieldByName('SEX').AsString := qryTemp.fieldByName('SEX').AsString;
    qryInfect.FieldByName('AGE').AsString := qryTemp.fieldByName('AGE').AsString;
    qryInfect.FieldByName('IN_DATE').AsString := qryTemp.fieldByName('IN_DATE').AsString;
    qryInfect.FieldByName('OUT_DATE').AsString := qryTemp.fieldByName('OUT_DATE').AsString;
    qryInfect.FieldByName('DIAGNOSIS').AsString := qryTemp.fieldByName('DIAGNOSIS').AsString;
    qryInfect.FieldByName('PATIENT_USED_CODE').AsString := qryTemp.fieldByName('PATIENT_USED_CODE').AsString;
    qryInfect.FieldByName('INCHARGE_DOCTOR').AsString := qryTemp.fieldByName('IN_CHARGE_DOC').AsString;
    qryInfect.FieldByName('INFECT_TYPE').AsString := 'N';
    qryInfect.FieldByName('INFECT_DATE').AsDateTime := Date;
    qryInfect.FieldByName('INFECT_DEPT_KEY').AsString := qryTemp.fieldByName('DEPT_KEY').AsString;
    qryInfect.FieldByName('INFECT_DEPT_ID').AsString := qryTemp.fieldByName('DEPT_ID').AsString;
    qryInfect.FieldByName('INFECT_DEPT_NAME').AsString := qryTemp.fieldByName('DEPT_NAME').AsString;
    qryInfect.FieldByName('REPORT_DEPT_KEY').AsString := qryTemp.fieldByName('DEPT_KEY').AsString;
    qryInfect.FieldByName('REPORT_DEPT_ID').AsString := qryTemp.fieldByName('DEPT_ID').AsString;
    qryInfect.FieldByName('REPORT_DEPT_NAME').AsString := qryTemp.fieldByName('DEPT_NAME').AsString;
    qryInfect.FieldByName('DEPT_TEL').AsString := qryTemp.fieldByName('TELPHONE').AsString;
    qryInfect.FieldByName('REPORT_DATE').AsDateTime := Date;
    qryInfect.FieldByName('OMISSION_FLAG').AsString := 'N';
    qryInfect.FieldByName('MDR_INFECT_FLAG').AsString := 'N';
    qryInfect.FieldByName('STATUS').AsString := '';
    qryInfect.FieldByName('REPORTER').AsString := '';
  end
  else
  begin

  end;
  dtpInfectDate.SetFocus;

end;

end.
