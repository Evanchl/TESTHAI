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
  Position = poMainFormCenter
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
      Left = 78
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
      Left = 186
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
      Left = 228
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
      Left = 287
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
      Left = 330
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
      Left = 381
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
      Left = 381
      Top = 46
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
      Left = 423
      Top = 46
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
      Left = 620
      Top = 46
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
      Left = 697
      Top = 46
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
      Left = 624
      Top = 10
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
      Left = 697
      Top = 10
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
      Left = 78
      Top = 46
      Width = 76
      Height = 20
      Caption = '2018-04-11'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblOutDate1: TRzLabel
      Left = 177
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
      Left = 259
      Top = 46
      Width = 76
      Height = 20
      Caption = '2018-04-20'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lblNewBabyWeigh1: TRzLabel
      Left = 477
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
    end
    object lblNewBabyWeigh: TRzLabel
      Left = 567
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
      Left = 423
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
      Left = 768
      Top = 46
      Width = 97
      Caption = #20462#27491#26032#29983#20799#20307#37325
      TabOrder = 0
    end
  end
  object pgcPreview: TRzPageControl
    Left = 0
    Top = 90
    Width = 957
    Height = 310
    Hint = ''
    ActivePage = tabDates
    ActivePageDefault = tabDates
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
    TabOrder = 1
    Transparent = True
    FixedDimension = 19
    object tabDates: TRzTabSheet
      Color = 16119543
      ImageIndex = 1
      Caption = #30149#26696#39318#39029
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object tabFonts: TRzTabSheet
      Color = 16119543
      ImageIndex = 2
      Caption = #21307#22065#35760#24405
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object tabSearch: TRzTabSheet
      Color = 16119543
      ImageIndex = 5
      Caption = #25163#26415#35760#24405
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object tabPrint: TRzTabSheet
      Color = 16119543
      ImageIndex = 6
      Caption = #20307#28201#21333
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object tabHighlighting: TRzTabSheet
      Color = 16119543
      Caption = #26816#39564#20449#24687
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object tabNotes: TRzTabSheet
      Color = 16119543
      ImageIndex = 3
      TabEnabled = False
      Caption = #30149#31243#35760#24405
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object tabTemplates: TRzTabSheet
      Color = 16119543
      Caption = #24433#20687#20449#24687
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
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
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
        end
        object RzTabSheet2: TRzTabSheet
          Color = 16119543
          ImageIndex = 2
          Caption = #24863#26579#39044#35686
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
        end
        object RzTabSheet3: TRzTabSheet
          Color = 16119543
          ImageIndex = 5
          Caption = #24863#26579#19978#25253
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
        end
        object RzTabSheet4: TRzTabSheet
          Color = 16119543
          ImageIndex = 6
          Caption = 'ICU'#30417#27979
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
        end
        object RzTabSheet5: TRzTabSheet
          Color = 16119543
          Caption = #22810#37325#32784#33647#33740#31649#29702
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
        end
        object RzTabSheet6: TRzTabSheet
          Color = 16119543
          ImageIndex = 3
          TabEnabled = False
          Caption = #30149#20363'-'#24352#19977#65288'1'#65289
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
        end
        object RzTabSheet7: TRzTabSheet
          Color = 16119543
          Caption = #30149#20363#26446#22235#65288'2'#65289
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
        end
        object RzTabSheet8: TRzTabSheet
          Color = 16119543
          Caption = #31995#32479#35774#32622
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
        end
      end
    end
    object tabAutoComplete: TRzTabSheet
      Color = 16119543
      Caption = #20303#38498#27010#20917
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object qryPatient: TADOQuery
    Parameters = <>
    Left = 89
    Top = 158
  end
end