object Form12: TForm12
  Left = 269
  Top = 151
  Width = 575
  Height = 480
  Caption = 'DESMEMBRAMENTO'
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
    Left = 112
    Top = 72
    Width = 62
    Height = 13
    Caption = 'PESQUISAR'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 96
    Width = 559
    Height = 346
    Align = alBottom
    DataSource = Form6.DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 184
    Top = 64
    Width = 209
    Height = 21
    TabOrder = 1
    OnChange = Edit1Change
  end
  object Button1: TButton
    Left = 112
    Top = 24
    Width = 75
    Height = 25
    Caption = 'EDITAR'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 24
    Width = 75
    Height = 25
    Caption = 'REMOVER'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 352
    Top = 24
    Width = 75
    Height = 25
    Caption = 'SALVAR'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 272
    Top = 24
    Width = 75
    Height = 25
    Caption = 'ATUALIZAR'
    TabOrder = 5
    OnClick = Button4Click
  end
end
