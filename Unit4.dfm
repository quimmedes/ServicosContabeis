object Form4: TForm4
  Left = 52
  Top = 58
  Width = 696
  Height = 420
  Caption = 'INSCRI'#199#195'O PRODUTOR RURAL'
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
  object Label1: TLabel
    Left = 72
    Top = 72
    Width = 56
    Height = 16
    Caption = 'BUSCAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 80
    Top = 168
    Width = 37
    Height = 16
    Caption = 'DATA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 80
    Top = 200
    Width = 102
    Height = 16
    Caption = 'GADO LEITEIRO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 256
    Top = 200
    Width = 14
    Height = 13
    Caption = 'R$'
  end
  object Label5: TLabel
    Left = 80
    Top = 232
    Width = 160
    Height = 16
    Caption = 'HORTIFRUTIGRANJEIRO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 312
    Top = 232
    Width = 14
    Height = 13
    Caption = 'R$'
  end
  object Label7: TLabel
    Left = 72
    Top = 8
    Width = 485
    Height = 37
    Caption = 'INCRI'#199#195'O PRODUTOR RURAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 72
    Top = 104
    Width = 23
    Height = 13
    Caption = 'COD'
  end
  object Label9: TLabel
    Left = 72
    Top = 136
    Width = 32
    Height = 13
    Caption = 'NOME'
  end
  object Edit1: TEdit
    Left = 136
    Top = 72
    Width = 233
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
  end
  object DBEdit1: TDBEdit
    Left = 128
    Top = 168
    Width = 81
    Height = 21
    DataField = 'Data'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 192
    Top = 200
    Width = 57
    Height = 21
    DataField = 'Gado leiteiro'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 248
    Top = 232
    Width = 57
    Height = 21
    DataField = 'Hortifrutigranjeiro'
    DataSource = DataSource1
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 200
    Top = 280
    Width = 75
    Height = 25
    TabOrder = 4
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 80
    Top = 280
    Width = 75
    Height = 25
    TabOrder = 5
    Kind = bkCancel
  end
  object DBGrid1: TDBGrid
    Left = 384
    Top = 72
    Width = 289
    Height = 144
    DataSource = Form2.DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBEdit4: TDBEdit
    Left = 112
    Top = 136
    Width = 257
    Height = 21
    DataField = 'Nome'
    DataSource = Form2.DataSource1
    TabOrder = 7
  end
  object DBEdit5: TDBEdit
    Left = 104
    Top = 104
    Width = 49
    Height = 21
    DataField = 'Cod'
    DataSource = Form2.DataSource1
    TabOrder = 8
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'CONEXAO'
    TableName = 'Incricao.db'
    Left = 568
    Top = 16
    object Table1Cod: TFloatField
      FieldName = 'Cod'
    end
    object Table1Nome: TStringField
      FieldName = 'Nome'
      Size = 35
    end
    object Table1Gadoleiteiro: TFloatField
      FieldName = 'Gado leiteiro'
    end
    object Table1Hortifrutigranjeiro: TFloatField
      FieldName = 'Hortifrutigranjeiro'
    end
    object Table1Data: TDateField
      FieldName = 'Data'
    end
    object Table1Pago: TStringField
      FieldName = 'Pago'
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 600
    Top = 16
  end
end
