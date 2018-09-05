object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Caption = #29992#25143#30331#24405
  ClientHeight = 273
  ClientWidth = 505
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
  object RzLabel1: TRzLabel
    Left = 144
    Top = 75
    Width = 48
    Height = 13
    Caption = #29992#25143#21517#65306
  end
  object RzLabel2: TRzLabel
    Left = 156
    Top = 131
    Width = 36
    Height = 13
    Caption = #23494#30721#65306
  end
  object edtUserCode: TRzEdit
    Left = 192
    Top = 72
    Width = 121
    Height = 21
    Text = ''
    TabOrder = 0
  end
  object edtPwd: TRzEdit
    Left = 192
    Top = 128
    Width = 121
    Height = 21
    Text = ''
    TabOrder = 1
  end
  object btnLogin: TRzButton
    Left = 192
    Top = 168
    Caption = #30331#24405
    TabOrder = 2
    OnClick = btnLoginClick
  end
end
