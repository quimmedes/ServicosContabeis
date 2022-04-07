object Form3: TForm3
  Left = 139
  Top = 11
  Width = 550
  Height = 560
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
    Left = 192
    Top = 8
    Width = 98
    Height = 29
    Caption = 'ITR 2010'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 76
    Height = 20
    Caption = #193'rea Rural'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 192
    Top = 80
    Width = 18
    Height = 20
    Caption = 'ha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 112
    Width = 42
    Height = 13
    Caption = 'VALOR :'
  end
  object Label5: TLabel
    Left = 144
    Top = 112
    Width = 14
    Height = 13
    Caption = 'R$'
  end
  object Label6: TLabel
    Left = 192
    Top = 112
    Width = 29
    Height = 13
    Caption = 'DATA'
  end
  object Label7: TLabel
    Left = 104
    Top = 48
    Width = 40
    Height = 16
    Caption = 'NOME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 16
    Top = 48
    Width = 29
    Height = 16
    Caption = 'COD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 264
    Top = 176
    Width = 68
    Height = 15
    Caption = 'PESQUISAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 80
    Width = 81
    Height = 21
    DataField = 'Area Rural'
    DataSource = Form2.DataSource1
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 408
    Top = 128
    Width = 75
    Height = 25
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 408
    Top = 72
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkCancel
  end
  object Edit1: TEdit
    Left = 16
    Top = 176
    Width = 241
    Height = 21
    TabOrder = 3
    OnChange = Edit1Change
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 217
    Width = 542
    Height = 309
    Align = alBottom
    DataSource = Form2.DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBEdit2: TDBEdit
    Left = 152
    Top = 48
    Width = 225
    Height = 21
    DataField = 'Nome'
    DataSource = Form2.DataSource1
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 56
    Top = 48
    Width = 41
    Height = 21
    DataField = 'Cod'
    DataSource = Form2.DataSource1
    TabOrder = 6
  end
  object Edit2: TEdit
    Left = 64
    Top = 112
    Width = 73
    Height = 21
    TabOrder = 7
  end
  object Edit3: TEdit
    Left = 232
    Top = 112
    Width = 73
    Height = 21
    TabOrder = 8
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'CONEXAO'
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    TableName = 'Itr.db'
    Left = 424
    Top = 16
    object Table1Cod: TFloatField
      FieldName = 'Cod'
    end
    object Table1Nome: TStringField
      FieldName = 'Nome'
      Size = 35
    end
    object Table1AreaRural: TFloatField
      FieldName = 'Area Rural'
    end
    object Table1Valor: TFloatField
      FieldName = 'Valor'
    end
    object Table1Data: TDateField
      FieldName = 'Data'
    end
    object Table1PG: TStringField
      FieldName = 'PG'
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 464
    Top = 16
  end
end
