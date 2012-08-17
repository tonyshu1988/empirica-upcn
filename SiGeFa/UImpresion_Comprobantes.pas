unit UImpresion_Comprobantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKVistaPreviaQR, QRCtrls, QuickRpt, jpeg, ExtCtrls, EKNumeroATexto,
  EKDbSuma, QRPDFFilt, grimgctrl;

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
    RepRemito_RENGLON4: TQRLabel;
    RepRemito_RENGLON3: TQRLabel;
    RepRemito_RENGLON2: TQRLabel;
    RepRemito_TITULO: TQRLabel;
    QRShape1: TQRShape;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    RepRemito_RENGLON1: TQRLabel;
    RepPresupuesto: TQuickRep;
    QRBand6: TQRBand;
    RepPresupuesto_RENGLON4: TQRLabel;
    RepPresupuesto_RENGLON3: TQRLabel;
    RepPresupuesto_RENGLON2: TQRLabel;
    RepPresupuesto_TITULO: TQRLabel;
    QRShape3: TQRShape;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel76: TQRLabel;
    RepPresupuesto_RENGLON1: TQRLabel;
    RepRecibo: TQuickRep;
    QRBand10: TQRBand;
    RepRecibo_RENGLON4: TQRLabel;
    RepRecibo_RENGLON3: TQRLabel;
    RepRecibo_RENGLON2: TQRLabel;
    QRDBText62: TQRDBText;
    RepRecibo_TITULO: TQRLabel;
    QRShape4: TQRShape;
    QRLabel101: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRDBText68: TQRDBText;
    RepRecibo_RENGLON1: TQRLabel;
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
    ZQ_FpagoNOMBRE_TIPO: TStringField;
    ChildBand1: TQRChildBand;
    QRBand9: TQRBand;
    ChildBand2: TQRChildBand;
    QRSubDetail3: TQRSubDetail;
    QRBand18: TQRBand;
    QRBand19: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText57: TQRDBText;
    QRDBText72: TQRDBText;
    QRLabel34: TQRLabel;
    QRlblRecibo_PiePagina: TQRLabel;
    QRDBText73: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText83: TQRDBText;
    QRDBText84: TQRDBText;
    QRLabel100: TQRLabel;
    QRlblRecibo_ImporteTotal: TQRLabel;
    EKDbSumaFpago: TEKDbSuma;
    EKNumeroALetras: TEKNumeroALetras;
    QRLblRecibo_ImporteEnLetras: TQRLabel;
    ChildBand4: TQRChildBand;
    QRLabel99: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel36: TQRLabel;
    QRBand7: TQRBand;
    QRLabel4: TQRLabel;
    QRDBText7: TQRDBText;
    ChildBand3: TQRChildBand;
    ChildBand6: TQRChildBand;
    QRBand12: TQRBand;
    QRLabel26: TQRLabel;
    QRLabel49: TQRLabel;
    QRlblPresupuesto_ImporteTotal: TQRLabel;
    QRBand13: TQRBand;
    QRlblPresupuesto_PiePagina: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel64: TQRLabel;
    QRSubDetail4: TQRSubDetail;
    QRDBText11: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel54: TQRLabel;
    QRDBText17: TQRDBText;
    EKDbSumaProducto: TEKDbSuma;
    QRDBLogo1: TQRDBImage;
    QRDBLogo2: TQRDBImage;
    QRDBLogo4: TQRDBImage;
    QRBand5: TQRBand;
    QRLabel3: TQRLabel;
    QRDBText15: TQRDBText;
    ChildBand5: TQRChildBand;
    ChildBand7: TQRChildBand;
    QRBand14: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRlblRemito_CantidadTotal: TQRLabel;
    QRBand15: TQRBand;
    QRlblRemito_PiePagina: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel67: TQRLabel;
    QRDBText54: TQRDBText;
    QRLabel70: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText43: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText52: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel56: TQRLabel;
    RepNotaPedido: TQuickRep;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBLogo5: TQRDBImage;
    QRBand2: TQRBand;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRBand3: TQRBand;
    QRLabel46: TQRLabel;
    QRDBText24: TQRDBText;
    QRChildBand2: TQRChildBand;
    QRLabel47: TQRLabel;
    QRDBText25: TQRDBText;
    QRChildBand3: TQRChildBand;
    QRLabel102: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRBand4: TQRBand;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRlblNotaPedido_CantidadTotal: TQRLabel;
    QRBand8: TQRBand;
    QRlblNotaPedido_PiePagina: TQRLabel;
    QRSubDetail5: TQRSubDetail;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel124: TQRLabel;
    RepNotaPedido_RENGLON4: TQRLabel;
    RepNotaPedido_RENGLON3: TQRLabel;
    RepNotaPedido_RENGLON2: TQRLabel;
    RepNotaPedido_TITULO: TQRLabel;
    RepNotaPedido_RENGLON1: TQRLabel;
    RepOrdenPago: TQuickRep;
    QRBand16: TQRBand;
    RepOrdenPago_RENGLON4: TQRLabel;
    RepOrdenPago_RENGLON3: TQRLabel;
    RepOrdenPago_RENGLON2: TQRLabel;
    QRDBText41: TQRDBText;
    RepOrdenPago_TITULO: TQRLabel;
    QRShape5: TQRShape;
    QRLabel48: TQRLabel;
    QRLabel65: TQRLabel;
    QRDBText42: TQRDBText;
    RepOrdenPago_RENGLON1: TQRLabel;
    QRDBText53: TQRDBText;
    QRLabel71: TQRLabel;
    QRDBLogo3: TQRDBImage;
    QRBand17: TQRBand;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText69: TQRDBText;
    QRChildBand1: TQRChildBand;
    QRLabel88: TQRLabel;
    QRlblOrdenPago_ImporteEnLetras: TQRLabel;
    QRBand20: TQRBand;
    QRLabel91: TQRLabel;
    QRDBText70: TQRDBText;
    QRChildBand4: TQRChildBand;
    QRLabel92: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText71: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRDBText76: TQRDBText;
    QRDBText77: TQRDBText;
    QRBand21: TQRBand;
    QRlblOrdenPago_ImporteTotal: TQRLabel;
    QRBand22: TQRBand;
    QRlblOrdenPago_PiePagina: TQRLabel;
    QRChildBand5: TQRChildBand;
    QRLabel105: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel90: TQRLabel;
    EKVistaPrevia: TEKVistaPreviaQR;
    TabSheet7: TTabSheet;
    QuickRep1: TQuickRep;
    QRBand23: TQRBand;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRDBText78: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRLabel111: TQRLabel;
    QRDBLogo6: TQRDBImage;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel125: TQRLabel;
    QRBand24: TQRBand;
    QRLabel126: TQRLabel;
    QRLabel127: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRDBText82: TQRDBText;
    QRDBText92: TQRDBText;
    QRDBText93: TQRDBText;
    QRDBText94: TQRDBText;
    QRDBText95: TQRDBText;
    QRDBText96: TQRDBText;
    QRDBText97: TQRDBText;
    QRBand25: TQRBand;
    QRLabel133: TQRLabel;
    QRDBText98: TQRDBText;
    QRChildBand6: TQRChildBand;
    QRLabel134: TQRLabel;
    QRDBText99: TQRDBText;
    QRChildBand7: TQRChildBand;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRLabel138: TQRLabel;
    QRLabel140: TQRLabel;
    QRBand26: TQRBand;
    QRLabel141: TQRLabel;
    QRLabel142: TQRLabel;
    QRLabel143: TQRLabel;
    QRBand27: TQRBand;
    QRLabel144: TQRLabel;
    QRSubDetail6: TQRSubDetail;
    QRDBText100: TQRDBText;
    QRDBText103: TQRDBText;
    QRDBText104: TQRDBText;
    QRLabel145: TQRLabel;
    QRLabel137: TQRLabel;
    QRLabel139: TQRLabel;
    QRLabel146: TQRLabel;
    QRLabel147: TQRLabel;
    QRLabel148: TQRLabel;
    QRLabel149: TQRLabel;
    QRLabel150: TQRLabel;
    QRLabel151: TQRLabel;
    QRLabel152: TQRLabel;
    QRLabel153: TQRLabel;
    QRLabel154: TQRLabel;
    QRLabel155: TQRLabel;
    QRLabel156: TQRLabel;
    QRLabel157: TQRLabel;
    QRLabel158: TQRLabel;
    QRLabel159: TQRLabel;
    QRLabel160: TQRLabel;
    QRLabel161: TQRLabel;
    QRLabel162: TQRLabel;
    QRLabel163: TQRLabel;
    QRLabel164: TQRLabel;
    QRLabel165: TQRLabel;
    QRLabel166: TQRLabel;
    QRLabel167: TQRLabel;
    QRLabel168: TQRLabel;
    QRLabel169: TQRLabel;
    QRLabel170: TQRLabel;
    QRLabel171: TQRLabel;
    QRLabel172: TQRLabel;
    QRLabel173: TQRLabel;
    QRLabel174: TQRLabel;
    QRLabel175: TQRLabel;
    QRLabel176: TQRLabel;
    QRLabel177: TQRLabel;
    QRLabel178: TQRLabel;
    QRLabel179: TQRLabel;
    QRLabel180: TQRLabel;
    QRLabel181: TQRLabel;
    QRLabel182: TQRLabel;
    QRLabel183: TQRLabel;
    QRLabel184: TQRLabel;
    QRLabel185: TQRLabel;
    QRLabel186: TQRLabel;
    QRLabel187: TQRLabel;
    QRLabel188: TQRLabel;
    QRLabel189: TQRLabel;
    QRLabel190: TQRLabel;
    QRLabel191: TQRLabel;
    QRLabel192: TQRLabel;
    QRLabel193: TQRLabel;
    QRLabel194: TQRLabel;
    QRLabel195: TQRLabel;
    QRLabel196: TQRLabel;
    QRLabel197: TQRLabel;
    QRLabel198: TQRLabel;
    QRLabel199: TQRLabel;
    QRLabel200: TQRLabel;
    QRLabel201: TQRLabel;
    QRLabel208: TQRLabel;
    QRLabel209: TQRLabel;
    QRLabel210: TQRLabel;
    QRLabel211: TQRLabel;
    QRLabel212: TQRLabel;
    QRLabel213: TQRLabel;
    QRLabel205: TQRLabel;
    QRLabel206: TQRLabel;
    QRLabel202: TQRLabel;
    QRLabel203: TQRLabel;
    TabSheet8: TTabSheet;
    RepNotaCredito: TQuickRep;
    QRBand33: TQRBand;
    QRShape7: TQRShape;
    QRLabel204: TQRLabel;
    QRLabel207: TQRLabel;
    QRDBText102: TQRDBText;
    QRDBText105: TQRDBText;
    QRDBText113: TQRDBText;
    QRLabel214: TQRLabel;
    QRDBLogo8: TQRDBImage;
    QRLabel215: TQRLabel;
    QRLabel219: TQRLabel;
    RepNotaCredito_RENGLON4: TQRLabel;
    RepNotaCredito_RENGLON3: TQRLabel;
    RepNotaCredito_RENGLON2: TQRLabel;
    RepNotaCredito_TITULO: TQRLabel;
    RepNotaCredito_RENGLON1: TQRLabel;
    QRLabel244: TQRLabel;
    QRBand34: TQRBand;
    QRLabel245: TQRLabel;
    QRLabel246: TQRLabel;
    QRLabel247: TQRLabel;
    QRLabel248: TQRLabel;
    QRLabel249: TQRLabel;
    QRLabel250: TQRLabel;
    QRLabel251: TQRLabel;
    QRDBText119: TQRDBText;
    QRDBText120: TQRDBText;
    QRDBText121: TQRDBText;
    QRDBText122: TQRDBText;
    QRDBText123: TQRDBText;
    QRDBText124: TQRDBText;
    QRDBText125: TQRDBText;
    QRBand35: TQRBand;
    QRChildBand11: TQRChildBand;
    QRLabel253: TQRLabel;
    QRDBText127: TQRDBText;
    QRChildBand12: TQRChildBand;
    QRLabel254: TQRLabel;
    QRLabel256: TQRLabel;
    QRLabel257: TQRLabel;
    QRLabel258: TQRLabel;
    QRLabel259: TQRLabel;
    QRSubDetail8: TQRSubDetail;
    QRDBText128: TQRDBText;
    QRDBText130: TQRDBText;
    QRDBText131: TQRDBText;
    QRDBText132: TQRDBText;
    QRDBText133: TQRDBText;
    QRDBText129: TQRDBText;
    QRLabel220: TQRLabel;
    ZQ_FpagoFECHA_FP: TDateTimeField;
    ZQ_FpagoIMPORTE_REAL: TFloatField;
    QRBand36: TQRBand;
    QRLabel230: TQRLabel;
    QRLabel235: TQRLabel;
    QRlblNotaCredito_CantidadTotal: TQRLabel;
    QRBand37: TQRBand;
    QRlblNotaCredito_PiePagina: TQRLabel;
    QRLabel243: TQRLabel;
    QRlblNotaCreditoTipo: TQRLabel;
    ChildBand8: TQRChildBand;
    QRDBText126: TQRDBText;
    QRLabel252: TQRLabel;
    QRLabel236: TQRLabel;
    QRLblNotaCredito_ImporteEnLetras: TQRLabel;
    QRLabel255: TQRLabel;
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
    ZQ_ProductoCANTIDAD_RECIBIDA: TFloatField;
    ZQ_ProductoCANTIDAD_ALMACENADA: TFloatField;
    ZQ_ProductoID_STOCK_PRODUCTO: TIntegerField;
    ZQ_ProductoIMPORTE_VENTA: TFloatField;
    ZQ_ProductoIMPORTE_IVA: TFloatField;
    ZQ_ProductoCOD_CABECERA: TStringField;
    ZQ_ProductoPRODUCTO: TStringField;
    ZQ_ProductoIMAGEN: TBlobField;
    ZQ_ProductoMEDIDA: TStringField;
    ZQ_ProductoCOLOR: TStringField;
    ZQ_ProductoMARCA: TStringField;
    ZQ_ProductoARTICULO: TStringField;
    ZQ_ProductoTIPO_ARTICULO: TStringField;
    ZQ_ProductoCOD_PRODUCTO: TStringField;
    ZQ_ProductoDEVOLUCION: TFloatField;
    TabSheet9: TTabSheet;
    RepReciboCtaCte: TQuickRep;
    SummaryBand_Firmas: TQRBand;
    QRLabel262: TQRLabel;
    QRLabel263: TQRLabel;
    QRBand38: TQRBand;
    QRBand39: TQRBand;
    QRLabel221: TQRLabel;
    QRLabel222: TQRLabel;
    QRLabel223: TQRLabel;
    QRLabel224: TQRLabel;
    QRLabel225: TQRLabel;
    QRLabel226: TQRLabel;
    QRLabel227: TQRLabel;
    QRDBText106: TQRDBText;
    QRDBText107: TQRDBText;
    QRDBText108: TQRDBText;
    QRDBText109: TQRDBText;
    QRDBText110: TQRDBText;
    QRDBText111: TQRDBText;
    QRDBText112: TQRDBText;
    QRLabel228: TQRLabel;
    QRChildBand13: TQRChildBand;
    QRSubDetail9: TQRSubDetail;
    QRSubDetail10: TQRSubDetail;
    QRSubDetail11: TQRSubDetail;
    QRDBText142: TQRDBText;
    QRDBText144: TQRDBText;
    QRDBText145: TQRDBText;
    QRChildBand14: TQRChildBand;
    QRLabel268: TQRLabel;
    QRSubDetail12: TQRSubDetail;
    QRlblReciboCtaCte_ImporteFacturas: TQRLabel;
    ChildBandTitulosFormaPago: TQRChildBand;
    QRLabel270: TQRLabel;
    QRSubDetail13: TQRSubDetail;
    QRDBText114: TQRDBText;
    QRDBText115: TQRDBText;
    QRDBText116: TQRDBText;
    QRDBText117: TQRDBText;
    QRDBText118: TQRDBText;
    QRBand40: TQRBand;
    QRlblReciboCtaCte_PiePagina: TQRLabel;
    QRSubDetailFormaPago: TQRSubDetail;
    QRlblReciboCtaCte_ImporteFPago: TQRLabel;
    ChildBandTitleCpbSaldo: TQRChildBand;
    QRLabel275: TQRLabel;
    QRLabel277: TQRLabel;
    QRLabel278: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLblObservacionSaldo: TQRLabel;
    QRSubDetailCpbSaldo: TQRSubDetail;
    QRDBText150: TQRDBText;
    QRDBText153: TQRDBText;
    QRDBText154: TQRDBText;
    PageHeaderBand1: TQRBand;
    RepReciboCtaCte_RENGLON4: TQRLabel;
    RepReciboCtaCte_RENGLON3: TQRLabel;
    RepReciboCtaCte_RENGLON2: TQRLabel;
    RepReciboCtaCte_TITULO: TQRLabel;
    QRShape6: TQRShape;
    RepReciboCtaCte_RENGLON1: TQRLabel;
    QRDBLogo7: TQRDBImage;
    QRLabel216: TQRLabel;
    QRLabel242: TQRLabel;
    QRLabel217: TQRLabel;
    QRDBText101: TQRDBText;
    QRLabel218: TQRLabel;
    QRLabel260: TQRLabel;
    QRDBText134: TQRDBText;
    QRDBText135: TQRDBText;
    QRLabel261: TQRLabel;
    QRChildBand15: TQRChildBand;
    QRLabel280: TQRLabel;
    QRLabel281: TQRLabel;
    QRLabel282: TQRLabel;
    QRChildBand16: TQRChildBand;
    QRLabel241: TQRLabel;
    QRLabel240: TQRLabel;
    QRLabel239: TQRLabel;
    QRLabel238: TQRLabel;
    QRLabel237: TQRLabel;
    ChildBand9: TQRChildBand;
    QRLblReciboCtaCte_ImporteEnLetras: TQRLabel;
    QRLabel229: TQRLabel;
    ZQ_PagosFactura: TZQuery;
    ZQ_PagosFacturaID_PAGO_FACTURAS: TIntegerField;
    ZQ_PagosFacturaID_COMPROBANTE: TIntegerField;
    ZQ_PagosFacturaID_FACTURA: TIntegerField;
    ZQ_PagosFacturaID_TIPO_COMPROBANTE: TIntegerField;
    ZQ_PagosFacturaIMPORTE: TFloatField;
    ZQ_PagosFacturaFECHA: TDateTimeField;
    ZQ_PagosFacturaIMPORTE_VENTA: TFloatField;
    ZQ_PagosFacturaDESCRIPCION: TStringField;
    ZQ_PagosFacturaIMPORTE_REAL: TFloatField;
    EKDbSuma_Factura: TEKDbSuma;
    RepOrdenPagoCtaCte: TQuickRep;
    QRBand28: TQRBand;
    QRLabel231: TQRLabel;
    QRLabel232: TQRLabel;
    QRBand29: TQRBand;
    QRBand30: TQRBand;
    QRChildBand8: TQRChildBand;
    QRSubDetail7: TQRSubDetail;
    QRSubDetail14: TQRSubDetail;
    QRSubDetail15: TQRSubDetail;
    QRDBText146: TQRDBText;
    QRDBText147: TQRDBText;
    QRDBText148: TQRDBText;
    QRChildBand9: TQRChildBand;
    QRLabel272: TQRLabel;
    QRSubDetail16: TQRSubDetail;
    QRlblOrdenPagoCtaCte_ImporteFacturas: TQRLabel;
    QRChildBand10: TQRChildBand;
    QRLabel274: TQRLabel;
    QRSubDetail17: TQRSubDetail;
    QRDBText149: TQRDBText;
    QRDBText151: TQRDBText;
    QRDBText152: TQRDBText;
    QRDBText155: TQRDBText;
    QRDBText156: TQRDBText;
    QRBand31: TQRBand;
    QRlblOrdenPagoCtaCte_PiePagina: TQRLabel;
    QRSubDetail18: TQRSubDetail;
    QRlblOrdenPagoCtaCte_ImporteFPago: TQRLabel;
    QRChildBand17: TQRChildBand;
    QRLabel283: TQRLabel;
    QRLabel284: TQRLabel;
    QRLabel285: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel286: TQRLabel;
    QRSubDetail19: TQRSubDetail;
    QRDBText157: TQRDBText;
    QRDBText158: TQRDBText;
    QRDBText159: TQRDBText;
    QRBand32: TQRBand;
    RepOrdenPagoCtaCte_RENGLON4: TQRLabel;
    RepOrdenPagoCtaCte_RENGLON3: TQRLabel;
    RepOrdenPagoCtaCte_RENGLON2: TQRLabel;
    RepOrdenPagoCtaCte_TITULO: TQRLabel;
    QRShape10: TQRShape;
    RepOrdenPagoCtaCte_RENGLON1: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel292: TQRLabel;
    QRLabel293: TQRLabel;
    QRLabel294: TQRLabel;
    QRDBText160: TQRDBText;
    QRLabel295: TQRLabel;
    QRLabel296: TQRLabel;
    QRDBText161: TQRDBText;
    QRDBText162: TQRDBText;
    QRLabel297: TQRLabel;
    QRChildBand18: TQRChildBand;
    QRLabel298: TQRLabel;
    QRLabel299: TQRLabel;
    QRLabel300: TQRLabel;
    QRChildBand19: TQRChildBand;
    QRLabel301: TQRLabel;
    QRLabel302: TQRLabel;
    QRLabel303: TQRLabel;
    QRLabel304: TQRLabel;
    QRLabel305: TQRLabel;
    QRChildBand20: TQRChildBand;
    QRLblOrdenPagoCtaCte_ImporteEnLetras: TQRLabel;
    QRLabel307: TQRLabel;
    QRLabel233: TQRLabel;
    QRLabel234: TQRLabel;
    QRLabel264: TQRLabel;
    QRLabel265: TQRLabel;
    QRLabel266: TQRLabel;
    QRLabel267: TQRLabel;
    QRLabel269: TQRLabel;
    QRDBText136: TQRDBText;
    QRDBText137: TQRDBText;
    QRDBText138: TQRDBText;
    QRDBText139: TQRDBText;
    QRDBText140: TQRDBText;
    QRDBText141: TQRDBText;
    QRDBText143: TQRDBText;
    QRLabel271: TQRLabel;
    TabSheet10: TTabSheet;
    RepDevolucion: TQuickRep;
    QRBand41: TQRBand;
    QRShape13: TQRShape;
    QRLabel273: TQRLabel;
    QRLabel276: TQRLabel;
    QRDBText163: TQRDBText;
    QRDBText164: TQRDBText;
    QRDBText165: TQRDBText;
    QRLabel279: TQRLabel;
    QRDBImage2: TQRDBImage;
    QRLabel287: TQRLabel;
    QRLabel288: TQRLabel;
    RepDevolucion_RENGLON4: TQRLabel;
    RepDevolucion_RENGLON3: TQRLabel;
    RepDevolucion_RENGLON2: TQRLabel;
    RepDevolucion_TITULO: TQRLabel;
    RepDevolucion_RENGLON1: TQRLabel;
    QRLabel309: TQRLabel;
    QRBand42: TQRBand;
    QRLabel310: TQRLabel;
    QRLabel311: TQRLabel;
    QRLabel312: TQRLabel;
    QRLabel313: TQRLabel;
    QRLabel314: TQRLabel;
    QRLabel315: TQRLabel;
    QRLabel316: TQRLabel;
    QRDBText166: TQRDBText;
    QRDBText167: TQRDBText;
    QRDBText168: TQRDBText;
    QRDBText169: TQRDBText;
    QRDBText170: TQRDBText;
    QRDBText171: TQRDBText;
    QRDBText172: TQRDBText;
    QRSubDetail20: TQRSubDetail;
    QRDBText174: TQRDBText;
    QRDBText175: TQRDBText;
    QRDBText176: TQRDBText;
    QRDBText177: TQRDBText;
    QRDBText178: TQRDBText;
    QRDBText179: TQRDBText;
    QRlblDevolucionTipo: TQRLabel;
    QRBand44: TQRBand;
    QRBand45: TQRBand;
    QRlblDevolucion_PiePagina: TQRLabel;
    QRChildBand23: TQRChildBand;
    QRDBText180: TQRDBText;
    QRLabel333: TQRLabel;
    ChildBand10: TQRChildBand;
    QRLabel320: TQRLabel;
    ChildBand11: TQRChildBand;
    QRLabel327: TQRLabel;
    QRLabel325: TQRLabel;
    QRLabel321: TQRLabel;
    QRLabel322: TQRLabel;
    QRLabel324: TQRLabel;
    QRLabel323: TQRLabel;
    QRLabel326: TQRLabel;
    QRLTicket: TQRLabel;
    ZQ_ComprobanteID_TIPO_IVA: TIntegerField;
    ZQ_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_ComprobanteIMPORTE_VENTA: TFloatField;
    ZQ_ComprobanteIMAGEN: TBlobField;
    ZQ_ComprobanteINSERT_MANUAL: TStringField;
    ZQ_ComprobanteID_POSICION_SUC_DESTINO: TIntegerField;
    ZQ_ComprobanteID_PREVENTA: TIntegerField;
    QRGrDBImage1: TQRGrDBImage;
    ChildBand12: TQRChildBand;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail20BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand21BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    reporte: TQuickRep;
    archivoPDF: string;
    noImprimir: boolean;
  public
    procedure cargarDatos(id_comprobante: integer; id_persona: integer; id_empresa: integer; cta_cte: boolean);
    procedure configRecibo();
    procedure configPresupuesto();
    procedure configNotaPedido();
    procedure configRemito();
    procedure configOrdenPago();
    procedure configReciboCtaCte();
    procedure configOrdenPagoCtaCte();
    procedure configNotaCredito();
    procedure configDevolucion();    
    procedure imprimir();
    function  generarPDF(): string;
  end;

