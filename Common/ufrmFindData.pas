{*******************************************************}
{                                                       }
{       ��Ȩ���� (C) 2018 �����Ƽ�                      }
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
    btnConfig: TRzButton;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnConfirmClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnConfigClick(Sender: TObject);
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
    //���ṩSQLֱ�����ⲿ�ṩ���ݼ�
    procedure SetDataSet(ADataSet: TDataSet);
    //����ͨ�ò�ѯ���ñ���ֶ�
    property CommonQueryId: Integer read FCommonQueryId write SetCommonQueryId;
    //ͨ�ò�ѯ���
    property SQL: string read FSQL write SetSQL;
    //�Ƿ��ѡģʽ  ��ѡģʽ������MultiType ��������������
    property MultiType: Boolean read FMultiType write FMultiType;
    //ֵ�ֶ�
    property ItemValueField: string read FItemValueField write FItemValueField;
    //��ʾ�����ֶ� ��Ҫ��ȡ����ID,������Ҫ��ʾ���������������ItemValueField=Dept_ID ItemNameField = Dept_NAME
    property ItemNameField: string read FItemNameField write FItemNameField;
    //ѡ�е�ֵ
    property SelectedItemValues: string read FSelectedItemValues write FSelectedItemValues;
    //ѡ�е�����
    property SelectedItemNames: string read FSelectedItemNames write FSelectedItemNames;
    //Ŀǰֻ�ṩ��Ŀ���ƺ�ֵ�������Լ�д�������


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

procedure TfrmFindData.btnConfigClick(Sender: TObject);
var
  vQry: TADOQuery;
  i: Integer;
begin
  //�Ƿ����ֻ�й���Ա���ܿ����ð�ť
  vQry := TADOQuery.Create(nil);
  try
    vQry.Connection := DM.conHAIMIS;
    vQry.SQL.Text := 'SELECT * FROM T_COMMON_QUERY_FIELD WHERE COMMON_QUERY_ID = ' + IntToStr(FCommonQueryId);
    vQry.Open;
    for I := 0 to cxGrid1DBTableView1.ColumnCount -1 do
    begin
      if vQry.Locate('FIELD_NAME',cxGrid1DBTableView1.Columns[i].DataBinding.FieldName,[]) then
      begin
        vQry.Edit;
        vQry.FieldByName('DISPLAY_NO').AsInteger := i+1;
        vQry.FieldByName('SHOW_WIDTH').AsInteger := cxGrid1DBTableView1.Columns[i].Width;
        vQry.Post;
      end;
    end;

  finally
    vQry.Free;
  end;
end;

procedure TfrmFindData.btnConfirmClick(Sender: TObject);
begin
  with cxGrid1DBTableView1.DataController.DataSource.DataSet do
  begin
    if FMultiType then
    begin
      DisableControls;
      try
        if RecordCount<=0 then Exit;
        First;
        while not eof do
        begin
          if (FieldByName('SELECT_FLAG').AsBoolean) then
          begin
            if (FItemValueField <> '') then
              FSelectedItemValues := FSelectedItemValues + ',' + FieldByName(FItemValueField).AsString;
            if FItemNameField <> '' then
              FSelectedItemNames := FSelectedItemNames + ',' + FieldByName(FItemNameField).AsString;
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
    end
    else begin
      if RecordCount > 0 then
      begin
        if FItemValueField <> '' then
          SelectedItemValues := FieldByName(FItemValueField).AsString;
        if FItemNameField <> '' then
          SelectedItemNames := FieldByName(FItemNameField).AsString;
        Self.ModalResult := mrOk;
      end;
    end;
  end;
end;

procedure TfrmFindData.SetCommonQueryId(const Value: Integer);
begin
  with qryTemp do
  begin
    SQL.Text := 'select * from T_Common_Query_Field where COMMON_QUERY_ID = ' + IntToStr(Value) +
      ' And SHOW_FLAG = ''Y'' order by DISPLAY_NO ';
    Open;
    cxGrid1DBTableView1.ClearItems;
    //��ѡ���Ӷ�ѡ��
    if FMultiType then
    begin
      //cxGrid1DBTableView1.OptionsData.Editing := True;
      CreateGridColumns(cxGrid1DBTableView1,'SELECT_FLAG','ѡ��',
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
  //�������ð�ť��ʾ
  btnConfig.Visible := True;
  FCommonQueryId := Value;
end;

procedure TfrmFindData.SetDataSet(ADataSet: TDataSet);
begin
  CreateCDSColumnByDataSet(dsData1,ADataSet,FMultiType);
  SetDataSetFieldPosition(TDataSet(dsData1));
  CdsCopyDataFromDataSet(dsData1,ADataSet,FMultiType);
  //���������ݿ����������ֶ�
  if FCommonQueryId = 0 then
    CreateGridCloumnsByData(cxGrid1DBTableView1,dsData1);
  dsData.DataSet := dsData1;
  cxGrid1DBTableView1.DataController.DataSource := dsData;
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
  //���������ݿ����������ֶ�
  if FCommonQueryId = 0 then
    CreateGridCloumnsByData(cxGrid1DBTableView1,dsData.DataSet);
  cxGrid1DBTableView1.DataController.DataSource := dsData;
  FSQL := Value;
end;

end.
