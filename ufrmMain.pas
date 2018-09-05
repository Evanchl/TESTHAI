{*******************************************************}
{                                                       }
{       版权所有 (C) 2018 恒明科技                      }
{                                                       }
{       Author: EvanChen 2018-08-24 11:38:17            }
{*******************************************************}

unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, RzPanel,
  System.ImageList, Vcl.ImgList, Vcl.StdActns, System.Actions, Vcl.ActnList,
  RzBmpBtn, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzBtnEdt, RzStatus,
  RzCmboBx, RzGroupBar, RzSplit, RzLabel, dxGDIPlusClasses,
  Vcl.Imaging.pngimage, RzTabs, RzBorder, RzBckgnd,Data.Win.ADODB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,uDM,
  System.Generics.Collections;

type
  TfrmMain = class(TForm)
    actlst1: TActionList;
    actWelcome: TAction;
    actCustomFraming: TAction;
    actTabs: TAction;
    actEdits: TAction;
    actComboBoxes: TAction;
    actListBoxes: TAction;
    actCommonControls: TAction;
    actButtons: TAction;
    actDisplay: TAction;
    actDatabase: TAction;
    actWidgets: TAction;
    actShell: TAction;
    actLauncher: TAction;
    actSendMessages: TAction;
    actWindowClose: TWindowClose;
    actWindowCascade: TWindowCascade;
    actWindowTileHorizontal: TWindowTileHorizontal;
    actWindowTileVertical: TWindowTileVertical;
    actWindowMinimizeAll: TWindowMinimizeAll;
    actWindowArrange: TWindowArrange;
    actWindowCloseAll: TAction;
    actToolbarCustomize: TAction;
    ilMain: TImageList;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    tbrMain: TRzToolbar;
    btnFrames: TRzToolButton;
    btnComboBoxes: TRzToolButton;
    btnListBoxes: TRzToolButton;
    btnCommon: TRzToolButton;
    btnEdits: TRzToolButton;
    btnButtons: TRzToolButton;
    btnWidgets: TRzToolButton;
    btnDatabase: TRzToolButton;
    btnShell: TRzToolButton;
    btnLauncher: TRzToolButton;
    btnSendMsg: TRzToolButton;
    btnDisplay: TRzToolButton;
    btnTabs: TRzToolButton;
    btnWelcome: TRzToolButton;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    btnEdtPat: TRzButtonEdit;
    pnlGroupBar: TRzSizePanel;
    RzGroupBar1: TRzGroupBar;
    grpVclStyles: TRzGroup;
    cbxVclStyles: TRzComboBox;
    grpDemos: TRzGroup;
    grpVisualStyles: TRzGroup;
    grpGroupBarStyles: TRzGroup;
    grpToolbar: TRzGroup;
    sbrMain: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    RzResourceStatus1: TRzResourceStatus;
    stsSection: TRzGlyphStatus;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    RzLabel1: TRzLabel;
    img1: TImage;
    RzLabel2: TRzLabel;
    RzPanel5: TRzPanel;
    RzBorder1: TRzBorder;
    RzSeparator1: TRzSeparator;
    RzBorder2: TRzBorder;
    RzBorder3: TRzBorder;
    pgcPreview: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    RzTabSheet2: TRzTabSheet;
    RzTabSheet3: TRzTabSheet;
    RzTabSheet4: TRzTabSheet;
    RzTabSheet5: TRzTabSheet;
    RzTabSheet6: TRzTabSheet;
    RzTabSheet7: TRzTabSheet;
    RzTabSheet8: TRzTabSheet;
    procedure actWelcomeExecute(Sender: TObject);
    procedure actCustomFramingExecute(Sender: TObject);
    procedure actTabsExecute(Sender: TObject);
    procedure actEditsExecute(Sender: TObject);
    procedure actComboBoxesExecute(Sender: TObject);
    procedure actListBoxesExecute(Sender: TObject);
    procedure actButtonsExecute(Sender: TObject);
    procedure actDisplayExecute(Sender: TObject);
    procedure actDatabaseExecute(Sender: TObject);
    procedure actWidgetsExecute(Sender: TObject);
    procedure actShellExecute(Sender: TObject);
    procedure actLauncherExecute(Sender: TObject);
    procedure actSendMessagesExecute(Sender: TObject);
    procedure actCommonControlsExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEdtPatKeyPress(Sender: TObject; var Key: Char);
    procedure pgcPreviewClose(Sender: TObject; var AllowClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure AddTabSheet(AfrmClass: TFormClass; ACaption: string;AParams: array of PChar);overload;
    procedure AddTabSheet(AFormCategory, ACaption: PChar;AParams: array of PChar);overload;

  public
    { Public declarations }

  end;

var
  frmMain: TfrmMain;

implementation
uses
  ufrmSearchPatList,uLoadDll;

{$R *.dfm}

procedure TfrmMain.actButtonsExecute(Sender: TObject);
begin
   //

end;

procedure TfrmMain.actComboBoxesExecute(Sender: TObject);
begin
  //
end;

procedure TfrmMain.actCommonControlsExecute(Sender: TObject);
begin
//
end;

procedure TfrmMain.actCustomFramingExecute(Sender: TObject);
begin
  //
end;

procedure TfrmMain.actDatabaseExecute(Sender: TObject);
begin
  //
end;

procedure TfrmMain.actDisplayExecute(Sender: TObject);
begin
  //
end;

procedure TfrmMain.actEditsExecute(Sender: TObject);
begin
  //
end;

procedure TfrmMain.actLauncherExecute(Sender: TObject);
begin
  //
end;

procedure TfrmMain.actListBoxesExecute(Sender: TObject);
begin
          //
end;

procedure TfrmMain.actSendMessagesExecute(Sender: TObject);
begin
//
end;

procedure TfrmMain.actShellExecute(Sender: TObject);
begin
  //
end;

procedure TfrmMain.actTabsExecute(Sender: TObject);
begin
 //
end;

procedure TfrmMain.actWelcomeExecute(Sender: TObject);
begin
//
end;

procedure TfrmMain.actWidgetsExecute(Sender: TObject);
begin
//
end;

procedure TfrmMain.AddTabSheet(AFormCategory, ACaption: PChar;AParams: array of PChar);
var
  vTabSheet: TRzTabSheet;
  frm: TForm;
  vSuccessFlag: Boolean;
begin
  vTabSheet := TRzTabSheet.Create(pgcPreview);
  vTabSheet.Name := 'tabSheet' + IntToStr(GetTickCount);
  //动态创建的页面做好标记
  vTabSheet.Tag := 1;
  vTabSheet.Caption := ACaption;
  vTabSheet.PageControl := pgcPreview;
  pgcPreview.ActivePage := vTabSheet;
  RunCallDllFun(Application,AFormCategory,vTabSheet,AParams)
//  if AFormCategory = 'GET_PATIENT_INFO' then
//    vSuccessFlag := PatientInfo_ShowDLLForm(Application,AFormCategory,vTabSheet,AParams)
//  else
//  begin
//
//  end;
//  if not vSuccessFlag then
//    vTabSheet.Free;
end;

procedure TfrmMain.AddTabSheet(AfrmClass: TFormClass; ACaption: string;AParams: array of PChar);
var
  vTabSheet: TRzTabSheet;
  frm: TForm;
begin
  vTabSheet := TRzTabSheet.Create(pgcPreview);
  vTabSheet.Name := 'tabSheet' + IntToStr(GetTickCount);
  //动态创建的页面做好标记
  vTabSheet.Tag := 1;
  vTabSheet.Caption := ACaption;
  vTabSheet.PageControl := pgcPreview;
  pgcPreview.ActivePage := vTabSheet;
  frm := AfrmClass.CreateParented(vTabSheet.Handle);
  frm.Parent := vTabSheet;
  //TfrmPatientInfo(frm).FormInit(AParams);
  frm.Align := alClient;
  frm.BorderStyle := bsNone;
  frm.Show;

end;



procedure TfrmMain.btn1Click(Sender: TObject);
begin
  Close();
end;

procedure TfrmMain.btnEdtPatKeyPress(Sender: TObject; var Key: Char);
var
  qry: TADOQuery;
  vContion: string;
  vPatientID: Integer;
  frm: TfrmSearchPatList;
  //frmPatInfo: TfrmPatientInfo;
  tabSheet: TRzTabSheet;
  vParams: array of PChar;
begin
  if Key = #13 then
  begin
    vContion := Trim(btnEdtPat.Text);
    if vContion = '' then Exit;
    vPatientID := 0;
    qry := TADOQuery.Create(nil);
    try
      qry.Connection := DM.conHAIMIS;
      qry.SQL.Text :=
        'SELECT HAIS_INPATIENT_ID,     '+
        '       VISIT_ID,              '+
        '       PATIENT_NAME,          '+
        '       SEX,                   '+
        '       INP_NO,                '+
        '       BED_NO,                '+
        '       IN_DATE,               '+
        '       DEPT_NAME,             '+
        '       OUT_DATE,              '+
        '       DIAGNOSIS              '+
        'FROM   T_IN_PATIENTS          '+
        'WHERE  INP_NO = ' + QuotedStr(vContion) +
        '        OR PATIENT_NAME =' + QuotedStr(vContion);
      qry.Open;
      if qry.RecordCount = 1 then
      begin
        vPatientID := qry.FieldByName('HAIS_INPATIENT_ID').AsInteger;
      end
      else if qry.RecordCount = 0 then
        Exit
      else begin
        frm := TfrmSearchPatList.Create(nil);
        try
          frm.dsPatList.DataSet := qry;
          frm.ShowModal;
          if frm.ModalResult = mrOk then
            vPatientID := qry.FieldByName('HAIS_INPATIENT_ID').AsInteger
        finally
          frm.Free;
        end;
      end;
      if vPatientID > 0 then
      begin
        SetLength(vParams,1);
        vParams[0] := PChar(IntToStr(vPatientID));
        //AddTabSheet(TfrmPatientInfo,PChar(qry.FieldByName('PATIENT_NAME').AsString + ' ( ' + qry.FieldByName('VISIT_ID').AsString + ' )') ,vParams);
        //测试showModal
        //PatientInfo_ShowModalDLLForm('GET_PATIENT_INFO',vParams);
        //测试在控件里面show
        AddTabSheet('GET_PATIENT_INFO',PChar(qry.FieldByName('PATIENT_NAME').AsString + ' ( 1 )'),vParams);
      end;
    finally
      qry.Free;
    end;

  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  DLLDict := TDictionary<string,HWND>.Create;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
var
  key: string;
  i: Integer;
  vTabSheet: TRzTabSheet;
begin
  //手动销毁内核代码地址报错，改用系统自动释放
  //销毁动态加载的页面
//  for i := pgcPreview.PageCount -1 downto 0 do
//  begin
//    vTabSheet := pgcPreview.Pages[i];
//    if vTabSheet.Tag = 1 then
//      vTabSheet.Free;
//  end;
//
//  //释放加载的dll
//  if DLLDict.Count > 0 then
//  begin
//    for key in DLLDict.Keys do
//    begin
//      FreeLibrary(DLLDict[key]);
//    end;
//    DLLDict.Clear;
//    DLLDict.Free;
//  end;
  DLLDict.Clear;
  DLLDict.Free;

end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  SetWindowLong(Handle, GWL_STYLE, GetWindowLong(Handle, GWL_STYLE) xor WS_CAPTION);
  Height := ClientHeight;
  Width := ClientWidth;
end;

procedure TfrmMain.pgcPreviewClose(Sender: TObject; var AllowClose: Boolean);
var
  vTabSheet: TRzTabSheet;
begin
  vTabSheet := TRzPageControl(Sender).ActivePage;
  vTabSheet.Free;
end;

end.
