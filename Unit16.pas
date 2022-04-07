unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls;

type
  TForm16 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

uses Unit9, Unit8;

{$R *.dfm}

procedure TForm16.BitBtn1Click(Sender: TObject);
begin
Form8.table1.Edit;
Form8.table1.FieldByName('Caixa Atual').Asfloat := Form8.Table1.FieldByName('Caixa Atual').Asfloat - Strtofloat(Edit2.Text);
Form8.table1.FieldByName('Retiradas').AsFloat:= Strtofloat(Edit2.Text) + Form8.table1.FieldByName('Retiradas').AsFloat;
Form8.table1.refresh;


Form9.table1.Next;
Form9.table1.Insert;
Form9.Table1.FieldByName('Data').AsDateTime := strtodate(Edit3.text);
Form9.Table1.FieldByName('Açao').AsString := 'Retirada de Caixa ->' + Edit1.text;
Form9.Table1.FieldByName('Valor').Asfloat := Strtofloat(Edit2.text);
Form9.table1.refresh;
{Esvaziando as caixas de texto}

Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';


end;

procedure TForm16.FormShow(Sender: TObject);
begin
edit3.text := formatdatetime('dd/mm/yyyy', now);
end;

procedure TForm16.FormCreate(Sender: TObject);
begin
Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
