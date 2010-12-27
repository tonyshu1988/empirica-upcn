unit EKVistaPreviaQRForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPrntr, ToolWin, ComCtrls, Buttons, ImgList, StdCtrls, QRExport,
  qr3const, ActnList, ActnMan, ActnCtrls, XPStyleActnCtrls, EKImageList32,
  ExtCtrls;

type
  TEKVistaPreviaQRForm = class(TForm)
    QRPreview1: TQRPreview;
    imagenesx: TImageList;
    Acciones: TActionManager;
    Barra: TActionToolBar;
    zoom_pagina: TAction;
    zomm_100: TAction;
    zoom_ancho: TAction;
    primero: TAction;
    anterior: TAction;
    siguiente: TAction;
    ultimo: TAction;
    Imprimir: TAction;
    word: TAction;
    Excel: TAction;
    imagen: TAction;
    guardar: TAction;
    salir: TAction;
    PrintDialog: TPrintDialog;
    Conf_impresora: TAction;
    QRRTFFilter1: TQRRTFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRWMFFilter1: TQRWMFFilter;
    zoom_mas: TAction;
    zoom_menos: TAction;
    QRExcelFilter1: TQRExcelFilter;
    imagenes: TEKImageList32;
    Image2: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
    procedure ZoomFitClick(Sender: TObject);
    procedure Zoom100Click(Sender: TObject);
    procedure ZoomToWidthClick(Sender: TObject);
    procedure FirstPageClick(Sender: TObject);
    procedure PreviousPageClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure LastPageClick(Sender: TObject);
    procedure PrintSetupClick(Sender: TObject);
    procedure PrintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure zoom_paginaExecute(Sender: TObject);
    procedure zomm_100Execute(Sender: TObject);
    procedure zoom_anchoExecute(Sender: TObject);
    procedure primeroExecute(Sender: TObject);
    procedure anteriorExecute(Sender: TObject);
    procedure siguienteExecute(Sender: TObject);
    procedure ultimoExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure wordExecute(Sender: TObject);
    procedure ExcelExecute(Sender: TObject);
    procedure imagenExecute(Sender: TObject);
    procedure guardarExecute(Sender: TObject);
    procedure salirExecute(Sender: TObject);
    procedure Conf_impresoraExecute(Sender: TObject);
    procedure zoom_masExecute(Sender: TObject);
    procedure zoom_menosExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VistaPrevia: TEKVistaPreviaQRForm;

implementation

{$R *.dfm}

procedure TEKVistaPreviaQRForm.SpeedButton1Click(Sender: TObject);
var
  aExportFilter : TQRExportFilter;
{$ifdef win32}
  FileExt : string;
  I : integer;
{$endif}
begin
  aExportFilter := nil;
  with TSaveDialog.Create(Application) do
  try
    Title := SqrSaveReport;
    Filter := QRExportFilterLibrary.SaveDialogFilterString;
    DefaultExt := cQRPDefaultExt;
    if Execute then
    begin
    {$ifndef win32}
      if FilterIndex = 1 then
        qrpreview1.QRPrinter.Save(Filename)
      else
      begin
        try
          aExportFilter := TQRExportFilterLibraryEntry(
            QRExportFilterLibrary.Filters[FilterIndex - 2]).ExportFilterClass.Create(Filename);
          qrpreview1.QRPrinter.ExportToFilter(aExportFilter);
        finally
          aExportFilter.Free
        end
      end
    {$else}
      FileExt := ExtractFileExt(Filename);
      if copy(FileExt, 1, 1) = '.' then delete(FileExt, 1, 1);
      if (FileExt = '') or (FileExt = cQRPDefaultExt) then
        qrpreview1.QRPrinter.Save(Filename)
      else
      begin
        for I := 0 to QRExportFilterLibrary.Filters.Count - 1 do
        begin
          if TQRExportFilterLibraryEntry(QRExportFilterLibrary.Filters[I]).Extension = FileExt then
          try
            aExportFilter := TQRExportFilterLibraryEntry(
            QRExportFilterLibrary.Filters[I]).ExportFilterClass.Create(Filename);
            qrpreview1.QRPrinter.ExportToFilter(aExportFilter);
          finally
            aExportFilter.Free;
          end;
        end;
      end;
    {$endif}

    end;
  finally
    Free;
  end;
