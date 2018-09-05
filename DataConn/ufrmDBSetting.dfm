object frmDBSetting: TfrmDBSetting
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #25968#25454#24211#36830#25509#35774#32622
  ClientHeight = 193
  ClientWidth = 283
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
  object lbl1: TLabel
    Left = 32
    Top = 8
    Width = 212
    Height = 21
    Caption = #25968#25454#24211#36830#25509#22833#36133','#35831#27491#30830#37197#32622#65281
    Color = clBtnFace
    Font.Charset = GB2312_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 32
    Top = 43
    Width = 48
    Height = 13
    Caption = #26381#21153#22120#65306
  end
  object lbl3: TLabel
    Left = 32
    Top = 68
    Width = 48
    Height = 13
    Caption = #25968#25454#24211#65306
  end
  object lbl4: TLabel
    Left = 32
    Top = 94
    Width = 48
    Height = 13
    Caption = #29992#25143#21517#65306
  end
  object lbl5: TLabel
    Left = 32
    Top = 119
    Width = 48
    Height = 13
    Caption = #23494'    '#30721#65306
  end
  object edtHost: TEdit
    Left = 86
    Top = 39
    Width = 146
    Height = 21
    TabOrder = 0
  end
  object edtDatabase: TEdit
    Left = 86
    Top = 64
    Width = 146
    Height = 21
    TabOrder = 1
  end
  object edtUsername: TEdit
    Left = 86
    Top = 90
    Width = 146
    Height = 21
    TabOrder = 2
  end
  object edtPwd: TEdit
    Left = 86
    Top = 115
    Width = 146
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
  object btn1: TButton
    Left = 86
    Top = 142
    Width = 75
    Height = 25
    Caption = #36830#25509
    TabOrder = 4
    OnClick = btn1Click
  end
end
