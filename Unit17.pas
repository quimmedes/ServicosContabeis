unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ShellApi , StdCtrls;

type
  TForm17 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;

implementation

uses Unit2, Unit3, Unit4, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TForm17.Button1Click(Sender: TObject);
begin
Form2.table1.close;
Form3.table1.close;
Form4.table1.close;
Form6.table1.close;
Form7.table1.close;
Form8.table1.close;
Form9.table1.close;

WinExec('backup.bat', SW_Show);

Form2.table1.open;
Form3.table1.open;
Form4.table1.open;
Form6.table1.open;
Form7.table1.open;
Form8.table1.open;
Form9.table1.open;



Showmessage('Backup Realizado com Sucesso na Pasta do Programa');


end;

procedure TForm17.Button2Click(Sender: TObject);
begin

Form2.table1.close;
Form3.table1.close;
Form4.table1.close;
Form6.table1.close;
Form7.table1.close;
Form8.table1.close;
Form9.table1.close;

winexec('restaurar.bat',Sw_show);



application.Terminate;



end;

end.