var
  FImpresion_Comprobantes: TFImpresion_Comprobantes;

implementation

uses UDM;

{$R *.dfm}

procedure TFImpresion_Comprobantes.cargarDatos(id_comprobante: integer; id_persona: integer; id_empresa: integer; cta_cte: boolean);
begin
  noImprimir:= false;

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

  //if not cta_cte then //si no es un comprobante de cuenta corriente
  begin
    ZQ_Comprobante.Close;
    ZQ_Comprobante.ParamByName('id_comprobante').AsInteger:= id_comprobante;
    ZQ_Comprobante.Open;

    ZQ_Fpago.Close;
    ZQ_Fpago.ParamByName('id_comprobante').AsInteger:= id_comprobante;
    ZQ_Fpago.Open;
    zq_fpago.Filtered:= false;

    ZQ_Producto.Close;
    ZQ_Producto.ParamByName('id_comprobante').AsInteger:= id_comprobante;
    ZQ_Producto.Open;

    case ZQ_ComprobanteID_TIPO_CPB.AsInteger of
      CPB_PRESUPUESTO:  begin //CPB_PRESUPUESTO
                          configPresupuesto;
                          reporte:= RepPresupuesto;
                          archivoPDF:= 'Presupuesto.pdf';
                        end;
      CPB_NOTA_PEDIDO:  begin //CPB_NOTA_PEDIDO
                          configNotaPedido;
                          reporte:= RepNotaPedido;
                          archivoPDF:= 'NotaPedido.pdf';
                        end;
      CPB_REMITO_VENTA: begin //CPB_REMITO_VENTA
                          configRemito;
                          reporte:= RepRemito;
                          archivoPDF:= 'Remito.pdf';
                        end;
      CPB_RECIBO_COBRO: begin //CPB_RECIBO_COBRO
                          configRecibo;
                          reporte:= RepRecibo;
                          archivoPDF:= 'Recibo.pdf';
                        end;
      CPB_ORDEN_PAGO:   begin //CPB_ORDEN_PAGO
                          configOrdenPago;
                          reporte:= RepOrdenPago;
                          archivoPDF:= 'OrdenPago.pdf';
                        end;
      CPB_DEVOLUCION:   begin //CPB_DEVOLUCION
                          configDevolucion;
                        end;
      CPB_NOTA_CREDITO: begin //CPB_DEVOLUCION
                          configNotaCredito;
                        end;
      CPB_NOTA_DEBITO:  begin //CPB_DEVOLUCION
