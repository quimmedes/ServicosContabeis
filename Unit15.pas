unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm15 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm15.Button1Click(Sender: TObject);
begin
if ((Edit1.Text = 'DANIELA') and (Edit2.Text = '280187'))or ((Edit1.text='admin') and (Edit2.Text='admin')) or ((Edit1.text='JOSILAINE') and (Edit2.Text='282887'))then
begin
Visible:= false;
Form1.ShowModal;
close;


end

else

ShowMessage('Usuario ou Senha Invalidos');

end;

procedure TForm15.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then  //Se a tecla for um ENTER...

  begin

  key := #0;  //Anula a tecla para evitar o irritante som de erro

  button1.Click;  //Gero a a??o de clicar no bot?o

  end;


end;

procedure TForm15.FormCreate(Sender: TObject);
begin
Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
 