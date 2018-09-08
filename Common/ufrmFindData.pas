{*******************************************************}
{                                                       }
{       版权所有 (C) 2018 恒明科技                      }
{                                                       }
{       Author: EvanChen 2018-09-08 18:51:41            }
{*******************************************************}

unit ufrmFindData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Data.Win.ADODB, RzButton,uDM,uComm, Vcl.ExtCtrls, RzPanel;

type
  TfrmFindData = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    qryTemp: TADOQuery;
    dsData: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    qryData: TADOQuery;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle4: TcxStyle;
    RzPanel1: TRzPanel;
    btnConfirm: TRzButton;
    btnCancel: TRzButton;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnConfirmClick(Sender: TObject);
  private
    FCommonQueryId: Integer;
    FColsWidth: Integer;
    FSQL: string;
    procedure SetCommonQueryId(const Value: Integer);
    procedure SetSQL(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property CommonQueryId: Integer read FCommonQueryId write SetCommonQueryId;
    property SQL: string read FSQL write SetSQL;
  end;
implementation

{$R *.dfm}

procedure TfrmFindData.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnConfirm.Click;
end;

procedure TfrmFindData.FormCreate(Sender: TObject);
begin
  qryData.Connection := DM.conHAIMIS;
  qryTemp.Connection := DM.conHAIMIS;
end;

procedure TfrmFindData.btnConfirmClick(Sender: TObject);
begin
  if qryData.RecordCount > 0 then
    Self.ModalResult := mrOk;
end;

procedure TfrmFindData.SetCommonQueryId(const Value: Integer);
begin
  with qryTemp do
  begin
    SQL.Text := 'select * from T_Common_Query_Field where COMMON_QUERY_ID = ' + IntToStr(Value) +
      ' And SHOW_FLAG = ''Y'' order by DISPLAY_ORDER ';
    Open;
    cxGrid1DBTableView1.ClearItems;
    while not Eof do
    begin
      CreateGridColumns(cxGrid1DBTableView1,FieldByName('FIELD_NAME').AsString,FieldByName('FIELD_CAPTION').AsString,
        FieldByName('SHOW_WIDTH').AsInteger,FieldByName('MERGE_FLAG').AsString = 'Y');
      FColsWidth := FColsWidth + FieldByName('SHOW_WIDTH').AsInteger;
      Next;
    end;
    if FColsWidth < 474 then
      cxGrid1DBTableView1.OptionsView.ColumnAutoWidth := True
    else if FColsWidth > 744 then
    begin
      Self.Width := 760;
      Self.Height := 600;
    end
    else begin
      Self.Width := FColsWidth + 16;
      Self.Height := FColsWidth + 39;
      if Self.Height > 600 then
        Self.Height := 600;
    end;

  end;
  FCommonQueryId := Value;
end;

procedure TfrmFindData.SetSQL(const Value: string);
begin
  qryData.SQL.Text := Value;
  qryData.Open;
  SetDataSetFieldPosition(TDataSet(qryData));
  FSQL := Value;
end;

end.
