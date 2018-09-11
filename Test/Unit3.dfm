object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 431
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 746
    Height = 313
    Align = alTop
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'UserSkin'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Append.Visible = False
      Navigator.Visible = True
      FindPanel.DisplayMode = fpdmAlways
      DataController.DataSource = dsData
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnMRUItemsList = False
      OptionsCustomize.ColumnHiding = True
      OptionsData.Appending = True
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.DataRowHeight = 22
      OptionsView.GridLineColor = 11842740
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 22
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #23398#29983'ID'
        DataBinding.FieldName = 'studyid'
        Width = 89
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #23398#29983#22995#21517
        DataBinding.FieldName = 'studyname'
        Width = 132
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #20998#25968
        DataBinding.FieldName = 'score'
        Width = 117
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #29677#32423'ID'
        DataBinding.FieldName = 'classid'
        Width = 110
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = #29677#32423#32534#30721
        DataBinding.FieldName = 'classcode'
        Width = 114
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = #29677#32423#21517#31216
        DataBinding.FieldName = 'classname'
        Width = 128
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox
    Left = 40
    Top = 344
    Touch.ParentTabletOptions = False
    Touch.TabletOptions = [toPressAndHold]
    DataBinding.DataField = 'classid'
    DataBinding.DataSource = dsData
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'id'
      end
      item
        FieldName = 'code'
      end>
    Properties.ListFieldIndex = 1
    Properties.ListSource = ds1
    TabOrder = 1
    Width = 145
  end
  object cxDBLookupComboBox2: TcxDBLookupComboBox
    Left = 240
    Top = 344
    DataBinding.DataField = 'classid'
    DataBinding.DataSource = dsData
    Properties.ListColumns = <
      item
        FieldName = 'code'
      end
      item
        FieldName = 'name'
      end>
    Properties.ListSource = ds2
    TabOrder = 2
    Width = 145
  end
  object RzDBLookupComboBox1: TRzDBLookupComboBox
    Left = 40
    Top = 319
    Width = 673
    Height = 21
    DataField = 'classid'
    DataSource = dsData
    KeyField = 'id'
    ListField = 'name;id;code'
    ListFieldIndex = 1
    ListSource = ds1
    TabOrder = 3
    FlatButtonColor = clInactiveBorder
  end
  object dblkcbb1: TDBLookupComboBox
    Left = 424
    Top = 344
    Width = 145
    Height = 21
    TabOrder = 4
  end
  object RzDBComboBox1: TRzDBComboBox
    Left = 40
    Top = 371
    Width = 145
    Height = 21
    DataField = 'classcode'
    DataSource = dsData
    AllowEdit = False
    TabOrder = 5
    Items.Strings = (
      'test1'
      'test2'
      'test3')
    Values.Strings = (
      '01'
      '02'
      '03')
  end
  object qryTemp: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=sa123;Persist Security Info=True;Us' +
      'er ID=sa;Initial Catalog=HAIMIS;Data Source=.'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_class')
    Left = 136
    Top = 208
    object qryTempid: TIntegerField
      FieldName = 'id'
    end
    object qryTempcode: TStringField
      FieldName = 'code'
      Size = 16
    end
    object qryTempname: TStringField
      FieldName = 'name'
      Size = 32
    end
  end
  object dsData: TDataSource
    DataSet = qryData
    Left = 244
    Top = 170
  end
  object ds1: TDataSource
    DataSet = qryTemp
    Left = 140
    Top = 162
  end
  object qryData: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=sa123;Persist Security Info=True;Us' +
      'er ID=sa;Initial Catalog=HAIMIS;Data Source=.'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_study')
    Left = 240
    Top = 216
    object qryDatastudyid: TIntegerField
      FieldName = 'studyid'
    end
    object qryDatastudyname: TStringField
      FieldName = 'studyname'
      Size = 32
    end
    object qryDatascore: TIntegerField
      FieldName = 'score'
    end
    object qryDataclassid: TIntegerField
      FieldName = 'classid'
    end
    object qryDataclasscode: TStringField
      FieldName = 'classcode'
      Size = 16
    end
    object qryDataclassname: TStringField
      FieldName = 'classname'
      Size = 32
    end
  end
  object ds2: TDataSource
    Left = 240
    Top = 384
  end
end
