object Form9: TForm9
  Left = 116
  Top = 65
  Width = 732
  Height = 500
  Caption = 'RELAT'#211'RIO DE CAIXA HOJE'
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
    Left = 248
    Top = 56
    Width = 62
    Height = 13
    Caption = 'PESQUISAR'
  end
  object Edit1: TEdit
    Left = 16
    Top = 56
    Width = 225
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 100
    Width = 724
    Height = 366
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'N'#186
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'A'#231'ao'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 16
    Top = 16
    Width = 75
    Height = 25
    Caption = 'TOTAL'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 176
    Top = 16
    Width = 75
    Height = 25
    Caption = 'REMOVER'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 336
    Top = 16
    Width = 75
    Height = 25
    Caption = 'SALVAR'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 256
    Top = 16
    Width = 75
    Height = 25
    Caption = 'ATUALIZAR'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button2: TButton
    Left = 96
    Top = 16
    Width = 75
    Height = 25
    Caption = 'EDITAR'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'CONEXAO'
    TableName = 'Relatorio.DB'
    Left = 488
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 456
    Top = 32
  end
end
