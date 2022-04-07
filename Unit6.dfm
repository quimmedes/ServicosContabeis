object Form6: TForm6
  Left = 75
  Top = 116
  Width = 658
  Height = 388
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
    Left = 200
    Top = 24
    Width = 242
    Height = 29
    Caption = 'DESMEMBRAMENTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 88
    Top = 152
    Width = 64
    Height = 16
    Caption = 'Area Rural'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 216
    Top = 152
    Width = 15
    Height = 16
    Caption = 'ha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 112
    Top = 216
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
    Left = 248
    Top = 216
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
  object Label2: TLabel
    Left = 16
    Top = 80
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
  object Label7: TLabel
    Left = 88
    Top = 120
    Width = 32
    Height = 13
    Caption = 'NOME'
  end
  object Label8: TLabel
    Left = 112
    Top = 184
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
  object Edit1: TEdit
    Left = 80
    Top = 80
    Width = 217
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
  end
  object DBEdit1: TDBEdit
    Left = 160
    Top = 152
    Width = 49
    Height = 21
    DataField = 'Area Rural'
    DataSource = Form2.DataSource1
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 312
    Top = 80
    Width = 329
    Height = 209
    DataSource = Form2.DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 208
    Top = 272
    Width = 75
    Height = 25
    TabOrder = 3
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 272
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkCancel
  end
  object DBEdit2: TDBEdit
    Left = 168
    Top = 216
    Width = 73
    Height = 21
    DataField = 'Valor'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 128
    Top = 120
    Width = 153
    Height = 21
    DataField = 'Nome'
    DataSource = Form2.DataSource1
    TabOrder = 6
  end
  object DBEdit4: TDBEdit
    Left = 160
    Top = 184
    Width = 89
    Height = 21
    DataField = 'Data'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 504
    Top = 24
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'CONEXAO'
    TableName = 'Desmembramento.DB'
    Left = 552
    Top = 24
  end
end
