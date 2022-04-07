object Form17: TForm17
  Left = 346
  Top = 239
  Width = 411
  Height = 294
  Caption = 'BACKUP'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 112
    Top = 24
    Width = 148
    Height = 24
    Caption = 'Fazer BACKUP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 64
    Top = 152
    Width = 286
    Height = 23
    Caption = 'RESTAURAR DADOS ANTIGOS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 152
    Top = 64
    Width = 81
    Height = 25
    Caption = 'BACKUP'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 192
    Width = 75
    Height = 25
    Caption = 'RESTAURAR'
    TabOrder = 1
    OnClick = Button2Click
  end
end
