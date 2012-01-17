unit UArqueo_Caja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, ExtCtrls, dxBar,
  dxBarExtItems, ComCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, EKDbSuma, QRCtrls, QuickRpt, EKVistaPreviaQR;

type
  TFArqueo_Caja = class(TForm)
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PanelContenedor: TPanel;
    Panel5: TPanel;
    Panel1: TPanel;
    lblComprobantes: TLabel;
    PanelFiltro: TPanel;
    Label39: TLabel;
    ZQ_ComprobanteDetalle: TZQuery;
    ZQ_ComprobanteDetalleID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_ComprobanteDetalleID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteDetalleID_PRODUCTO: TIntegerField;
    ZQ_ComprobanteDetalleDETALLE: TStringField;
    ZQ_ComprobanteDetalleCANTIDAD: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_FINAL: TFloatField;
    ZQ_ComprobanteDetallePORC_DESCUENTO: TFloatField;
    ZQ_ComprobanteDetalleBASE_IMPONIBLE: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_UNITARIO: TFloatField;
    ZQ_ComprobanteDetalleIMPUESTO_INTERNO: TFloatField;
    ZQ_ComprobanteDetallePORC_IVA: TFloatField;
    ZQ_ComprobanteDetalleCANTIDAD_RECIBIDA: TFloatField;
    ZQ_ComprobanteDetalleCANTIDAD_ALMACENADA: TFloatField;
    ZQ_ComprobanteDetalleID_STOCK_PRODUCTO: TIntegerField;
    ZQ_ComprobanteDetalleIMPORTE_VENTA: TFloatField;
    ZQ_ComprobanteDetalleDETALLE_PROD: TStringField;
    ZQ_ComprobanteDetalleIMPORTE_IVA: TFloatField;
    DS_ComprobanteDetalle: TDataSource;
    DateTimePicker1: TDateTimePicker;
    DBGridListadoProductos: TDBGrid;
    DBGridFormaPago: TDBGrid;
    ZQ_Comprobante_FormaPago: TZQuery;
    ZQ_Comprobante_FormaPagoSUM: TFloatField;
    ZQ_Comprobante_FormaPagoTFORMAPAGO_: TStringField;
    ZQ_Comprobante_FormaPagoIF: TStringField;
    ZQ_Comprobante_FormaPagoCUENTAINGRESO: TStringField;
    ZQ_Comprobante_FormaPagoCUENTAEGRESO: TStringField;
    DS_Comprobante_FormaPago: TDataSource;
    EKDbSuma1: TEKDbSuma;
    RepArqueo: TQuickRep;
    QRBand14: TQRBand;
    RepArqueo_Titulo: TQRLabel;
    RepArqueo_Subtitulo: TQRLabel;
    QRLabel68: TQRLabel;
    EKVistaPreviaQR1: TEKVistaPreviaQR;
    QRSubDetail1: TQRSubDetail;
    QRSubDetail2: TQRSubDetail;
    QRSubDetail3: TQRSubDetail;
    QRDBText33: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel3: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRSubDetail4: TQRSubDetail;
    QRLabelImporteventa: TQRLabel;
    QRLabelImporteTotal: TQRLabel;
    EKDbSuma2: TEKDbSuma;
    procedure DateTimePicker1Change(Sender: TObject);
    procedure EKDbSuma1SumListChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FArqueo_Caja: TFArqueo_Caja;

implementation

uses UDM;

{$R *.dfm}

procedure TFArqueo_Caja.DateTimePicker1Change(Sender: TObject);
begin
     ZQ_ComprobanteDetalle.Close;
     ZQ_ComprobanteDetalle.ParamByName('fecha').AsDate:=DateTimePicker1.Date;
     ZQ_ComprobanteDetalle.Open;

     ZQ_Comprobante_FormaPago.Close;
     ZQ_Comprobante_FormaPago.ParamByName('fecha').AsDate:=DateTimePicker1.Date;
     ZQ_Comprobante_FormaPago.Open;
end;

procedure TFArqueo_Caja.EKDbSuma1SumListChanged(Sender: TObject);
begin
  lblComprobantes.Caption := FormatFloat('Total Ingreso: $ ##,###,##0.00 ', EKDbSuma1.SumCollection[0].SumValue);
end;

procedure TFArqueo_Caja.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date:=dm.EKModelo.Fecha();
  DateTimePicker1Change(self);
end;

procedure TFArqueo_Caja.btnSalirClick(Sender: TObject);
begin
close;
end;

procedure TFArqueo_Caja.btnImprimirClick(Sender: TObject);
begin
  if ZQ_ComprobanteDetalle.IsEmpty then
  exit;

  QRLabelImporteventa.Caption := FormatFloat('Total Venta: $ ##,###,##0.00 ', EKDbSuma2.SumCollection[0].SumValue);
  QRLabelImporteTotal.Caption := FormatFloat('Total: $ ##,###,##0.00 ', EKDbSuma1.SumCollection[0].SumValue);

  DM.VariablesReportes(RepArqueo);
  EKVistaPreviaQR1.VistaPrevia;
end;

procedure TFArqueo_Caja.btnExcelClick(Sender: TObject);
begin
  if not ZQ_ComprobanteDetalle.IsEmpty then
    dm.ExportarEXCEL(DBGridListadoProductos);
end;

end.
