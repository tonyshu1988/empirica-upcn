unit UImpresion_Comprobantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKVistaPreviaQR, QRCtrls, QuickRpt, jpeg, ExtCtrls;

type
  TFImpresion_Comprobantes = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    RepRemito: TQuickRep;
    QRBand11: TQRBand;
    RepRemito_SITUACIONIVAYCUIT: TQRLabel;
    RepRemito_TELEFONOS: TQRLabel;
    RepRemito_DIRECCION: TQRLabel;
    RepRemitos_EMPRESA: TQRLabel;
    QRShape1: TQRShape;
    QRLabel146: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    RepRemito_DUENIO: TQRLabel;
    RepPresupuesto: TQuickRep;
    QRBand6: TQRBand;
    RepPresupuesto_SITUACIONIVAYCUIT: TQRLabel;
    RepPresupuesto_TELEFONOS: TQRLabel;
    RepPresupuesto_DIRECCION: TQRLabel;
    RepPresupuesto_EMPRESA: TQRLabel;
    QRShape3: TQRShape;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel76: TQRLabel;
    RepPresupuesto_DUENIO: TQRLabel;
    QRSubDetail9: TQRSubDetail;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    pre_unitario: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRBand7: TQRBand;
    RepRecibo: TQuickRep;
    QRBand10: TQRBand;
    RepRecibo_SITUACIONIVAYCUIT: TQRLabel;
    RepRecibo_TELEFONOS: TQRLabel;
    RepRecibo_DIRECCION: TQRLabel;
    QRDBText62: TQRDBText;
    RepRecibo_EMPRESA: TQRLabel;
    QRShape4: TQRShape;
    QRLabel101: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRDBText68: TQRDBText;
    RepRecibo_DUENIO: TQRLabel;
    EKVistaPrevia: TEKVistaPreviaQR;
    ZQ_Fpago: TZQuery;
    ZQ_FpagoID_COMPROB_FP: TIntegerField;
    ZQ_FpagoID_COMPROBANTE: TIntegerField;
    ZQ_FpagoID_TIPO_FORMAPAG: TIntegerField;
    ZQ_FpagoMDCP_FECHA: TDateField;
    ZQ_FpagoMDCP_BANCO: TStringField;
    ZQ_FpagoMDCP_CHEQUE: TStringField;
    ZQ_FpagoIMPORTE: TFloatField;
    ZQ_FpagoCONCILIADO: TDateField;
    ZQ_FpagoCUENTA_INGRESO: TIntegerField;
    ZQ_FpagoCUENTA_EGRESO: TIntegerField;
    ZQ_FpagoCTA_EGRESO_CODIGO: TStringField;
    ZQ_FpagoCTA_EGRESO: TStringField;
    ZQ_FpagoCTA_INGRESO_CODIGO: TStringField;
    ZQ_FpagoCTA_INGRESO: TStringField;
    ZQ_Producto: TZQuery;
    ZQ_ProductoID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_ProductoID_COMPROBANTE: TIntegerField;
    ZQ_ProductoID_PRODUCTO: TIntegerField;
    ZQ_ProductoDETALLE: TStringField;
    ZQ_ProductoCANTIDAD: TFloatField;
    ZQ_ProductoIMPORTE_FINAL: TFloatField;
    ZQ_ProductoPORC_DESCUENTO: TFloatField;
    ZQ_ProductoBASE_IMPONIBLE: TFloatField;
    ZQ_ProductoIMPORTE_UNITARIO: TFloatField;
    ZQ_ProductoIMPUESTO_INTERNO: TFloatField;
    ZQ_ProductoPORC_IVA: TFloatField;
    ZQ_ProductoCOD_CABECERA: TStringField;
    ZQ_ProductoPRODUCTO: TStringField;
    ZQ_ProductoIMAGEN: TBlobField;
    ZQ_ProductoMEDIDA: TStringField;
    ZQ_ProductoCOLOR: TStringField;
    ZQ_ProductoMARCA: TStringField;
    ZQ_ProductoARTICULO: TStringField;
    ZQ_ProductoTIPO_ARTICULO: TStringField;
    ZQ_ProductoCOD_PRODUCTO: TStringField;
    ZQ_ProductoCODIGO_BARRA: TStringField;
    ZQ_ProductoPRECIO_COSTO: TFloatField;
    ZQ_ProductoPRECIO_VENTA: TFloatField;
    ZQ_ProductoCOEF_GANANCIA: TFloatField;
    ZQ_ProductoCOEF_DESCUENTO: TFloatField;
    ZQ_ProductoIMPUESTO_INTERNO_1: TFloatField;
    ZQ_ProductoIMPUESTO_IVA: TFloatField;
    ZQ_Comprobante: TZQuery;
    ZQ_Destino: TZQuery;
    ZQ_DestinoNOMBRE: TStringField;
    ZQ_DestinoDIRECCION: TStringField;
    ZQ_DestinoCODIGO_POSTAL: TStringField;
    ZQ_DestinoLOCALIDAD: TStringField;
    ZQ_DestinoPROVINCIA: TStringField;
    ZQ_DestinoTIPO_DOCUMENTO: TStringField;
    ZQ_DestinoNUMERO_DOCUMENTO: TStringField;
    ZQ_DestinoTIPO_IVA: TStringField;
    ZQ_DestinoCUIT_CUIL: TStringField;
    ZQ_ComprobanteID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteID_SUCURSAL: TIntegerField;
    ZQ_ComprobanteID_PROVEEDOR: TIntegerField;
    ZQ_ComprobanteID_CLIENTE: TIntegerField;
    ZQ_ComprobanteID_TIPO_CPB: TIntegerField;
    ZQ_ComprobanteID_VENDEDOR: TIntegerField;
    ZQ_ComprobanteID_COMP_ESTADO: TIntegerField;
    ZQ_ComprobanteCODIGO: TStringField;
    ZQ_ComprobanteFECHA: TDateTimeField;
    ZQ_ComprobanteOBSERVACION: TStringField;
    ZQ_ComprobanteBASE_IMPONIBLE: TFloatField;
    ZQ_ComprobanteSALDO: TFloatField;
    ZQ_ComprobanteIMPORTE_TOTAL: TFloatField;
    ZQ_ComprobantePORC_IVA: TFloatField;
    ZQ_ComprobanteIMPORTE_IVA: TFloatField;
    ZQ_ComprobantePORC_DESCUENTO: TFloatField;
    ZQ_ComprobanteIMPORTE_DESCUENTO: TFloatField;
    ZQ_ComprobanteENCABEZADO: TStringField;
    ZQ_ComprobantePIE: TStringField;
    ZQ_ComprobanteFECHA_COBRADA: TDateField;
    ZQ_ComprobanteFECHA_ENVIADA: TDateField;
    ZQ_ComprobanteFECHA_IMPRESA: TDateField;
    ZQ_ComprobanteFECHA_VENCIMIENTO: TDateField;
    ZQ_ComprobantePUNTO_VENTA: TIntegerField;
    ZQ_ComprobanteNUMERO_CPB: TIntegerField;
    ZQ_ComprobanteFECHA_ANULADO: TDateField;
    ZQ_ComprobanteSUCURSAL: TStringField;
    ZQ_ComprobanteVENDEDOR: TStringField;
    ZQ_ComprobanteNOMBRE_TIPO_CPB: TStringField;
    ZQ_ComprobanteESTADO: TStringField;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel5: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel87: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText60: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText14: TQRDBText;
    TitleBand2: TQRBand;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText63: TQRDBText;
    TitleBand4: TQRBand;
    QRLabel53: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRDBText85: TQRDBText;
    QRDBText86: TQRDBText;
    QRDBText87: TQRDBText;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    QRDBText90: TQRDBText;
    QRDBText91: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel89: TQRLabel;
    QRDBText11: TQRDBText;
    ChildBand3: TQRChildBand;
    QRLabel4: TQRLabel;
    QRDBText7: TQRDBText;
    ChildBand5: TQRChildBand;
    QRLabel9: TQRLabel;
    QRDBText15: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    ChildBand6: TQRChildBand;
    QRLabel108: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel119: TQRLabel;
    PageFooterBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRSubDetail5: TQRSubDetail;
    QRDBText81: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText84: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRDBText73: TQRDBText;
    ZQ_FpagoNOMBRE_TIPO: TStringField;
    QRlblPieDePaginaRecibo: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    SummaryBand2: TQRBand;
    QrtImporteProductosPresupuesto: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel57: TQRLabel;
    pre_tit_bonif: TQRLabel;
    pre_tit_unitario: TQRLabel;
    QRLabel51: TQRLabel;
    QRlblPieDePaginaPresupuesto: TQRLabel;
    QRDBText17: TQRDBText;
    RepNotaPedido: TQuickRep;
    QRBand1: TQRBand;
    RepNotaPedido_SITUACIONIVAYCUIT: TQRLabel;
    RepNotaPedido_TELEFONOS: TQRLabel;
    RepNotaPedido_DIRECCION: TQRLabel;
    RepNotaPedido_EMPRESA: TQRLabel;
    QRShape2: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    RepNotaPedido_DUENIO: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel17: TQRLabel;
    QRSubDetail6: TQRSubDetail;
    QRDBText9: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRBand2: TQRBand;
    QRlblPieDePaginaNotaPedido: TQRLabel;
    QRBand3: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText41: TQRDBText;
    QRChildBand3: TQRChildBand;
    QRLabel29: TQRLabel;
    QRDBText42: TQRDBText;
    QRBand4: TQRBand;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRBand8: TQRBand;
    QRLabel48: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel106: TQRLabel;
    QRBand5: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    SummaryBand3: TQRBand;
    PageFooterBand2: TQRBand;
    QRlblPieDePaginaRemito: TQRLabel;
    QRDBText43: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel32: TQRLabel;
  private
    { Private declarations }
  public
    procedure cargarDatos(id_comprobante: integer; id_persona: integer; id_empresa: integer);
    procedure imprimirRecibo();
    procedure imprimirPresupuesto();
    procedure imprimirNotaPedido();
    procedure imprimirRemito();
    procedure imprimirOrdenPago();
  end;

