object Form2: TForm2
  Left = 63
  Top = 91
  Width = 800
  Height = 483
  Caption = 'Cadastro de Novo Cliente'
  Color = clMenu
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 104
    Top = 40
    Width = 38
    Height = 13
    Caption = 'NOME :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 416
    Top = 40
    Width = 26
    Height = 13
    Caption = 'CPF :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 72
    Width = 22
    Height = 13
    Caption = 'RG :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 224
    Top = 72
    Width = 46
    Height = 13
    Caption = 'CIDADE :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 424
    Top = 72
    Width = 27
    Height = 13
    Caption = 'CEP :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 32
    Top = 104
    Width = 29
    Height = 13
    Caption = 'END :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 360
    Top = 104
    Width = 47
    Height = 13
    Caption = 'BAIRRO :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 32
    Top = 136
    Width = 69
    Height = 13
    Caption = 'AREA RURAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 32
    Top = 168
    Width = 128
    Height = 13
    Caption = 'END DA PROPRIEDADE :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 216
    Top = 136
    Width = 39
    Height = 13
    Caption = 'INCRA :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 416
    Top = 136
    Width = 24
    Height = 13
    Caption = 'ITR :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 32
    Top = 40
    Width = 26
    Height = 13
    Caption = 'COD:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit2: TDBEdit
    Left = 152
    Top = 40
    Width = 257
    Height = 21
    DataField = 'Nome'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 448
    Top = 40
    Width = 81
    Height = 21
    DataField = 'CPF'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 64
    Top = 72
    Width = 121
    Height = 21
    DataField = 'RG'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit5: TDBEdit
    Left = 288
    Top = 72
    Width = 121
    Height = 21
    DataField = 'Cidade'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit6: TDBEdit
    Left = 464
    Top = 72
    Width = 65
    Height = 21
    DataField = 'CEP'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit7: TDBEdit
    Left = 64
    Top = 104
    Width = 289
    Height = 21
    DataField = 'END'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit8: TDBEdit
    Left = 424
    Top = 104
    Width = 105
    Height = 21
    DataField = 'Bairro'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit9: TDBEdit
    Left = 128
    Top = 136
    Width = 73
    Height = 21
    DataField = 'Area Rural'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit10: TDBEdit
    Left = 168
    Top = 168
    Width = 209
    Height = 21
    DataField = 'End Propriedade'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit11: TDBEdit
    Left = 272
    Top = 136
    Width = 73
    Height = 21
    DataField = 'INCRA'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit12: TDBEdit
    Left = 456
    Top = 136
    Width = 73
    Height = 21
    DataField = 'ITR'
    DataSource = DataSource1
    TabOrder = 10
  end
  object DBEdit1: TDBEdit
    Left = 64
    Top = 40
    Width = 33
    Height = 21
    DataField = 'Cod'
    DataSource = DataSource1
    TabOrder = 11
  end
  object Button1: TButton
    Left = 624
    Top = 40
    Width = 75
    Height = 25
    Caption = 'NOVO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = Button1Click
  end
  object BitBtn2: TBitBtn
    Left = 608
    Top = 152
    Width = 121
    Height = 41
    Caption = 'SALVAR E SAIR'
    TabOrder = 13
    OnClick = BitBtn2Click
    Kind = bkOK
  end
  object Button2: TButton
    Left = 624
    Top = 72
    Width = 75
    Height = 25
    Caption = 'SALVAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 624
    Top = 112
    Width = 75
    Height = 25
    Caption = 'REMOVER'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 624
    Top = 32
    Width = 75
    Height = 25
    Caption = 'EDITAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 208
    Width = 792
    Height = 241
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 17
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 408
    Top = 160
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'CONEXAO'
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    TableName = 'Clientes.db'
    Left = 440
    Top = 160
  end
end
