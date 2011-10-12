unit EKVistaPreviaQRForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPrntr, ToolWin, ComCtrls, Buttons, ImgList, StdCtrls, QRExport,
  ActnList, ActnMan, ActnCtrls, XPStyleActnCtrls, EKImageList32,
  ExtCtrls, QRPDFFilt, QuickRpt;

type
  TEKVistaPreviaQRForm = class(TForm)
    QRPreview1: TQRPreview;
    imagenesx: TImageList;
    Acciones: TActionManager;
    Barra: TActionToolBar;
    AZoomPagina: TAction;
    AZoom100: TAction;
    AZoomAncho: TAction;
    APrimero: TAction;
    AAnterior: TAction;
    ASiguiente: TAction;
    AUltimo: TAction;
    AImprimir: TAction;
    AExportar_WORD: TAction;
    AExportar_EXCEL: TAction;
    AExportar_WMF: TAction;
    AGuardar: TAction;
    ASalir: TAction;
    PrintDialog: TPrintDialog;
    AConf_impresora: TAction;
    QRRTFFilter1: TQRRTFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRWMFFilter1: TQRWMFFilter;
    AZoomMas: TAction;
    AZoomMenos: TAction;
    QRExcelFilter1: TQRExcelFilter;
    imagenes: TEKImageList32;
    LogoEmpirica: TImage;
    QRPDFFilter1: TQRPDFFilter;
    AExportar_PDF: TAction;
    PanelProcesando: TPanel;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    StatusBar: TStatusBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AImprimirExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ASalirExecute(Sender: TObject);
    procedure AConf_impresoraExecute(Sender: TObject);
    procedure Exportar(Sender: TObject);
    procedure HacerZoom(Sender: TObject);
    procedure MoverPagina(Sender: TObject);
    procedure QRPreview1PageAvailable(Sender: TObject; PageNum: Integer);
    procedure FormCreate(Sender: TObject);
    procedure actualizarStatusBar();
  private
    cantidadPaginas: integer;
    acomodarReporte: boolean;
  public
    totalRegistros: integer;
  end;

var
  VistaPrevia: TEKVistaPreviaQRForm;

implementation

{$R *.dfm}

procedure TEKVistaPreviaQRForm.FormCreate(Sender: TObject);
begin
//  LogoEmpirica.Left:= Width - 300;
//  LogoEmpirica.Top:= Height - 33;

  ProgressBar1.Min:= 0;
  ProgressBar1.Max:= 100;
  acomodarReporte:= false;

  PanelProcesando.Top:= (Height div 2) - (PanelProcesando.Height div 2) - 40;
  PanelProcesando.Left:= (Width div 2) - (PanelProcesando.Width div 2);
end;


procedure TEKVistaPreviaQRForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QRPreview1.QRPrinter := nil;
  release;
end;


procedure TEKVistaPreviaQRForm.actualizarStatusBar();
begin
  StatusBar.Panels[0].Text:= 'Pagina: '+IntToStr(QRPreview1.PageNumber)+' de '+IntToStr(cantidadPaginas);
  StatusBar.Panels[2].Text:= 'Zoom: '+IntToStr(QRPreview1.Zoom)+' %';
end;


procedure TEKVistaPreviaQRForm.AConf_impresoraExecute(Sender: TObject);
var
  indice: integer;
begin
  (QRPreview1.QRPrinter.Master as TQuickRep).PrinterSetup;
  indice:= (QRPreview1.QRPrinter.Master as TQuickRep).PrinterSettings.PrinterIndex;
  StatusBar.Panels[3].Text:= '   Impresora: '+(QRPreview1.QRPrinter.Master as TQuickRep).Printer.Printers.Strings[indice];
end;


procedure TEKVistaPreviaQRForm.AImprimirExecute(Sender: TObject);
begin
  (QRPreview1.QRPrinter.Master as TQuickRep).Print;
end;


procedure TEKVistaPreviaQRForm.MoverPagina(Sender: TObject);
begin
  Application.ProcessMessages;
  if TAction(Sender).Name = 'APrimero' then
  begin
    QRPreview1.PageNumber := 1;
  end
  else
    if TAction(Sender).Name = 'AAnterior' then
    begin
      QRPreview1.PageNumber := QRPreview1.PageNumber - 1;
    end
    else
      if TAction(Sender).Name = 'ASiguiente' then
      begin
        QRPreview1.PageNumber := QRPreview1.PageNumber + 1;
      end
      else
        if TAction(Sender).Name = 'AUltimo' then
        begin
          QRPreview1.PageNumber := QRPreview1.QRPrinter.PageCount
        end;

  actualizarStatusBar;
end;


