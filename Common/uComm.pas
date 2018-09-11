{*******************************************************}
{                                                       }
{       ��Ȩ���� (C) 2018 �����Ƽ�                      }
{                                                       }
{       Author: EvanChen 2018-09-08 15:07:07            }
{*******************************************************}

unit uComm;

interface
uses Classes,DB,DBClient,ADODB,cxGridCustomView, cxGridCustomTableView,cxGridDBTableView,uDM,Forms,System.SysUtils,
  MidasLib;
  //�����ֶ�������ʾλ��
  procedure SetDataSetFieldPosition(ADataSet: TDataSet; AAlignment: TAlignment = taLeftJustify);
  //�������ֶ�
  procedure CreateGridColumns(AcxgDBTableView: TcxGridDBTableView;AFieldName,ACaption: string;AWidth: Integer;AMergeFlag: Boolean);
  //�����������ݻ���
  procedure CreateBaseDataCache;
  //����ĳ���������ݻ���
  procedure CreateDataDataCacheByDateType(const ADataType: string);
  //����DataSet����ClientDataSet���ݼ��ֶ�
  procedure CreateCDSColumnByDataSet(Acds: TClientDataSet; ADataSet: TDataSet; ACreateSelectedField: Boolean = False);
  //��DataSet���ݸ��Ƶ�ClientDataSet���ݼ�
  procedure CdsCopyDataFromDataSet(Acds: TClientDataSet; ADataSet: TDataSet; ACreateSelectedField: Boolean = False);

var
  cdsOprCutWound: TClientDataSet; //�����п����ݼ�
  cdsOprASA: TClientDataSet;//����������յȼ����ݼ�
implementation

procedure SetDataSetFieldPosition(ADataSet: TDataSet; AAlignment: TAlignment = taLeftJustify);
var
  I: Integer;
begin
  for I := 0 to ADataSet.Fields.Count -1 do
    ADataSet.Fields[i].Alignment := AAlignment;
end;

procedure CreateGridColumns(AcxgDBTableView: TcxGridDBTableView;AFieldName,ACaption: string;AWidth: Integer;AMergeFlag: Boolean);
var
  cxcol: TcxGridDBColumn;
begin
  cxcol := AcxgDBTableView.CreateColumn;
  cxcol.DataBinding.FieldName := AFieldName;
  cxcol.Caption := ACaption;
  cxcol.Width := AWidth;
  if AMergeFlag then
    cxcol.Options.CellMerging := True;
end;

procedure CreateBaseDataCache;
var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(nil);
  try
    qry.Connection := DM.conHAIMIS;
    qry.LockType := ltReadOnly;
    qry.SQL.Text := 'SELECT * FROM V_COMMON_TABLE_DATA ORDER BY TABLE_HEAD_ID,DISPLAY_ORDER';
    qry.Open;
    //���������пڵȼ�
    qry.Filtered := False;
    qry.Filter := 'TABLE_HEAD_CODE=''OPER_CUT_WOUND''';
    qry.Filtered := True;
    if cdsOprCutWound = nil then
      cdsOprCutWound := TClientDataSet.Create(Application);
    with cdsOprCutWound do
    begin
      FieldDefs.Clear;
      FieldDefs.Add('CODE',qry.FieldByName('LINE_CODE').DataType,qry.FieldByName('LINE_CODE').Size);
      FieldDefs.Add('NAME',qry.FieldByName('LINE_NAME').DataType,qry.FieldByName('LINE_NAME').Size);
      CreateDataSet;
      Open;
      qry.First;
      while not qry.Eof do
      begin
        Append;
        FieldByName('CODE').AsString := qry.FieldByName('LINE_CODE').AsString;
        FieldByName('NAME').AsString := qry.FieldByName('LINE_NAME').AsString;
        Post;
        qry.Next;
      end;
    end;
    //������յȼ�
    qry.Filtered := False;
    qry.Filter := 'TABLE_HEAD_CODE=''ASA''';
    qry.Filtered := True;
    if cdsOprASA = nil then
      cdsOprASA := TClientDataSet.Create(Application);
    with cdsOprASA do
    begin
      FieldDefs.Clear;
      FieldDefs.Add('CODE',qry.FieldByName('LINE_CODE').DataType,qry.FieldByName('LINE_CODE').Size);
      FieldDefs.Add('NAME',qry.FieldByName('LINE_NAME').DataType,qry.FieldByName('LINE_NAME').Size);
      CreateDataSet;
      Open;
      qry.First;
      while not qry.Eof do
      begin
        Append;
        FieldByName('CODE').AsString := qry.FieldByName('LINE_CODE').AsString;
        FieldByName('NAME').AsString := qry.FieldByName('LINE_NAME').AsString;
        Post;
        qry.Next;
      end;
    end;
  finally
    qry.Free;
  end;
