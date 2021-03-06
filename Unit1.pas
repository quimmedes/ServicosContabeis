unit Unit1;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, ImgList, ExcelExport,ComObj,Clipbrd;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    NovoCliente1: TMenuItem;
    Editar1: TMenuItem;
    Cadastro2: TMenuItem;
    L1: TMenuItem;
    ITR20101: TMenuItem;
    InscPRural1: TMenuItem;
    ServiosExtras1: TMenuItem;
    Desmenbramento1: TMenuItem;
    Honorrio1: TMenuItem;
    Caixa1: TMenuItem;
    Hoje1: TMenuItem;
    Relatrio1: TMenuItem;
    Pagamentos1: TMenuItem;
    Verificar1: TMenuItem;
    ITR20102: TMenuItem;
    IncrioPRural1: TMenuItem;
    Honorario1: TMenuItem;
    Desmembramentos1: TMenuItem;
    FecharCaixa1: TMenuItem;
    ImprimirRelatrio1: TMenuItem;
    ImprimirRelatrio2: TMenuItem;
    Image1: TImage;
    ImprimirReltorio1: TMenuItem;
    Editar2: TMenuItem;
    Ferramentas1: TMenuItem;
    unit17: TMenuItem;
    Reindexar1: TMenuItem;
    I1: TMenuItem;
    ITR1: TMenuItem;
    IncrioPRural2: TMenuItem;
    Desmembramento1: TMenuItem;
    Honorario2: TMenuItem;
    ITR20111: TMenuItem;
    ITR20112: TMenuItem;
    ExcelExport1: TExcelExport;
    procedure NovoCliente1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Cadastro2Click(Sender: TObject);
    procedure ITR20101Click(Sender: TObject);
    procedure InscPRural1Click(Sender: TObject);
    procedure ServiosExtras1Click(Sender: TObject);
    procedure Desmenbramento1Click(Sender: TObject);
    procedure Honorrio1Click(Sender: TObject);
    procedure Hoje1Click(Sender: TObject);
    procedure Relatrio1Click(Sender: TObject);
    procedure ITR20102Click(Sender: TObject);
    procedure IncrioPRural1Click(Sender: TObject);
    procedure Honorario1Click(Sender: TObject);
    procedure Desmembramentos1Click(Sender: TObject);
    procedure FecharCaixa1Click(Sender: TObject);
    procedure ImprimirRelatrio1Click(Sender: TObject);
    procedure ImprimirRelatrio2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Editar2Click(Sender: TObject);
    procedure unit17Click(Sender: TObject);
    procedure Reindexar1Click(Sender: TObject);
    procedure ImprimirReltorio1Click(Sender: TObject);
    procedure ITR1Click(Sender: TObject);
    procedure IncrioPRural2Click(Sender: TObject);
    procedure Desmembramento1Click(Sender: TObject);
    procedure Honorario2Click(Sender: TObject);
    procedure ITR20111Click(Sender: TObject);
    procedure ITR20112Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  contador : integer;
  soma : real;
  cod : integer;


implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10,
  Unit11, Unit12, Unit13, Unit14, Unit15, Unit16, Unit17, main, Unit18,
  Unit19;

{$R *.dfm}
function ResetAutoInc(FileName: TFileName; Base: Longint): Boolean;
begin
  with TFileStream.Create(FileName, fmOpenReadWrite) do
  Result := (Seek($49, soFromBeginning) = $49) and (Write(Base, 4) = 4);
end;

procedure TForm1.NovoCliente1Click(Sender: TObject);
begin
Form2.Button1.Visible:=true;
Form2.Button4.Visible:=false;
Form2.ShowModal;

end;

procedure TForm1.Fechar1Click(Sender: TObject);
begin

Application.Terminate;

end;

procedure TForm1.Cadastro2Click(Sender: TObject);
begin
Form14.ShowModal;
end;

procedure TForm1.ITR20101Click(Sender: TObject);
begin

Form3.ShowModal;
end;

procedure TForm1.InscPRural1Click(Sender: TObject);
begin

Form4.Table1.Next;
Form4.Table1.Insert;
Form4.ShowModal;
end;

procedure TForm1.ServiosExtras1Click(Sender: TObject);
begin

Form5.showmodal();

end;