end;

procedure TEKVistaPreviaQRForm.ExitButtonClick(Sender: TObject);
begin
  close;
end;

procedure TEKVistaPreviaQRForm.ZoomFitClick(Sender: TObject);
begin
  Application.ProcessMessages;
  QRPreview1.ZoomToFit;
end;

procedure TEKVistaPreviaQRForm.Zoom100Click(Sender: TObject);
begin
  Application.ProcessMessages;
  QRPreview1.Zoom := 100;
end;

procedure TEKVistaPreviaQRForm.ZoomToWidthClick(Sender: TObject);
begin
  Application.ProcessMessages;
  QRPreview1.ZoomToWidth;
end;

procedure TEKVistaPreviaQRForm.FirstPageClick(Sender: TObject);
begin
  QRPreview1.PageNumber := 1;
end;

procedure TEKVistaPreviaQRForm.PreviousPageClick(Sender: TObject);
begin
  QRPreview1.PageNumber := QRPreview1.PageNumber - 1;
end;

procedure TEKVistaPreviaQRForm.ToolButton2Click(Sender: TObject);
begin
  QRPreview1.PageNumber := QRPreview1.PageNumber + 1;
end;

procedure TEKVistaPreviaQRForm.LastPageClick(Sender: TObject);
begin
  QRPreview1.PageNumber := QRPreview1.QRPrinter.PageCount;
end;

procedure TEKVistaPreviaQRForm.PrintSetupClick(Sender: TObject);
begin
  QRPreview1.QRPrinter.PrintSetup;
end;

procedure TEKVistaPreviaQRForm.PrintClick(Sender: TObject);
begin
if TPrinterSetupDialog.Create(Application).Execute then
  QRPreview1.QRPrinter.Print;
end;

procedure TEKVistaPreviaQRForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QRPreview1.QRPrinter := nil;
  release;
end;

procedure TEKVistaPreviaQRForm.Button1Click(Sender: TObject);
var
  aExportFilter : TQRExportFilter;
{$ifndef win32}
  FileExt : string;
  I : integer;
{$endif}
begin
  aExportFilter := nil;
  with TSaveDialog.Create(Application) do
  try
//    Title := SqrSaveReport;
    Filter := QRExportFilterLibrary.SaveDialogFilterString;
    DefaultExt := cQRPDefaultExt;
    if Execute then
    begin
    {$ifdef win32}
      if FilterIndex = 1 then
        QRPrinter.Save(Filename)
      else
      begin
        try
          aExportFilter := TQRExportFilterLibraryEntry(
            QRExportFilterLibrary.Filters[FilterIndex - 2]).ExportFilterClass.Create(Filename);
          QRPrinter.ExportToFilter(aExportFilter);
        finally
          aExportFilter.Free
        end
      end
    {$else}
      FileExt := ExtractFileExt(Filename);
      if copy(FileExt, 1, 1) = '.' then delete(FileExt, 1, 1);
      if (FileExt = '') or (FileExt = cQRPDefaultExt) then
        QRPrinter.Save(Filename)
      else
      begin
        for I := 0 to QRExportFilterLibrary.Filters.Count - 1 do
        begin
          if TQRExportFilterLibraryEntry(QRExportFilterLibrary.Filters[I]).Extension = FileExt then
          try
            aExportFilter := TQRExportFilterLibraryEntry(
            QRExportFilterLibrary.Filters[I]).ExportFilterClass.Create(Filename);
            QRPrinter.ExportToFilter(aExportFilter);
          finally
            aExportFilter.Free;
          end;
        end;
      end;
    {$endif}
    end;
  finally
    Free;
  end;
