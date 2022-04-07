{
 Exemplo retirado de www.mpdelphi.cjb.net
 Esse componete não é de autoria minha ele foi retirado da internet, os dados
 do idealizador estão abaixo !!!
 }
//------------------------------------------------------------------------------
// TExcelExport : Export Delphi Dataset to MS Excel
// February - May 2000
// Version 1.2
//
// Stefan Cruysberghs
// stefancr@yucom.be (= stefancr@mail.dma.be)
// http://bewoner.antwerpen.be/stefancr (= http://www.bewoner.dma.be/stefancr)
//------------------------------------------------------------------------------

{
  Example 1 : easiest way to use

  ExcelExport1.Dataset:=Table1;
  ExcelExport1.ExportDataset;
  ExcelExport1.Disconnect;
}

{
  Example 2

  ExcelExport1.WorksheetName := 'MyDataset';
  ExcelExport1.Dataset:=Table1;
  ExcelExport1.StyleColumnWidth:=cwOwnerWidth;
  ExcelExport1.ColumnWidth := 20;
  ExcelExport1.FontTitles := LabelTitle.Font;
  ExcelExport1.OrientationTitles := 45;
  ExcelExport1.FontData := LabelData.Font;
  ExcelExport1.ExcelVisible:=False;
  ExcelExport1.ExportDataset;
  ExcelExport1.SaveAs('c:\test.xls',ffXLS);
  ExcelExport1.Disconnect;
}

unit ExcelExport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, OleServer, Excel97;

  // When you have installed Service Pack 1 for Delphi 5
  // you can use the unit Excel2000
  // Otherwise use unit Excel97
  // (When using Excel2000 I got errors with package dclaxserver50)

type
  TFileFormat = (ffXLS, ffHTM, ffCSV);
  TStyleColumnWidth = (cwDefault, cwOwnerWidth, cwAutoFit);

  TExcelExport = class(TComponent)
  private
    FDataset : TDataset;

    FExcelApplication : TExcelApplication;
    FExcelWorkbook : TExcelWorkbook;
    FExcelWorksheet : TExcelWorksheet;

    FFieldNames : TStrings;

    FBlnExcelVisible : Boolean;
    FStrWorksheetName : String;
    FIntColumnWidth : Integer;
    FStyleColumnWidth : TStyleColumnWidth;
    FFontTitles : TFont;
    FFontOrientationTitles : Integer;
    FFontData : TFont;

    LCID : Integer;
  protected
    procedure SetFontTitles(Value : TFont);
    procedure SetFontData(Value : TFont);
    procedure SetColumnWidth;
    function GetColumnCharacters(IntNumber : Integer) : String;
    procedure SetFontRange(DelphiFont : TFont; StrBeginCell, StrEndCell : String);
    function CanConvertFieldToCell(Field : TField) : Boolean;
    procedure ExportTitles;
    procedure ExportFieldData;
  public
    constructor Create(Owner: TComponent); override;
    destructor Destroy; override;

    procedure Disconnect;
    procedure ExportDataset;
    procedure SaveAs(const StrFileName : String; const FileFormat : TFileFormat);
    procedure PrintPreview(const BlnPrintGridLines : Boolean);
  published
    property ExcelVisible : Boolean read FBlnExcelVisible write FBlnExcelVisible default True;
    property FontTitles : TFont read FFontTitles write SetFontTitles;
    property OrientationTitles : Integer read FFontOrientationTitles write FFontOrientationTitles;
    property FontData : TFont read FFontData write SetFontData;
    property StyleColumnWidth : TStyleColumnWidth read FStyleColumnWidth write FStyleColumnWidth;
    property ColumnWidth : Integer read FIntColumnWidth write FIntColumnWidth;
    property WorksheetName : String read FStrWorksheetName write FStrWorksheetName;
    property Dataset : TDataset read FDataset write FDataset;
  end;

procedure Register;

implementation

uses ComObj, ActiveX;

procedure Register;
begin
  RegisterComponents('SC', [TExcelExport]);
end;

{ $R ExcelExport.dcr }