procedure TForm1.Desmenbramento1Click(Sender: TObject);
begin

Form6.Table1.Next;
Form6.Table1.Insert;
Form6.Showmodal;
end;

procedure TForm1.Honorrio1Click(Sender: TObject);
begin

Form7.Table1.Next;
Form7.Table1.Insert;
Form7.Showmodal;
end;

procedure TForm1.Hoje1Click(Sender: TObject);
begin
Form8.Table1.refresh;
form8.table1.edit;
Form8.Table1.FieldByName('Total de entrada').asfloat:= Form8.Table1.FieldByName('Caixa Atual').AsFloat + form8.Table1.fieldbyname('Retiradas').AsFloat;
form8.Table1.refresh;
Form8.ShowModal;
end;

procedure TForm1.Relatrio1Click(Sender: TObject);
begin
Form9.ShowModal;
end;

procedure TForm1.ITR20102Click(Sender: TObject);
begin
Form10.ShowModal;
end;

procedure TForm1.IncrioPRural1Click(Sender: TObject);
begin

Form11.Showmodal;
end;

procedure TForm1.Honorario1Click(Sender: TObject);
begin
Form12.Showmodal;
end;

procedure TForm1.Desmembramentos1Click(Sender: TObject);
begin
Form13.Showmodal;
end;

procedure TForm1.FecharCaixa1Click(Sender: TObject);
begin

if messagedlg('Deseja realmente Fechar o Caixa, isso ir? zerar o caixa de hoje?',mtConfirmation,[mbYES,mbNO], 0)=mrYES then
begin
Form8.Table1.Edit;
form8.table1.FieldByName('Caixa Atual').AsFloat :=0;
form8.table1.FieldByName('Retiradas').AsFloat :=0;
form8.table1.FieldByName('Total de entrada').AsFloat :=0;
Form8.Table1.Refresh;
end;


end;

procedure TForm1.ImprimirRelatrio1Click(Sender: TObject);
begin

if messagedlg('Deseja Realmente Apagar os Relat?rios de hoje?',mtConfirmation,[mbYES,mbNO], 0)=mrYES then
begin

    Form9.table1.First;
     While not  Form9.table1.Eof do
       Begin
           Form9.table1.Delete;
           Form9.table1.First;

       end;
    Form9.table1.Active := false;
    ResetAutoInc('z:\dados\Relatorio.db',0);
    ShowMessage ('A??o efetuada com sucesso, o programa sera fechado!');
    Application.Terminate;


end;

end;

procedure TForm1.ImprimirRelatrio2Click(Sender: TObject);
begin
Form16.ShowModal;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

procedure TForm1.Editar2Click(Sender: TObject);
begin
Form2.Button1.Visible:=false;
Form2.Button4.Visible:=true;
Form2.ShowModal;
end;

procedure TForm1.unit17Click(Sender: TObject);
begin
form17.showmodal;
end;

procedure TForm1.Reindexar1Click(Sender: TObject);
begin

Winexec('dtutil32',SW_Show);
application.Terminate;
end;

procedure TForm1.ImprimirReltorio1Click(Sender: TObject);
var
cont : integer;
objExcel,Sheet,Chart,s : Variant;
cTitulo : string;
i : integer;

begin 

//OBS: Voce deve usar a Clausula ComObj no USES para usar o EXCEL
// Utilize tamb?m a Clausula Clipbrd pois neste exemplo faremos uso da mem?ria

// Cria uma instancia para utilizar o Excel
cTitulo := 'IMPRIMIR RELATORIO';
objExcel := CreateOleObject('Excel.Application');
objExcel.Visible := True;
objExcel.Caption := cTitulo;

// Adiciona planilha(sheet)
objExcel.Workbooks.Add;
objExcel.Workbooks[1].Sheets.Add;
objExcel.Workbooks[1].WorkSheets[1].Name := cTitulo;
Sheet := objExcel.Workbooks[1].WorkSheets[cTitulo];

// ? possivel copiar um valor da mem?ria diretamente para a planilha
// mas como n?o se tem controle de onde ele ser? colado, este processo pode
// ser meio inconveniente
//Clipboard.AsText := 'Linha Copiada para Mem?ria';
//Sheet.paste;

