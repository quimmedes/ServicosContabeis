unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Grids, DBGrids, DB, DBTables;

type
  TForm11 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm11.Edit1Change(Sender: TObject);
begin
Form4.Table1.Locate('Nome', Edit1.Text , [loPartialKey, loCaseInsensitive]);
end;

procedure TForm11.FormCreate(Sender: TObject);
begin
Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

procedure TForm11.Button1Click(Sender: TObject);
begin
Form4.Table1.Edit;
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
if messagedlg('Deseja Realmente Apagar o Registro da Pessoa Selecionada?',mtConfirmation,[mbYES,mbNO], 0)=mrYES then
begin
Form4.Table1.Delete;
end;
end;

procedure TForm11.Button4Click(Sender: TObject);
begin
Form4.Table1.Refresh;
end;

procedure TForm11.Button3Click(Sender: TObject);
begin
Form4.Table1.ApplyRange;
Form4.Table1.Refresh;
end;

end.
 