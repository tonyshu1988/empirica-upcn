unit UImpresionCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, QuickRpt, QRCtrls, Grids, DBGrids, ExtCtrls, jpeg,
  dxBar, dxBarExtItems, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKBusquedaAvanzada, EKNumeroATexto, EKVistaPreviaQR;

type
  TFImpresionCheques = class(TForm)
    PanelContenedor: TPanel;
    DBGridMercaderiaVendida: TDBGrid;
    RepCheques: TQuickRep;
    QRBand17: TQRBand;
    dxBarABM: TdxBarManager;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnBuscar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    QRImage1: TQRImage;
    QRDBText1: TQRDBText;
    ZQ_movimientos: TZQuery;
    ZQ_movimientosFECHA: TDateField;
    ZQ_movimientosFECHA_MDC: TDateField;
    ZQ_movimientosNRO_CHEQUE_TRANSF: TIntegerField;
    ZQ_movimientosIMPORTE: TFloatField;
    ZQ_movimientosANULADO: TStringField;
    ZQ_movimientosAPELLIDO_Y_NOMBRE: TStringField;
    EKNumeroALetras1: TEKNumeroALetras;
    EKBusquedaAvanzada1: TEKBusquedaAvanzada;
    DS_movimientos: TDataSource;
    EKVistaPreviaQR1: TEKVistaPreviaQR;
    QRDBText4: TQRDBText;
    QRLabelNumeroLetra: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabelFechaCheque: TQRLabel;
    procedure btnImprimirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure ZQ_movimientosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImpresionCheques: TFImpresionCheques;

implementation

uses UDM;

{$R *.dfm}

procedure TFImpresionCheques.btnImprimirClick(Sender: TObject);
begin
//EKNumeroALetras1.Numero := ZQ_movimientosIMPORTE.AsFloat;
//QRLabelNumeroLetra.Caption := UpperCase(EKNumeroALetras1.AsString);
//QRLabelFechaCheque.Caption := FormatDateTime('d mmmm, yyyy',ZQ_movimientosFECHA_MDC.AsDateTime);

EKVistaPreviaQR1.VistaPrevia;
end;

procedure TFImpresionCheques.btnBuscarClick(Sender: TObject);
begin
EKBusquedaAvanzada1.Buscar;
end;

procedure TFImpresionCheques.btnSalirClick(Sender: TObject);
begin
close;
end;

procedure TFImpresionCheques.ZQ_movimientosAfterScroll(DataSet: TDataSet);
begin
EKNumeroALetras1.Numero := ZQ_movimientosIMPORTE.AsFloat;
QRLabelNumeroLetra.Caption := UpperCase(EKNumeroALetras1.AsString);
QRLabelFechaCheque.Caption := FormatDateTime('d "de" mmmm "de" yyyy',ZQ_movimientosFECHA_MDC.AsDateTime);

end;

end.
