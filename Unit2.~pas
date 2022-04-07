unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, DB, DBClient, StdCtrls, Mask,
  DBTables, Buttons;

type
  TForm2 = class(TForm)
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label1: TLabel;
    DataSource1: TDataSource;
    Table1: TTable;
    DBEdit1: TDBEdit;
    Button1: TButton;
    BitBtn2: TBitBtn;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
Table1.Refresh;
Table1.Next;
Table1.Insert;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin

Table1.Refresh;

end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
Table1.Refresh;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
if messagedlg('Deseja Remover?',mtConfirmation,[mbYES,mbNO], 0)=mrYES then
begin
Table1.Delete;
end;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
Table1.Edit;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