end;
procedure TEKVistaPreviaQRForm.ToolButton3Click(Sender: TObject);
var
  aExportFilter : TQRExportFilter;
{$ifdef win32}
  FileExt : string;
  I : integer;
{$endif}
begin
  aExportFilter := nil;
  with TSaveDialog.Create(Application) do
  try
    Title := SqrSaveReport;
    //Filter := QRExportFilterLibrary.SaveDialogFilterString;
    Filter := 'Microsoft Word(*.doc)|*.doc';
    //DefaultExt := cQRPDefaultExt;
    DefaultExt := 'doc';
    if Execute then
    begin
    {$ifdef win32}
      FileExt := uppercase(ExtractFileExt(Filename));
      if FileExt = '.DOC' then fileExt := '.RTF';
      if copy(FileExt, 1, 1) = '.' then delete(FileExt, 1, 1);
      for I := 0 to QRExportFilterLibrary.Filters.Count - 1 do
      begin
        if TQRExportFilterLibraryEntry(QRExportFilterLibrary.Filters[I]).Extension = FileExt then
        try
          aExportFilter := TQRExportFilterLibraryEntry(
          QRExportFilterLibrary.Filters[I]).ExportFilterClass.Create(Filename);
          qrpreview1.QRPrinter.ExportToFilter(aExportFilter);
        finally
          aExportFilter.Free;
        end;
      end;
    {$endif}
    end;
  finally
    Free;
  end;
end;

procedure TEKVistaPreviaQRForm.ToolButton5Click(Sender: TObject);
var
  aExportFilter : TQRExportFilter;
{$ifdef win32}
  FileExt : string;
  I : integer;
{$endif}
begin
  aExportFilter := nil;
  with TSaveDialog.Create(Application) do
  try
    Title := SqrSaveReport;
    //Filter := QRExportFilterLibrary.SaveDialogFilterString;
    Filter := 'Microsoft Excel(*.xls)|*.xls';
    //DefaultExt := cQRPDefaultExt;
    DefaultExt := 'xls';
    if Execute then
    begin
    {$ifdef win32}
      FileExt := uppercase(ExtractFileExt(Filename));
      if FileExt = '.DOC' then fileExt := '.RTF';
      if copy(FileExt, 1, 1) = '.' then delete(FileExt, 1, 1);
      for I := 0 to QRExportFilterLibrary.Filters.Count - 1 do
      begin
        if TQRExportFilterLibraryEntry(QRExportFilterLibrary.Filters[I]).Extension = FileExt then
        try
          aExportFilter := TQRExportFilterLibraryEntry(
          QRExportFilterLibrary.Filters[I]).ExportFilterClass.Create(Filename);
          qrpreview1.QRPrinter.ExportToFilter(aExportFilter);
        finally
          aExportFilter.Free;
        end;
      end;
    {$endif}
    end;
  finally
    Free;
  end;
end;

procedure TEKVistaPreviaQRForm.ToolButton9Click(Sender: TObject);
var
  aExportFilter : TQRExportFilter;
{$ifdef win32}
  FileExt : string;
  I : integer;
{$endif}
begin
  aExportFilter := nil;
  with TSaveDialog.Create(Application) do
  try
    Title := SqrSaveReport;
    //Filter := QRExportFilterLibrary.SaveDialogFilterString;
    Filter := 'Windows Meta File(*.wmf)|*.wmf';
    //DefaultExt := cQRPDefaultExt;
    DefaultExt := 'wmf';
    if Execute then
    begin
    {$ifdef win32}
      FileExt := uppercase(ExtractFileExt(Filename));
      if FileExt = '.DOC' then fileExt := '.RTF';
      if copy(FileExt, 1, 1) = '.' then delete(FileExt, 1, 1);
      for I := 0 to QRExportFilterLibrary.Filters.Count - 1 do
      begin
        if TQRExportFilterLibraryEntry(QRExportFilterLibrary.Filters[I]).Extension = FileExt then
        try
          aExportFilter := TQRExportFilterLibraryEntry(
          QRExportFilterLibrary.Filters[I]).ExportFilterClass.Create(Filename);
          qrpreview1.QRPrinter.ExportToFilter(aExportFilter);
        finally
          aExportFilter.Free;
        end;
      end;
    {$endif}
    end;
  finally
    Free;
  end;
end;

procedure TEKVistaPreviaQRForm.FormActivate(Sender: TObject);
begin
//  showmessage('kk');
//  Application.ProcessMessages;
//  QRPreview1.Zoom := 100;
//  QRPreview1.PageNumber := 1;
end;

procedure TEKVistaPreviaQRForm.FormDeactivate(Sender: TObject);
begin
{
  Application.ProcessMessages;
  QRPreview1.Zoom := 100;
  QRPreview1.PageNumber := 1;
}
end;

procedure TEKVistaPreviaQRForm.zoom_paginaExecute(Sender: TObject);
begin
  Application.ProcessMessages;
  QRPreview1.ZoomToFit;
