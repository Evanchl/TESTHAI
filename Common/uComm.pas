{*******************************************************}
{                                                       }
{       ��Ȩ���� (C) 2018 �����Ƽ�                      }
{                                                       }
{       Author: EvanChen 2018-09-08 15:07:07            }
{*******************************************************}

unit uComm;

interface
uses Classes,DB,DBClient,ADODB,cxGridCustomView, cxGridCustomTableView,cxGridDBTableView,uDM,Forms,System.SysUtils,
  MidasLib,StdCtrls,RzCmboBx,cxGridPopupMenu,cxGridStdPopupMenu,Menus;
  //�����ֶ�������ʾλ��
  procedure SetDataSetFieldPosition(ADataSet: TDataSet; AAlignment: TAlignment = taLeftJustify);
  //�������ֶ�
  procedure CreateGridColumns(AcxgDBTableView: TcxGridDBTableView;AFieldName,ACaption: string;AWidth: Integer;AMergeFlag: Boolean);
  //�������ݼ��������ֶ�
  procedure CreateGridCloumnsByData(AcxgDBTableView: TcxGridDBTableView;ADataSet: TDataSet);
  //�����û����õ��м���
  procedure CreateGridCloumnsByUser(AcxgDBTableView: TcxGridDBTableView;AUserID: Integer;AGridHeadCode: string);
  //�����ֶ����ݼ�����grid��
  procedure CreateGridColunmsByFieldDataSet(AcxgDBTableView: TcxGridDBTableView;ADataSet: TDataSet);
  //�����������ݻ���
  procedure CreateBaseDataCache;
  //����ĳ���������ݻ���
  procedure CreateDataDataCacheByDateType(const ADataType: string);
  //����DataSet����ClientDataSet���ݼ��ֶ�
  procedure CreateCDSColumnByDataSet(Acds: TClientDataSet; ADataSet: TDataSet; ACreateSelectedField: Boolean = False);
  //��DataSet���ݸ��Ƶ�ClientDataSet���ݼ�
  procedure CdsCopyDataFromDataSet(Acds: TClientDataSet; ADataSet: TDataSet; ACreateSelectedField: Boolean = False);
  //�����ݼ����ݳ�ʼ����Combobox����
  procedure InitComboBoxItems(AComboBox: TCustomComboBox; ADataSet: TDataSet; AItemField: string; AddBlankRow: Boolean = True);
  //�����ݼ����ݳ�ʼ������valuesComboBox����
  procedure InitComboBoxItemAndValues(AComboBox: TRzComboBox; ADataSet: TDataSet; AItemField,AValueField: string; AddBlankRow: Boolean = True);
  //�����û�GRID������Ϣ
  procedure SaveGridTitleInfo(AcxgDBTableView: TcxGridDBTableView;AUserID: Integer;AHeadID: Integer);
  //���GRID�������Ҽ��˵�
  procedure AddGridTitleMenu(AcxGridPopupMenu: TcxGridPopupMenu;AForm: TForm; ANum: Integer; AClickEvent: TNotifyEvent);
  //�������Ҽ��˵�OnPopup�¼�����
  procedure HeaderMenuPopup(Sender: TObject);


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

procedure CreateGridCloumnsByData(AcxgDBTableView: TcxGridDBTableView;ADataSet: TDataSet);
var
  cxcol: TcxGridDBColumn;
  i: Integer;
begin
  AcxgDBTableView.ClearItems;
  for I := 0 to ADataSet.FieldCount -1 do
  begin
    cxcol := AcxgDBTableView.CreateColumn;
    cxcol.DataBinding.FieldName := ADataSet.Fields[i].FieldName;
  end;
end;

procedure CreateGridCloumnsByUser(AcxgDBTableView: TcxGridDBTableView;AUserID: Integer;AGridHeadCode: string);
var
  qry,qryField: TADOQuery;
  vSql,vSql1: string;
  vGridHeadId,i: Integer;
