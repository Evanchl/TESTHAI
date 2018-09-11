object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 577
  ClientWidth = 1193
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
  object tbrMain: TRzToolbar
    Left = 0
    Top = 0
    Width = 1193
    Height = 60
    AutoStyle = False
    RowHeight = 44
    ButtonLayout = blGlyphTop
    ButtonWidth = 65
    ButtonHeight = 60
    ShowButtonCaptions = True
    TextOptions = ttoCustom
    WrapControls = False
    AutoSize = True
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = []
    BorderWidth = 0
    GradientColorStop = 14215660
    TabOrder = 0
    VisualStyle = vsGradient
    ToolbarControls = (
      btnFrames
      btnEdits
      btnComboBoxes
      btnCommon
      btnDisplay
      btnDatabase)
    object btnFrames: TRzToolButton
      Left = 4
      Top = 0
      GroupIndex = 1
      HotIndex = 15
      Layout = blGlyphTop
      Caption = 'ICU'#30417#27979
      ParentShowHint = False
      ShowHint = True
    end
    object btnComboBoxes: TRzToolButton
      Left = 161
      Top = 0
      GroupIndex = 1
      HotIndex = 39
      Layout = blGlyphTop
      Caption = #32844#19994#26292#38706
      ParentShowHint = False
      ShowHint = True
    end
    object btnCommon: TRzToolButton
      Left = 226
      Top = 0
      GroupIndex = 1
      HotIndex = 37
      Layout = blGlyphTop
      Caption = #29615#22659#21355#29983
      ParentShowHint = False
      ShowHint = True
    end
    object btnEdits: TRzToolButton
      Left = 69
      Top = 0
      Width = 92
      Height = 60
      GroupIndex = 1
      HotIndex = 31
      Layout = blGlyphTop
      Caption = #22810#37325#32784#33647#33740#30417#27979
      ParentShowHint = False
      ShowHint = True
    end
    object btnDatabase: TRzToolButton
      Left = 359
      Top = 0
      GroupIndex = 1
      HotIndex = 19
      Layout = blGlyphTop
      Caption = #19977#35777#31649#29702
      ParentShowHint = False
      ShowHint = True
    end
    object btnDisplay: TRzToolButton
      Left = 291
      Top = 0
      Width = 68
      Height = 60
      GroupIndex = 1
      HotIndex = 3
      Layout = blGlyphTop
      Caption = #25239#29983#32032#31649#29702
      ParentShowHint = False
      ShowHint = True
    end
  end
  object cxScrollBox1: TcxScrollBox
    Left = 0
    Top = 60
    Width = 1193
    Height = 517
    Align = alClient
    TabOrder = 1
    object RzPanel1: TRzPanel
      AlignWithMargins = True
      Left = 66
      Top = 63
      Width = 1239
      Height = 1300
      Align = alCustom
      BorderOuter = fsNone
      TabOrder = 0
      object GrpListBox: TRzGroupBox
        Left = 0
        Top = 356
        Width = 1239
        Height = 178
        Align = alTop
        BannerHeight = 24
        BorderOuter = fsFlat
        Caption = #25163#26415#20449#24687
        CaptionFont.Charset = ANSI_CHARSET
        CaptionFont.Color = 7879740
        CaptionFont.Height = -19
        CaptionFont.Name = #24494#36719#38597#40657
        CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7879740
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        GroupStyle = gsBanner
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        VisualStyle = vsClassic
        object pnl3: TPanel
          Left = 1
          Top = 25
          Width = 1237
          Height = 152
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 0
          object lbl6: TLabel
            Left = 25
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #30149#20154'ID'#21495#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl7: TLabel
            Left = 25
            Top = 22
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #30149#20154#22995#21517#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl8: TLabel
            Left = 296
            Top = 22
            Width = 44
            Height = 16
            AutoSize = False
            Caption = #24615#21035#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl10: TLabel
            Left = 267
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20837#38498#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl11: TLabel
            Left = 25
            Top = 80
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20837#38498#35786#26029#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl12: TLabel
            Left = 717
            Top = 79
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20027#27835#21307#29983#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl13: TLabel
            Left = 496
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #25253#21578#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl14: TLabel
            Left = 25
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #25253#21578#31185#23460#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl15: TLabel
            Left = 267
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #25253#21578#21307#29983#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object btnBtnDept: TSpeedButton
            Left = 230
            Top = 106
            Width = 19
            Height = 20
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btnBtnClinic: TSpeedButton
            Left = 456
            Top = 76
            Width = 19
            Height = 20
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btnbgDoctor: TSpeedButton
            Left = 456
            Top = 106
            Width = 19
            Height = 20
            Caption = '...'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object btnzgDoctor: TSpeedButton
            Left = 924
            Top = 76
            Width = 19
            Height = 20
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl2: TLabel
            Left = 496
            Top = 80
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #26159#21542#28431#25253#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl16: TLabel
            Left = 717
            Top = 22
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20986#29983#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl17: TLabel
            Left = 717
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #31185#23460#30005#35805#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl18: TLabel
            Left = 717
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20837#38498#31185#23460#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object bvl1: TBevel
            Left = 571
            Top = 97
            Width = 127
            Height = 1
            Style = bsRaised
          end
          object lbl19: TLabel
            Left = 496
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20986#38498#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl9: TLabel
            Left = 520
            Top = 22
            Width = 49
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = #24180#40836#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl1: TLabel
            Left = 731
            Top = 1
            Width = 57
            Height = 16
            AutoSize = False
            Caption = #30149#26696#21495#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object dbedtpatient_id: TDBEdit
            Left = 102
            Top = 48
            Width = 147
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'patient_id'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object dbedtname: TDBEdit
            Left = 102
            Top = 20
            Width = 147
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object dbedtage: TDBEdit
            Left = 571
            Top = 20
            Width = 127
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'age'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object dbedtbase_diagnosis_desc: TDBEdit
            Left = 102
            Top = 77
            Width = 351
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'base_diagnosis_desc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 8
          end
          object dbedtdept_name: TDBEdit
            Left = 102
            Top = 106
            Width = 126
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'dept_name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 13
          end
          object dbedtdoctor: TDBEdit
            Left = 795
            Top = 77
            Width = 127
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'doctor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object dbedtoperator: TDBEdit
            Left = 346
            Top = 106
            Width = 107
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'operator'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 14
          end
          object cxdbdtdtReport_date: TcxDBDateEdit
            Left = 571
            Top = 104
            DataBinding.DataField = 'create_date'
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 12
            Width = 127
          end
          object cxdbdtdtIn_date: TcxDBDateEdit
            Left = 346
            Top = 46
            DataBinding.DataField = 'admission_date'
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 132
          end
          object dbchkRpt: TDBCheckBox
            Left = 579
            Top = 78
            Width = 54
            Height = 17
            Caption = #28431#25253
            DataField = 'islb'
            Font.Charset = GB2312_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            Visible = False
          end
          object cxdbdtdtBirth_date: TcxDBDateEdit
            Left = 795
            Top = 18
            DataBinding.DataField = 'birth_date'
            ParentFont = False
            Properties.ReadOnly = True
            Style.BorderStyle = ebsUltraFlat
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.ButtonTransparency = ebtNone
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 149
          end
          object dbedttelphone: TDBEdit
            Left = 795
            Top = 106
            Width = 149
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'telphone'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 15
          end
          object dbedtname1: TDBEdit
            Left = 795
            Top = 48
            Width = 149
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'dept_name_in'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object cxdbdtdtdischarge_date: TcxDBDateEdit
            Left = 571
            Top = 46
            DataBinding.DataField = 'discharge_date'
            ParentFont = False
            Properties.Kind = ckDateTime
            Properties.ReadOnly = False
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 127
          end
          object dbcbbsex: TDBComboBox
            Left = 346
            Top = 18
            Width = 131
            Height = 23
            Style = csDropDownList
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            Color = clCream
            DataField = 'sex'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            Items.Strings = (
              #30007
              #22899)
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object dbchkislate: TDBCheckBox
            Left = 643
            Top = 78
            Width = 54
            Height = 17
            Caption = #36831#25253
            DataField = 'IsLate'
            Font.Charset = GB2312_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            Visible = False
          end
          object dbedtFInpNO: TDBEdit
            Left = 797
            Top = -2
            Width = 147
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'FInpNO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 16
          end
        end
      end
      object RzGroupBox1: TRzGroupBox
        Left = 0
        Top = 534
        Width = 1239
        Height = 178
        Align = alTop
        BannerHeight = 24
        BorderOuter = fsFlat
        Caption = #26131#24863#22240#32032#20449#24687
        CaptionFont.Charset = ANSI_CHARSET
        CaptionFont.Color = 7879740
        CaptionFont.Height = -19
        CaptionFont.Name = #24494#36719#38597#40657
        CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7879740
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        GroupStyle = gsBanner
        ParentColor = True
        ParentFont = False
        TabOrder = 1
        VisualStyle = vsClassic
        object pnl1: TPanel
          Left = 1
          Top = 25
          Width = 1237
          Height = 152
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 0
          object lbl3: TLabel
            Left = 25
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #30149#20154'ID'#21495#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl4: TLabel
            Left = 25
            Top = 22
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #30149#20154#22995#21517#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl5: TLabel
            Left = 296
            Top = 22
            Width = 44
            Height = 16
            AutoSize = False
            Caption = #24615#21035#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl20: TLabel
            Left = 267
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20837#38498#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl21: TLabel
            Left = 25
            Top = 80
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20837#38498#35786#26029#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl22: TLabel
            Left = 717
            Top = 79
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20027#27835#21307#29983#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl23: TLabel
            Left = 496
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #25253#21578#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl24: TLabel
            Left = 25
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #25253#21578#31185#23460#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl25: TLabel
            Left = 267
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #25253#21578#21307#29983#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object btn1: TSpeedButton
            Left = 230
            Top = 106
            Width = 19
            Height = 20
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btn2: TSpeedButton
            Left = 456
            Top = 76
            Width = 19
            Height = 20
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btn3: TSpeedButton
            Left = 456
            Top = 106
            Width = 19
            Height = 20
            Caption = '...'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object btn4: TSpeedButton
            Left = 924
            Top = 76
            Width = 19
            Height = 20
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl26: TLabel
            Left = 496
            Top = 80
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #26159#21542#28431#25253#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl27: TLabel
            Left = 717
            Top = 22
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20986#29983#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl28: TLabel
            Left = 717
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #31185#23460#30005#35805#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl29: TLabel
            Left = 717
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20837#38498#31185#23460#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object bvl2: TBevel
            Left = 571
            Top = 97
            Width = 127
            Height = 1
            Style = bsRaised
          end
          object lbl30: TLabel
            Left = 496
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20986#38498#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl31: TLabel
            Left = 520
            Top = 22
            Width = 49
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = #24180#40836#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl32: TLabel
            Left = 731
            Top = 1
            Width = 57
            Height = 16
            AutoSize = False
            Caption = #30149#26696#21495#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object dbedtpatient_id1: TDBEdit
            Left = 102
            Top = 48
            Width = 147
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'patient_id'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object dbedtname2: TDBEdit
            Left = 102
            Top = 20
            Width = 147
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object dbedtage1: TDBEdit
            Left = 571
            Top = 20
            Width = 127
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'age'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object dbedtbase_diagnosis_desc1: TDBEdit
            Left = 102
            Top = 77
            Width = 351
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'base_diagnosis_desc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 8
          end
          object dbedtdept_name1: TDBEdit
            Left = 102
            Top = 106
            Width = 126
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'dept_name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 13
          end
          object dbedtdoctor1: TDBEdit
            Left = 795
            Top = 77
            Width = 127
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'doctor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object dbedtoperator1: TDBEdit
            Left = 346
            Top = 106
            Width = 107
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'operator'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 14
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 571
            Top = 104
            DataBinding.DataField = 'create_date'
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 12
            Width = 127
          end
          object cxDBDateEdit2: TcxDBDateEdit
            Left = 346
            Top = 46
            DataBinding.DataField = 'admission_date'
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 132
          end
          object dbchkislb: TDBCheckBox
            Left = 579
            Top = 78
            Width = 54
            Height = 17
            Caption = #28431#25253
            DataField = 'islb'
            Font.Charset = GB2312_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            Visible = False
          end
          object cxDBDateEdit3: TcxDBDateEdit
            Left = 795
            Top = 18
            DataBinding.DataField = 'birth_date'
            ParentFont = False
            Properties.ReadOnly = True
            Style.BorderStyle = ebsUltraFlat
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.ButtonTransparency = ebtNone
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 149
          end
          object dbedttelphone1: TDBEdit
            Left = 795
            Top = 106
            Width = 149
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'telphone'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 15
          end
          object dbedtdept_name_in: TDBEdit
            Left = 795
            Top = 48
            Width = 149
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'dept_name_in'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object cxDBDateEdit4: TcxDBDateEdit
            Left = 571
            Top = 46
            DataBinding.DataField = 'discharge_date'
            ParentFont = False
            Properties.Kind = ckDateTime
            Properties.ReadOnly = False
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 127
          end
          object dbcbbsex1: TDBComboBox
            Left = 346
            Top = 18
            Width = 131
            Height = 23
            Style = csDropDownList
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            Color = clCream
            DataField = 'sex'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            Items.Strings = (
              #30007
              #22899)
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object dbchkIsLate1: TDBCheckBox
            Left = 643
            Top = 78
            Width = 54
            Height = 17
            Caption = #36831#25253
            DataField = 'IsLate'
            Font.Charset = GB2312_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            Visible = False
          end
          object dbedtFInpNO1: TDBEdit
            Left = 797
            Top = -2
            Width = 147
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'FInpNO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 16
          end
        end
      end
      object RzGroupBox2: TRzGroupBox
        Left = 0
        Top = 0
        Width = 1239
        Height = 178
        Align = alTop
        BannerHeight = 24
        BorderOuter = fsFlat
        Caption = #24739#32773#22522#26412#20449#24687
        CaptionFont.Charset = ANSI_CHARSET
        CaptionFont.Color = 7879740
        CaptionFont.Height = -19
        CaptionFont.Name = #24494#36719#38597#40657
        CaptionFont.Style = []
        Font.Charset = ANSI_CHARSET
        Font.Color = 7879740
        Font.Height = -19
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        GroupStyle = gsTopLine
        ParentColor = True
        ParentFont = False
        TabOrder = 2
        VisualStyle = vsClassic
        object pnl2: TPanel
          Left = 1
          Top = 26
          Width = 1237
          Height = 151
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 0
          object lbl33: TLabel
            Left = 25
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #30149#20154'ID'#21495#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl34: TLabel
            Left = 25
            Top = 22
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #30149#20154#22995#21517#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl35: TLabel
            Left = 296
            Top = 22
            Width = 44
            Height = 16
            AutoSize = False
            Caption = #24615#21035#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl36: TLabel
            Left = 267
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20837#38498#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl37: TLabel
            Left = 25
            Top = 80
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20837#38498#35786#26029#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl38: TLabel
            Left = 717
            Top = 79
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20027#27835#21307#29983#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl39: TLabel
            Left = 496
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #25253#21578#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl40: TLabel
            Left = 25
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #25253#21578#31185#23460#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl41: TLabel
            Left = 267
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #25253#21578#21307#29983#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object btn5: TSpeedButton
            Left = 230
            Top = 106
            Width = 19
            Height = 20
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btn6: TSpeedButton
            Left = 456
            Top = 76
            Width = 19
            Height = 20
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btn7: TSpeedButton
            Left = 456
            Top = 106
            Width = 19
            Height = 20
            Caption = '...'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object btn8: TSpeedButton
            Left = 924
            Top = 76
            Width = 19
            Height = 20
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl42: TLabel
            Left = 496
            Top = 80
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #26159#21542#28431#25253#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl43: TLabel
            Left = 717
            Top = 22
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20986#29983#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl44: TLabel
            Left = 717
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #31185#23460#30005#35805#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl45: TLabel
            Left = 717
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20837#38498#31185#23460#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object bvl3: TBevel
            Left = 571
            Top = 97
            Width = 127
            Height = 1
            Style = bsRaised
          end
          object lbl46: TLabel
            Left = 496
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20986#38498#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl47: TLabel
            Left = 520
            Top = 22
            Width = 49
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = #24180#40836#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl48: TLabel
            Left = 731
            Top = 1
            Width = 57
            Height = 16
            AutoSize = False
            Caption = #30149#26696#21495#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object dbedtpatient_id2: TDBEdit
            Left = 102
            Top = 48
            Width = 147
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'patient_id'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object dbedtname3: TDBEdit
            Left = 102
            Top = 20
            Width = 147
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object dbedtage2: TDBEdit
            Left = 571
            Top = 20
            Width = 127
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'age'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object dbedtbase_diagnosis_desc2: TDBEdit
            Left = 102
            Top = 77
            Width = 351
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'base_diagnosis_desc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 8
          end
          object dbedtdept_name2: TDBEdit
            Left = 102
            Top = 106
            Width = 126
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'dept_name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 13
          end
          object dbedtdoctor2: TDBEdit
            Left = 795
            Top = 77
            Width = 127
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'doctor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object dbedtoperator2: TDBEdit
            Left = 346
            Top = 106
            Width = 107
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'operator'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 14
          end
          object cxDBDateEdit5: TcxDBDateEdit
            Left = 571
            Top = 104
            DataBinding.DataField = 'create_date'
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 12
            Width = 127
          end
          object cxDBDateEdit6: TcxDBDateEdit
            Left = 346
            Top = 46
            DataBinding.DataField = 'admission_date'
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 132
          end
          object dbchkislb1: TDBCheckBox
            Left = 579
            Top = 78
            Width = 54
            Height = 17
            Caption = #28431#25253
            DataField = 'islb'
            Font.Charset = GB2312_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            Visible = False
          end
          object cxDBDateEdit7: TcxDBDateEdit
            Left = 795
            Top = 18
            DataBinding.DataField = 'birth_date'
            ParentFont = False
            Properties.ReadOnly = True
            Style.BorderStyle = ebsUltraFlat
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.ButtonTransparency = ebtNone
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 149
          end
          object dbedttelphone2: TDBEdit
            Left = 795
            Top = 106
            Width = 149
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'telphone'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 15
          end
          object dbedtdept_name_in1: TDBEdit
            Left = 795
            Top = 48
            Width = 149
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'dept_name_in'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object cxDBDateEdit8: TcxDBDateEdit
            Left = 571
            Top = 46
            DataBinding.DataField = 'discharge_date'
            ParentFont = False
            Properties.Kind = ckDateTime
            Properties.ReadOnly = False
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 127
          end
          object dbcbbsex2: TDBComboBox
            Left = 346
            Top = 18
            Width = 131
            Height = 23
            Style = csDropDownList
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            Color = clCream
            DataField = 'sex'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            Items.Strings = (
              #30007
              #22899)
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object dbchkIsLate2: TDBCheckBox
            Left = 643
            Top = 78
            Width = 54
            Height = 17
            Caption = #36831#25253
            DataField = 'IsLate'
            Font.Charset = GB2312_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            Visible = False
          end
          object dbedtFInpNO2: TDBEdit
            Left = 797
            Top = -2
            Width = 147
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'FInpNO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 16
          end
        end
      end
      object RzGroupBox3: TRzGroupBox
        Left = 0
        Top = 178
        Width = 1239
        Height = 178
        Align = alTop
        BannerHeight = 24
        BorderOuter = fsFlat
        Caption = #36865#26816#20449#24687
        CaptionFont.Charset = ANSI_CHARSET
        CaptionFont.Color = 7879740
        CaptionFont.Height = -19
        CaptionFont.Name = #24494#36719#38597#40657
        CaptionFont.Style = []
        Font.Charset = ANSI_CHARSET
        Font.Color = 7879740
        Font.Height = -19
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        GradientDirection = gdVerticalEnd
        GroupStyle = gsBanner
        ParentColor = True
        ParentFont = False
        TabOrder = 3
        VisualStyle = vsClassic
        object pnl4: TPanel
          Left = 1
          Top = 25
          Width = 1237
          Height = 152
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 0
          object lbl49: TLabel
            Left = 25
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #30149#20154'ID'#21495#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl50: TLabel
            Left = 25
            Top = 22
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #30149#20154#22995#21517#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl51: TLabel
            Left = 296
            Top = 22
            Width = 44
            Height = 16
            AutoSize = False
            Caption = #24615#21035#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl52: TLabel
            Left = 267
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20837#38498#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl53: TLabel
            Left = 25
            Top = 80
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20837#38498#35786#26029#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl54: TLabel
            Left = 717
            Top = 79
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20027#27835#21307#29983#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl55: TLabel
            Left = 496
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #25253#21578#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl56: TLabel
            Left = 25
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #25253#21578#31185#23460#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl57: TLabel
            Left = 267
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #25253#21578#21307#29983#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object btn9: TSpeedButton
            Left = 230
            Top = 106
            Width = 19
            Height = 20
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btn10: TSpeedButton
            Left = 456
            Top = 76
            Width = 19
            Height = 20
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btn11: TSpeedButton
            Left = 456
            Top = 106
            Width = 19
            Height = 20
            Caption = '...'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object btn12: TSpeedButton
            Left = 924
            Top = 76
            Width = 19
            Height = 20
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl58: TLabel
            Left = 496
            Top = 80
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #26159#21542#28431#25253#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl59: TLabel
            Left = 717
            Top = 22
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20986#29983#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl60: TLabel
            Left = 717
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #31185#23460#30005#35805#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl61: TLabel
            Left = 717
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20837#38498#31185#23460#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object bvl4: TBevel
            Left = 571
            Top = 97
            Width = 127
            Height = 1
            Style = bsRaised
          end
          object lbl62: TLabel
            Left = 496
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20986#38498#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl63: TLabel
            Left = 520
            Top = 22
            Width = 49
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = #24180#40836#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl64: TLabel
            Left = 731
            Top = 1
            Width = 57
            Height = 16
            AutoSize = False
            Caption = #30149#26696#21495#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object dbedtpatient_id3: TDBEdit
            Left = 102
            Top = 48
            Width = 147
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'patient_id'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object dbedtname4: TDBEdit
            Left = 102
            Top = 20
            Width = 147
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object dbedtage3: TDBEdit
            Left = 571
            Top = 20
            Width = 127
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'age'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object dbedtbase_diagnosis_desc3: TDBEdit
            Left = 102
            Top = 77
            Width = 351
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'base_diagnosis_desc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 8
          end
          object dbedtdept_name3: TDBEdit
            Left = 102
            Top = 106
            Width = 126
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'dept_name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 13
          end
          object dbedtdoctor3: TDBEdit
            Left = 795
            Top = 77
            Width = 127
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'doctor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object dbedtoperator3: TDBEdit
            Left = 346
            Top = 106
            Width = 107
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'operator'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 14
          end
          object cxDBDateEdit9: TcxDBDateEdit
            Left = 571
            Top = 104
            DataBinding.DataField = 'create_date'
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 12
            Width = 127
          end
          object cxDBDateEdit10: TcxDBDateEdit
            Left = 346
            Top = 46
            DataBinding.DataField = 'admission_date'
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 132
          end
          object dbchkislb2: TDBCheckBox
            Left = 579
            Top = 78
            Width = 54
            Height = 17
            Caption = #28431#25253
            DataField = 'islb'
            Font.Charset = GB2312_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            Visible = False
          end
          object cxDBDateEdit11: TcxDBDateEdit
            Left = 795
            Top = 18
            DataBinding.DataField = 'birth_date'
            ParentFont = False
            Properties.ReadOnly = True
            Style.BorderStyle = ebsUltraFlat
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.ButtonTransparency = ebtNone
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 149
          end
          object dbedttelphone3: TDBEdit
            Left = 795
            Top = 106
            Width = 149
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'telphone'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 15
          end
          object dbedtdept_name_in2: TDBEdit
            Left = 795
            Top = 48
            Width = 149
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'dept_name_in'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object cxDBDateEdit12: TcxDBDateEdit
            Left = 571
            Top = 46
            DataBinding.DataField = 'discharge_date'
            ParentFont = False
            Properties.Kind = ckDateTime
            Properties.ReadOnly = False
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 127
          end
          object dbcbbsex3: TDBComboBox
            Left = 346
            Top = 18
            Width = 131
            Height = 23
            Style = csDropDownList
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            Color = clCream
            DataField = 'sex'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            Items.Strings = (
              #30007
              #22899)
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object dbchkIsLate3: TDBCheckBox
            Left = 643
            Top = 78
            Width = 54
            Height = 17
            Caption = #36831#25253
            DataField = 'IsLate'
            Font.Charset = GB2312_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            Visible = False
          end
          object dbedtFInpNO3: TDBEdit
            Left = 797
            Top = -2
            Width = 147
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'FInpNO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 16
          end
        end
      end
      object RzGroupBox4: TRzGroupBox
        Left = 0
        Top = 712
        Width = 1239
        Height = 178
        Align = alTop
        BannerHeight = 24
        BorderOuter = fsFlat
        Caption = #36865#26816#20449#24687
        CaptionFont.Charset = ANSI_CHARSET
        CaptionFont.Color = 7879740
        CaptionFont.Height = -19
        CaptionFont.Name = #24494#36719#38597#40657
        CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7879740
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        GroupStyle = gsBanner
        ParentColor = True
        ParentFont = False
        TabOrder = 4
        VisualStyle = vsClassic
        object pnl5: TPanel
          Left = 1
          Top = 25
          Width = 1237
          Height = 152
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 0
          object lbl65: TLabel
            Left = 25
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #30149#20154'ID'#21495#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl66: TLabel
            Left = 25
            Top = 22
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #30149#20154#22995#21517#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl67: TLabel
            Left = 296
            Top = 22
            Width = 44
            Height = 16
            AutoSize = False
            Caption = #24615#21035#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl68: TLabel
            Left = 267
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20837#38498#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl69: TLabel
            Left = 25
            Top = 80
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20837#38498#35786#26029#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl70: TLabel
            Left = 717
            Top = 79
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20027#27835#21307#29983#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl71: TLabel
            Left = 496
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #25253#21578#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl72: TLabel
            Left = 25
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #25253#21578#31185#23460#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl73: TLabel
            Left = 267
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #25253#21578#21307#29983#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object btn13: TSpeedButton
            Left = 230
            Top = 106
            Width = 19
            Height = 20
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btn14: TSpeedButton
            Left = 456
            Top = 76
            Width = 19
            Height = 20
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btn15: TSpeedButton
            Left = 456
            Top = 106
            Width = 19
            Height = 20
            Caption = '...'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object btn16: TSpeedButton
            Left = 924
            Top = 76
            Width = 19
            Height = 20
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl74: TLabel
            Left = 496
            Top = 80
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #26159#21542#28431#25253#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl75: TLabel
            Left = 717
            Top = 22
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20986#29983#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl76: TLabel
            Left = 717
            Top = 108
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #31185#23460#30005#35805#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl77: TLabel
            Left = 717
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20837#38498#31185#23460#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object bvl5: TBevel
            Left = 571
            Top = 97
            Width = 127
            Height = 1
            Style = bsRaised
          end
          object lbl78: TLabel
            Left = 496
            Top = 50
            Width = 73
            Height = 16
            AutoSize = False
            Caption = #20986#38498#26085#26399#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl79: TLabel
            Left = 520
            Top = 22
            Width = 49
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = #24180#40836#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbl80: TLabel
            Left = 731
            Top = 1
            Width = 57
            Height = 16
            AutoSize = False
            Caption = #30149#26696#21495#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object dbedtpatient_id4: TDBEdit
            Left = 102
            Top = 48
            Width = 147
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'patient_id'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object dbedtname5: TDBEdit
            Left = 102
            Top = 20
            Width = 147
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object dbedtage4: TDBEdit
            Left = 571
            Top = 20
            Width = 127
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'age'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object dbedtbase_diagnosis_desc4: TDBEdit
            Left = 102
            Top = 77
            Width = 351
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'base_diagnosis_desc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 8
          end
          object dbedtdept_name4: TDBEdit
            Left = 102
            Top = 106
            Width = 126
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'dept_name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 13
          end
          object dbedtdoctor4: TDBEdit
            Left = 795
            Top = 77
            Width = 127
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'doctor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object dbedtoperator4: TDBEdit
            Left = 346
            Top = 106
            Width = 107
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'operator'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 14
          end
          object cxDBDateEdit13: TcxDBDateEdit
            Left = 571
            Top = 104
            DataBinding.DataField = 'create_date'
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 12
            Width = 127
          end
          object cxDBDateEdit14: TcxDBDateEdit
            Left = 346
            Top = 46
            DataBinding.DataField = 'admission_date'
            ParentFont = False
            Properties.ReadOnly = True
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 132
          end
          object dbchkislb3: TDBCheckBox
            Left = 579
            Top = 78
            Width = 54
            Height = 17
            Caption = #28431#25253
            DataField = 'islb'
            Font.Charset = GB2312_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            Visible = False
          end
          object cxDBDateEdit15: TcxDBDateEdit
            Left = 795
            Top = 18
            DataBinding.DataField = 'birth_date'
            ParentFont = False
            Properties.ReadOnly = True
            Style.BorderStyle = ebsUltraFlat
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.ButtonTransparency = ebtNone
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 149
          end
          object dbedttelphone4: TDBEdit
            Left = 795
            Top = 106
            Width = 149
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'telphone'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 15
          end
          object dbedtdept_name_in3: TDBEdit
            Left = 795
            Top = 48
            Width = 149
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'dept_name_in'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object cxDBDateEdit16: TcxDBDateEdit
            Left = 571
            Top = 46
            DataBinding.DataField = 'discharge_date'
            ParentFont = False
            Properties.Kind = ckDateTime
            Properties.ReadOnly = False
            Style.Color = clCream
            Style.Edges = [bBottom]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 127
          end
          object dbcbbsex4: TDBComboBox
            Left = 346
            Top = 18
            Width = 131
            Height = 23
            Style = csDropDownList
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            Color = clCream
            DataField = 'sex'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            Items.Strings = (
              #30007
              #22899)
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object dbchkIsLate4: TDBCheckBox
            Left = 643
            Top = 78
            Width = 54
            Height = 17
            Caption = #36831#25253
            DataField = 'IsLate'
            Font.Charset = GB2312_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            Visible = False
          end
          object dbedtFInpNO4: TDBEdit
            Left = 797
            Top = -2
            Width = 147
            Height = 21
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BorderStyle = bsNone
            Color = clCream
            DataField = 'FInpNO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ReadOnly = True
            TabOrder = 16
          end
        end
      end
    end
  end
  object ilToolBar: TImageList
    Left = 460
    Top = 12
    Bitmap = {
      494C01011C001E00140010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000008000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B89F8E004E2E
      1C004E2E1C004E2E1C004E2E1C004E2E1C004E2E1C004E2E1C004E2E1C004E2E
      1C004E2E1C000B264500494D5800000000000000000000000000000000000000
      0000C2A997004E2E1C004E2E1C004E2E1C004E2E1C004E2E1C004E2E1C004E2E
      1C00000000000000000000000000000000000000000000000000000000000000
      000000000000FFC28600FF9A3600FF9A3600FF9A3600FF9A3600FFC286000000
      000000000000000000000000000000000000000000000000000091D3A10048B5
      620048B5620048B5620048B5620048B5620048B5620048B5620048B5620048B5
      620091D3A1000000000000000000000000000000000000000000B89F8E00E9DE
      D800A48B7A00A48B7A00A48B7A00A48B7A00A48B7A00A48B7A00A48B7A00A48B
      7A000B2645003440780037568000494D58000000000000000000000000000000
      0000C2A99700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004E2E
      1C0000000000000000000000000000000000000000000000000000000000FFC2
      8600FF9A3600FFAE3000FFAE2F00FFAE2F00FFAE2F00FFAE2F00FFAE2F00FF9A
      3600FFC286000000000000000000000000000000000091D3A1004CC2740056DF
      9D0056DF9D0056DF9D0056DF9D0056DF9D0056DF9D0056DF9D0056DF9D0056DF
      9D004CC2740091D3A10000000000000000000000000000000000B89F8E00EDE3
      DE00E9DED800E5D9D300E2D4CC00DECEC600DAC9C000D7C4BA00D3BFB4000B26
      450034407800307DD80080CCF6002580DC000000000000000000000000000808
      0800C2A99700FFFFFF00C5A69600C5A69600C5A69600C5A69600FFFFFF004E2E
      1C00080808000000000000000000000000000000000000000000FFC28600FFAF
      3300FFAF3300FFCB7B00FFE8C500FFE8C500FFE8C500FFE8C500FFCB7B00FFAF
      3100FFAE3100FFC2860000000000000000000000000048B5620056DF9D0056DF
      9D005CE0A00061E2A30065E2A50066E3A50065E2A50061E2A3005CE0A00056DF
      9D0056DF9D0048B5620000000000000000000000000000000000B89F8E00F0E9
      E500EDE3DE00E9DED800E5D9D300E2D4CC00DECEC600DAC9C0000B2645003440
      78002D75D30080CCF6002580DC00000000000000000000000000897363000808
      0800C2A99700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004E2E
      1C00080808008973630000000000000000000000000000000000FF9A3600FFB1
      3600FFEACA00FFEACA00FFEACA00FFEACA00FFEACA00FFEACA00FFEACA00FFEA
      CA00FFB03400FF9A360000000000000000000000000048B562005BE0A00065E2
      A5006EE5A90076E6AD007CE7B0007EE8B1007CE7B00076E6AD006EE5A90065E2
      A5005BE0A00048B5620000000000000000000000000000000000B89F8E00F3EE
      EB00F0E9E500EDE3DE00956E6800956E6800956E6800956E6800837B8200487B
      BB0080CCF6002580DC004E2E1C00000000000000000089736300A79080000808
      0800C2A99700FFFFFF00C5A69600C5A69600C5A69600C5A69600FFFFFF004E2E
      1C0008080800A7908000897363000000000000000000FFC28600FFB23A00FFCF
      8500FFEDD100FFEDD100FFEDD100FFEDD100FFEDD100FFEDD100FFEDD100FFED
      D100FFCF8400FFB13700FFC28600000000000000000091D3A1006AE4A70078E7
      AE0085EAB50090ECBA0097EEBE0099EEBF0097EEBE0090ECBA0085EAB50078E7
      AE006AE4A70091D3A10000000000000000000000000000000000B89F8E00F7F3
      F200DECEC600956E6800F3E2B400FFE3AB00FFEEC900FBF2D400956E68009A9C
      A3002580DC00A48B7A004E2E1C00000000000000000089736300B5A092000808
      0800B69D8B00D0BAAD00D0BAAD00D0BAAD00D0BAAD00D0BAAD00D0BAAD004E2E
      1C0008080800B5A09200897363000000000000000000FF9A3600FFB43E00FFF0
      D800FFF0D800FFF0D800FFF0D800FFF0D800FFF0D800FFF0D800FFF0D800FFF0
      D800FFF0D800FFB23A00FF9A360000000000000000000000000048B562008EEC
      B9009EEFC200ABF2C800B3F4CC00B6F4CE00B3F4CC00ABF2C8009EEFC2008EEC
      B90048B562000000000000000000000000000000000000000000B89F8E00FBFA
      F800956E6800EAD7AF00FFD89A00FFE6BD00FFEED300FFFAF200FCFAEF00956E
      6800DAC9C000A48B7A004E2E1C00000000000000000089736300C4B2A6004E2E
      1C004E2E1C004E2E1C004E2E1C004E2E1C004E2E1C004E2E1C004E2E1C004E2E
      1C004E2E1C00C4B2A600897363000000000000000000FF9A3600FFB64200FFF3
      E000FFF3E000FFF3E000FFF3E000FF9A3600FF9A3600FF9A3600FF9A3600FF9A
      3600FFF3E000FFB43E00FF9A36000000000000000000000000000000000048B5
      620048B562003D97D6003D97D6003D97D6003D97D60078B6E200B6F4CE0048B5
      6200000000000000000000000000000000000000000000000000B89F8E00FFFF
      FF00956E6800FAE6B200FFD09000FFE2B700FFEACC00FFF0D900FFEDCB00956E
      6800DECEC600A48B7A004E2E1C00000000000000000089736300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000800000FFFFFF00897363000000000000000000FF9A3600FFB74600FFF6
      E800FFF6E800FFF6E800FFF6E800FF9A3600FFF6E800FFF6E800FFF6E800FFF6
      E800FFF6E800FFB64200FF9A3600000000000000000000000000000000000000
      00003D97D6007FD3FF007FD3FF007FD3FF007FD3FF007FD3FF003D97D6000000
      0000000000000000000000000000000000000000000000000000B89F8E00FFFF
      FF00956E6800F7E9BA00FFDEB100FFD59F00FFE1B600FFE3BA00FFDC9E00956E
      6800E3D7CF00A48B7A004E2E1C00000000000000000089736300A48B7A00A48B
      7A00897363008973630089736300897363008973630089736300897363008973
      6300A48B7A00A48B7A00897363000000000000000000FF9A3600FFB94900FFF9
      EF00FFF9EF00FFF9EF00FFF9EF00FF9A3600FFF9EF00FFF9EF00FFF9EF00FFF9
      EF00FFF9EF00FFB74600FF9A3600000000000000000000000000000000008BC1
      E6007FD3FF008DD8FF009BDDFF00A0DFFF009BDDFF008DD8FF007FD3FF0078B6
      E200000000000000000000000000000000000000000000000000B89F8E00FFFF
      FF00956E6800E2D1BC00FEFEFA00FFE1B600FFCF8C00FFD59300F7E5B100956E
      6800E7DCD500A48B7A004E2E1C00000000000000000089736300BDAB9F00BDAB
      9F0089736300EDE6E200EDE6E200EDE6E200EDE6E200EDE6E200EDE6E2008973
      6300BDAB9F00BDAB9F00897363000000000000000000FFC28600FFC56800FFDE
      AB00FFFBF600FFFBF600FFFBF600FF9A3600FFFBF600FFFBF600FFFBF600FFFB
      F600FFDFAE00FFC36500FFC28600000000000000000000000000000000003D97
      D60096DCFF00B2E5FF00C6EDFF00CDEFFF00C6EDFF00B2E5FF0096DCFF003D97
      D600000000000000000000000000000000000000000000000000B89F8E00FFFF
      FF00F3EEEB00956E6800E5D7C000F8EABB00FBE7B200EAD7AD00956E6800DECE
      C600C9AD9D00A48B7A004E2E1C00000000000000000089736300897363000808
      0800897363008973630089736300897363008973630089736300897363008973
      6300080808008973630089736300000000000000000000000000FF9A3600FFC6
      6B00FFFDFB00FFFDFB00FFFDFB00FF9A3600FFFDFB00FFFDFB00FFFDFB00FFFD
      FB00FFC97500FF9A360000000000000000000000000000000000000000003D97
      D600B2E5FF00D4F2FF00E7F8FF00EEFBFF00E7F8FF00D4F2FF00B2E5FF003D97
      D600000000000000000000000000000000000000000000000000B89F8E00FFFF
      FF00FFFFFF00F3EEEB00956E6800956E6800956E6800956E6800DECEC600B89F
      8E004E2E1C004E2E1C004E2E1C00000000000000000000000000000000000808
      0800C2A99700F8F8F700F7F7F700F6F6F600F6F6F600F6F6F600F4F4F3004E2E
      1C00080808000000000000000000000000000000000000000000FFC28600FFD1
      8800FFCC7B00FFE1B100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFE4B900FFCF
      8300FFCF8400FFC2860000000000000000000000000000000000000000003D97
      D600C6EDFF00E7F8FF00F9FEFF00FCFFFF00F9FEFF00E7F8FF00C6EDFF003D97
      D600000000000000000000000000000000000000000000000000B89F8E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FAF7F600B89F
      8E00EFE5DE00D0BAAD004E2E1C00000000000000000000000000000000000808
      0800C2A99700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004E2E
      1C0008080800000000000000000000000000000000000000000000000000FFC2
      8600FF9A3600FFD48E00FFD28900FFD28900FFD18900FFD28C00FFD49000FF9A
      3600FFC286000000000000000000000000000000000000000000000000008BC1
      E6003D97D60095C9EA0080BBE40054A3DB00FCFFFF0095C9EA003D97D6008BC1
      E600000000000000000000000000000000000000000000000000B89F8E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00B89F
      8E00D0BAAD004E2E1C0000000000000000000000000000000000000000000000
      0000C2A99700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004E2E
      1C00000000000000000000000000000000000000000000000000000000000000
      000000000000FFC28600FF9A3600FF9A3600FF9A3600FF9A3600FFC286000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003D97D6003D97D6003D97D60081BCE5009ECCEB003D97D6003D97D6000000
      0000000000000000000000000000000000000000000000000000B89F8E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B89F
      8E004E2E1C000000000000000000000000000000000000000000000000000000
      0000C2A99700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004E2E
      1C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008BC1E6003D97D6003D97D6003D97D6008BC1E600000000000000
      0000000000000000000000000000000000000000000000000000B89F8E00B89F
      8E00B89F8E00B89F8E00B89F8E00B89F8E00B89F8E00B89F8E00B89F8E00B89F
      8E00000000000000000000000000000000000000000000000000000000000000
      0000C2A99700C2A99700C2A99700C2A99700C2A99700C2A99700C2A99700C2A9
      9700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000353535008B8B8B008B8B8B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B84F9001B84
      F9001B84F9001B84F9001B84F9001B84F9001B84F9001B84F9001B84F9001B84
      F9001B84F9001B84F9000000000000000000FFCC9A00FF9A3600FF9A3600FFCC
      9900FFCC9900FF9A3600FF9A3600FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900FF9A3600FF9A3600FFCC9A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002083
      C9002083C90079B5DF0000000000000000008B8B8B0035353500353535002083
      C9002083C9000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001B84F9007FC1FF00FFFF
      FF008DC8FF000084FF00339DFF007FC1FF004CA9FF000084FF003CA1FF007FC1
      FF0043A4FF000084FF001B84F90000000000FF9A3600FFB74700FFB74700FFF8
      F000FFF8F000FFB74700FFB74700FFF8F000FFF8F000FFF8F000FFF8F000FFF8
      F000FFB74700FFB74700FF9A3600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002083C90083D5
      FF0093DBFF00A4E1FF0079B5DF00000000008B8B8B0035353500A6E1FF0088D7
      FF006ECEFF002083C90000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001B84F900FCFEFF00FFFF
      FF0081C2FF000084FF0084C4FF00FFFFFF0099CEFF000084FF008DC8FF00FFFF
      FF0087C5FF000084FF001B84F90000000000FF9A3600FFBB5000FFBB5000FFFC
      F900FFFCF900FFBB5000FFBB5000FFFCF900FFFCF900FFFCF900FFFCF900FFFC
      F900FFBB5000FFBB5000FF9A3600000000000000000000000000000000000000
      000000000000000000000000000000000000000000002083C90087D6FF0097DC
      FF00A8E2FF00B9E8FF002083C90000000000000000002083C900C3ECFF00A6E1
      FF0088D7FF006ECEFF002083C900000000000000000000000000000000000000
      000000000000000000000000000000000000000000001B84F90086C5FF0080C2
      FF000084FF000385FF00D8ECFF00FFFFFF007BBFFF000084FF00B7DCFF00FFFF
      FF0072BBFF000084FF001B84F90000000000FF9A3600FFBF5A00FFBF5A00FFF2
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF2
      DE00FFBF5A00FFBF5A00FF9A360000000000000000000000000000000000FFC2
      8600FF9A3600FF9A3600FF9A3600FF9A3600FFC286008BD8FF009CDEFF00ADE4
      FF00BDEAFF00CCEFFF002083C90000000000000000002083C900DBF4FF00C3EC
      FF00A6E1FF0088D7FF006ECEFF002083C9000000000000000000000000000000
      000000000000000000000000000000000000000000001B84F9000084FF000084
      FF000687FF0084C4FF00FFFFFF00FCFEFF002797FF000C8AFF00F6FBFF00FFFF
      FF0048A7FF000084FF001B84F90000000000FF9A3600FFC36500FFC36500FFC3
      6500FFC36500FFC36500FFC36500FFC36500FFC36500FFC36500FFC36500FFC3
      6500FFC36500FFC36500FF9A3600000000000000000000000000FF9A3600FFAE
      3000FFB94C00FFBF5B00FFBF5A00FFB94B00FFAE2F00FF9A3600B1E5FF00C1EB
      FF00D0F0FF002083C900000000000000000000000000000000002083C900DBF4
      FF00C3ECFF00A6E1FF0088D7FF006ECEFF002083C90000000000000000000000
      000000000000000000000000000000000000000000001B84F900339DFF0099CE
      FF00E1F1FF00FFFFFF00FFFFFF0090C9FF000084FF006FBAFF00FFFFFF00F3F9
      FF000988FF000084FF001B84F90000000000FF9A3600FFC87100FFC87100FFC8
      7100FFC87100FFC87100FFC87100FFC87100FFC87100FFC87100FFC87100FFC8
      7100FFC87100FFC87100FF9A36000000000000000000FF9A3600FFB64300FFC9
      7400FFD59400FFDBA100FFDAA100FFD59300FFC87300FFB54100FF9A3600D3F2
      FF002083C9000000000000000000000000000000000000000000000000002083
      C900DBF4FF00C3ECFF00A6E1FF0088D7FF006ECEFF002083C900000000000000
      000000000000000000000000000000000000000000001B84F9007FC1FF00FFFF
      FF00FFFFFF00F9FCFF007BBFFF000385FF001B91FF00EDF6FF00FFFFFF0090C9
      FF000084FF000084FF001B84F90000000000FF9A3600FFCD7E00FFCD7E00FFCD
      7E00FFCD7E00FFCD7E00FFCD7E00FFCD7E00FFCD7E00FFCD7E00FFCD7E00FFCD
      7E00FFCD7E00FFCD7E00FF9A360000000000FFC28600FFB23900FFCA7700FFDD
      A900FFE9C700FFEDD100FFEDD100FFE9C600FFDDA800FFC97500FFB03500FFC2
      8600000000000000000000000000000000000000000000000000000000000000
      00002083C900DBF4FF00C3ECFF00A6E1FF0088D7FF006ECEFF008B8B8B000000
      000000000000000000000000000000000000000000001B84F90051ABFF009CCF
      FF006AB8FF002496FF000788FF002496FF00CAE6FF00FFFFFF00E5F2FF001990
      FF000788FF000788FF001B84F90000000000FF9A3600FFD28B00FFD28B00FFF3
      E500FFF3E500FFF3E500FFF3E500FFF3E500FFF3E500FFF3E500FFF3E500FFF3
      E500FFD28B00FFD28B00FF9A360000000000FF9A3600FFBE5700FFD89900FFEA
      C800FFF4E300FFF6E800FFF6E800FFF4E300FFE9C700FFD79700FFBC5300FF9A
      3600000000000000000000000000000000000000000000000000000000000000
      0000000000002083C900DBF4FF00C3ECFF00A6E1FF008B8B8B00FFFFFF008B8B
      8B0000000000000000000000000000000000000000001B84F900128FFF00128F
      FF00128FFF002096FF0082C4FF00F1F8FF00FFFFFF00F7FBFF0044A7FF00128F
      FF00128FFF00128FFF001B84F90000000000FF9A3600FFD79800FFD79800FFF5
      E900FFF5E900FFF5E900FFF5E900FFF5E900FFF5E900FFF5E900FFF5E900FFF5
      E900FFD79800FFD79800FF9A360000000000FF9A3600FFC56900FFDDA800FFEE
      D300FFF6E900FFF7EA00FFF7EA00FFF6E800FFEED300FFDDA600FFC46600FF9A
      3600000000000000000000000000000000000000000000000000000000000000
      000000000000000000002083C900DBF4FF008B8B8B00E2E2E200C8C8C800FFFF
      FF008B8B8B00000000000000000000000000000000001B84F90055B0FF00A5D5
      FF00C0E2FF00FCFEFF00FFFFFF00FFFFFF00E5F3FF004EADFF001F97FF001F97
      FF001F97FF001F97FF001B84F90000000000FF9A3600FFDCA400FFDCA400FFF7
      EE00FFF7EE00FFF7EE00FFF7EE00FFF7EE00FFF7EE00FFF7EE00FFF7EE00FFF7
      EE00FFDCA400FFDCA400FF9A360000000000FF9A3600FFC76D00FFDEAA00FFEE
      D400FFF7E900FFF7EB00FFF7EA00FFF6E900FFEED400FFDEA900FFC56A00FF9A
      3600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008B8B8B00FFFFFF00FFFFFF00E2E2E200C8C8
      C8008B8B8B005F5FFF000000000000000000000000001B84F90096CFFF00FFFF
      FF00FFFFFF00FFFFFF00F3F9FF009CD2FF0039A6FF002DA0FF002DA0FF002DA0
      FF002DA0FF002DA0FF001B84F90000000000FF9A3600FFE0AF00FFE0AF00FFFA
      F300FFFAF300FFFAF300FFFAF300FFFAF300FFFAF300FFFAF300FFFAF300FFFA
      F300FFE0AF00FFE0AF00FF9A360000000000FF9A3600FFC26300FFDAA000FFEB
      CC00FFF5E500FFF7EA00FFF7EA00FFF5E400FFEBCB00FFDA9F00FFC16000FF9A
      3600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008B8B8B00FFFFFF00FFFFFF008B8B
      8B00A2A7FF008C90FF005F5FFF0000000000000000001B84F90070C0FF00A2D6
      FF008BCCFF0074C2FF0040ABFF003EAAFF003EAAFF003EAAFF003EAAFF003EAA
      FF003EAAFF003EAAFF001B84F90000000000FF9A3600FFE7C200FFE7C200FFFC
      F800FFFCF800FFFCF800FFFCF800FFFCF800FFFCF800FFFCF800FFFCF800FFFC
      F800FFE6BF00FFE5BD00FF9A360000000000FFC28600FFC56A00FFD69300FFE1
      B300FFECCD00FFEFD600FFEFD600FFECCD00FFE3B600FFD79800FFC36600FFC2
      8600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008B8B8B008B8B8B00CCD3
      FF00B8BEFF00A2A7FF005F5FFF0000000000000000001B84F90091D0FF00B6E0
      FF00B6E0FF00B6E0FF00B6E0FF00B6E0FF00B6E0FF00B6E0FF00B6E0FF00B6E0
      FF00B6E0FF0091D0FF001B84F90000000000FF9A3600FFE8C600FFAE5A00FFFE
      FC00FFFEFC00FFFEFC00FFFEFC00FFFEFC00FFFEFC00FFFEFC00FFFEFC00FFFE
      FC00FFC38200FFEBCD00FF9A36000000000000000000FF9A3600FFD28B00FFD6
      9500FFDCA400FFE0AF00FFE0AF00FFDDA800FFDBA300FFD59200FF9A36000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005F5FFF00DCE5
      FF00CCD3FF005F5FFF00000000000000000000000000000000001B84F9001B84
      F9001B84F9001B84F9001B84F9001B84F9001B84F9001B84F9001B84F9001B84
      F9001B84F9001B84F9000000000000000000FF9A3600FFEFD500FFF0D800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF1DB00FF9A360000000000000000000000000000000000FF9A3600FFD4
      8E00FFD89900FFDBA200FFDBA200FFD89B00FFD49000FF9A3600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005F5F
      FF005F5FFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCC9A00FF9A3600FF9A3600FF9A
      3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A
      3600FF9A3600000000000000000000000000000000000000000000000000FFC2
      8600FF9A3600FF9A3600FF9A3600FF9A3600FFC2860000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2D2D200A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500D2D2D20000000000000000000000000058A2D7002083
      C9002083C9002083C9002083C9002083C9002083C9002083C9002083C9002083
      C9002083C90058A2D7000000000000000000000000000000000000000000FFCD
      9B00FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A
      3600FFCD9B00000000000000000000000000000000000000000000000000FFCD
      9B00FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A
      3600FFCD9B00000000000000000000000000A5A5A500DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00A5A5A500000000000000000058A2D70063CAFF0063CA
      FF0063CAFF0063CAFF0063CAFF0063CAFF0063CAFF0063CAFF0063CAFF0063CA
      FF0063CAFF0063CAFF0058A2D700000000000000000000000000FF9A3600FFAE
      2E00FFB03300FFB23900FFB43F00FFB74400FFB94A00FFBB5000FFBE5600FFC0
      5C00FFC26200FF9A360000000000000000000000000000000000FF9A3600FFAE
      2E00FFB03300FFB23900FFB43F00FFB74400FFB94A00FFBB5000FFBE5600FFC0
      5C00FFC26200FF9A36000000000000000000A5A5A500E1E1E100E1E1E100E1E1
      E100E1E1E100E1E1E100E1E1E100C4C4C400E1E1E100E1E1E100E1E1E100E1E1
      E100E1E1E100E1E1E100A5A5A50000000000000000002083C900FFFFFF00F2FB
      FF00E0F5FF00CBEDFF00B3E5FF009ADDFF0080D3FF0065CAFF004CC2FF0034BA
      FF001FB2FF000DACFF002083C9000000000000000000FFCD9B00FFA51600FFA5
      1600FFA51600FFA51600FFA51600FFA51600FFA51700FFA61800FFA71B00FFA8
      1E00FFA92100FFAB2500FFCD9B000000000000000000FFCD9B00FFA51600FFA5
      1600FFA51600FFA51600FFA51600FFA51600FFA51700FFA61800FFA71B00FFA8
      1E00FFA92100FFAB2500FFCD9B0000000000A5A5A500E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400C5C5C500FFE3AD00C5C5C500E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400A5A5A50000000000000000002083C90076D0FF0076D0
      FF0076D0FF0076D0FF0076D0FF0076D0FF0076D0FF0076D0FF0076D0FF0076D0
      FF0076D0FF0076D0FF002083C9000000000000000000FF9A3600FFA71A00FFA7
      1A00FFA61900FFA61900FFA61900FFE9C600FFE9C600FFA61800FFA51700FFA5
      1700FFA51700FFA51600FF9A36000000000000000000FF9A3600FFA71A00FFA7
      1A00FFA61900FFA61900FFA61900FFA61800FFA61800FFA61800FFA51700FFA5
      1700FFA51700FFA51600FF9A360000000000A5A5A500E7E7E700E7E7E700E7E7
      E700E7E7E700C7C7C700FFE5B400FFE5B400FFE5B400C7C7C700E7E7E700E7E7
      E700E7E7E700E7E7E700A5A5A50000000000000000002083C900FFFFFF00F2FB
      FF00E0F5FF00CBEDFF00B3E5FF009ADDFF0080D3FF0065CAFF004CC2FF0034BA
      FF001FB2FF000DACFF002083C9000000000000000000FF9A3600FFAA2300FFAA
      2200FFA92100FFA92000FFA92000FFECCE00FFECCE00FFA81E00FFA81D00FFA7
      1C00FFA71C00FFA71B00FF9A36000000000000000000FF9A3600FFAA2300FFAA
      2200FFA92100FFA92000FFA92000FFA81F00FFA81E00FFA81E00FFA81D00FFA7
      1C00FFA71C00FFA71B00FF9A360000000000A5A5A500EBEBEB00EBEBEB00EBEB
      EB00C9C9C900FFE8BC00FFE8BC00FFE8BC00FFE8BC00FFE8BC00C9C9C900EBEB
      EB00EBEBEB00EBEBEB00A5A5A50000000000000000002083C9008ED9FF008ED9
      FF008ED9FF008ED9FF008ED9FF008ED9FF008ED9FF008ED9FF008ED9FF008ED9
      FF008ED9FF008ED9FF002083C9000000000000000000FF9A3600FFAE2E00FFAE
      2D00FFAE2C00FFAD2B00FFAD2A00FFEFD600FFEFD600FFAC2700FFAB2600FFAB
      2500FFAB2400FFAA2400FF9A36000000000000000000FF9A3600FFAE2E00FFAE
      2D00FFAE2C00FFAD2B00FFAD2A00FFAC2900FFAC2800FFAC2700FFAB2600FFAB
      2500FFAB2400FFAA2400FF9A360000000000A5A5A500EFEFEF00EFEFEF00CBCB
      CB00FFEBC500FFEBC500FFEBC500FFEBC500FFEBC500FFEBC500FFEBC500CBCB
      CB00EFEFEF00EFEFEF00A5A5A50000000000000000002083C900FFFFFF00F2FB
      FF00E0F5FF00CBEDFF00B3E5FF009ADDFF0080D3FF0065CAFF004CC2FF0034BA
      FF001FB2FF000DACFF002083C9000000000000000000FF9A3600FFB33B00FFB3
      3A00FFF3E000FFF3E000FFF3E000FFF3E000FFF3E000FFF3E000FFF3E000FFF3
      E000FFAF3000FFAF2F00FF9A36000000000000000000FF9A3600FFB33B00FFB3
      3A00FFF3E000FFF3E000FFF3E000FFF3E000FFF3E000FFF3E000FFF3E000FFF3
      E000FFAF3000FFAF2F00FF9A360000000000A5A5A500F3F3F300CDCDCD00FFEE
      CF00FFEECF00FFEECF00FFEECF00FFEECF00FFEECF00FFEECF00FFEECF00FFEE
      CF00CDCDCD00F3F3F300A5A5A500000000000000000058A2D700A9E2FF00A9E2
      FF00A9E2FF00A9E2FF00A9E2FF00A9E2FF00A9E2FF00A9E2FF00A9E2FF00A9E2
      FF00A9E2FF00A9E2FF0058A2D7000000000000000000FF9A3600FFB94A00FFB9
      4900FFF7EA00FFF7EA00FFF7EA00FFF7EA00FFF7EA00FFF7EA00FFF7EA00FFF7
      EA00FFB43E00FFB43D00FF9A36000000000000000000FF9A3600FFB94A00FFB9
      4900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFB43E00FFB43D00FF9A360000000000A5A5A500CFCFCF00FFF2D800FFF2
      D800FFF2D800FFF2D800FFF2D800FFF2D800FFF2D800FFF2D800FFF2D800FFF2
      D800FFF2D800CFCFCF00A5A5A50000000000000000000000000058A2D7002083
      C90056A7DC0056A7DC002083C9002083C9002083C9002083C90056A7DC0056A7
      DC002083C90058A2D700000000000000000000000000FF9A3600FFBF5900FFBE
      5800FFBE5600FFBD5500FFBD5400FFFAF200FFFAF200FFBB5000FFBB4F00FFBB
      4E00FFBA4D00FFBA4B00FF9A36000000000000000000FF9A3600FFBF5900FFBE
      5800FFBE5600FFBD5500FFBD5400FFBC5300FFBC5100FFBB5000FFBB4F00FFBB
      4E00FFBA4D00FFBA4B00FF9A360000000000A5A5A500FFF5E200FFF5E200FFF5
      E200FFF5E200FFF5E200FFF5E200FFF5E200FFF5E200FFF5E200FFF5E200FFF5
      E200FFF5E200FFF5E200A5A5A500000000000000000000000000000000002083
      C900C3ECFF00C3ECFF002083C90000000000000000002083C900C3ECFF00C3EC
      FF002083C90000000000000000000000000000000000FF9A3600FFC46700FFC4
      6600FFC36400FFC36300FFC26200FFFDFA00FFFDFA00FFC15F00FFC15E00FFC0
      5C00FFC05B00FFBF5A00FF9A36000000000000000000FF9A3600FFC46700FFC4
      6600FFC36400FFC36300FFC26200FFC26100FFC26000FFC15F00FFC15E00FFC0
      5C00FFC05B00FFBF5A00FF9A36000000000000000000A5A5A500FFF8EB00FFF8
      EB00FFF8EB00FFF8EB00FFF8EB00FFF8EB00FFF8EB00FFF8EB00FFF8EB00FFF8
      EB00FFF8EB00A5A5A50000000000000000000000000000000000000000002083
      C900CEF0FF00CEF0FF002083C90000000000000000002083C900CEF0FF00CEF0
      FF002083C90000000000000000000000000000000000FF9A3600FFC97300FFC8
      7200FFC87100FFC87000FFC76F00FFFFFF00FFFFFF00FFC66C00FFC66B00FFC5
      6A00FFC56900FFC56800FF9A36000000000000000000FF9A3600FFC97300FFC8
      7200FFC87100FFC87000FFC76F00FFC76E00FFC76D00FFC66C00FFC66B00FFC5
      6A00FFC56900FFC56800FF9A3600000000000000000000000000A5A5A500FFFB
      F300FFFBF300FFFBF300FFFBF300FFFBF300FFFBF300FFFBF300FFFBF300FFFB
      F300A5A5A5000000000000000000000000000000000000000000000000002083
      C900D9F3FF00D9F3FF002083C9002083C9002083C9002083C900D9F3FF00D9F3
      FF002083C90000000000000000000000000000000000FFCD9B00FFD49000FFD2
      8A00FFCC7B00FFCC7A00FFCB7900FFCB7900FFCB7800FFCA7700FFCA7600FFCD
      7D00FFD28B00FFD18900FFCD9B000000000000000000FFCD9B00FFD49000FFD2
      8A00FFCC7B00FFCC7A00FFCB7900FFCB7900FFCB7800FFCA7700FFCA7600FFCD
      7D00FFD28B00FFD18900FFCD9B0000000000000000000000000000000000A5A5
      A500FFFDFA00FFFDFA00FFFDFA00FFFDFA00FFFDFA00FFFDFA00FFFDFA00A5A5
      A5000000000000000000000000000000000000000000000000000000000058A2
      D700E1F6FF00E1F6FF00E1F6FF00E1F6FF00E1F6FF00E1F6FF00E1F6FF00E1F6
      FF0058A2D7000000000000000000000000000000000000000000FF9A3600FFDF
      AB00FFDDA800FFDDA800FFDDA800FFDDA800FFDDA800FFDDA700FFDDA700FFDD
      A800FFDEAA00FF9A360000000000000000000000000000000000FF9A3600FFDF
      AB00FFDDA800FFDDA800FFDDA800FFDDA800FFDDA800FFDDA700FFDDA700FFDD
      A800FFDEAA00FF9A360000000000000000000000000000000000000000000000
      0000A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002083C900E8F9FF00E8F9FF00E8F9FF00E8F9FF00E8F9FF00E8F9FF002083
      C90000000000000000000000000000000000000000000000000000000000FFCD
      9B00FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A
      3600FFCD9B00000000000000000000000000000000000000000000000000FFCD
      9B00FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A
      3600FFCD9B000000000000000000000000000000000000000000000000000000
      000000000000BCBCBC00A5A5A500A5A5A500A5A5A500BCBCBC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000058A2D7002083C9002083C9002083C9002083C90058A2D7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000399CE1003097DF003097
      DF003097DF003097DF003097DF003097DF003097DF003097DF003097DF003097
      DF00399CE100399CE100000000000000000000000000399CE1005C98C1005C98
      C1005C98C1005C98C1005C98C1005C98C1005C98C1005C98C1005C98C1005C98
      C100399CE100399CE100000000000000000000000000399CE1003097DF003097
      DF003097DF003097DF003097DF003097DF003097DF003097DF003097DF003097
      DF00399CE1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000399CE10060BDF30082D5FF0082D5
      FF0082D5FF0082D5FF0082D5FF0082D5FF0082D5FF0082D5FF0082D5FF0082D5
      FF0060BDF30082D5FF00399CE10000000000399CE10089BAD300A8D9F200A8D9
      F200A8D9F200A8D9F200A8D9F200A8D9F200A8D9F200A8D9F200A8D9F200A8D9
      F20089BAD30084D5FF00399CE10000000000399CE10063BDF30086D6FF0086D6
      FF0086D6FF0086D6FF0086D6FF0086D6FF0086D6FF0086D6FF0086D6FF0086D6
      FF0063BDF300399CE1000000000000000000D2D2D200A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500D2D2D20000000000399CE1005CB4ED003097DF0090D9
      FF0090D9FF0090D9FF0090D9FF0090D9FF0090D9FF0090D9FF0090D9FF0090D9
      FF0069BFF30090D9FF00399CE100000000001F8EDC005C98C1007DB8E200B4DE
      F400B4DEF400B4DEF400B4DEF400B4DEF400B4DEF400B4DEF400B4DEF400B4DE
      F40093BDD30094DBFF00399CE1000000000060B6ED00399CE10070C2F3009ADD
      FF009ADDFF009ADDFF009ADDFF009ADDFF009ADDFF009ADDFF009ADDFF009ADD
      FF0070C2F300399CE1000000000000000000A5A5A500DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00A5A5A50000000000399CE10062B7ED003097DF009FDF
      FF009FDFFF009FDFFF009FDFFF009FDFFF009FDFFF009FDFFF009FDFFF009FDF
      FF0073C3F3009FDFFF00399CE100000000001F8EDC00919191007FBAE400C1E4
      F600C1E4F600C1E4F600C1E4F600C1E4F600C1E4F600C1E4F600C1E4F600C1E4
      F6009EC2D300A7E2FF00399CE100000000001F8EDC00399CE10056AEE900B1E5
      FF00B1E5FF00B1E5FF00B1E5FF00B1E5FF00B1E5FF00B1E5FF00B1E5FF00B1E5
      FF007FC7F300B1E5FF00399CE10000000000A5A5A500E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E2E2E200CACACA00E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200A5A5A50000000000399CE10069B9ED003097DF00B1E5
      FF00B1E5FF00B1E5FF00B1E5FF00B1E5FF00B1E5FF00B1E5FF00B1E5FF00B1E5
      FF007FC7F300B1E5FF00399CE100000000001F8EDC009191910082BDE700CFEB
      F900CFEBF900CFEBF900CFEBF900CFEBF900CFEBF900CFEBF900CFEBF900CFEB
      F900AAC6D300BAE9FF00399CE100000000001F8EDC0079D1FF003097DF00C7ED
      FF00C7EDFF00C7EDFF00C7EDFF00C7EDFF00C7EDFF00C7EDFF00C7EDFF00C7ED
      FF008ECDF300C7EDFF00399CE10000000000A5A5A500E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600CCCCCC00BFBFBF00CCCCCC00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600A5A5A50000000000399CE10070BCED003097DF00C2EB
      FF00C2EBFF00C2EBFF00C2EBFF00C2EBFF00C2EBFF00C2EBFF00C2EBFF00C2EB
      FF008ACBF300C2EBFF00399CE100000000001F8EDC009191910085C0E900DDF2
      FB00DDF2FB00DDF2FB00DDF2FB00DDF2FB00DDF2FB00DDF2FB00DDF2FB00DDF2
      FB00B5C9D300CDEFFF00399CE100000000001F8EDC0079D1FF00399CE10054AB
      E600DBF4FF00DBF4FF00DBF4FF00DBF4FF00DBF4FF00DBF4FF00DBF4FF00DBF4
      FF009BD1F300DBF4FF00DBF4FF00399CE100A5A5A500EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00CECECE00C1C1C100EAEAEA00C1C1C100CECECE00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00A5A5A50000000000399CE10076BEED003097DF00D1F1
      FF00D1F1FF00D1F1FF00D1F1FF00D1F1FF00D1F1FF00D1F1FF00D1F1FF00D1F1
      FF0094CFF300D1F1FF00399CE100000000001F8EDC009191910087C2EB00E9F7
      FD00E9F7FD00E9F7FD00E9F7FD00E9F7FD00E9F7FD00E9F7FD00E9F7FD00E9F7
      FD00BFCDD300DDF5FF00399CE100000000001F8EDC007ED3FF007ED3FF003097
      DF00E8F9FF00E8F9FF00E8F9FF00E8F9FF00E8F9FF00E8F9FF00E8F9FF00E8F9
      FF00A3D4F300E8F9FF00E8F9FF00399CE100A5A5A500EFEFEF00EFEFEF00EFEF
      EF00D1D1D100C3C3C300EFEFEF00EFEFEF00EFEFEF00C3C3C300D1D1D100EFEF
      EF00EFEFEF00EFEFEF00A5A5A50000000000399CE1007BC0ED003097DF00DFF5
      FF00DFF5FF00DFF5FF00DFF5FF00DFF5FF00DFF5FF00DFF5FF00DFF5FF00DFF5
      FF009DD2F300DFF5FF00399CE100000000001F8EDC009191910088C4ED00F1FB
      FF00F1FBFF00F1FBFF00F1FBFF00F1FBFF00F1FBFF00F1FBFF00F1FBFF00F1FB
      FF00C5CFD300E8F9FF00399CE100000000001F8EDC008BD8FF008BD8FF008BD8
      FF003097DF003097DF003097DF003097DF003097DF003097DF003097DF003097
      DF00399CE100399CE100399CE1009CCDF000A5A5A500F4F4F400F4F4F400D4D4
      D400C5C5C500F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400C5C5C500D4D4
      D400F4F4F400F4F4F400A5A5A500000000001F8EDC007FC1ED003097DF00E8F9
      FF00E8F9FF00E8F9FF00E8F9FF00E8F9FF00E8F9FF00E8F9FF00E8F9FF00E8F9
      FF00A3D4F300E8F9FF00399CE100000000001F8EDC0091919100D3D3D3005C98
      C1005C98C1005C98C1005C98C1005C98C1005C98C1005C98C1005C98C1005C98
      C100399CE100399CE10000000000000000001F8EDC009BDDFF009BDDFF009BDD
      FF009BDDFF009BDDFF009BDDFF009BDDFF009BDDFF009BDDFF009BDDFF009BDD
      FF001F8EDC00000000000000000000000000A5A5A500F9F9F900D7D7D700C7C7
      C700F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900C7C7
      C700D7D7D700F9F9F900A5A5A500000000001F8EDC007AD2FF00399CE1003097
      DF003097DF003097DF003097DF003097DF003097DF003097DF003097DF003097
      DF00399CE100399CE10000000000000000001F8EDC0091919100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00919191000000000000000000000000001F8EDC00ADE4FF00ADE4FF00ADE4
      FF00ADE4FF00ADE4FF00ADE4FF00ADE4FF00ADE4FF00ADE4FF00ADE4FF00ADE4
      FF001F8EDC00000000000000000000000000A5A5A500D9D9D900C8C8C800FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00C8C8C800D9D9D900A5A5A500000000001F8EDC0092DAFF0092DAFF0092DA
      FF0092DAFF0092DAFF0092DAFF0092DAFF0092DAFF0092DAFF0092DAFF0092DA
      FF001F8EDC000000000000000000000000001F8EDC0092DAFF00919191009191
      9100919191009191910091919100919191009191910091919100919191009191
      91001F8EDC000000000000000000000000001F8EDC00BFEAFF00BFEAFF00BFEA
      FF00BFEAFF00BFEAFF00BFEAFF00BFEAFF00BFEAFF00BFEAFF00BFEAFF00BFEA
      FF001F8EDC00000000000000000000000000A5A5A500C9C9C900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C9C9C900A5A5A500000000001F8EDC00B2E6FF00B2E6FF00B2E6
      FF00B2E6FF00B2E6FF00B2E6FF00B2E6FF00B2E6FF00B2E6FF00B2E6FF00B2E6
      FF001F8EDC000000000000000000000000001F8EDC00B2E6FF00B2E6FF00B2E6
      FF00B2E6FF00B2E6FF00B2E6FF00B2E6FF00B2E6FF00B2E6FF00B2E6FF00B2E6
      FF001F8EDC000000000000000000000000001F8EDC00D0F0FF00D0F0FF00D0F0
      FF00D0F0FF00D0F0FF00D0F0FF00D0F0FF00D0F0FF00D0F0FF00D0F0FF00D0F0
      FF001F8EDC00000000000000000000000000A5A5A500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A5A5A500000000001F8EDC00D2F1FF00D2F1FF00D2F1
      FF00D2F1FF001F8EDC001F8EDC001F8EDC001F8EDC001F8EDC001F8EDC001F8E
      DC00000000000000000000000000000000001F8EDC00D2F1FF00D2F1FF00D2F1
      FF00D2F1FF001F8EDC001F8EDC001F8EDC001F8EDC001F8EDC001F8EDC001F8E
      DC00000000000000000000000000000000001F8EDC00DEF5FF00DEF5FF00DEF5
      FF00DEF5FF001F8EDC001F8EDC001F8EDC001F8EDC001F8EDC001F8EDC001F8E
      DC0000000000000000000000000000000000D2D2D200A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500D2D2D200000000001F8EDC00E8F9FF00E8F9FF00E8F9
      FF00E8F9FF001F8EDC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001F8EDC00E8F9FF00E8F9FF00E8F9
      FF00E8F9FF001F8EDC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001F8EDC00E8F9FF00E8F9FF00E8F9
      FF00E8F9FF001F8EDC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F8EDC001F8EDC001F8E
      DC001F8EDC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F8EDC001F8EDC001F8E
      DC001F8EDC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F8EDC001F8EDC001F8E
      DC001F8EDC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C8C8C8009191910000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A2DA
      B00048B5620048B5620048B5620048B5620048B5620048B5620048B5620048B5
      6200A2DAB0000000000000000000000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A50000000000000000000000000000000000000000000000
      00000000000000000000FF9A3600FF9A3600FF9A360000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000091919100DFDFDF0091919100000000000000
      000000000000000000000000000000000000000000000000000048B5620030DB
      950030DB950030DB950030DB950030DB950030DB950030DB950030DB950030DB
      950030DB950048B5620000000000000000000000000000000000A5A5A500F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200A5A5A50000000000000000000000000000000000000000000000
      000000000000FF9A3600FFAE2F00FFAE2F00FFAE2F00FF9A3600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000091919100E1E1E100E1E1E100919191000000
      00000000000000000000000000000000000000000000A2DAB00011CE810011CE
      8100C3FFE400C3FFE400C3FFE400C3FFE400C3FFE400C3FFE400C3FFE400C3FF
      E40011CE810011CE8100A2DAB000000000000000000000000000A5A5A500EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00A5A5A50000000000000000000000000000000000000000000000
      000000000000FF9A3600FFAF3200FFAF3200FFAF3200FF9A3600000000000000
      0000000000000000000000000000000000000000000000000000ADADAD009191
      9100919191009191910091919100ADADAD00E4E4E400E4E4E400E4E4E4009191
      9100000000000000000000000000000000000000000048B5620000C8760000C8
      7600C9FFE600C9FFE600C9FFE600C9FFE600C9FFE600C9FFE600C9FFE600C9FF
      E60000C8760000C8760048B56200000000000000000000000000A5A5A500E1E1
      E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1
      E100E1E1E100A5A5A50000000000000000000000000000000000000000000000
      000000000000FF9A3600FFB13600FFB13600FFB13600FF9A3600000000000000
      0000000000000000000000000000000000000000000091919100E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700919191000000000000000000000000000000000048B5620001C8760001C8
      760001C8760001C8760001C8760001C8760001C8760001C8760001C8760001C8
      760001C8760001C8760048B56200000000000000000000000000A5A5A500DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00A5A5A50000000000000000000000000000000000FFBD7C00FF9A
      360000000000FF9A3600FFB23A00FFB23A00FFB23A00FF9A360000000000FF9A
      3600FFBD7C00000000000000000000000000ADADAD00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00ADADAD0000000000000000000000000048B5620003C9770003C9
      770003C9770003C9770003C97700D7FFED00D7FFED0003C9770003C9770003C9
      770003C9770003C9770048B56200000000000000000000000000A5A5A500E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200A5A5A500000000000000000000000000FFBD7C00FFB43E00FFB4
      3E00FF9A3600FF9A3600FFB43E00FFB43E00FFB43E00FF9A3600FF9A3600FFB4
      3E00FFB43E00FFBD7C00000000000000000091919100EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF009191910000000000000000000000000048B5620007CA780007CA
      780007CA780007CA7800DFFFF000DFFFF000DFFFF000DFFFF00007CA780007CA
      780007CA780007CA780048B56200000000000000000000000000A5A5A500E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600A5A5A500000000000000000000000000FF9A3600FFB64200FFB6
      4200FFB64200FF9A3600FFB64200FFB64200FFB64200FF9A3600FFB64200FFB6
      4200FFB64200FF9A3600000000000000000091919100F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F3009191910000000000000000000000000048B562000BCC7A000BCC
      7A000BCC7A00E7FFF400E7FFF400E7FFF400E7FFF400E7FFF400E7FFF4000BCC
      7A000BCC7A000BCC7A0048B56200000000000000000000000000A5A5A500ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00A5A5A500000000000000000000000000FF9A3600FFC26200FFBF
      5A00FFB74600FFB74600FFB74600FFB74600FFB74600FFB74600FFBB5000FFC2
      6300FFC26200FF9A3600000000000000000091919100F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F7009191910000000000000000000000000048B5620010CE7D0010CE
      7D00EEFFF700EEFFF70010CE7D00EEFFF700EEFFF70010CE7D00EEFFF700EEFF
      F70010CE7D0010CE7D0048B56200000000000000000000000000A5A5A500F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100A5A5A50000000000000000000000000000000000FF9A3600FFCC
      7C00FFC15E00FFB94A00FFB94A00FFB94A00FFB94A00FFBD5400FFC97200FFD0
      8600FF9A360000000000000000000000000091919100FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA009191910000000000000000000000000048B5620016D1800016D1
      800016D1800016D1800016D18000F5FFFB00F5FFFB0016D1800016D1800016D1
      800016D1800016D1800048B56200000000000000000000000000A5A5A500F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00A5A5A5000000000000000000000000000000000000000000FF9A
      3600FFCD7F00FFC26100FFBA4E00FFBA4E00FFBE5800FFC97600FFD28B00FF9A
      36000000000000000000000000000000000091919100FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD009191910000000000000000000000000048B562001DD383001DD3
      83001DD383001DD383001DD38300FBFFFD00FBFFFD001DD383001DD383001DD3
      83001DD383001DD3830048B56200000000000000000000000000A5A5A500FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00D3D3D300A5A5A500A5A5
      A500A5A5A500A5A5A50000000000000000000000000000000000000000000000
      0000FF9A3600FFCF8100FFC36400FFC05B00FFCB7800FFD38D00FF9A36000000
      00000000000000000000000000000000000091919100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0091919100000000000000000000000000A2DAB00045DC980054DF
      A10024D6860024D6860024D68600FFFFFF00FFFFFF0024D6860024D6860024D6
      860054DFA10045DC9800A2DAB000000000000000000000000000A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D300FFFFFF00FFFF
      FF00FFFFFF00A5A5A50000000000000000000000000000000000000000000000
      000000000000FF9A3600FFD48E00FFD38C00FFD59000FF9A3600000000000000
      000000000000000000000000000000000000ADADAD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ADADAD000000000000000000000000000000000048B56200A6EF
      CE00A8EFCF00A8EFCF00A8EFCF00A8EFCF00A8EFCF00A8EFCF00A8EFCF00A8EF
      CF00A6EFCE0048B5620000000000000000000000000000000000A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D300FFFFFF00FFFF
      FF00A5A5A5000000000000000000000000000000000000000000000000000000
      00000000000000000000FF9A3600FF9A3600FF9A360000000000000000000000
      0000000000000000000000000000000000000000000091919100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0091919100000000000000000000000000000000000000000000000000A2DA
      B00048B5620048B5620048B5620048B5620048B5620048B5620048B5620048B5
      6200A2DAB0000000000000000000000000000000000000000000A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D300FFFFFF00A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD009191
      910091919100919191009191910091919100919191009191910091919100ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2D2D200A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500D2D2D200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A500EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00A5A5A500000000000000000000000000000000000000
      00000000000000000000FF9A3600FF9A3600FFBD7C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF9A3600FF9A3600FF9A360000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFBD7C00FF9A3600FF9A360000000000000000000000
      000000000000000000000000000000000000A5A5A500ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00A5A5A500000000000000000000000000000000000000
      000000000000FF9A3600FFB64300FFB64300FFB64300FFBD7C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF9A3600FFB64300FFB64300FFB64300FF9A3600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFBD7C00FFB64300FFB64300FFB64300FF9A3600000000000000
      000000000000000000000000000000000000A5A5A500EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00A5A5A500000000000000000000000000000000000000
      0000FF9A3600FFA51600FFAA2300FFB33B00FFB23900FF9A3600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF9A3600FFA51600FFA51600FFA51600FFA51600FFA51600FF9A36000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF9A3600FFB33A00FFAF3000FFA51600FFA51600FF9A36000000
      000000000000000000000000000000000000A5A5A500F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000A5A5A50000000000000000000000000000000000FF9A
      3600FFA61900FFAB2600FFBA4C00FFC36500FF9A360000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF9A
      3600FFA61900FFA61900FFA61900FFA61900FFA61900FFA61900FFA61900FF9A
      3600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF9A3600FFBF5900FFB03200FFA61900FFA61900FF9A
      360000000000000000000000000000000000A5A5A500F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300A5A5A500000000000000000000000000FF9A3600FFAA
      2200FFAA2200FFAC2800FFB33900FF9A3600FF9A3600FF9A3600FF9A3600FF9A
      3600FF9A36000000000000000000000000000000000000000000FF9A3600FFAA
      2200FFAA2200FFAA2200FFAA2200FFAA2200FFAA2200FFAA2200FFAA2200FFAA
      2200FF9A36000000000000000000000000000000000000000000FF9A3600FF9A
      3600FF9A3600FF9A3600FF9A3600FF9A3600FFAF2E00FFAA2200FFAA2200FFAA
      2200FF9A3600000000000000000000000000A5A5A500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500A5A5A5000000000000000000FF9A3600FFAE2E00FFAE
      2E00FFAE2E00FFAE2E00FFAE2E00FFAE2E00FFAE2E00FFAE2E00FFAE2E00FFAE
      2E00FFAE2E00FF9A3600000000000000000000000000FF9A3600FFAE2E00FFB2
      3900FFBB5000FFBB5000FFB74500FFB23900FFBB5000FFBB5000FFB74500FFAE
      2E00FFAE2E00FF9A3600000000000000000000000000FF9A3600FFAE2E00FFAE
      2E00FFAE2E00FFAE2E00FFAE2E00FFAE2E00FFAE2E00FFAE2E00FFAE2E00FFAE
      2E00FFAE2E00FF9A36000000000000000000A5A5A500F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700A5A5A5000000000000000000FF9A3600FFB43D00FFB4
      3D00FFB43D00FFB43D00FFB43D00FFB43D00FFB43D00FFB43D00FFB43D00FFB4
      3D00FFB43D00FF9A3600000000000000000000000000FF9A3600FFB84800FFC5
      6800FFCD7D00FF9A3600FFC05B00FFBA4C00FFC87100FF9A3600FFC97300FFBC
      5200FFB43D00FF9A3600000000000000000000000000FF9A3600FFB43D00FFB4
      3D00FFB43D00FFB43D00FFB43D00FFB43D00FFB43D00FFB43D00FFB43D00FFB4
      3D00FFB43D00FF9A36000000000000000000A5A5A500FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00A5A5A5000000000000000000FF9A3600FFC56800FFC2
      6100FFBA4D00FFBE5700FFC87100FFCE8000FFD08500FFD08500FFD08500FFCF
      8300FFCA7700FF9A3600000000000000000000000000FFBD7C00FFCF8300FFD3
      8D00FF9A3600FF9A3600FFBE5600FFBC5100FFC46800FF9A3600FF9A3600FFD1
      8800FFCA7700FFBD7C00000000000000000000000000FF9A3600FFCE8000FFD0
      8500FFD08500FFD08500FFCF8300FFCB7800FFC26100FFBA4D00FFBE5700FFC5
      6900FFC46800FF9A36000000000000000000A5A5A500FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00A5A5A500000000000000000000000000FF9A3600FFD2
      8A00FFC76F00FFC26100FFCA7600FF9A3600FF9A3600FF9A3600FF9A3600FF9A
      3600FF9A36000000000000000000000000000000000000000000FFBD7C00FF9A
      360000000000FF9A3600FFC05D00FFC05D00FFC16100FF9A360000000000FF9A
      3600FFBD7C000000000000000000000000000000000000000000FF9A3600FF9A
      3600FF9A3600FF9A3600FF9A3600FF9A3600FFC36600FFC36600FFCE8100FFD5
      9200FF9A3600000000000000000000000000A5A5A500FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00A5A5A50000000000000000000000000000000000FF9A
      3600FFD69500FFCC7C00FFC76F00FFCC7B00FF9A360000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF9A3600FFC66C00FFC66C00FFC66C00FF9A3600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF9A3600FFC97300FFC97400FFD38D00FFDA9F00FF9A
      360000000000000000000000000000000000FF9A3600FFB03500FFB03500FFB0
      3500FFB03500FFB03500FFB03500FFB03500FFB03500FFB03500FFB03500FFB0
      3500FFB03500FFB03500FF9A3600000000000000000000000000000000000000
      0000FF9A3600FFD99E00FFD18700FFCB7800FFCB7800FF9A3600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF9A3600FFCB7800FFCB7800FFCB7800FF9A3600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF9A3600FFCB7800FFCE7F00FFD79600FFDDA700FF9A36000000
      000000000000000000000000000000000000FF9A3600FFB54000FFB54000FFB5
      4000FFB54000FFB54000FFB54000FFB54000FFB54000FFB54000FFB54000FFB5
      4000FFB54000FFB54000FF9A3600000000000000000000000000000000000000
      000000000000FF9A3600FFDFAB00FFDDA600FFDA9E00FFBD7C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF9A3600FFDCA400FFDDA600FFDA9E00FF9A3600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFBD7C00FFDCA400FFDEAA00FFDFAD00FF9A3600000000000000
      000000000000000000000000000000000000FF9A3600FFD59300FFD59300FFD5
      9300FFD59300FFD59300FFD59300FFD59300FFD59300FFD59300FFD59300FFD5
      9300FFD59300FFD59300FF9A3600000000000000000000000000000000000000
      00000000000000000000FF9A3600FF9A3600FFBD7C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF9A3600FF9A3600FF9A360000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFBD7C00FF9A3600FF9A360000000000000000000000
      000000000000000000000000000000000000FCE5BF00FFBE6B00FFBE6B00FFBE
      6B00FFBE6B00FFBE6B00FFBE6B00FFBE6B00FFBE6B00FFBE6B00FFBE6B00FFBE
      6B00FFBE6B00FFBD6A00FCE3BA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF9A3600FF9A3600FF9A360000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008585
      E6003333D6003333D600000000000000000000000000000000003333D6003333
      D6008585E6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF9A3600FFB64300FFB64300FFB64300FF9A3600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000048B5620048B562000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008585E6004B4B
      FF004B4BFF004B4BFF003333D60000000000000000003333D6004B4BFF004B4B
      FF004B4BFF008585E60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF9A3600FFA51600FFA51600FFA51600FF9A3600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000048B5620000CE790000CE790048B5620000000000000000000000
      00000000000000000000000000000000000000000000000000003333D6004B4B
      FF004B4BFF004B4BFF004B4BFF003333D6003333D6004B4BFF004B4BFF004B4B
      FF004B4BFF003333D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF9A3600FFA61900FFA61900FFA61900FF9A3600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000048B5620000CE790000CE790000CE790000CE790048B56200000000000000
      00000000000000000000000000000000000000000000000000003333D6006666
      FF007373FF004B4BFF004B4BFF004B4BFF004B4BFF004B4BFF004B4BFF007373
      FF006666FF003333D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF9A3600FF9A
      3600FF9A3600FF9A3600FFAA2200FFAA2200FFAA2200FF9A3600FF9A3600FF9A
      3600FF9A360000000000000000000000000000000000000000000000000048B5
      620000CE790000CE790000CE790000CE790000CE790000CE790048B562000000
      0000000000000000000000000000000000000000000000000000000000003333
      D6009090FF007373FF004B4BFF004B4BFF004B4BFF004B4BFF007373FF009090
      FF003333D6000000000000000000000000000000000000000000FF9A3600FF9A
      3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A
      3600FF9A360000000000000000000000000000000000FF9A3600FFAE2E00FFAE
      2E00FFAE2E00FFAE2E00FFAE2E00FFAE2E00FFAE2E00FFAE2E00FFAE2E00FFAE
      2E00FFAE2E00FF9A36000000000000000000000000000000000048B5620007D1
      7D0007D17D0007D17D0007D17D0007D17D0007D17D0007D17D0007D17D0048B5
      6200000000000000000000000000000000000000000000000000000000000000
      00003333D6007373FF005252FF005252FF005252FF005252FF007373FF003333
      D6000000000000000000000000000000000000000000FF9A3600FFA81E00FFA8
      1E00FFA81E00FFA81E00FFA81E00FFA81E00FFA81E00FFA81E00FFA81E00FFA8
      1E00FFA81E00FF9A3600000000000000000000000000FF9A3600FFB43D00FFB4
      3D00FFB43D00FFB43D00FFB43D00FFB43D00FFB43D00FFB43D00FFB43D00FFB4
      3D00FFB43D00FF9A360000000000000000000000000048B5620011D5820011D5
      820011D5820045DE9D0075E7B60075E7B60045DE9D0011D5820011D5820011D5
      820048B562000000000000000000000000000000000000000000000000000000
      00003333D6005B5BFF005B5BFF005B5BFF005B5BFF005B5BFF005B5BFF003333
      D6000000000000000000000000000000000000000000FF9A3600FFBC5200FFBC
      5200FFBC5200FFBC5200FFBC5200FFBC5200FFBC5200FFBC5200FFBC5200FFBC
      5200FFBC5200FF9A3600000000000000000000000000FF9A3600FFCE8000FFD0
      8500FFCF8300FFCB7800FFC26100FFBE5700FFC87100FFCE8000FFD08500FFCF
      8300FFCA7700FF9A360000000000000000000000000048B562001DD988001DD9
      88004FE1A20074E8B60048B5620048B5620074E8B6004FE1A2001DD988001DD9
      88001DD9880048B5620000000000000000000000000000000000000000003333
      D6006767FF006767FF006767FF006767FF006767FF006767FF006767FF006767
      FF003333D60000000000000000000000000000000000FF9A3600FFDCA400FFDD
      A800FFDDA800FFDDA800FFDDA800FFDDA800FFDDA800FFDDA800FFDDA800FFDD
      A600FFDA9E00FF9A360000000000000000000000000000000000FF9A3600FF9A
      3600FF9A3600FF9A3600FFCA7600FFC56A00FFD28B00FF9A3600FF9A3600FF9A
      3600FF9A36000000000000000000000000000000000048B562007CEBBA00A9F2
      D100A6F1D00048B56200000000000000000048B562007CEBBA005AE5A8002BDE
      8F002BDE8F002BDE8F0048B562000000000000000000000000003333D6007474
      FF007474FF007474FF009393FF00AEAEFF00AEAEFF009393FF007474FF007474
      FF007474FF003333D60000000000000000000000000000000000FF9A3600FF9A
      3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A3600FF9A
      3600FF9A36000000000000000000000000000000000000000000000000000000
      000000000000FF9A3600FFC97300FFC76F00FFCC7A00FF9A3600000000000000
      000000000000000000000000000000000000000000000000000048B5620048B5
      620048B562000000000000000000000000000000000048B5620084EEBE0064EA
      AD0038E4960038E4960048B562000000000000000000000000003333D6008080
      FF008080FF009C9CFF00B1B1FF003333D6003333D600B1B1FF009C9CFF008080
      FF008080FF003333D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF9A3600FFCB7800FFCB7800FFCB7800FF9A3600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000048B56200B1F5
      D500B3F6D7008CF1C20048B562000000000000000000000000008585E600B8B8
      FF00D0D0FF00CFCFFF003333D60000000000000000003333D600CFCFFF00D0D0
      FF00B8B8FF008585E60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF9A3600FFDCA400FFDDA600FFDA9E00FF9A3600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000048B5
      620048B5620048B5620000000000000000000000000000000000000000008585
      E6003333D6003333D600000000000000000000000000000000003333D6003333
      D6008585E6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF9A3600FF9A3600FF9A360000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000800000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFC001F00FF81FC007C000F00F
      E0078003C000E007C0038003C001C003C0038003C001800180018003C0018001
      8001C007C00180018001E00FC00180018001F01FC00180018001E00FC0018001
      8001E00FC0018001C003E00FC001E007C003E00FC001E007E007E00FC003F00F
      F81FF01FC007F00FFFFFF83FC00FF00FFFFFFFFFFFFFFFFF1FFFC0030001FFE3
      07FF80010001FFC103FF80010001FF8181FF80010001E00180FF80010001C003
      C07F800100018007E03F80010001000FF01F80010001000FF80F80010001000F
      FC0780010001000FFE0380010001000FFF0180010001000FFF8180010001801F
      FFC3C0030003C03FFFE7FFFF0007E07FFFFFFFFFFFFFFFFF0001C003E007E007
      00018001C003C003000180018001800100018001800180010001800180018001
      0001800180018001000180018001800100018001800180010001C00380018001
      0001E187800180018003E18780018001C007E00780018001E00FE007C003C003
      F01FF00FE007E007F83FF81FFFFFFFFFFFFFFFFFFFFFFFFF800380038007FFFF
      0001000100030001000100010003000100010001000100010001000100010001
      0001000100000001000100010000000100010001000000010001000300070001
      000300070007000100070007000700010007000700070001000F000F000F0001
      03FF03FF03FFFFFF87FF87FF87FFFFFFFFFFFFFFFFFFFFFFFFFFFE7FE007C003
      FC7FFE3FC003C003F83FFE1F8001C003F83FC00F8001C003F83F80078001C003
      C82700038001C003800300038001C003800300038001C003800300038001C003
      C00700038001C003E00F00038001C003F01F00038001C003F83F0003C003C007
      FC7F8007E007C00FFFFFC00FFFFFC01FFFFFFFFFFFFFFFFF0001FFFFFFFFFFFF
      0001FC7FFC7FFC7F0001F83FF83FF83F0001F03FF01FF81F0001E07FE00FFC0F
      0001C007C007C007000180038003800300018003800380030001800380038003
      0001C007C827C0070001E07FF83FFC0F0001F03FF83FF81F0001F83FF83FF83F
      0001FC7FFC7FFC7F0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FC7FFFFFE3C7FFFFF83FFCFFC183FFFFF83FF87FC003FFFFF83FF03FC003FFFF
      C007E01FE007C0078003C00FF00F800380038007F00F800380038003E0078003
      C0078301C003C007F83FC781C003FFFFF83FFFC1C183FFFFF83FFFE3E3C7FFFF
      FC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
