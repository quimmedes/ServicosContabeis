unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, DB, DBTables;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    Table1: TTable;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit2, Unit8, Unit9;

{$R *.dfm}

procedure TForm6.Edit1Change(Sender: TObject);
begin
Form2.Table1.Locate('Nome', Edit1.Text , [loPartialKey, loCaseInsensitive]);
end;

procedure TForm6.BitBtn1Click(Sender: TObject);
begin

{copiando nome para tabela}

Table1.FieldByName('Cod').AsString:= Form2.Table1.fieldbyname('Cod').AsString;
Table1.FieldByName('Nome').AsString:= DBEdit3.EditText;
Table1.FieldByName('Area rural').AsString:= DBEdit1.EditText;
Table1.FieldByName('Pago').AsString:='PG';
Table1.Refresh;

{Adicionando ao Caixa}
Form8.Table1.refresh;
Form8.Table1.Edit;
Form8.Table1.FieldByName('Caixa Atual').AsFloat := Table1.FieldByName('Valor').AsFloat + Form8.Table1.FieldByName('Caixa Atual').AsFloat;
Form8.Table1.Refresh;
{lan?amento no relat?rio}
Form9.Table1.Next;
Form9.Table1.Insert;
Form9.Table1.FieldByName('Data').AsDateTime := Table1.Fieldbyname('Data').AsDateTime;
Form9.Table1.FieldByName('A?ao').AsString :='DESMEMBRAMENTO ->  ' + Table1.fieldbyname('Nome').AsString;
Form9.Table1.FieldByName('Valor').AsFloat := Table1.Fieldbyname('Valor').AsFloat;
Form9.Table1.Refresh;

end;

procedure TForm6.FormCreate(Sender: TObject);
begin
Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
