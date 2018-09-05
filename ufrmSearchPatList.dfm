object frmSearchPatList: TfrmSearchPatList
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #24739#32773#21015#34920
  ClientHeight = 395
  ClientWidth = 909
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 352
    Width = 909
    Height = 43
    Align = alBottom
    BorderOuter = fsNone
    TabOrder = 0
    ExplicitWidth = 686
    object RzButton1: TRzButton
      Left = 808
      Top = 6
      ModalResult = 1
      Caption = #30830#35748
      TabOrder = 0
    end
  end
  object RzDBGrid1: TRzDBGrid
    Left = 0
    Top = 0
    Width = 909
    Height = 352
    Align = alClient
    DataSource = dsPatList
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = RzDBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'PATIENT_NAME'
        Title.Caption = #22995#21517
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEX'
        Title.Caption = #24615#21035
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INP_NO'
        Title.Caption = #20303#38498#21495
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BED_NO'
        Title.Caption = #24202#21495
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IN_DATE'
        Title.Caption = #20837#38498#26085#26399
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPT_NAME'
        Title.Caption = #20837#38498#31185#23460
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OUT_DATE'
        Title.Caption = #20986#38498#26085#26399
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIAGNOSIS'
        Title.Caption = #20837#38498#35786#26029
        Width = 213
        Visible = True
      end>
  end
  object dsPatList: TDataSource
    Left = 600
    Top = 128
  end
end