begin
  qry := TADOQuery.Create(nil);
  try
    qry.Connection := DM.conHAIMIS;
    vSql :=
      'SELECT A.* ' +
      'FROM   T_GRID_LINE A, ' +
      '       T_GRID_HEAD B ' +
      'WHERE  A.GRID_HEAD_ID = B.GRID_HEAD_ID ' +
      '       AND A.USER_ID =  ' + IntToStr(AUserID) +
      '       AND B.GRID_HEAD_CODE = ' + QuotedStr(AGridHeadCode) +
      ' ORDER BY DISPLAY_ORDER ';
    qry.SQL.Text := vSql;
    qry.Open;
    //ϵͳû�������Զ�����
    if qry.RecordCount = 0 then
    begin
      qry.Close;
      qry.SQL.Text := 'SELECT * FROM T_GRID_HEAD WHERE GRID_HEAD_CODE = ' + QuotedStr(AGridHeadCode);
      qry.Open;
      vSql1 := qry.FieldByName('SQL').AsString;
      vGridHeadId := qry.FieldByName('GRID_HEAD_ID').AsInteger;
      AcxgDBTableView.Tag := vGridHeadId;
      qry.Close;
      qry.SQL.Text := vSql1 + ' AND 1=2';
      qry.Open;
      qryField := TADOQuery.Create(nil);
      try
        qryField.Connection := DM.conHAIMIS;
        qryField.SQL.Text := 'SELECT * FROM T_GRID_LINE WHERE 1=2';
        qryField.Open;
        for I := 0 to qry.Fields.Count -1 do
        begin
          qryField.Append;
          qryField.FieldByName('GRID_HEAD_ID').AsInteger := vGridHeadId;
          qryField.FieldByName('FIELD_NAME').AsString := qry.Fields[i].FieldName;
          qryField.FieldByName('FIELD_CAPTION').AsString := qry.Fields[i].FieldName;
          qryField.FieldByName('SHOW_FLAG').AsString := 'Y';
          qryField.FieldByName('SHOW_WIDTH').AsInteger := qry.Fields[i].DataSize;
          qryField.FieldByName('MERGE_FLAG').AsString := 'N';
          qryField.FieldByName('USER_ID').AsInteger := AUserID;
          qryField.FieldByName('DISPLAY_ORDER').AsInteger := i;
          qryField.Post;
        end;
        CreateGridColunmsByFieldDataSet(AcxgDBTableView,qryField);
      finally
        qryField.Free;
      end;
    end
    else begin
      AcxgDBTableView.Tag := qry.FieldByName('GRID_HEAD_ID').AsInteger;
      CreateGridColunmsByFieldDataSet(AcxgDBTableView,qry);
    end;
  finally
    qry.Free;
  end;
end;

procedure CreateGridColunmsByFieldDataSet(AcxgDBTableView: TcxGridDBTableView;ADataSet: TDataSet);
var
  cxcol: TcxGridDBColumn;
begin
  AcxgDBTableView.ClearItems;
  ADataSet.First;
  while not ADataSet.Eof do
  begin
    cxcol := AcxgDBTableView.CreateColumn;
    cxcol.DataBinding.FieldName := ADataSet.FieldByName('FIELD_NAME').AsString;
    cxcol.Caption := ADataSet.FieldByName('FIELD_CAPTION').AsString;
    cxcol.Visible := ADataSet.FieldByName('SHOW_FLAG').AsString = 'Y';
    cxcol.Options.CellMerging := ADataSet.FieldByName('MERGE_FLAG').AsString = 'Y';
    cxcol.Width := ADataSet.FieldByName('SHOW_WIDTH').AsInteger;
    ADataSet.Next;
  end;
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

procedure InitComboBoxItems(AComboBox: TCustomComboBox; ADataSet: TDataSet; AItemField: string; AddBlankRow: Boolean = True);
begin
  AComboBox.Items.Clear;
  if AddBlankRow then
    AComboBox.Items.Add('');
  ADataSet.First;
  while not ADataSet.Eof do
  begin
    AComboBox.Items.Add(ADataSet.FieldByName(AItemField).AsString);
    ADataSet.Next;
  end;
end;

procedure InitComboBoxItemAndValues(AComboBox: TRzComboBox; ADataSet: TDataSet; AItemField,AValueField: string; AddBlankRow: Boolean = True);
begin
  AComboBox.Items.Clear;
  AComboBox.Values.Clear;
  if AddBlankRow then
  begin
    AComboBox.Items.Add('');
    AComboBox.Values.Add('');
  end;
  ADataSet.First;
  while not ADataSet.Eof do
  begin
    AComboBox.Items.Add(ADataSet.FieldByName(AItemField).AsString);
    AComboBox.Values.Add(ADataSet.FieldByName(AValueField).AsString);
    ADataSet.Next;
  end;
end;

procedure SaveGridTitleInfo(AcxgDBTableView: TcxGridDBTableView;AUserID: Integer;AHeadID: Integer);
var
  qry: TADOQuery;
  vSql: string;
  i,j: Integer;