// Nota:
// Pode-se preencher as linhas usando o comando abaixo, desta forma vc usaria
// a planilha como se ela fosse uma Array, em alguns casos pode ser interessante
// mas no geral considero bem mais trabalhoso, abaixo demonstro outra forma de trabalho
// usando o RANGE que torna o trabalho bem mais simples
//Sheet.Cells[1,1] := 'Coluna[1,1]';

// Preenchendo as Colunas
// Usando o RANGE vc pode preencher v?rias colunas ao mesmo tempo usando ['A1','A10']
// Ou preencher apenas uma usando ['A1'], isso torna o processo ?gil e simples
Sheet.Range['B1'] := '          RELAT?RIO DE CAIXA';
Sheet.Range['A3'] := 'DATA';
Sheet.Range['B3'] := '          A??O';
Sheet.Range['C3'] := 'VALOR';

// por aqui tu limparias a planilha

// No caso do FOR se torna interessante usar o SHEET.CELLS (veja como)
// Atente que usei o FOR a partir do numero 2 desta forma pularemos a
// primeira linha que ja contem um cabe?alho preenchido acima
cont := Form9.Table1.RecordCount + 3;
Form9.Table1.First;
for i := 4 to cont do
begin
Sheet.Cells[i,1] := Form9.Table1.FieldByName('Data').AsString ;
Sheet.Cells[i,2] := Form9.Table1.FieldByName('A?ao').AsString ;
Sheet.Cells[i,3] := Form9.Table1.FieldByName('Valor').AsString ;
Form9.Table1.Next;
end;

// Formatando o Cabe?alho
Sheet.Range['B1'].font.name := 'Verdana'; // Fonte
Sheet.Range['B1'].font.size := 12; // Tamanho da Fonte
Sheet.Range['B1'].font.bold := true; // Negrito
Sheet.Range['A3','C3'].font.name := 'Verdana'; // Fonte
Sheet.Range['A3','C3'].font.size := 12; // Tamanho da Fonte
Sheet.Range['A3','C3'].font.bold := true; // Negrito
//Sheet.Range['A1','C1'].font.italic := true; // Italico
//Sheet.Range['A1','C1'].font.color := clYellow; // Cor da Fonte
//Sheet.Range['A1','C1'].Interior.Color := $00ffcf9c; // Cor da C?lula
// Define o tamanho das Colunas (basta fazer em uma delas e as demais ser?o alteradas)

Sheet.Range['A1'] .ColumnWidth := 11;
Sheet.Range['B1'] .ColumnWidth := 52;
Sheet.Range['C1'] .ColumnWidth := 9;

Sheet.Range['A1','A1000'].HorizontalAlignment := 3;
Sheet.Range['B1','B1000'].HorizontalAlignment := 2; // 3=Center - 4=Right
Sheet.Range['C1','C1000'].HorizontalAlignment := 4;



// O PrintPreview abre a tela de visualiza??o do Excel
// e o PrintOut imprime na impressora padr?o do Windows
//Sheet.PrintPreview;
//Sheet.PrintOut;

// o SaveAs permite que vc salve autom?ticamente o relat?rio gerado
//Sheet.SaveAs('c:\relatorios\teste.xls');



end;

procedure TForm1.ITR1Click(Sender: TObject);
begin
ExcelExport1.Dataset:= Form3.Table1;
  ExcelExport1.ExportDataset;
  ExcelExport1.Disconnect;

end;

procedure TForm1.IncrioPRural2Click(Sender: TObject);
begin
ExcelExport1.Dataset:=Form4.Table1;
  ExcelExport1.ExportDataset;
  ExcelExport1.Disconnect;

end;

procedure TForm1.Desmembramento1Click(Sender: TObject);
begin
ExcelExport1.Dataset:=Form6.Table1;
  ExcelExport1.ExportDataset;
  ExcelExport1.Disconnect;

end;

procedure TForm1.Honorario2Click(Sender: TObject);
begin
ExcelExport1.Dataset:=Form7.Table1;
  ExcelExport1.ExportDataset;
  ExcelExport1.Disconnect;

end;

procedure TForm1.ITR20111Click(Sender: TObject);
begin
Form18.Showmodal;
end;

procedure TForm1.ITR20112Click(Sender: TObject);
begin
Form19.Showmodal;
end;

end.