end;

procedure TEKVistaPreviaQRForm.zomm_100Execute(Sender: TObject);
begin
  Application.ProcessMessages;
  QRPreview1.Zoom := 100;
end;

procedure TEKVistaPreviaQRForm.zoom_anchoExecute(Sender: TObject);
begin
  Application.ProcessMessages;
  QRPreview1.ZoomToWidth;
end;

procedure TEKVistaPreviaQRForm.primeroExecute(Sender: TObject);
begin
  QRPreview1.PageNumber := 1;
end;

procedure TEKVistaPreviaQRForm.anteriorExecute(Sender: TObject);
begin
  QRPreview1.PageNumber := QRPreview1.PageNumber - 1;

end;

procedure TEKVistaPreviaQRForm.siguienteExecute(Sender: TObject);
begin
  QRPreview1.PageNumber := QRPreview1.PageNumber + 1;

end;

procedure TEKVistaPreviaQRForm.ultimoExecute(Sender: TObject);
begin
  QRPreview1.PageNumber := QRPreview1.QRPrinter.PageCount;

end;

procedure TEKVistaPreviaQRForm.ImprimirExecute(Sender: TObject);
begin
    QRPreview1.QRPrinter.Print;
end;

procedure TEKVistaPreviaQRForm.wordExecute(Sender: TObject);
var
  aExportFilter : TQRExportFilter;
{$ifdef win32}
  FileExt : string;
  I : integer;
{$endif}
begin
  aExportFilter := nil;
  with TSaveDialog.Create(Application) do
  try
    Title := SqrSaveReport;
    //Filter := QRExportFilterLibrary.SaveDialogFilterString;
    Filter := 'Microsoft Word(*.doc)|*.doc';
    //DefaultExt := cQRPDefaultExt;
    DefaultExt := 'doc';
    if Execute then
    begin
    {$ifdef win32}
      FileExt := uppercase(ExtractFileExt(Filename));
      if FileExt = '.DOC' then fileExt := '.RTF';
      if copy(FileExt, 1, 1) = '.' then delete(FileExt, 1, 1);
      for I := 0 to QRExportFilterLibrary.Filters.Count - 1 do
      begin
        if TQRExportFilterLibraryEntry(QRExportFilterLibrary.Filters[I]).Extension = FileExt then
        try
          aExportFilter := TQRExportFilterLibraryEntry(
          QRExportFilterLibrary.Filters[I]).ExportFilterClass.Create(Filename);
          qrpreview1.QRPrinter.ExportToFilter(aExportFilter);
        finally
          aExportFilter.Free;
        end;
      end;
    {$endif}
    end;
  finally
    Free;
  end;
end;

procedure TEKVistaPreviaQRForm.ExcelExecute(Sender: TObject);
var
  aExportFilter : TQRExportFilter;
{$ifdef win32}
  FileExt : string;
  I : integer;
{$endif}
begin
  aExportFilter := nil;
  with TSaveDialog.Create(Application) do
  try
    Title := SqrSaveReport;
    //Filter := QRExportFilterLibrary.SaveDialogFilterString;
    Filter := 'Microsoft Excel(*.xls)|*.xls';
    //DefaultExt := cQRPDefaultExt;
    DefaultExt := 'xls';
    if Execute then
    begin
    {$ifdef win32}
      FileExt := uppercase(ExtractFileExt(Filename));
      if FileExt = '.DOC' then fileExt := '.RTF';
      if copy(FileExt, 1, 1) = '.' then delete(FileExt, 1, 1);
      for I := 0 to QRExportFilterLibrary.Filters.Count - 1 do
      begin
        if TQRExportFilterLibraryEntry(QRExportFilterLibrary.Filters[I]).Extension = FileExt then
        try
          aExportFilter := TQRExportFilterLibraryEntry(
          QRExportFilterLibrary.Filters[I]).ExportFilterClass.Create(Filename);
          qrpreview1.QRPrinter.ExportToFilter(aExportFilter);
        finally
          aExportFilter.Free;
        end;
      end;
    {$endif}
    end;
  finally
    Free;
  end;
end;