begin
  j := 1;
  qry := TADOQuery.Create(nil);
  try
    qry.Connection := DM.conHAIMIS;
    qry.SQL.Text := 'SELECT * FROM T_GRID_LINE WHERE GRID_HEAD_ID = ' + IntToStr(AHeadID) + ' AND USER_ID = ' + IntToStr(AUserID);
    qry.Open;
    for I := 0 to AcxgDBTableView.ColumnCount -1 do
    begin
      if AcxgDBTableView.Columns[i].Visible then
      begin
        if qry.Locate('FIELD_NAME',AcxgDBTableView.Columns[i].DataBinding.FieldName,[]) then
        begin
          qry.Edit;
          qry.FieldByName('SHOW_WIDTH').AsInteger := AcxgDBTableView.Columns[i].Width;
          qry.FieldByName('DISPLAY_ORDER').AsInteger := j;
          qry.Post;
          Inc(j);
        end;
      end
      else begin
        if qry.Locate('FIELD_NAME',AcxgDBTableView.Columns[i].DataBinding.FieldName,[]) then
        begin
          qry.Edit;
          qry.FieldByName('DISPLAY_ORDER').AsInteger := 99999;
          qry.Post;
        end;
      end;
    end;
  finally
    qry.Free;
  end;
end;

procedure HeaderMenuPopup(Sender: TObject);
var
  I: Integer;
begin
  with TcxGridStdHeaderMenu(Sender).Items   do
  for I := 0 to Count - 1 do
  begin
    if Items[I].Caption = '��������' then
    begin
      Items[I].Visible := True;
    end
    else if Items[I].Caption = '��������' then
    begin
      Items[I].Visible := True;
    end
    else if Items[I].Caption = '�������' then
    begin
      Items[I].Visible := True;
    end
    else if Pos('miSeparation',Items[I].Name) > 0 then
    begin
      Items[I].Visible := True;
    end
    else if Pos('miSavePrivate',Items[I].Name) > 0 then
    begin
      Items[I].Visible := True;
    end
    else if Pos('miSavePublic',Items[I].Name) > 0 then
    begin
      Items[I].Visible := True;
    end
    else if Pos('miSetPrivate',Items[I].Name) > 0 then
    begin
      Items[I].Visible := True;
    end
    else if Pos('miSetPublic',Items[I].Name) > 0 then
    begin
      Items[I].Visible := True;
    end
    else begin
      Items[I].Visible := False;
    end;

  end;
end;

procedure AddGridTitleMenu(AcxGridPopupMenu: TcxGridPopupMenu;AForm: TForm; ANum: Integer; AClickEvent: TNotifyEvent);
var
  vMenu: TComponent;
  vMenuItem: TMenuItem;
begin
  vMenu := nil;
  if AcxGridPopupMenu.BuiltInPopupMenus.Count = 0 then Exit;
  vMenu := AcxGridPopupMenu.BuiltInPopupMenus[0].PopupMenu;
  if Assigned(vMenu) and vMenu.InheritsFrom(TPopupMenu)then
  begin
    TPopupMenu(vMenu).AutoHotkeys := maManual;
    vMenuItem := TMenuItem.Create(AForm);
    vMenuItem.Caption := '-';
    vMenuItem.Name := 'miSeparation' + IntToStr(ANum);
    TPopupMenu(vMenu).Items.Add(vMenuItem);
    //���������ã����ˣ�
    vMenuItem := TMenuItem.Create(AForm);
    vMenuItem.Caption := '���������ã����ˣ�';
    vMenuItem.Name := 'miSavePrivate' + IntToStr(ANum);
    vMenuItem.OnClick := AClickEvent;
    TPopupMenu(vMenu).Items.Add(vMenuItem);

    //���������ã�������
    vMenuItem := TMenuItem.Create(AForm);
    vMenuItem.Caption := '���������ã�������';
    vMenuItem.Name := 'miSavePublic' + IntToStr(ANum);
    vMenuItem.OnClick := AClickEvent;
    TPopupMenu(vMenu).Items.Add(vMenuItem);

    //���������ã����ˣ�
    vMenuItem := TMenuItem.Create(AForm);
    vMenuItem.Caption := '���������ã����ˣ�';
    vMenuItem.Name := 'miSetPrivate' + IntToStr(ANum);
    vMenuItem.OnClick := AClickEvent;
    TPopupMenu(vMenu).Items.Add(vMenuItem);

    //���������ã�������
    vMenuItem := TMenuItem.Create(AForm);
    vMenuItem.Caption := '���������ã�������';
    vMenuItem.Name := 'miSetPublic' + IntToStr(ANum);
    vMenuItem.OnClick := AClickEvent;
    TPopupMenu(vMenu).Items.Add(vMenuItem);
  end;
end;

end.
