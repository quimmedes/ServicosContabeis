object Form10: TForm10
  Left = 67
  Top = 118
  Width = 696
  Height = 480
  Caption = 'ITR 2010'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 62
    Height = 13
    Caption = 'PESQUISAR'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 64
    Width = 665
    Height = 369
    DataSource = Form3.DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 88
    Top = 16
    Width = 209
    Height = 21
    TabOrder = 1
    OnChange = Edit1Change
  end
  object Button1: TButton
    Left = 360
    Top = 16
    Width = 75
    Height = 25
    Caption = 'EDITAR'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 440
    Top = 16
    Width = 75
    Height = 25
    Caption = 'REMOVER'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 600
    Top = 16
    Width = 75
    Height = 25
    Caption = 'SALVAR'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 520
    Top = 16
    Width = 75
    Height = 25
    Caption = 'ATUALIZAR'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 304
    Top = 16
    Width = 49
    Height = 25
    Caption = 'TOTAL'
    TabOrder = 6
    OnClick = Button5Click
  end
end
