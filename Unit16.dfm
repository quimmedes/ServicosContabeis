object Form16: TForm16
  Left = 240
  Top = 134
  Width = 522
  Height = 356
  Caption = 'RETIRADA DE CAIXA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 168
    Width = 36
    Height = 13
    Caption = 'VALOR'
  end
  object Label2: TLabel
    Left = 184
    Top = 168
    Width = 14
    Height = 13
    Caption = 'R$'
  end
  object Label3: TLabel
    Left = 24
    Top = 80
    Width = 71
    Height = 13
    Caption = 'INFORMA'#199#195'O'
  end
  object Label4: TLabel
    Left = 72
    Top = 16
    Width = 351
    Height = 36
    Caption = 'RETIRADA  DO  CAIXA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 72
    Top = 120
    Width = 29
    Height = 13
    Caption = 'DATA'
  end
  object Edit1: TEdit
    Left = 104
    Top = 80
    Width = 257
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 112
    Top = 168
    Width = 65
    Height = 21
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 264
    Top = 240
    Width = 81
    Height = 41
    Caption = 'RETIRAR'
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 136
    Top = 240
    Width = 81
    Height = 41
    TabOrder = 3
    Kind = bkCancel
  end
  object Edit3: TEdit
    Left = 112
    Top = 120
    Width = 97
    Height = 21
    TabOrder = 4
  end
end
