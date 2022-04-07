object Form8: TForm8
  Left = 104
  Top = 156
  Width = 696
  Height = 396
  Caption = 'CAIXA TOTAL HOJE ATUALIZADO'
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 680
    Height = 358
    Align = alClient
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Caixa Atual'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Retiradas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total de entrada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        Width = 107
        Visible = True
      end>
  end
  object Table1: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'CONEXAO'
    TableName = 'caixa.DB'
    Left = 568
    Top = 16
    object Table1CaixaAtual: TFloatField
      FieldName = 'Caixa Atual'
    end
    object Table1Retiradas: TFloatField
      FieldName = 'Retiradas'
    end
    object Table1Totaldeentrada: TFloatField
      FieldName = 'Total de entrada'
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = Table1
    Left = 608
    Top = 16
  end
end