//                          configNotaDebito;
                        end;
      CPB_RECIBO_CTA_CTE: begin //CPB_RECIBO_COBRO
                            configReciboCtaCte;
                            reporte:= RepReciboCtaCte;
                            archivoPDF:= 'ReciboCtaCte.pdf';
                          end;
      CPB_OP_CTA_CTE:     begin //CPB_RECIBO_COBRO
                            configOrdenPagoCtaCte;
                            reporte:= RepOrdenPagoCtaCte;
                            archivoPDF:= 'OrdenPagoCtaCte.pdf';
                          end;
    end;
  end
end;


procedure TFImpresion_Comprobantes.imprimir();
begin
  if not noImprimir then
    EKVistaPrevia.VistaPrevia;
end;


function TFImpresion_Comprobantes.generarPDF(): string;
var
  aPDF: TQRPDFDocumentFilter;
begin
  aPDF := TQRPDFDocumentFilter.Create(ExtractFilePath(Application.ExeName)+archivoPDF); //creo el archivo
  reporte.ExportToFilter(aPDF);
  aPDF.free;

  Result:= archivoPDF;
end;


//NOTA CREDITO
procedure TFImpresion_Comprobantes.configNotaCredito();
var
  ImporteTotal: double;
begin
  if ZQ_Destino.IsEmpty then
    exit;

  ZQ_Fpago.Filter:= '(CUENTA_EGRESO = 2)';
  zq_fpago.Filtered:= true;

  if not ZQ_Fpago.IsEmpty then //si es una nota de credito
  begin
    ImporteTotal:= EKDbSumaFpago.SumCollection[0].sumvalue;
    EKNumeroALetras.Numero := ImporteTotal;
    QRLblNotaCredito_ImporteEnLetras.Caption := UpperCase(EKNumeroALetras.AsString)+'.--';
    QRlblNotaCredito_CantidadTotal.Caption := 'Total Nota Credito: '+FormatFloat('$ ###,###,###,##0.00', ImporteTotal);
    QRlblNotaCredito_PiePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
    DM.VariablesComprobantes(RepNotaCredito);
    EKVistaPrevia.Reporte:= RepNotaCredito;
  end
  else
  begin
    noImprimir:= true;
  end