//------------------------------------------------------------------------------
constructor TExcelExport.Create(Owner: TComponent);
begin
  inherited;
  FFontTitles := TFont.Create;
  FFontData := TFont.Create;

  FBlnExcelVisible := True;
  FStrWorksheetName := '';
  FStyleColumnWidth := cwDefault;
  FIntColumnWidth := 0;
  FFontOrientationTitles := 0;

  FExcelApplication := TExcelApplication.Create(Self);
  FExcelWorkbook := TExcelWorkbook.Create(Self);
  FExcelWorksheet := TExcelWorksheet.Create(Self);

  FFieldNames:=TStringList.Create;
end;

//------------------------------------------------------------------------------
destructor TExcelExport.Destroy;
begin
  FFontTitles.Free;
  FFontData.Free;

  FExcelWorksheet.Free;
  FExcelWorkbook.Free;
  FExcelApplication.Free;

  FFieldNames.Free;
  inherited;
end;

//------------------------------------------------------------------------------
procedure TExcelExport.SetFontTitles(Value : TFont);
begin
  FFontTitles.Assign(Value);
end;

//------------------------------------------------------------------------------
procedure TExcelExport.SetFontData(Value : TFont);
begin
  FFontData.Assign(Value);
end;

//------------------------------------------------------------------------------
procedure TExcelExport.SetFontRange(DelphiFont : TFont; StrBeginCell, StrEndCell : String);
begin
  // Convert Delphi font to the Exce font
  with FExcelWorksheet.Range[StrBeginCell, StrEndCell].Font do
  begin
    Name := DelphiFont.Name;
    Size := DelphiFont.Size;
    Color := DelphiFont.Color;
    Bold :=  fsBold in DelphiFont.Style;
    Italic := fsItalic in DelphiFont.Style;
    Underline := fsUnderline in DelphiFont.Style;
  end;

  if StrBeginCell = 'A1' then
    FExcelWorksheet.Range[StrBeginCell, StrEndCell].Orientation:=FFontOrientationTitles;
end;

//------------------------------------------------------------------------------
procedure TExcelExport.SetColumnWidth;
begin
  if FStyleColumnWidth = cwOwnerWidth then
    FExcelWorksheet.Range['A1',GetColumnCharacters(FFieldNames.Count)+'1'].ColumnWidth:=FIntColumnWidth;
  if FStyleColumnWidth = cwAutoFit then
    FExcelWorksheet.Range['A1',GetColumnCharacters(FFieldNames.Count)+'1'].EntireColumn.Autofit;
end;

//------------------------------------------------------------------------------
function TExcelExport.CanConvertFieldToCell(Field : TField) : Boolean;
begin
  if (Field.DataType = ftString) or
    (Field.DataType = ftSmallint) or
    (Field.DataType = ftInteger) or
    (Field.DataType = ftWord) or
    (Field.DataType = ftBoolean) or
    (Field.DataType = ftFloat) or
    (Field.DataType = ftCurrency) or
    (Field.DataType = ftBCD) or
    (Field.DataType = ftDate) or
    (Field.DataType = ftTime) or
    (Field.DataType = ftDateTime) then
  begin
    Result:=True;
  end
  else
    Result:=False;
end;

//------------------------------------------------------------------------------
// Get Column-character for giving index
//------------------------------------------------------------------------------
function TExcelExport.GetColumnCharacters(IntNumber : Integer) : String;
begin
  if IntNumber < 1 then
    Result:='A'
  else
  begin
    if IntNumber > 702 then
      Result:='ZZ'
    else
    begin
      if IntNumber > 26 then
      begin
        Result:=Chr(64 + (IntNumber div 26));
        Result:=Result+Chr(64 + (IntNumber mod 26));
      end
      else
        Result:=Chr(64 + IntNumber);
    end;
  end;
end;

//------------------------------------------------------------------------------
procedure TExcelExport.Disconnect;
begin
  if not FExcelApplication.Visible[LCID] then
  begin
    FExcelApplication.DisplayAlerts[LCID] := False;
    FExcelApplication.Quit;
  end;
  FExcelWorksheet.Disconnect;
  FExcelWorkbook.Disconnect;
  FExcelApplication.Disconnect;
end;

//------------------------------------------------------------------------------
procedure TExcelExport.ExportDataset;
var
  i : Integer;
  StrColumn : String;
  IntRow : Integer;
  StrCell : String;
