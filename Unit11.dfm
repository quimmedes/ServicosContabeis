object Form11: TForm11
  Left = 271
  Top = 152
  Width = 587
  Height = 480
  Caption = 'INSCRI'#199#195'O PRODUTOR RURAL'
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
    Left = 104
    Top = 72
    Width = 61
    Height = 13
    Caption = 'PROCURAR'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 120
    Width = 571
    Height = 322
    Align = alBottom
    DataSource = Form4.DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 176
    Top = 72
    Width = 305
    Height = 21
    TabOrder = 1
    OnChange = Edit1Change
  end
  object Button1: TButton
    Left = 136
    Top = 24
    Width = 75
    Height = 25
    Caption = 'EDITAR'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 24
    Width = 75
    Height = 25
    Caption = 'REMOVER'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 376
    Top = 24
    Width = 75
    Height = 25
    Caption = 'SALVAR'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 296
    Top = 24
    Width = 75
    Height = 25
    Caption = 'ATUALIZAR'
    TabOrder = 5
    OnClick = Button4Click
  end
end