end;

procedure CreateDataDataCacheByDateType(const ADataType: string);
var
  qry: TADOQuery;
  vSql: string;
  cds: TClientDataSet;
begin
  qry := TADOQuery.Create(nil);
  try
    qry.Connection := DM.conHAIMIS;
    qry.LockType := ltReadOnly;
    if ADataType = 'OPER_CUT_WOUND' then
    begin
      vSql := 'SELECT * FROM V_COMMON_TABLE_DATA WHERE TABLE_HEAD_CODE = '+ QuotedStr(ADataType) +' ORDER BY TABLE_HEAD_ID,DISPLAY_ORDER';
      cds := cdsOprCutWound;
    end
    else if ADataType = 'ASA' then
    begin
      vSql := 'SELECT * FROM V_COMMON_TABLE_DATA WHERE TABLE_HEAD_CODE = '+ QuotedStr(ADataType) +' ORDER BY TABLE_HEAD_ID,DISPLAY_ORDER';
      cds := cdsOprASA;
    end;

    cds.EmptyDataSet;
    qry.SQL.Text := vSql;
    qry.Open;
    qry.First;
    if (ADataType = 'OPER_CUT_WOUND') or(ADataType = 'ASA') then
    begin
      while not qry.Eof do
      begin
        cds.Append;
        cds.FieldByName('CODE').AsString := qry.FieldByName('LINE_CODE').AsString;
        cds.FieldByName('NAME').AsString := qry.FieldByName('LINE_NAME').AsString;
        cds.Post;
        qry.Next;
      end;
    end;
  finally
    qry.Free;
  end;

end;

procedure CreateCDSColumnByDataSet(Acds: TClientDataSet; ADataSet: TDataSet; ACreateSelectedField: Boolean = False);
var
  i: Integer;
begin
  with Acds do
  begin
    if Acds.Active then
      Acds.Close;
    FieldDefs.Clear;
    if ACreateSelectedField then
      FieldDefs.Add('SELECT_FLAG',ftBoolean);
    for I := 0 to ADataSet.FieldCount -1 do
      FieldDefs.Add(ADataSet.Fields[i].FieldName,ADataSet.Fields[i].DataType,ADataSet.Fields[i].Size);
    CreateDataSet;
  end;
end;

procedure CdsCopyDataFromDataSet(Acds: TClientDataSet; ADataSet: TDataSet; ACreateSelectedField: Boolean = False);
var
  i: Integer;
begin
  with Acds do
  begin
    DisableControls;
    try
      ADataSet.First;
      while not ADataSet.Eof do
      begin
        Append;
        if ACreateSelectedField then
        begin
          Fields[0].AsBoolean := False;
          for i := 1 to FieldCount -1 do
            Fields[i].Value := ADataSet.FieldByName(Fields[i].FieldName).Value;
        end
        else
        begin
          for i := 0 to FieldCount -1 do
            Fields[i].Value := ADataSet.FieldByName(Fields[i].FieldName).Value;
        end;
        ADataSet.Next;
      end;
      if State in dsEditModes then Post;
      MergeChangeLog;
      Acds.First;
    finally
      EnableControls;
    end;
  end;

end;

end.
