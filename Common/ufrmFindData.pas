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
  cxGrid, Data.Win.ADODB, RzButton,uDM,uComm, Vcl.ExtCtrls, RzPanel,
  Datasnap.DBClient,MidasLib;

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
    dsData1: TClientDataSet;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnConfirmClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    FCommonQueryId: Integer;
    FColsWidth: Integer;
    FSQL: string;
    FMultiType: Boolean;
    FItemNameField: string;
    FSelectedItemNames: string;
    FItemValueField: string;
    FSelectedItemValues: string;
    procedure SetCommonQueryId(const Value: Integer);
    procedure SetSQL(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property CommonQueryId: Integer read FCommonQueryId write SetCommonQueryId;
    property SQL: string read FSQL write SetSQL;
    //是否多选模式  多选模式先设置MultiType 再设置其他属性
    property MultiType: Boolean read FMultiType write FMultiType;
    //值字段
    property ItemValueField: string read FItemValueField write FItemValueField;
    //显示内容字段 如要获取科室ID,但是需要显示科室名称则可设置ItemValueField=Dept_ID ItemNameField = Dept_NAME
    property ItemNameField: string read FItemNameField write FItemNameField;
    //选中的值
    property SelectedItemValues: string read FSelectedItemValues write FSelectedItemValues;
    //选中的名字
    property SelectedItemNames: string read FSelectedItemNames write FSelectedItemNames;
    //目前只提供项目名称和值其他由自己写程序控制
  end;
implementation

{$R *.dfm}

procedure TfrmFindData.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if MultiType then
  begin
    with cxGrid1DBTableView1.DataController.DataSource.DataSet do
    begin
      Edit;
      if FieldByName('SELECT_FLAG').AsBoolean then
        FieldByName('SELECT_FLAG').AsBoolean := False
      else
        FieldByName('SELECT_FLAG').AsBoolean := True;
      Post;
    end;
  end;
end;

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
  if FMultiType then
  begin
    with dsData1 do
    begin
      DisableControls;
      try
        if RecordCount<=0 then Exit;
        First;
        while not eof do
        begin
          if (cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('SELECT_FLAG').AsBoolean) then
          begin
            if (FItemValueField <> '') then
              FSelectedItemValues := FSelectedItemValues + ',' + FieldByName(FItemNameField).AsString;
            if FSelectedItemValues <> '' then
              FSelectedItemNames := FSelectedItemNames + ',' + FieldByName(FItemValueField).AsString;
          end;
          Next;
        end;
      finally
        EnableControls;
      end;
      if Pos(',', FSelectedItemValues)=1 then
        System.Delete(FSelectedItemValues,1,1);
      if Pos(',', FSelectedItemNames)=1 then
        System.Delete(FSelectedItemNames,1,1);
      Self.ModalResult := mrOk;
    end;
  end
  else begin
    if qryData.RecordCount > 0 then
    begin
      if FItemValueField <> '' then
        SelectedItemValues := qryData.FieldByName(FItemValueField).AsString;
      if FSelectedItemValues <> '' then
        SelectedItemNames := qryData.FieldByName(FSelectedItemValues).AsString;
      Self.ModalResult := mrOk;
    end;
  end;
end;

procedure TfrmFindData.SetCommonQueryId(const Value: Integer);
begin
  with qryTemp do
  begin
    SQL.Text := 'select * from T_Common_Query_Field where COMMON_QUERY_ID = ' + IntToStr(Value) +
      ' And SHOW_FLAG = ''Y'' order by DISPLAY_ORDER ';
    Open;
    cxGrid1DBTableView1.ClearItems;
    //多选增加多选列
    if FMultiType then
    begin
      //cxGrid1DBTableView1.OptionsData.Editing := True;
      CreateGridColumns(cxGrid1DBTableView1,'SELECT_FLAG','选择',
        30,False);
      FColsWidth := 30;
    end;
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
  if FMultiType then
  begin
    CreateCDSColumnByDataSet(dsData1,TDataSet(qryData),True);
    SetDataSetFieldPosition(TDataSet(dsData1));
    CdsCopyDataFromDataSet(dsData1,TDataSet(qryData),True);
    dsData.DataSet := dsData1;
  end
  else begin
    SetDataSetFieldPosition(TDataSet(qryData));
    dsData.DataSet := qryData;
  end;
  cxGrid1DBTableView1.DataController.DataSource := dsData;
  FSQL := Value;
end;

end.
