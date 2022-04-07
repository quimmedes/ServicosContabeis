object Form14: TForm14
  Left = 63
  Top = 108
  Width = 856
  Height = 477
  Caption = 'CONSULTA DE CLIENTES'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 12
    Width = 840
    Height = 427
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Query1: TQuery
    Active = True
    DatabaseName = 'CONEXAO'
    DataSource = Form2.DataSource1
    SQL.Strings = (
      'SELECT *FROM Clientes Order by Nome ASC;')
    Left = 464
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 496
    Top = 32
  end
end