end;


//RECIBOS CUENTA CORRIENTE
procedure TFImpresion_Comprobantes.configReciboCtaCte();
var
  ImporteFPago, ImporteFactura: double;
begin
  if ZQ_Destino.IsEmpty then
    exit;

  ZQ_PagosFactura.SQL[6]:= '  and fp.cuenta_ingreso = 1';
  ZQ_PagosFactura.Close;
  ZQ_PagosFactura.ParamByName('id_comprobante').AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
  ZQ_PagosFactura.Open;

  ImporteFPago:= EKDbSumaFpago.SumCollection[0].sumvalue;
  ImporteFactura:= EKDbSuma_Factura.SumCollection[0].sumvalue;
  EKNumeroALetras.Numero := ImporteFPago;
  QRLblReciboCtaCte_ImporteEnLetras.Caption := UpperCase(EKNumeroALetras.AsString)+'.--';
  QRlblReciboCtaCte_ImporteFacturas.Caption := 'IMPORTE TOTAL: '+FormatFloat('$ ###,###,###,##0.00', ImporteFactura);
  QRlblReciboCtaCte_ImporteFPago.Caption := 'IMPORTE TOTAL: '+FormatFloat('$ ###,###,###,##0.00', ImporteFPago);

  QRlblReciboCtaCte_PiePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  DM.VariablesComprobantes(RepReciboCtaCte);
  EKVistaPrevia.Reporte:= RepReciboCtaCte;
