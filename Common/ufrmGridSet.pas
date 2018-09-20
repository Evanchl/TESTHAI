unit ufrmGridSet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,ufrmBase, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Data.Win.ADODB,
  Vcl.ExtCtrls, RzPanel, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,uComm,
  RzButton, cxCheckBox,uDM;

type
  TfrmGridSet = class(TfrmBase)
    cxGridGridSet: TcxGrid;
    cxGridGridSetDBTableView1: TcxGridDBTableView;
    cxGridGridSetLevel1: TcxGridLevel;
    RzPanel1: TRzPanel;
    cxGridGridField: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    qryData: TADOQuery;
    qryGridField: TADOQuery;
    dsData: TDataSource;
    dsGridField: TDataSource;
    qryTemp: TADOQuery;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    qryGridFieldGRID_LINE_ID: TAutoIncField;
    qryGridFieldGRID_HEAD_ID: TIntegerField;
    qryGridFieldFIELD_NAME: TStringField;
    qryGridFieldFIELD_CAPTION: TWideStringField;
    qryGridFieldSHOW_FLAG: TStringField;
    qryGridFieldSHOW_WIDTH: TIntegerField;
    qryGridFieldMERGE_FLAG: TStringField;
    qryGridFieldUSER_ID: TIntegerField;
    qryGridFieldDISPLAY_ORDER: TIntegerField;
    cxgrdbclmnGridDBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1Column4: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure qryGridFieldSHOW_FLAGChange(Sender: TField);
    procedure qryGridFieldFIELD_CAPTIONChange(Sender: TField);
    procedure RzButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FUserID: Integer;
    FGridHeadCode: string;
    FGridHeadID: Integer;
    FSQL: string;
    FModify: Boolean;
    { Private declarations }
  public
    { Public declarations }
    property GridHeadCode: string read FGridHeadCode write FGridHeadCode;
    property UserID: Integer read FUserID write FUserID;
  end;

implementation

{$R *.dfm}

{ TfrmGridSet }



{ TfrmGridSet }


procedure TfrmGridSet.FormCreate(Sender: TObject);
begin
  qryTemp.Connection := DM.conHAIMIS;
  qryData.Connection := DM.conHAIMIS;
  qryGridField.Connection := DM.conHAIMIS;
end;

procedure TfrmGridSet.FormShow(Sender: TObject);
var
  i,vOrder: Integer;
begin
  qryTemp.Close;
  qryTemp.SQL.Text := 'SELECT * FROM T_GRID_HEAD WHERE GRID_HEAD_CODE = ' + QuotedStr(FGridHeadCode);
  qryTemp.Open;
  FGridHeadID := qryTemp.FieldByName('GRID_HEAD_ID').AsInteger;
  FSQL := qryTemp.FieldByName('SQL').AsString;
  qryGridField.Close;
  qryGridField.SQL.Text := 'SELECT * FROM T_GRID_LINE WHERE USER_ID = ' + IntToStr(FUserID) +
    ' AND GRID_HEAD_ID = ' + IntToStr(FGridHeadID) + ' ORDER BY DISPLAY_ORDER';
  qryGridField.Open;
  vOrder := qryGridField.RecordCount;
  //由于有SQL进行更改了未加载到的字段自动加入
  qryTemp.Close;
  qryTemp.SQL.Text := FSQL + ' AND 1=2';
  qryTemp.Open;

  for i := 0 to qryTemp.Fields.Count -1 do
  begin
    if not qryGridField.Locate('FIELD_NAME',qryTemp.Fields[i].FieldName,[]) then
    begin
      qryGridField.Append;
      qryGridField.FieldByName('GRID_HEAD_ID').AsInteger := FGridHeadID;
      qryGridField.FieldByName('FIELD_NAME').AsString := qryTemp.Fields[i].FieldName;
      qryGridField.FieldByName('FIELD_CAPTION').AsString := qryTemp.Fields[i].FieldName;
      qryGridField.FieldByName('SHOW_FLAG').AsString := 'N';
      qryGridField.FieldByName('SHOW_WIDTH').AsInteger := qryTemp.Fields[i].DataSize;
      qryGridField.FieldByName('MERGE_FLAG').AsString := 'N';
      qryGridField.FieldByName('USER_ID').AsInteger := FUserID;
      qryGridField.FieldByName('DISPLAY_ORDER').AsInteger := vOrder;
      qryGridField.Post;
      Inc(vOrder);
    end;
  end;
  //数据grid加载字段
  CreateGridCloumnsByUser(cxGridGridSetDBTableView1,FUserID,FGridHeadCode);
  //后续考虑由于数据集转后增加的自定义字段和计算字段
  //加载前10行数据记录

  qryData.Close;
  qryData.SQL.Text := FSQL;
  qryData.Open;
  cxGridGridSetDBTableView1.DataController.DataSource := dsData;
end;

procedure TfrmGridSet.qryGridFieldFIELD_CAPTIONChange(Sender: TField);
begin
  cxGridGridSetDBTableView1.GetColumnByFieldName(qryGridField.FieldByName('FIELD_NAME').AsString).Caption := Sender.AsString;
end;

procedure TfrmGridSet.qryGridFieldSHOW_FLAGChange(Sender: TField);
begin
  if Sender.AsString = 'Y' then
    cxGridGridSetDBTableView1.GetColumnByFieldName(qryGridField.FieldByName('FIELD_NAME').AsString).Visible := True
  else
    cxGridGridSetDBTableView1.GetColumnByFieldName(qryGridField.FieldByName('FIELD_NAME').AsString).Visible := False;

end;

procedure TfrmGridSet.RzButton1Click(Sender: TObject);
var
  i,j: Integer;
begin
  j := 1;
  for I := 0 to cxGridGridSetDBTableView1.ColumnCount -1 do
  begin
    if cxGridGridSetDBTableView1.Columns[i].Visible then
    begin
      if qryGridField.Locate('FIELD_NAME',cxGridGridSetDBTableView1.Columns[i].DataBinding.FieldName,[]) then
      begin
        qryGridField.Edit;
        qryGridField.FieldByName('SHOW_WIDTH').AsInteger := cxGridGridSetDBTableView1.Columns[i].Width;
        qryGridField.FieldByName('DISPLAY_ORDER').AsInteger := j;
        qryGridField.Post;
        Inc(j);
      end;
    end
    else begin
      if qryGridField.Locate('FIELD_NAME',cxGridGridSetDBTableView1.Columns[i].DataBinding.FieldName,[]) then
      begin
        qryGridField.Edit;
        qryGridField.FieldByName('DISPLAY_ORDER').AsInteger := 99999; //排到最后面去
        qryGridField.Post;
      end;
    end;
  end;


end;

procedure TfrmGridSet.RzButton2Click(Sender: TObject);
begin
  if FModify then
  begin
    if Application.MessageBox('还没有保存，您确定要关闭吗？', '询问', MB_ICONQUESTION + MB_YESNO) = IDNO then
    Exit;
  end;
  Self.ModalResult := mrOk;
end;

end.
