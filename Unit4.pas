unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, DB, DBTables;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    Table1: TTable;
    DataSource1: TDataSource;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Table1Cod: TFloatField;
    Table1Nome: TStringField;
    Table1Gadoleiteiro: TFloatField;
    Table1Hortifrutigranjeiro: TFloatField;
    Table1Data: TDateField;
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
  Form4: TForm4;

implementation

uses Unit1, Unit2, Unit3, Unit8, Unit9;

{$R *.dfm}

procedure TForm4.Edit1Change(Sender: TObject);
begin


 Form2.Table1.Locate('Nome', Edit1.Text , [loPartialKey, loCaseInsensitive]);

end;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin

Table1.FieldByName('Cod').AsString:= Form4.DBEdit5.Text;
Table1.FieldByName('Nome').AsString:= Form4.DBEdit4.Text;
if Dbedit1.Text <> '' then
begin
Table1.FieldByName('Pago').AsString:='PG';
end;


if Table1.FieldByName('Gado leiteiro').AsFloat <> 0 then
begin
Form8.Table1.refresh;
Form8.Table1.Edit;
Form8.Table1.FieldByName('Caixa Atual').AsFloat := Table1.FieldByName('Gado leiteiro').AsFloat + Form8.Table1.FieldByName('Caixa Atual').AsFloat;
Form8.Table1.Refresh;
end;
if Table1.FieldByName('Hortifrutigranjeiro').AsFloat <> 0 then
begin
Form8.Table1.refresh;
Form8.Table1.Edit;
Form8.Table1.FieldByName('Caixa Atual').AsFloat := Table1.FieldByName('Hortifrutigranjeiro').AsFloat + Form8.Table1.FieldByName('Caixa Atual').AsFloat;
Form8.Table1.Refresh;
end;
{copia para relatorio o valor e o nome da pesso}

if Dbedit2.Text <> '' then
begin
Form9.Table1.Next;
Form9.Table1.Insert;
Form9.Table1.FieldByName('Data').AsDateTime := Table1.Fieldbyname('Data').AsDateTime;
Form9.Table1.FieldByName('A�ao').AsString :='INSC. P.RURAL->Gado leiteiro->  ' + Table1.fieldbyname('Nome').AsString;
Form9.Table1.FieldByName('Valor').AsFloat := Table1.FieldByName('Gado leiteiro').AsFloat;
Form9.Table1.Refresh;
end;

if Dbedit3.Text <> '' then
begin
Form9.Table1.Next;
Form9.Table1.Insert;
Form9.Table1.FieldByName('Data').AsDateTime := Table1.Fieldbyname('Data').AsDateTime;
Form9.Table1.FieldByName('A�ao').AsString :='INSC. P.RURAL->HORTIFRUTIGRANJEIRO->  ' + Table1.fieldbyname('Nome').AsString;
Form9.Table1.FieldByName('Valor').AsFloat := Table1.FieldByName('Hortifrutigranjeiro').AsFloat;
Form9.Table1.Refresh;
end;

Form8.Table1.Refresh;

end;

procedure TForm4.FormCreate(Sender: TObject);
begin
Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
