object frmPatientInfo: TfrmPatientInfo
  Left = 0
  Top = 0
  Caption = #24739#32773#35786#30103#20449#24687
  ClientHeight = 400
  ClientWidth = 957
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzSeparator1: TRzSeparator
    Left = 0
    Top = 81
    Width = 957
    ShowGradient = True
    Align = alTop
    Color = clBtnFace
    ExplicitTop = 77
    ExplicitWidth = 865
  end
  object RzBorder1: TRzBorder
    Left = 0
    Top = 83
    Width = 957
    Height = 7
    BorderOuter = fsNone
    Align = alTop
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 957
    Height = 81
    Align = alTop
    BorderOuter = fsFlat
    TabOrder = 0
    object lblInNo1: TRzLabel
      Left = 21
      Top = 10
      Width = 56
      Height = 20
      Caption = #20303#38498#21495#65306
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblInNo: TRzLabel
      Left = 70
      Top = 10
      Width = 64
      Height = 20
      Caption = '12345678'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblBedNo1: TRzLabel
      Left = 169
      Top = 10
      Width = 42
      Height = 20
      Caption = #24202#21495#65306
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblBedNo: TRzLabel
      Left = 208
      Top = 10
      Width = 18
      Height = 20
      Caption = '3A'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblSex1: TRzLabel
      Left = 255
      Top = 10
      Width = 42
      Height = 20
      Caption = #24615#21035#65306
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblSex: TRzLabel
      Left = 298
      Top = 10
      Width = 14
      Height = 20
      Caption = #30007
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblAge1: TRzLabel
      Left = 337
      Top = 10
      Width = 42
      Height = 20
      Caption = #24180#40836#65306
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblDept1: TRzLabel
      Left = 449
      Top = 10
      Width = 42
      Height = 20
      Caption = #31185#23460#65306
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblDept: TRzLabel
      Left = 494
      Top = 10
      Width = 98
      Height = 20
      Caption = #37325#30151#21307#23398#31185#30149#21306
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblInChargeDoc1: TRzLabel
      Left = 664
      Top = 10
      Width = 70
      Height = 20
      Caption = #20027#31649#21307#29983#65306
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblInChargeDoc: TRzLabel
      Left = 730
      Top = 10
      Width = 42
      Height = 20
      Caption = #26753#29233#32418
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblDiag1: TRzLabel
      Left = 421
      Top = 46
      Width = 70
      Height = 20
      Caption = #20837#38498#35786#26029#65306
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblDiag: TRzLabel
      Left = 494
      Top = 46
      Width = 42
      Height = 20
      Caption = #39135#31649#30284
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblInDate1: TRzLabel
      Left = 5
      Top = 46
      Width = 70
      Height = 20
      Caption = #20837#38498#26085#26399#65306
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblInDate: TRzLabel
      Left = 70
      Top = 46
      Width = 134
      Height = 20
      Caption = '2018-04-11 13:05:59'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblOutDate1: TRzLabel
      Left = 208
      Top = 46
      Width = 70
      Height = 20
      Caption = #20986#38498#26085#26399#65306
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblOutDate: TRzLabel
      Left = 275
      Top = 46
      Width = 134
      Height = 20
      Caption = '2018-04-20 13:05:59'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblNewBabyWeigh1: TRzLabel
      Left = 826
      Top = 10
      Width = 84
      Height = 20
      Caption = #26032#29983#20799#20307#37325#65306
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblNewBabyWeigh: TRzLabel
      Left = 916
      Top = 10
      Width = 41
      Height = 20
      Caption = '3000g'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblAge: TRzLabel
      Left = 379
      Top = 10
      Width = 30
      Height = 20
      Caption = '20'#23681
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object bntModifyWeigh: TRzButton
      Left = 826
      Top = 40
      Width = 97
      Caption = #20462#27491#26032#29983#20799#20307#37325
      TabOrder = 0
      Visible = False
    end
  end
  object pgcPreview: TRzPageControl
    Left = 0
    Top = 90
    Width = 957
    Height = 310
    Hint = ''
    ActivePage = tabSearch
    ActivePageDefault = tabDates
    Align = alClient
    AllowTabDragging = True
    Color = 16119543
    FlatColor = 10263441
    HotTrackColor = 13145750
    ParentColor = False
    ShowMenuButton = True
    ShowShadow = False
    TabColors.HighlightBar = 9856100
    TabIndex = 2
    TabOrder = 1
    Transparent = True
    OnChange = pgcPreviewChange
    FixedDimension = 19
    object tabDates: TRzTabSheet
      Color = 16119543
      ImageIndex = 1
      Caption = #30149#26696#39318#39029
    end
    object tabOrders: TRzTabSheet
      Color = 16119543
      ImageIndex = 2
      Caption = #21307#22065#35760#24405
      object cxGridOrders: TcxGrid
        Left = 0
        Top = 33
        Width = 955
        Height = 256
        Align = alClient
        BevelInner = bvNone
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'UserSkin'
        object cxGridOrdersDBTableView1: TcxGridDBTableView
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
        object cxGridOrdersLevel1: TcxGridLevel
          GridView = cxGridOrdersDBTableView1
        end
      end
      object RzPanel2: TRzPanel
        Left = 0
        Top = 0
        Width = 955
        Height = 33
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 1
        object RzCheckBox1: TRzCheckBox
          Left = 20
          Top = 12
          Width = 67
          Height = 15
          Caption = #26174#31034#20840#37096
          State = cbUnchecked
          TabOrder = 0
        end
        object RzCheckBox2: TRzCheckBox
          Left = 108
          Top = 12
          Width = 43
          Height = 15
          Caption = #20020#22065
          State = cbUnchecked
          TabOrder = 1
        end
        object RzCheckBox3: TRzCheckBox
          Left = 184
          Top = 12
          Width = 43
          Height = 15
          Caption = #38271#22065
          State = cbUnchecked
          TabOrder = 2
        end
        object 呼吸机: TRzCheckBox
          Left = 258
          Top = 12
          Width = 55
          Height = 15
          Caption = #21628#21560#26426
          State = cbUnchecked
          TabOrder = 3
        end
        object RzCheckBox4: TRzCheckBox
          Left = 338
          Top = 12
          Width = 55
          Height = 15
          Caption = #23548#23615#31649
          State = cbUnchecked
          TabOrder = 4
        end
        object RzCheckBox5: TRzCheckBox
          Left = 422
          Top = 12
          Width = 91
          Height = 15
          Caption = #20013#24515#38745#33033#25554#31649
          State = cbUnchecked
          TabOrder = 5
        end
        object RzCheckBox6: TRzCheckBox
          Left = 534
          Top = 12
          Width = 67
          Height = 15
          Caption = #25239#33740#33647#29289
          State = cbUnchecked
          TabOrder = 6
        end
        object RzCheckBox7: TRzCheckBox
          Left = 619
          Top = 12
          Width = 115
          Height = 15
          Caption = #25239#33740#33647#29289#20840#36523#32473#33647
          State = cbUnchecked
          TabOrder = 7
        end
      end
    end
    object tabSearch: TRzTabSheet
      Color = 16119543
      ImageIndex = 5
      Caption = #25163#26415#35760#24405
      object RzPanel3: TRzPanel
        Left = 0
        Top = 0
        Width = 955
        Height = 289
        Align = alClient
        BorderOuter = fsNone
        TabOrder = 0
        object RzPanel4: TRzPanel
          Left = 0
          Top = 0
          Width = 955
          Height = 289
          Align = alClient
          BorderOuter = fsNone
          TabOrder = 0
          object cxgrdOperations: TcxGrid
            Left = 0
            Top = 0
            Width = 955
            Height = 289
            Align = alClient
            BevelInner = bvNone
            TabOrder = 0
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'UserSkin'
            object cxgrdbcrdvwOperations: TcxGridDBCardView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsOperations
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.CardIndent = 7
            end
            object cxgrdlvlOperations: TcxGridLevel
              GridView = cxgrdbcrdvwOperations
            end
          end
        end
      end
    end
    object tabPrint: TRzTabSheet
      Color = 16119543
      ImageIndex = 6
      Caption = #20307#28201#21333
    end
    object tabHighlighting: TRzTabSheet
      Color = 16119543
      Caption = #26816#39564#20449#24687
    end
    object tabNotes: TRzTabSheet
      Color = 16119543
      ImageIndex = 3
      TabEnabled = False
      Caption = #30149#31243#35760#24405
    end
    object tabTemplates: TRzTabSheet
      Color = 16119543
      Caption = #24433#20687#20449#24687
      object RzPageControl1: TRzPageControl
        Left = 0
        Top = 0
        Width = 955
        Height = 289
        Hint = ''
        ActivePage = RzTabSheet1
        ActivePageDefault = RzTabSheet1
        Align = alClient
        AllowTabDragging = True
        Color = 16119543
        FlatColor = 10263441
        HotTrackColor = 13145750
        ParentColor = False
        ShowCloseButtonOnActiveTab = True
        ShowMenuButton = True
        ShowShadow = False
        TabColors.HighlightBar = 9856100
        TabIndex = 0
        TabOrder = 0
        Transparent = True
        FixedDimension = 19
        object RzTabSheet1: TRzTabSheet
          Color = 16119543
          ImageIndex = 1
          Caption = #39318#39029
        end
        object RzTabSheet2: TRzTabSheet
          Color = 16119543
          ImageIndex = 2
          Caption = #24863#26579#39044#35686
        end
        object RzTabSheet3: TRzTabSheet
          Color = 16119543
          ImageIndex = 5
          Caption = #24863#26579#19978#25253
        end
        object RzTabSheet4: TRzTabSheet
          Color = 16119543
          ImageIndex = 6
          Caption = 'ICU'#30417#27979
        end
        object RzTabSheet5: TRzTabSheet
          Color = 16119543
          Caption = #22810#37325#32784#33647#33740#31649#29702
        end
        object RzTabSheet6: TRzTabSheet
          Color = 16119543
          ImageIndex = 3
          TabEnabled = False
          Caption = #30149#20363'-'#24352#19977#65288'1'#65289
        end
        object RzTabSheet7: TRzTabSheet
          Color = 16119543
          Caption = #30149#20363#26446#22235#65288'2'#65289
        end
        object RzTabSheet8: TRzTabSheet
          Color = 16119543
          Caption = #31995#32479#35774#32622
        end
      end
    end
    object tabAutoComplete: TRzTabSheet
      Color = 16119543
      Caption = #20303#38498#27010#20917
    end
  end
  object qryPatient: TADOQuery
    Parameters = <>
    Left = 89
    Top = 158
  end
  object qryOrders: TADOQuery
    LockType = ltReadOnly
    Parameters = <>
    Left = 145
    Top = 158
  end
  object dsOrders: TDataSource
    DataSet = qryOrders
    Left = 233
    Top = 166
  end
  object cxGridPopupMenu: TcxGridPopupMenu
    Grid = cxGridOrders
    PopupMenus = <>
    OnPopup = cxGridPopupMenuPopup
    Left = 208
    Top = 128
  end
  object qryOperations: TADOQuery
    Parameters = <>
    Left = 89
    Top = 222
  end
  object dsOperations: TDataSource
    DataSet = qryOperations
    Left = 137
    Top = 222
  end
end
