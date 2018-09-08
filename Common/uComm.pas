{*******************************************************}
{                                                       }
{       ��Ȩ���� (C) 2018 �����Ƽ�                      }
{                                                       }
{       Author: EvanChen 2018-09-08 15:07:07            }
{*******************************************************}

unit uComm;

interface
uses Classes,DB,cxGridCustomView, cxGridCustomTableView,cxGridDBTableView;
  //�����ֶ�������ʾλ��
  procedure SetDataSetFieldPosition(ADataSet: TDataSet; AAlignment: TAlignment = taLeftJustify);
  //�������ֶ�
  procedure CreateGridColumns(AcxgDBTableView: TcxGridDBTableView;AFieldName,ACaption: string;AWidth: Integer;AMergeFlag: Boolean);

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

end.