end;


//ORDEN PAGO CUENTA CORRIENTE
procedure TFImpresion_Comprobantes.configOrdenPagoCtaCte();
var
  ImporteFPago, ImporteFactura: double;
begin
  if ZQ_Destino.IsEmpty then
    exit;

  ZQ_PagosFactura.SQL[6]:= '  and fp.cuenta_egreso = 1';
  ZQ_PagosFactura.Close;
  ZQ_PagosFactura.ParamByName('id_comprobante').AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
  ZQ_PagosFactura.Open;

  ImporteFPago:= EKDbSumaFpago.SumCollection[0].sumvalue;
  ImporteFactura:= EKDbSuma_Factura.SumCollection[0].sumvalue;
  EKNumeroALetras.Numero := ImporteFPago;
  QRLblOrdenPagoCtaCte_ImporteEnLetras.Caption := UpperCase(EKNumeroALetras.AsString)+'.--';
  QRlblOrdenPagoCtaCte_ImporteFacturas.Caption := 'IMPORTE TOTAL: '+FormatFloat('$ ###,###,###,##0.00', ImporteFactura);
  QRlblOrdenPagoCtaCte_ImporteFPago.Caption := 'IMPORTE TOTAL: '+FormatFloat('$ ###,###,###,##0.00', ImporteFPago);

  QRlblOrdenPagoCtaCte_PiePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  DM.VariablesComprobantes(RepOrdenPagoCtaCte);
  EKVistaPrevia.Reporte:= RepOrdenPagoCtaCte;