procedure TEKVistaPreviaQRForm.imagenExecute(Sender: TObject);
var
  aExportFilter : TQRExportFilter;
{$ifdef win32}
  FileExt : string;
  I : integer;
{$endif}
begin
  aExportFilter := nil;
  with TSaveDialog.Create(Application) do
  try
    Title := SqrSaveReport;
    //Filter := QRExportFilterLibrary.SaveDialogFilterString;
    Filter := 'Windows Meta File(*.wmf)|*.wmf';
    //DefaultExt := cQRPDefaultExt;
    DefaultExt := 'wmf';
    if Execute then
    begin
    {$ifdef win32}
      FileExt := uppercase(ExtractFileExt(Filename));
      if FileExt = '.DOC' then fileExt := '.RTF';
      if copy(FileExt, 1, 1) = '.' then delete(FileExt, 1, 1);
      for I := 0 to QRExportFilterLibrary.Filters.Count - 1 do
      begin
        if TQRExportFilterLibraryEntry(QRExportFilterLibrary.Filters[I]).Extension = FileExt then
        try
          aExportFilter := TQRExportFilterLibraryEntry(
          QRExportFilterLibrary.Filters[I]).ExportFilterClass.Create(Filename);
          qrpreview1.QRPrinter.ExportToFilter(aExportFilter);
        finally
          aExportFilter.Free;
        end;
      end;
    {$endif}
    end;
  finally
    Free;
  end;
end;

procedure TEKVistaPreviaQRForm.guardarExecute(Sender: TObject);
var
  aExportFilter : TQRExportFilter;
{$ifdef win32}
  FileExt : string;
  I : integer;
{$endif}
begin
  aExportFilter := nil;
  with TSaveDialog.Create(Application) do
  try
    Title := SqrSaveReport;
    Filter := QRExportFilterLibrary.SaveDialogFilterString;
    DefaultExt := cQRPDefaultExt;
    if Execute then
    begin
    {$ifndef win32}
      if FilterIndex = 1 then
        qrpreview1.QRPrinter.Save(Filename)
      else
      begin
        try
          aExportFilter := TQRExportFilterLibraryEntry(
            QRExportFilterLibrary.Filters[FilterIndex - 2]).ExportFilterClass.Create(Filename);
          qrpreview1.QRPrinter.ExportToFilter(aExportFilter);
        finally
          aExportFilter.Free
        end
      end
    {$else}
      FileExt := ExtractFileExt(Filename);
      if copy(FileExt, 1, 1) = '.' then delete(FileExt, 1, 1);
      if (FileExt = '') or (FileExt = cQRPDefaultExt) then
        qrpreview1.QRPrinter.Save(Filename)
      else
      begin
        for I := 0 to QRExportFilterLibrary.Filters.Count - 1 do
        begin
          if TQRExportFilterLibraryEntry(QRExportFilterLibrary.Filters[I]).Extension = FileExt then
          try
            aExportFilter := TQRExportFilterLibraryEntry(
            QRExportFilterLibrary.Filters[I]).ExportFilterClass.Create(Filename);
            qrpreview1.QRPrinter.ExportToFilter(aExportFilter);
          finally
            aExportFilter.Free;
          end;
        end;
      end;
    {$endif}

    end;
  finally
    Free;
  end;
end;

procedure TEKVistaPreviaQRForm.salirExecute(Sender: TObject);
begin
  close;
end;

procedure TEKVistaPreviaQRForm.Conf_impresoraExecute(Sender: TObject);
begin
    QRPreview1.QRPrinter.PrintSetup;
end;

procedure TEKVistaPreviaQRForm.zoom_masExecute(Sender: TObject);
begin
  Application.ProcessMessages;
  if not(QRPreview1.Zoom >= 500) then
    QRPreview1.Zoom := QRPreview1.Zoom + 10;

end;

procedure TEKVistaPreviaQRForm.zoom_menosExecute(Sender: TObject);
begin
  Application.ProcessMessages;
  if not(QRPreview1.Zoom <= 10) then
    QRPreview1.Zoom := QRPreview1.Zoom - 10;

end;

procedure TEKVistaPreviaQRForm.FormCreate(Sender: TObject);
var
i:integer;
begin
  tag:=98;
  // Elimino los enter por tabs
  barra.Tag:=tag;
  for  i:=0 to Barra.ComponentCount-1 do
  begin
      with barra do
        begin
           Components[i].Tag:=tag;
        end
  end;

  QRPreview1.Tag:=tag;

end;

end.
