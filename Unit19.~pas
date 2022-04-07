unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm19 = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;


implementation

uses Unit18;

{$R *.dfm}

procedure TForm19.FormCreate(Sender: TObject);
begin
Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

procedure TForm19.Button1Click(Sender: TObject);
begin
Form18.table1.Edit;
end;

procedure TForm19.Button2Click(Sender: TObject);
begin
if messagedlg('Deseja Apagar Registro ITR?',mtConfirmation,[mbYES,mbNO], 0)=mrYES then
begin
Form18.table1.delete;
end;
end;

procedure TForm19.Button3Click(Sender: TObject);
begin
form18.table1.refresh;
form18.table1.ApplyRange;
end;

procedure TForm19.Button4Click(Sender: TObject);
begin
form18.table1.Refresh;
end;

end.