var
  FImpresion_Comprobantes: TFImpresion_Comprobantes;

implementation

uses UDM;

{$R *.dfm}

procedure TFImpresion_Comprobantes.cargarDatos(id_comprobante: integer; id_persona: integer; id_empresa: integer);
begin
  ZQ_Comprobante.Close;
  ZQ_Comprobante.ParamByName('id_comprobante').AsInteger:= id_comprobante;
  ZQ_Comprobante.Open;

  ZQ_Fpago.Close;
  ZQ_Fpago.ParamByName('id_comprobante').AsInteger:= id_comprobante;
  ZQ_Fpago.Open;

  ZQ_Producto.Close;
  ZQ_Producto.ParamByName('id_comprobante').AsInteger:= id_comprobante;
  ZQ_Producto.Open;

  ZQ_Destino.Close;
  if id_persona = 0 then
    ZQ_Destino.ParamByName('id_persona').Clear
  else
    ZQ_Destino.ParamByName('id_persona').AsInteger:= id_persona;
  if id_empresa = 0 then
    ZQ_Destino.ParamByName('id_empresa').Clear
  else
    ZQ_Destino.ParamByName('id_empresa').AsInteger:= id_empresa;
  ZQ_Destino.Open;

  case ZQ_ComprobanteID_TIPO_CPB.AsInteger of
    CPB_PRESUPUESTO:  begin //CPB_PRESUPUESTO
                        imprimirPresupuesto;
                      end;
    CPB_NOTA_PEDIDO:  begin //CPB_NOTA_PEDIDO
                        imprimirNotaPedido;
                      end;
    CPB_REMITO_VENTA: begin //CPB_REMITO_VENTA
                        imprimirRemito;
                      end;
    CPB_RECIBO_COBRO: begin //CPB_RECIBO_COBRO
                        imprimirRecibo;
                      end;
    CPB_ORDEN_PAGO:   begin //CPB_ORDEN_PAGO
                        imprimirOrdenPago;
                      end;
  end;
