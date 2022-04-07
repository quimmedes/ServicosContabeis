unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables, Grids, DBGrids;

type
  TForm14 = class(TForm)
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
  

  private
    { nada  }
  public
    { nada }
  end;

var
  Form14: TForm14;

implementation

uses Unit9, Unit1, Unit2;

{$R *.dfm}



procedure TForm14.FormCreate(Sender: TObject);
begin
Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
