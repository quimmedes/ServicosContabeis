unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, DB, DBTables;


type
  TForm10 = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  contador : integer;
  soma : real;
  cod : integer;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm10.Edit1Change(Sender: TObject);
begin

Form3.Table1.Locate('Nome', Edit1.Text , [loPartialkey, loCaseInsensitive]);


end;

procedure TForm10.FormCreate(Sender: TObject);
begin
Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

procedure TForm10.Button1Click(Sender: TObject);
begin
Form3.table1.Edit;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
if messagedlg('Deseja Apagar Registro ITR?',mtConfirmation,[mbYES,mbNO], 0)=mrYES then
begin
Form3.table1.delete;
end;
end;

procedure TForm10.Button3Click(Sender: TObject);
begin
form3.table1.refresh;
form3.table1.ApplyRange;
end;

procedure TForm10.Button4Click(Sender: TObject);
begin
form3.table1.Refresh;
end;

procedure TForm10.Button5Click(Sender: TObject);
begin

if Form3.table1.FindKey([11111])= true then

begin
ShowMessage('O Registro já existe, va em verificação de pagamento ITR e apague o registro para continuar');

end

else

begin


contador := Form3.Table1.RecordCount;
if contador = 0 then
exit
else
soma := 0;
Form3.Table1.First;
repeat
soma := Form3.table1.fieldbyname('Valor').Asfloat + soma;
Form3.Table1.Next;
contador := contador -1;
until contador = 0;




Form3.Table1.Insert;
Form3.Table1.FieldByName('Cod').AsFloat:= 11111;
Form3.Table1.FieldByName('Nome').AsString := '               TOTAL              ';
Form3.Table1.FieldByName('Valor').AsFloat:= soma;
Form3.Table1.Refresh;


end;

end;

end.
 