procedure TEKVistaPreviaQRForm.HacerZoom(Sender: TObject);
begin
  Application.ProcessMessages;
  if TAction(Sender).Name = 'AZoomPagina' then
  begin
    QRPreview1.ZoomToFit;
  end
  else
    if TAction(Sender).Name = 'AZoomAncho' then
    begin
      QRPreview1.ZoomToWidth;
    end
    else
      if TAction(Sender).Name = 'AZoom100' then
      begin
        QRPreview1.Zoom := 100;
      end
      else
        if TAction(Sender).Name = 'AZoomMas' then
        begin
          if not(QRPreview1.Zoom >= 500) then
            QRPreview1.Zoom := QRPreview1.Zoom + 10;
        end
        else
          if TAction(Sender).Name = 'AZoomMenos' then
          begin
            if not(QRPreview1.Zoom <= 10) then
              QRPreview1.Zoom := QRPreview1.Zoom - 10;
          end;

  actualizarStatusBar;
end;

procedure TEKVistaPreviaQRForm.Exportar(Sender: TObject);
var
  aExportFilter: TQRExportFilter;
  aFilterLibrary: TQRExportFilterLibraryEntry;
{$ifdef win32}
  FileExt : string;
  I : integer;
{$endif}
begin
  aExportFilter := nil;
  with TSaveDialog.Create(Application) do
  try
    if TAction(Sender).Name = 'AExportar_PDF' then
    begin
      Filter:= 'Acrobat PDF (*.pdf)|*.pdf';
      DefaultExt:= 'pdf';
    end
    else
      if TAction(Sender).Name = 'AExportar_WORD' then
      begin
        Filter := 'Microsoft Word(*.doc)|*.doc';
        DefaultExt := 'doc';
      end
      else
        if TAction(Sender).Name = 'AExportar_EXCEL' then
        begin
          Filter := 'Microsoft Excel (*.xls)|*.xls';
          DefaultExt := 'xls';
        end
        else
          if TAction(Sender).Name = 'AExportar_WMF' then
          begin
            Filter := 'Windows Meta File (*.wmf)|*.wmf';
            DefaultExt := 'wmf';
          end;

    if Execute then
    begin
    {$ifdef win32}
      FileExt := uppercase(ExtractFileExt(Filename));
      if FileExt = '.DOC' then
        fileExt := '.RTF';
      if copy(FileExt, 1, 1) = '.' then delete(FileExt, 1, 1);
      try
        aFilterLibrary:= QRExportFilterLibrary.GetFilterByExtension(FileExt);
        if aFilterLibrary <> nil then
        begin
          aExportFilter:= aFilterLibrary.ExportFilterClass.Create(FileName);
          QRPreview1.QRPrinter.ExportToFilter(aExportFilter);
        end;
      finally
        aExportFilter.Free;
      end;

    {$endif}
    end;
  finally
    Free;
  end;
end;


procedure TEKVistaPreviaQRForm.AGuardarExecute(Sender: TObject);
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


procedure TEKVistaPreviaQRForm.ASalirExecute(Sender: TObject);
begin
  close;
end;


procedure TEKVistaPreviaQRForm.QRPreview1PageAvailable(Sender: TObject; PageNum: Integer);
var
  indice: integer;
begin
  cantidadPaginas:= PageNum;
  StatusBar.Panels[0].Text:= '  Pagina: '+inttostr(QRPreview1.PageNumber)+' de '+IntToStr(cantidadPaginas);
//  ProgressBar1.Position:= QRPreview1.QRPrinter.Progress;

  case QRPreview1.QRPrinter.Status of
    mpReady:    begin
                  StatusBar.Panels[1].Text:= 'LISTO';
                end;

    mpBusy:     begin
                  StatusBar.Panels[1].Text:= 'PROCESANDO';
                end;

    mpFinished: begin
//                  ProgressBar1.Position:= 100;
//                  PanelProcesando.Visible:= false;

                  AImprimir.Enabled:= true;
                  AConf_impresora.Enabled:= true;
                  AExportar_WMF.Enabled:= true;
                  AExportar_WORD.Enabled:= true;
                  AExportar_EXCEL.Enabled:= true;
                  AExportar_PDF.Enabled:= true;
                  AGuardar.Enabled:= true;
                  StatusBar.Panels[1].Text:= 'LISTO';
                end;
  end;

  if not acomodarReporte then
  begin
    Application.ProcessMessages;
    acomodarReporte:= true;
    AZoomAncho.Execute;
    indice:= (QRPreview1.QRPrinter.Master as TQuickRep).PrinterSettings.PrinterIndex;
    StatusBar.Panels[3].Text:= '   Impresora: '+(QRPreview1.QRPrinter.Master as TQuickRep).Printer.Printers.Strings[indice];
  end;
end;



end.