end;


//RECIBOS
procedure TFImpresion_Comprobantes.configRecibo();
var
  ImporteTotal: double;
begin
  if ZQ_Comprobante.IsEmpty then
    exit;

  ImporteTotal:= EKDbSumaFpago.SumCollection[0].sumvalue;
  EKNumeroALetras.Numero := ImporteTotal;
  QRLblRecibo_ImporteEnLetras.Caption := UpperCase(EKNumeroALetras.AsString)+'.--';
  QRlblRecibo_ImporteTotal.Caption := 'IMPORTE TOTAL: '+FormatFloat('$ ###,###,###,##0.00', ImporteTotal);

  QRlblRecibo_PiePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  DM.VariablesComprobantes(RepRecibo);
  EKVistaPrevia.Reporte:= RepRecibo;
end;


//PRESUPUESTO
procedure TFImpresion_Comprobantes.configPresupuesto();
var
  ImporteTotal, cantidad: double;
begin
  if ZQ_Comprobante.IsEmpty then
    exit;

  cantidad:= EKDbSumaProducto.SumCollection[0].sumvalue;
  ImporteTotal:= EKDbSumaProducto.SumCollection[1].sumvalue;
  QRlblPresupuesto_ImporteTotal.Caption := 'CANTIDAD: '+FormatFloat('0.00', cantidad)+' - IMPORTE TOTAL: '+FormatFloat('$ ###,###,###,##0.00', ImporteTotal);

  QRlblPresupuesto_PiePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  DM.VariablesComprobantes(RepPresupuesto);
  EKVistaPrevia.Reporte:= RepPresupuesto;
