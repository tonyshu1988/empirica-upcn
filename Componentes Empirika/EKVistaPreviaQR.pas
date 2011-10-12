unit EKVistaPreviaQR;

interface

uses
  SysUtils, Classes, Dialogs, QRPrntr, Forms,
  QuickRpt, EKVistaPreviaQRForm, Printers;

type
  TEKVistaPreviaQR = class(TComponent)
  private
    { Private declarations }
    FReporte : TQuickRep;
    FShowModal : Boolean;
    FBorderIcons : TBorderIcons;
    Fvp : TEKVistaPreviaQRForm;
    FVerConfImpresora, FVerImprimir, FVerExpPDF, FVerExpWord, FVerExpImagen, FVerGuardar, FVerExpExel : Boolean;
    FCaption : string;
    procedure SetReporte(const Value: TQuickRep);
  protected
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor destroy; override;
    procedure VistaPrevia;
    procedure dopreview(sender : TObject);

  published
    { Published declarations }
    property Reporte : TQuickRep read FReporte write SetReporte;
    property ShowModal : Boolean read FShowModal write FShowModal;
    property BorderIcons : TBorderIcons read FBorderIcons write FBorderIcons default [biSystemMenu, biMinimize, biMaximize, biHelp];
    property VerGuardar : Boolean read FVerGuardar write FVerGuardar default True;
    property VerExpImagen : Boolean read FVerExpImagen write FVerExpImagen default True;
    property VerExpPDF : Boolean read FVerExpPDF write FVerExpPDF default True;
    property VerExpWord : Boolean read FVerExpWord write FVerExpWord default True;
    property VerExpExel : Boolean read FVerExpExel write FVerExpExel default True;
    property VerImprimir : Boolean read FVerImprimir write FVerImprimir default True;
    property VerConfImpresora : Boolean read FVerConfImpresora write FVerConfImpresora default True;
    property Caption : string read Fcaption write FCaption ;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKVistaPreviaQR]);
end;

{ TEKVistaPreviaQR }

constructor TEKVistaPreviaQR.Create(AOwner: TComponent);
begin
  inherited;
  BorderIcons := [biSystemMenu, biMinimize, biMaximize, biHelp];
  VerConfImpresora := true;
  VerImprimir := true;
  VerExpWord := true;
  VerExpExel := true;
  VerExpImagen  := true;
  VerGuardar := true;
  VerExpPDF := true;
  Caption := '';
end;


destructor TEKVistaPreviaQR.destroy;
begin
  inherited;
end;


procedure TEKVistaPreviaQR.dopreview(sender: TObject);
begin
  FReporte.PrinterSettings.PrinterIndex:= printer.PrinterIndex;
  Fvp.QRPreview1.QRPrinter:= TQRPrinter(sender);
end;


procedure TEKVistaPreviaQR.SetReporte(const Value: TQuickRep);
var
  i : integer;
begin
  FReporte:= Value;
  FReporte.Visible:= false;
  FReporte.Tag := 99;
  if caption > '' then
    FReporte.ReportTitle:= caption;
  for i := 0 to FReporte.BandList.Count-1 do
    TQRBand(FReporte.BandList.Items[i]).Tag := 99;
end;


procedure TEKVistaPreviaQR.VistaPrevia;
begin
  if not Assigned(FReporte) then
    showmessage('TEKVistaPreviaQR: Error, No se definió el Reporte.')
  else
  begin
    if Assigned (FReporte.DataSet) then
      FReporte.DataSet.DisableControls;

    Fvp := TEKVistaPreviaQRForm.Create(nil);
    fvp.BorderIcons:= FBorderIcons;
    fvp.AImprimir.Visible:= FVerImprimir;
    fvp.AConf_impresora.Visible:= FVerConfImpresora;
    fvp.AExportar_WMF.Visible:= FVerExpImagen;
    fvp.AExportar_WORD.Visible:= FVerExpWord;
    fvp.AExportar_EXCEL.Visible:= FVerExpExel;
    fvp.AExportar_PDF.Visible:= VerExpPDF;
    fvp.AGuardar.Visible:= FVerGuardar;
    if caption > '' then
      fvp.Caption:= caption;
    FReporte.OnPreview:= dopreview;
    if FShowModal then
    begin
      FReporte.PreviewModal;
      Fvp.Showmodal;
    end
    else
    begin
      Fvp.Show;
      FReporte.Preview;
    end;

    if Assigned (FReporte.DataSet) then
    begin
      FReporte.DataSet.First;
      FReporte.DataSet.EnableControls;
    end;
  end;
  
  Application.ProcessMessages;
end;


procedure TEKVistaPreviaQR.Notification(AComponent: TComponent; Operation: TOperation);
var
  I: Integer;
  NeedLayout: Boolean;
begin
  inherited Notification(AComponent, Operation);

  if (Operation = opRemove) then
  begin
    if (AComponent is TQuickRep) then
    begin
      if Assigned(FReporte) and (AComponent.Name = FReporte.Name) then
        FReporte:= nil;
    end
  end;
end;

end.
