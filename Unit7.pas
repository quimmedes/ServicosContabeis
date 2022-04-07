unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, DB, DBTables;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    Table1: TTable;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    Table1Cod: TFloatField;
    Table1Nome: TStringField;
    Table1Data: TDateField;
    Table1Valor: TFloatField;
    Table1Pago: TStringField;
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit2, Unit8, Unit9;

{$R *.dfm}

procedure TForm7.Edit1Change(Sender: TObject);
begin
Form2.Table1.Locate('Nome', Edit1.Text , [loPartialKey, loCaseInsensitive]);
end;

procedure TForm7.BitBtn1Click(Sender: TObject);
begin

//copiando nome para tabela

Table1.FieldByName('Cod').AsString:= Form2.Table1.fieldbyname('Cod').AsString;
Table1.FieldByName('Nome').AsString:= DBEdit3.EditText;
if Dbedit2.Text <> '' then
begin
Table1.FieldByName('Pago').AsString:='PG';
end;
Table1.Refresh;

if  Dbedit2.text <> '' then
begin
Form8.Table1.refresh;
Form8.Table1.Edit;
Form8.Table1.FieldByName('Caixa Atual').AsFloat := Table1.FieldByName('Valor').AsFloat + Form8.Table1.FieldByName('Caixa Atual').AsFloat;
Form8.Table1.Refresh;

{Adicionando ao Relatorio}


Form9.Table1.Insert;
Form9.Table1.FieldByName('Data').AsDateTime := Table1.Fieldbyname('Data').AsDateTime;
Form9.Table1.FieldByName('Açao').AsString :='HONORARIO->  ' + Table1.fieldbyname('Nome').AsString;
Form9.Table1.FieldByName('Valor').AsFloat := Table1.Fieldbyname('Valor').AsFloat;
Form9.Table1.Refresh;
end;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