end;


//REMITO
procedure TFImpresion_Comprobantes.configRemito();
var
  cantidadProductos: Double;
begin
  if ZQ_Comprobante.IsEmpty then
    exit;

  cantidadProductos:= EKDbSumaProducto.SumCollection[0].sumvalue;
  QRlblRemito_CantidadTotal.Caption := 'CANTIDAD: '+FormatFloat('0.00', cantidadProductos);

  QRlblRemito_PiePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  DM.VariablesComprobantes(RepRemito);
  EKVistaPrevia.Reporte:= RepRemito;
end;


//NOTA PEDIDO
procedure TFImpresion_Comprobantes.configNotaPedido();
var
  cantidadProductos: Double;
begin
  if ZQ_Comprobante.IsEmpty then
    exit;

  cantidadProductos:= EKDbSumaProducto.SumCollection[0].sumvalue;
  QRlblNotaPedido_CantidadTotal.Caption := 'CANTIDAD: '+FormatFloat('0.00', cantidadProductos);

  QRlblNotaPedido_PiePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  DM.VariablesComprobantes(RepNotaPedido);
  EKVistaPrevia.Reporte:= RepNotaPedido;
end;


//ORDEN PAGO
procedure TFImpresion_Comprobantes.configOrdenPago();
var
  ImporteTotal: double;
