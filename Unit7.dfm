object Form7: TForm7
  Left = 110
  Top = 167
  Width = 640
  Height = 343
  Caption = 'HONORARIO'
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
    Left = 144
    Top = 24
    Width = 240
    Height = 50
    Caption = 'HONOR'#193'RIO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -37
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 104
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
  object Label3: TLabel
    Left = 32
    Top = 176
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
  object Label4: TLabel
    Left = 32
    Top = 208
    Width = 45
    Height = 16
    Caption = 'VALOR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 160
    Top = 208
    Width = 17
    Height = 16
    Caption = 'R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 144
    Width = 32
    Height = 13
    Caption = 'NOME'
  end
  object DBEdit1: TDBEdit
    Left = 80
    Top = 176
    Width = 73
    Height = 21
    DataField = 'Data'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 88
    Top = 208
    Width = 65
    Height = 21
    DataField = 'Valor'
    DataSource = DataSource1
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 96
    Top = 104
    Width = 209
    Height = 21
    TabOrder = 2
    OnChange = Edit1Change
  end
  object DBGrid1: TDBGrid
    Left = 312
    Top = 104
    Width = 305
    Height = 137
    DataSource = Form2.DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 200
    Top = 248
    Width = 89
    Height = 33
    TabOrder = 4
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 56
    Top = 248
    Width = 89
    Height = 33
    TabOrder = 5
    Kind = bkCancel
  end
  object DBEdit3: TDBEdit
    Left = 80
    Top = 144
    Width = 225
    Height = 21
    DataField = 'Nome'
    DataSource = Form2.DataSource1
    TabOrder = 6
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 536
    Top = 40
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'CONEXAO'
    TableName = 'honorario.db'
    Left = 496
    Top = 40
    object Table1Cod: TFloatField
      FieldName = 'Cod'
    end
    object Table1Nome: TStringField
      FieldName = 'Nome'
      Size = 35
    end
    object Table1Data: TDateField
      FieldName = 'Data'
    end
    object Table1Valor: TFloatField
      FieldName = 'Valor'
    end
    object Table1Pago: TStringField
      FieldName = 'Pago'
      Size = 2
    end
  end
end
