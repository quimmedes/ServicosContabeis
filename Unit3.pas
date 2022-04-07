unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, DB, DBClient,
  ExtCtrls, DBTables;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    Table1: TTable;
    DataSource1: TDataSource;
    Table1Cod: TFloatField;
    Table1Nome: TStringField;
    Table1AreaRural: TFloatField;
    Table1Valor: TFloatField;
    Table1Data: TDateField;
    Table1PG: TStringField;
    Label9: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Edit1Change(Sender: TObject);

    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2, Unit8, Unit9;

{$R *.dfm}

procedure TForm3.Edit1Change(Sender: TObject);
begin

Form2.Table1.Locate('Nome', Edit1.Text , [loPartialKey, loCaseInsensitive]);

end;



procedure TForm3.BitBtn1Click(Sender: TObject);
begin

if table1.FindKey([Dbedit5.Text])= true then

begin
ShowMessage('O Registro j� existe, va em verifica��o de pagamento ITR e apague o registro para continuar');

end

else

begin


//copiando nome para tabela

Table1.refresh;
Table1.Insert;
Table1.FieldByName('Cod').AsString:= DBEdit5.Text;
Table1.FieldByName('Nome').AsString:= DBEdit2.Text;
Table1.FieldByName('Area rural').AsString:= DBEdit1.Text;
Table1.FieldByName('Data').AsString := Edit3.Text;

if Edit2.Text <> '' then
begin
Table1.FieldByName('Valor').AsFloat := strtofloat(Edit2.Text);
Table1.FieldByName('PG').AsString:='PG';
end;
Table1.Refresh;

if Edit2.Text <> '' then
begin
{se edit2 tiver algum valor ira para o caixa atual}
Form8.Table1.refresh;
Form8.Table1.Edit;
Form8.Table1.FieldByName('Caixa Atual').AsFloat := Form8.Table1.FieldByName('Caixa Atual').AsFloat + strtofloat(Edit2.Text);
Form8.Table1.Refresh;
{INSERINDO INF no RELATORIO}
Form9.Table1.Refresh;
Form9.Table1.Insert;
Form9.Table1.FieldByName('Data').AsDateTime := Table1.Fieldbyname('Data').AsDateTime;
Form9.Table1.FieldByName('A�ao').AsString :='ITR 2010 ->  ' + Table1.fieldbyname('Nome').AsString;
Form9.Table1.FieldByName('Valor').AsFloat := Table1.Fieldbyname('Valor').AsFloat;
Form9.Table1.Refresh;

end;
end;
Edit1.text:='';
Edit2.text:='';
Edit3.text:='';
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;


end.
