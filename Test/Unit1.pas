unit Unit1;

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
  dxSkinXmas2008Blue, Vcl.StdCtrls, RzLstBox, cxScrollBox, System.ImageList,
  Vcl.ImgList, RzButton, Vcl.ExtCtrls, RzPanel, cxContainer, cxEdit, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxCalendar, cxButtonEdit, cxDropDownEdit,
  cxDBLookupComboBox, cxTextEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.DBCtrls, cxMaskEdit, cxDBEdit, Vcl.Mask, Vcl.Buttons, cxGroupBox;

type
  TForm1 = class(TForm)
    tbrMain: TRzToolbar;
    btnFrames: TRzToolButton;
    btnComboBoxes: TRzToolButton;
    btnCommon: TRzToolButton;
    btnEdits: TRzToolButton;
    btnDatabase: TRzToolButton;
    btnDisplay: TRzToolButton;
    ilToolBar: TImageList;
    cxScrollBox1: TcxScrollBox;
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
    RzGroupBox1: TRzGroupBox;
    pnl1: TPanel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    btn3: TSpeedButton;
    btn4: TSpeedButton;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl28: TLabel;
    lbl29: TLabel;
    bvl2: TBevel;
    lbl30: TLabel;
    lbl31: TLabel;
    lbl32: TLabel;
    dbedtpatient_id1: TDBEdit;
    dbedtname2: TDBEdit;
    dbedtage1: TDBEdit;
    dbedtbase_diagnosis_desc1: TDBEdit;
    dbedtdept_name1: TDBEdit;
    dbedtdoctor1: TDBEdit;
    dbedtoperator1: TDBEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    dbchkislb: TDBCheckBox;
    cxDBDateEdit3: TcxDBDateEdit;
    dbedttelphone1: TDBEdit;
    dbedtdept_name_in: TDBEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    dbcbbsex1: TDBComboBox;
    dbchkIsLate1: TDBCheckBox;
    dbedtFInpNO1: TDBEdit;
    RzGroupBox2: TRzGroupBox;
    pnl2: TPanel;
    lbl33: TLabel;
    lbl34: TLabel;
    lbl35: TLabel;
    lbl36: TLabel;
    lbl37: TLabel;
    lbl38: TLabel;
    lbl39: TLabel;
    lbl40: TLabel;
    lbl41: TLabel;
    btn5: TSpeedButton;
    btn6: TSpeedButton;
    btn7: TSpeedButton;
    btn8: TSpeedButton;
    lbl42: TLabel;
    lbl43: TLabel;
    lbl44: TLabel;
    lbl45: TLabel;
    bvl3: TBevel;
    lbl46: TLabel;
    lbl47: TLabel;
    lbl48: TLabel;
    dbedtpatient_id2: TDBEdit;
    dbedtname3: TDBEdit;
    dbedtage2: TDBEdit;
    dbedtbase_diagnosis_desc2: TDBEdit;
    dbedtdept_name2: TDBEdit;
    dbedtdoctor2: TDBEdit;
    dbedtoperator2: TDBEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBDateEdit6: TcxDBDateEdit;
    dbchkislb1: TDBCheckBox;
    cxDBDateEdit7: TcxDBDateEdit;
    dbedttelphone2: TDBEdit;
    dbedtdept_name_in1: TDBEdit;
    cxDBDateEdit8: TcxDBDateEdit;
    dbcbbsex2: TDBComboBox;
    dbchkIsLate2: TDBCheckBox;
    dbedtFInpNO2: TDBEdit;
    RzGroupBox3: TRzGroupBox;
    pnl4: TPanel;
    lbl49: TLabel;
    lbl50: TLabel;
    lbl51: TLabel;
    lbl52: TLabel;
    lbl53: TLabel;
    lbl54: TLabel;
    lbl55: TLabel;
    lbl56: TLabel;
    lbl57: TLabel;
    btn9: TSpeedButton;
    btn10: TSpeedButton;
    btn11: TSpeedButton;
    btn12: TSpeedButton;
    lbl58: TLabel;
    lbl59: TLabel;
    lbl60: TLabel;
    lbl61: TLabel;
    bvl4: TBevel;
    lbl62: TLabel;
    lbl63: TLabel;
    lbl64: TLabel;
    dbedtpatient_id3: TDBEdit;
    dbedtname4: TDBEdit;
    dbedtage3: TDBEdit;
    dbedtbase_diagnosis_desc3: TDBEdit;
    dbedtdept_name3: TDBEdit;
    dbedtdoctor3: TDBEdit;
    dbedtoperator3: TDBEdit;
    cxDBDateEdit9: TcxDBDateEdit;
    cxDBDateEdit10: TcxDBDateEdit;
    dbchkislb2: TDBCheckBox;
    cxDBDateEdit11: TcxDBDateEdit;
    dbedttelphone3: TDBEdit;
    dbedtdept_name_in2: TDBEdit;
    cxDBDateEdit12: TcxDBDateEdit;
    dbcbbsex3: TDBComboBox;
    dbchkIsLate3: TDBCheckBox;
    dbedtFInpNO3: TDBEdit;
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
    RzPanel1: TRzPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  cxScrollBox1.VertScrollBar.Range := RzGroupBox3.Height * 4 + 12;
  RzPanel1.Height :=  RzGroupBox3.Height * 4 + 10;
  RzPanel1.Top := 3;
  RzPanel1.Left := (Screen.Width - RzPanel1.Width) div 2 - 18;
    cxScrollBox1.VertScrollBar.Position := 0;
end;

end.
