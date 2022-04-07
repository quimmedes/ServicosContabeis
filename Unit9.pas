unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls;

type
  TForm9 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button2: TButton;
    Table1: TTable;
    DataSource1: TDataSource;
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  contador : integer;
  soma : real;

implementation

uses Unit8;

{$R *.dfm}

procedure TForm9.Edit1Change(Sender: TObject);
begin

Table1.Locate('A�ao',Edit1.text,[lopartialkey,locaseinsensitive]);


end;

procedure TForm9.FormCreate(Sender: TObject);
begin
Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin


table1.Last;
Table1.Insert;
Table1.FieldByName('A�ao').AsString := '                       TOTAL               ';
Table1.FieldByName('Valor').AsFloat:= Form8.Table1.Fieldbyname('Caixa Atual').Asfloat;
Table1.FieldByName('Data').Asstring:= formatdatetime('dd/mm/yyyy', now);
Table1.Refresh;



end;

procedure TForm9.Button3Click(Sender: TObject);
begin
table1.Delete;
end;

procedure TForm9.Button5Click(Sender: TObject);
begin
table1.Refresh;
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
table1.ApplyRange;
table1.refresh;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
table1.Edit;
end;

end.
 