unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, DB, DBTables;

type
  TForm13 = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

uses Unit7;

{$R *.dfm}

procedure TForm13.Edit1Change(Sender: TObject);
begin
Form7.Table1.Locate('Nome', Edit1.Text , [loPartialKey, loCaseInsensitive]);
end;

procedure TForm13.FormCreate(Sender: TObject);
begin
Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

procedure TForm13.Button1Click(Sender: TObject);
begin
Form7.table1.edit;
end;

procedure TForm13.Button4Click(Sender: TObject);
begin
Form7.table1.refresh;
end;

procedure TForm13.Button3Click(Sender: TObject);
begin
Form7.table1.applyrange;
Form7.table1.refresh;
end;

procedure TForm13.Button2Click(Sender: TObject);
begin
if messagedlg('Deseja Realmente Apagar o Registro da Pessoa Selecionada?',mtConfirmation,[mbYES,mbNO], 0)=mrYES then
begin
Form7.table1.delete;
end;
end;

end.
 