begin
  with FDataset do
    if not Active then
      Exit;

  LCID := GetUserDefaultLCID;

  // Try to connect to Excel and create new Worksheet
  try
    FExcelApplication.ConnectKind := ckNewInstance;
    FExcelApplication.Connect;
    FExcelWorkbook.ConnectTo(FExcelApplication.Workbooks.Add(TOleEnum(xlWBATWorksheet), LCID));
    FExcelWorksheet.ConnectTo(FExcelWorkbook.Worksheets[1] as _Worksheet);
  except
    Exit;
  end;

  FExcelApplication.ScreenUpdating[LCID] := False;

  // If property worksheetname is not filled, worksheet will have name of dataset
  if FStrWorksheetName <> '' then
    FExcelWorksheet.Name := FStrWorksheetName
  else
    FExcelWorksheet.Name := FDataset.Name;

  // Export fieldnames and data
  ExportTitles;
  ExportFieldData;

  // Set fonts of titles and data
  SetFontRange(FFontTitles, 'A1', GetColumnCharacters(FFieldNames.Count)+'1');
  SetFontRange(FFontData, 'A2', GetColumnCharacters(FFieldNames.Count)+IntToStr(FDataset.RecordCount+1));

  // Set width of columns
  SetColumnWidth;

  FExcelApplication.ScreenUpdating[LCID] := FBlnExcelVisible;
  FExcelApplication.Visible[LCID]:=FBlnExcelVisible;
end;

//------------------------------------------------------------------------------
procedure TExcelExport.ExportTitles;
var
  IntRow : Integer;
  IntColumn : Integer;
  StrCell : String;
begin
  IntRow:=1;
  with FDataset do
  begin
    FFieldNames.Clear;
    for IntColumn := 1 to Fields.Count do
    begin
      // Only export fields which are writable in an Excel cell
      // Add these fields to a list, so this list can be used
      // when exporting data
      if CanConvertFieldToCell(Fields[IntColumn - 1]) then
      begin
        FFieldNames.Add(Fields[IntColumn-1].FieldName);
        StrCell:=GetColumnCharacters(IntColumn)+IntToStr(IntRow);

        // Use DisplayName of column if this is filled in, otherwise use FieldName
        if Fields[IntColumn-1].DisplayName <> '' then
          FExcelWorksheet.Range[StrCell,StrCell].Value := Fields[IntColumn-1].DisplayName
        else
          FExcelWorksheet.Range[StrCell,StrCell].Value := Fields[IntColumn-1].FieldName;
      end;
    end;
  end;
end;

//------------------------------------------------------------------------------
procedure TExcelExport.ExportFieldData;
var
  IntRow : Integer;
  IntColumn : Integer;
  StrCell : String;
begin
  IntRow:=2;
  with FDataset do
  begin
    First;
    while not EOF do
    begin
      for IntColumn := 1 to FFieldNames.Count do
      begin
        StrCell:=GetColumnCharacters(IntColumn)+IntToStr(IntRow);
        FExcelWorksheet.Range[StrCell,StrCell].Value := FieldByName(FFieldNames[IntColumn-1]).Value;
      end;
      Next;
      Inc(IntRow);
    end;
  end;
end;

//------------------------------------------------------------------------------
procedure TExcelExport.SaveAs(const StrFileName : String; const FileFormat : TFileFormat);
begin
  FExcelApplication.DisplayAlerts[LCID] := False;
  // Export data to a file
  case FileFormat of
    ffXLS : FExcelWorksheet.SaveAs(StrFileName,xlNormal);
    ffCSV : FExcelWorksheet.SaveAs(StrFileName,xlCSV);
    //ffHTM : FExcelWorksheet.SaveAs(StrFileName,xlHtml);  // Only works with Excel2000
  end;
end;

//------------------------------------------------------------------------------
procedure TExcelExport.PrintPreview(const BlnPrintGridLines : Boolean);
begin
  // Show PrintPreview of Excel
  FExcelWorksheet.PageSetup.PrintGridlines:=BlnPrintGridLines;
  FExcelWorksheet.PageSetup.CenterHeader:=FExcelWorksheet.Name;
  FExcelApplication.ScreenUpdating[LCID] := True;
  FExcelApplication.Visible[LCID]:=True;
  FExcelWorksheet.PrintPreview;
end;

end.


