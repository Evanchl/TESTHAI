object frmGridSet: TfrmGridSet
  Left = 0
  Top = 0
  Caption = #34920#26684#39033#30446#35774#32622
  ClientHeight = 565
  ClientWidth = 992
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGridGridSet: TcxGrid
    Left = 0
    Top = 0
    Width = 992
    Height = 192
    Align = alClient
    BevelInner = bvNone
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'UserSkin'
    ExplicitHeight = 201
    object cxGridGridSetDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnMRUItemsList = False
      OptionsCustomize.ColumnHiding = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.DataRowHeight = 22
      OptionsView.GridLineColor = 11842740
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 22
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
    end
    object cxGridGridSetLevel1: TcxGridLevel
      GridView = cxGridGridSetDBTableView1
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 192
    Width = 992
    Height = 373
    Align = alBottom
    TabOrder = 1
    object cxGridGridField: TcxGrid
      Left = 2
      Top = 2
      Width = 847
      Height = 369
      Align = alLeft
      BevelInner = bvNone
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'UserSkin'
      ExplicitHeight = 293
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsGridField
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnMRUItemsList = False
        OptionsCustomize.ColumnHiding = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.DataRowHeight = 22
        OptionsView.GridLineColor = 11842740
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 15
        object cxgrdbclmnGridDBTableView1Column1: TcxGridDBColumn
          Caption = #23383#27573#21517#31216
          DataBinding.FieldName = 'FIELD_NAME'
          HeaderAlignmentHorz = taCenter
          Width = 146
        end
        object cxgrdbclmnGridDBTableView1Column2: TcxGridDBColumn
          Caption = #23383#27573#26631#39064
          DataBinding.FieldName = 'FIELD_CAPTION'
          HeaderAlignmentHorz = taCenter
          Width = 204
        end
        object cxgrdbclmnGridDBTableView1Column3: TcxGridDBColumn
          Caption = #26159#21542#26174#31034
          DataBinding.FieldName = 'SHOW_FLAG'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          HeaderAlignmentHorz = taCenter
          Width = 105
        end
        object cxgrdbclmnGridDBTableView1Column4: TcxGridDBColumn
          Caption = #26159#21542#21512#24182
          DataBinding.FieldName = 'MERGE_FLAG'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          HeaderAlignmentHorz = taCenter
          Width = 160
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object RzButton1: TRzButton
      Left = 888
      Top = 24
      Caption = #20445#23384#37197#32622
      TabOrder = 1
      OnClick = RzButton1Click
    end
    object RzButton2: TRzButton
      Left = 888
      Top = 64
      Caption = #20851#38381
      TabOrder = 2
      OnClick = RzButton2Click
    end
  end
  object qryData: TADOQuery
    Parameters = <>
    Left = 112
    Top = 40
  end
  object qryGridField: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=sa123;Persist Security Info=True;Us' +
      'er ID=sa;Initial Catalog=HAIMIS;Data Source=.'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM T_GRID_LINE')
    Left = 112
    Top = 208
    object qryGridFieldGRID_LINE_ID: TAutoIncField
      FieldName = 'GRID_LINE_ID'
      ReadOnly = True
    end
    object qryGridFieldGRID_HEAD_ID: TIntegerField
      FieldName = 'GRID_HEAD_ID'
    end
    object qryGridFieldFIELD_NAME: TStringField
      FieldName = 'FIELD_NAME'
      Size = 32
    end
    object qryGridFieldFIELD_CAPTION: TWideStringField
      FieldName = 'FIELD_CAPTION'
      OnChange = qryGridFieldFIELD_CAPTIONChange
      Size = 32
    end
    object qryGridFieldSHOW_FLAG: TStringField
      FieldName = 'SHOW_FLAG'
      OnChange = qryGridFieldSHOW_FLAGChange
      Size = 1
    end
    object qryGridFieldSHOW_WIDTH: TIntegerField
      FieldName = 'SHOW_WIDTH'
    end
    object qryGridFieldMERGE_FLAG: TStringField
      FieldName = 'MERGE_FLAG'
      Size = 1
    end
    object qryGridFieldUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
    object qryGridFieldDISPLAY_ORDER: TIntegerField
      FieldName = 'DISPLAY_ORDER'
    end
  end
  object dsData: TDataSource
    DataSet = qryData
    Left = 192
    Top = 40
  end
  object dsGridField: TDataSource
    DataSet = qryGridField
    Left = 176
    Top = 208
  end
  object qryTemp: TADOQuery
    Parameters = <>
    Left = 40
    Top = 40
  end
end