end;


procedure TFImpresion_Comprobantes.imprimirRecibo();
begin
  if ZQ_Comprobante.IsEmpty then
    exit;

  QRlblPieDePaginaRecibo.Caption:= '';
  //DM.VariablesReportes(RepRecibo);
  EKVistaPrevia.Reporte:= RepRecibo;
  EKVistaPrevia.VistaPrevia;
end;


procedure TFImpresion_Comprobantes.imprimirPresupuesto();
begin
  if ZQ_Comprobante.IsEmpty then
    exit;

  QRlblPieDePaginaPresupuesto.Caption:= '';
  //DM.VariablesReportes(RepPresupuesto);
  EKVistaPrevia.Reporte:= RepPresupuesto;
  EKVistaPrevia.VistaPrevia;
end;


procedure TFImpresion_Comprobantes.imprimirNotaPedido();
begin
  if ZQ_Comprobante.IsEmpty then
    exit;

  QRlblPieDePaginaNotaPedido.Caption:= '';
  //DM.VariablesReportes(RepNotaPedido);
  EKVistaPrevia.Reporte:= RepNotaPedido;
  EKVistaPrevia.VistaPrevia;
end;


procedure TFImpresion_Comprobantes.imprimirRemito();
begin
  if ZQ_Comprobante.IsEmpty then
    exit;

  QRlblPieDePaginaRemito.Caption:= '';
  //DM.VariablesReportes(RepRemito);
  EKVistaPrevia.Reporte:= RepRemito;
  EKVistaPrevia.VistaPrevia;
end;


procedure TFImpresion_Comprobantes.imprimirOrdenPago();
begin
  if ZQ_Comprobante.IsEmpty then
    exit;

//  QRlblPieDePaginaRecibo.Caption:= '';
//  DM.VariablesReportes(RepRecibo);
//  EKVistaPrevia.Reporte:= RepRecibo;
//  EKVistaPrevia.VistaPrevia;
end;


end.
