
unit Unit5;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Buttons;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit10: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit11: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public



   end;


var
  Form5: TForm5;

implementation
uses unit3, Unit8, Unit1, Unit9;
{$R *.dfm}

procedure TForm5.BitBtn1Click(Sender: TObject);
begin

{Faz o teste dos valores se o valor for diferente de vazia adiciona o valor ao caixa e adiciona
o serviço e o o valor no relatorio}

if Edit1.Text <> '' then
begin
Form8.Table1.refresh;
Form8.Table1.Edit;
Form8.Table1.FieldByName('Caixa Atual').AsFloat := Strtofloat(Edit1.Text) + Form8.Table1.FieldByName('Caixa Atual').AsFloat;
Form8.Table1.Refresh;

Form9.Table1.Insert;

Form9.Table1.FieldByName('Data').AsDateTime := strtodate(Edit11.text);

Form9.Table1.FieldByName('Açao').AsString:='SERVIÇOS EXTRAS -> Contratos em Geral';

Form9.Table1.FieldByName('Valor').AsFloat:=Strtofloat(Edit1.Text);
Form9.Table1.Refresh;
end;

if Edit2.Text <> '' then
begin
Form8.Table1.refresh;
Form8.Table1.Edit;
Form8.Table1.FieldByName('Caixa Atual').AsFloat := Strtofloat(Edit2.Text) + Form8.Table1.FieldByName('Caixa Atual').AsFloat;
Form8.Table1.Refresh;

Form9.Table1.Insert;
Form9.Table1.FieldByName('Data').AsDateTime := strtodate(Edit11.text);
Form9.Table1.FieldByName('Açao').AsString:='SERVIÇOS EXTRAS -> Marcação de Perícia ';
Form9.Table1.FieldByName('Valor').AsFloat:=Strtofloat(Edit2.Text);
Form9.Table1.Refresh;
end;

if Edit3.Text <> '' then
begin
Form8.Table1.refresh;
Form8.Table1.Edit;
Form8.Table1.FieldByName('Caixa Atual').AsFloat := Strtofloat(Edit3.Text) + Form8.Table1.FieldByName('Caixa Atual').AsFloat;
Form8.Table1.Refresh;

Form9.Table1.Insert;
Form9.Table1.FieldByName('Data').AsDateTime := strtodate(Edit11.text);
Form9.Table1.FieldByName('Açao').AsString:='SERVIÇOS EXTRAS -> Inscrição do INSS ';
Form9.Table1.FieldByName('Valor').AsFloat:=Strtofloat(Edit3.Text);
Form9.Table1.Refresh;
end;

if Edit4.Text <> '' then
begin
Form8.Table1.refresh;
Form8.Table1.Edit;
Form8.Table1.FieldByName('Caixa Atual').AsFloat := Strtofloat(Edit4.Text) + Form8.Table1.FieldByName('Caixa Atual').AsFloat;
Form8.Table1.Refresh;

Form9.Table1.Insert;
Form9.Table1.FieldByName('Data').AsDateTime := strtodate(Edit11.text);
Form9.Table1.FieldByName('Açao').AsString:='SERVIÇOS EXTRAS -> Decore ';
Form9.Table1.FieldByName('Valor').AsFloat:=Strtofloat(Edit4.Text);
Form9.Table1.Refresh;
end;

if Edit5.Text <> '' then
begin
Form8.Table1.refresh;
Form8.Table1.Edit;
Form8.Table1.FieldByName('Caixa Atual').AsFloat := Strtofloat(Edit5.Text) + Form8.Table1.FieldByName('Caixa Atual').AsFloat;
Form8.Table1.Refresh;

Form9.Table1.Insert;
Form9.Table1.FieldByName('Data').AsDateTime := strtodate(Edit11.text);
Form9.Table1.FieldByName('Açao').AsString:='SERVIÇOS EXTRAS -> Cálculo de Rescisão ';
Form9.Table1.FieldByName('Valor').AsFloat:=Strtofloat(Edit5.Text);
Form9.Table1.Refresh;
end;

if Edit6.Text <> '' then
begin
Form8.Table1.refresh;
Form8.Table1.Edit;
Form8.Table1.FieldByName('Caixa Atual').AsFloat := Strtofloat(Edit6.Text) + Form8.Table1.FieldByName('Caixa Atual').AsFloat;
Form8.Table1.Refresh;

Form9.Table1.Insert;
Form9.Table1.FieldByName('Data').AsDateTime := strtodate(Edit11.text);
Form9.Table1.FieldByName('Açao').AsString:='SERVIÇOS EXTRAS -> Preenchimento de Carnê INSS ';
Form9.Table1.FieldByName('Valor').AsFloat:=Strtofloat(Edit6.Text);
Form9.Table1.Refresh;
end;

if Edit7.Text <> '' then
begin
Form8.Table1.refresh;
Form8.Table1.Edit;
Form8.Table1.FieldByName('Caixa Atual').AsFloat :=Form8.Table1.FieldByName('Caixa Atual').AsFloat +  Strtofloat(Edit7.Text);
Form8.Table1.Refresh;

Form9.Table1.Insert;
Form9.Table1.FieldByName('Data').AsDateTime := strtodate(Edit11.text);
Form9.Table1.FieldByName('Açao').AsString:='SERVIÇOS EXTRAS -> Nota Fiscal Avulsa ';
Form9.Table1.FieldByName('Valor').AsFloat:=Strtofloat(Edit7.Text);
Form9.Table1.Refresh;
end;

if Edit8.Text <> '' then
begin
Form8.Table1.refresh;
Form8.Table1.Edit;
Form8.Table1.FieldByName('Caixa Atual').AsFloat := Form8.Table1.FieldByName('Caixa Atual').AsFloat +  Strtofloat(Edit8.Text);
Form8.Table1.Refresh;

Form9.Table1.Insert;
Form9.Table1.FieldByName('Data').AsDateTime := strtodate(Edit11.text);
Form9.Table1.FieldByName('Açao').AsString:='SERVIÇOS EXTRAS -> Recibos de Compra e Venda ';
Form9.Table1.FieldByName('Valor').AsFloat:=Strtofloat(Edit8.Text);
Form9.Table1.Refresh;
end;

if Edit9.Text <> '' then
begin
Form8.Table1.refresh;
Form8.Table1.Edit;
Form8.Table1.FieldByName('Caixa Atual').AsFloat := Strtofloat(Edit9.Text) + Form8.Table1.FieldByName('Caixa Atual').AsFloat;
Form8.Table1.Refresh;

Form9.Table1.Insert;
Form9.Table1.FieldByName('Data').AsDateTime := strtodate(Edit11.text);
Form9.Table1.FieldByName('Açao').AsString:='SERVIÇOS EXTRAS -> Outros->' + Edit10.Text;
Form9.Table1.FieldByName('Valor').AsFloat:=Strtofloat(Edit9.Text);
Form9.Table1.Refresh;
end;
{Esvaziando Caixas de textos}

Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';
Edit7.Text:='';
Edit8.Text:='';
Edit9.Text:='';
{Atualizando dados}

end;

procedure TForm5.FormShow(Sender: TObject);
begin
edit11.text := formatdatetime('dd/mm/yyyy', now);
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
