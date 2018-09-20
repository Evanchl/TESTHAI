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
  RzBorder, RzBckgnd, RzTabs, RzButton, Data.DB, Data.Win.ADODB,Winapi.ActiveX,uDM,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, RzRadChk,FMX.Menus,uComm, cxGridCustomPopupMenu,
  cxGridPopupMenu,cxGridStdPopupMenu,ufrmGridSet, cxGridCustomLayoutView,
  cxGridCardView, cxGridDBCardView;

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
    tabOrders: TRzTabSheet;
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
    cxGridOrders: TcxGrid;
    cxGridOrdersDBTableView1: TcxGridDBTableView;
    cxGridOrdersLevel1: TcxGridLevel;
    RzPanel2: TRzPanel;
    RzCheckBox1: TRzCheckBox;
    RzCheckBox2: TRzCheckBox;
    RzCheckBox3: TRzCheckBox;
    呼吸机: TRzCheckBox;
    RzCheckBox4: TRzCheckBox;
    RzCheckBox5: TRzCheckBox;
    RzCheckBox6: TRzCheckBox;
    RzCheckBox7: TRzCheckBox;
    qryOrders: TADOQuery;
    dsOrders: TDataSource;
    cxGridPopupMenu: TcxGridPopupMenu;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    cxgrdOperations: TcxGrid;
    cxgrdlvlOperations: TcxGridLevel;
    cxgrdbcrdvwOperations: TcxGridDBCardView;
    qryOperations: TADOQuery;
    dsOperations: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure pgcPreviewChange(Sender: TObject);
    procedure MenuItemClick(Sender: TObject);
    procedure cxGridPopupMenuPopup(ASenderMenu: TComponent;
      AHitTest: TcxCustomGridHitTest; X, Y: Integer; var AllowPopup: Boolean);
  private
    { Private declarations }
    FPatID: string;
    procedure SetDbConnect;
    procedure SetPatientBasicInfo(APatID: string);
  public
    { Public declarations }
    procedure FormInit(AParams: array of PChar);
  end;

implementation

{$R *.dfm}

{ TfrmPatientInfo }

procedure TfrmPatientInfo.cxGridPopupMenuPopup(ASenderMenu: TComponent;
  AHitTest: TcxCustomGridHitTest; X, Y: Integer; var AllowPopup: Boolean);
var
  OnHeaderMenuPopup: TNotifyEvent;
begin
  TMethod(OnHeaderMenuPopup).Code := @HeaderMenuPopup;
  TMethod(OnHeaderMenuPopup).Data := ASenderMenu;
  if ASenderMenu is TcxGridStdHeaderMenu then
    TcxGridStdHeaderMenu(ASenderMenu).OnPopup := OnHeaderMenuPopup;
end;

procedure TfrmPatientInfo.FormCreate(Sender: TObject);
begin
  SetDbConnect;
  AddGridTitleMenu(cxGridPopupMenu,Self,1,MenuItemClick);
end;

procedure TfrmPatientInfo.FormInit(AParams: array of PChar);
var
  vPatientID: string;
begin
  vPatientID := string(AParams[0]);
  SetPatientBasicInfo(vPatientID);
  FPatID := vPatientID;
end;

procedure TfrmPatientInfo.MenuItemClick(Sender: TObject);
var
  frm: TfrmGridSet;
begin
  if TMenuItem(Sender).Name = 'miSavePrivate1' then
  begin

  end
  else if TMenuItem(Sender).Name = 'miSavePublic1' then
  begin
    SaveGridTitleInfo(cxGridOrdersDBTableView1,-1,cxGridOrdersDBTableView1.Tag);
  end
  else if TMenuItem(Sender).Name = 'miSetPrivate1' then
  begin

  end
  else if TMenuItem(Sender).Name = 'miSetPublic1' then
  begin
    frm := TfrmGridSet.Create(nil);
    try
      frm.UserID := -1;
      frm.GridHeadCode := 'PATIENT_ORDERS';
      frm.ShowModal;
      CreateGridCloumnsByUser(cxGridOrdersDBTableView1,-1,'PATIENT_ORDERS');
    finally
      frm.Free;
    end;
  end;


end;

procedure TfrmPatientInfo.pgcPreviewChange(Sender: TObject);
begin
  if pgcPreview.ActivePage = tabOrders then
  begin
    if qryOrders.Active then Exit;
    CreateGridCloumnsByUser(cxGridOrdersDBTableView1,-1,'PATIENT_ORDERS');
    qryOrders.Close;
    qryOrders.SQL.Text := 'SELECT * FROM V_ORDERS WHERE HAI_PATIENT_ID = ' + FPatID;
    qryOrders.Open;
    cxGridOrdersDBTableView1.DataController.DataSource := dsOrders;
  end;

end;

procedure TfrmPatientInfo.SetDbConnect;
begin
  qryPatient.Connection := DM.conHAIMIS;
  qryOrders.Connection := DM.conHAIMIS;
end;

procedure TfrmPatientInfo.SetPatientBasicInfo(APatID: string);
begin
  with qryPatient do
  begin
    Close();
    SQL.Text :=
      'SELECT HAI_INPATIENT_ID,    '+
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
      '  FROM   T_IN_PATIENTS where HAI_INPATIENT_ID =  ' + APatID;
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
      lblNewBabyWeigh.Caption := FieldByName('NEWBABY_WEIGH_ACTUAL').AsString + 'g';
      //新生儿体重和修改按钮应该根据是否新生儿科室来决定是否显示
      if Pos('新生儿',FieldByName('DEPT_NAME').AsString) > 0  then
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
