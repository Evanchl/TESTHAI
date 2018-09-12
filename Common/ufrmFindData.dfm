object frmFindData: TfrmFindData
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'frmFindData'
  ClientHeight = 431
  ClientWidth = 474
  Color = clBtnFace
  Constraints.MinHeight = 470
  Constraints.MinWidth = 490
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 474
    Height = 390
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'UserSkin'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FindPanel.DisplayMode = fpdmAlways
      OnCellClick = cxGrid1DBTableView1CellClick
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
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
      Styles.Background = cxStyle4
      Styles.Content = cxStyle2
      Styles.ContentOdd = cxStyle1
      Styles.FindPanel = cxStyle1
      Styles.GroupByBox = cxStyle3
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #23383#27573'1'
        DataBinding.FieldName = 'INFECT_ID'
        Width = 89
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #23383#27573'2'
        DataBinding.FieldName = 'INFECT_TYPE'
        Width = 153
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #23383#27573'3'
        DataBinding.FieldName = 'INFECT_PART'
        Width = 155
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #23383#27573'4'
        DataBinding.FieldName = 'INFECT_DIAGNOSIS'
        Width = 124
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = #23383#27573'5'
        DataBinding.FieldName = 'ENABLE_FLAG'
        Width = 147
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = #23383#27573'6'
        DataBinding.FieldName = 'DISPLAY_NO'
        Width = 128
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 390
    Width = 474
    Height = 41
    Align = alBottom
    BorderOuter = fsNone
    TabOrder = 1
    DesignSize = (
      474
      41)
    object btnConfirm: TRzButton
      Left = 310
      Top = 6
      Anchors = [akRight, akBottom]
      Caption = #30830#23450
      TabOrder = 0
      OnClick = btnConfirmClick
    end
    object btnCancel: TRzButton
      Left = 391
      Top = 6
      ModalResult = 2
      Anchors = [akRight, akBottom]
      Caption = #21462#28040
      TabOrder = 1
    end
    object btnConfig: TRzButton
      Left = 208
      Top = 6
      Width = 96
      Anchors = [akRight, akBottom]
      Caption = #20445#23384#26174#31034#37197#32622
      TabOrder = 2
      Visible = False
      OnClick = btnConfigClick
    end
  end
  object qryTemp: TADOQuery
    LockType = ltReadOnly
    Parameters = <>
    Left = 136
    Top = 208
  end
  object dsData: TDataSource
    DataSet = qryData
    Left = 236
    Top = 178
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 176
    Top = 120
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15790320
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 16448250
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 112
    Top = 112
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15132390
      TextColor = clBtnShadow
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 32
    Top = 120
    PixelsPerInch = 96
  end
  object qryData: TADOQuery
    LockType = ltReadOnly
    Parameters = <>
    Left = 240
    Top = 216
  end
  object cxStyleRepository4: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle4: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
  end
  object dsData1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 184
  end
end
