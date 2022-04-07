unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls, DBCtrls;

type
  TForm8 = class(TForm)
    DBGrid1: TDBGrid;
    Table1: TTable;
    DataSource1: TDataSource;
    Table1CaixaAtual: TFloatField;
    Table1Retiradas: TFloatField;
    Table1Totaldeentrada: TFloatField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm8.FormCreate(Sender: TObject);
begin
Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
 