begin
  if ZQ_Comprobante.IsEmpty then
    exit;
                              
  ImporteTotal:= EKDbSumaFpago.SumCollection[0].sumvalue;
  EKNumeroALetras.Numero := ImporteTotal;
  QRlblOrdenPago_ImporteEnLetras.Caption := UpperCase(EKNumeroALetras.AsString)+'.--';
  QRlblOrdenPago_ImporteTotal.Caption := 'IMPORTE TOTAL: '+FormatFloat('$ ###,###,###,##0.00', ImporteTotal);

  QRlblOrdenPago_PiePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  DM.VariablesComprobantes(RepOrdenPago);
  EKVistaPrevia.Reporte:= RepOrdenPago;
end;


procedure TFImpresion_Comprobantes.FormCreate(Sender: TObject);
begin
  QRDBLogo1.DataSet:= dm.ZQ_Sucursal;
  QRDBLogo2.DataSet:= dm.ZQ_Sucursal;
  QRDBLogo3.DataSet:= dm.ZQ_Sucursal;
  QRDBLogo4.DataSet:= dm.ZQ_Sucursal;
  QRDBLogo5.DataSet:= dm.ZQ_Sucursal;
  QRDBLogo6.DataSet:= dm.ZQ_Sucursal;
  QRDBLogo7.DataSet:= dm.ZQ_Sucursal;
  QRDBLogo8.DataSet:= dm.ZQ_Sucursal;
end;

//REPORTE DEVOLUCION
procedure TFImpresion_Comprobantes.QRSubDetail8BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRlblNotaCreditoTipo.Caption:= 'ING';
  if ZQ_ProductoDEVOLUCION.AsInteger > 0 then
    QRlblNotaCreditoTipo.Caption:= 'EGR';
end;

procedure TFImpresion_Comprobantes.QRSubDetail20BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRlblDevolucionTipo.Caption:= 'ING';
  if ZQ_ProductoDEVOLUCION.AsInteger > 0 then
    QRlblDevolucionTipo.Caption:= 'EGR';
end;


procedure TFImpresion_Comprobantes.configDevolucion;
begin
  if ZQ_Destino.IsEmpty then
    exit;

  QRlblDevolucion_PiePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  DM.VariablesComprobantes(RepDevolucion);
  EKVistaPrevia.Reporte:= RepDevolucion;
end;

procedure TFImpresion_Comprobantes.QRBand21BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin

  QRLTicket.Visible:=not ZQ_ComprobanteIMAGEN.IsNull;

end;

end.
