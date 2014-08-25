unit UDM;

interface

uses
  SysUtils, Classes, EKIni, DB, EKModelo, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection;

type
  TDM = class(TDataModule)
    ZQ_UpdateFactura: TZQuery;
    ZQ_Factura: TZQuery;
    ZQ_FacturaID_CLIENTE: TIntegerField;
    ZQ_FacturaNOMBRE: TStringField;
    ZQ_FacturaNOMBRE_TIPO_DOC: TStringField;
    ZQ_FacturaNUMERO_DOC: TStringField;
    ZQ_FacturaCUIT_CUIL: TStringField;
    ZQ_FacturaDIRECCION: TStringField;
    ZQ_FacturaLOCALIDAD: TStringField;
    ZQ_FacturaID_TIPO_IVA: TIntegerField;
    ZQ_FacturaNOMBRE_TIPO_IVA: TStringField;
    ZQ_FacturaTIPO_FACTURA: TStringField;
    ZQ_FacturaLETRA_FISCAL: TStringField;
    ZQ_FacturaID_TIPO_DOC: TIntegerField;
    conexion: TZConnection;
    EKModelo: TEKModeloTransaccion;
    ZQ_Items: TZQuery;
    ZQ_ItemsID_PRODUCTO: TIntegerField;
    ZQ_ItemsCANTIDAD: TFloatField;
    ZQ_ItemsIMPORTE_IF: TFloatField;
    ZQ_ItemsIMPORTE_IF_SINIVA: TFloatField;
    ZQ_ItemsIMPUESTO_INTERNO: TFloatField;
    ZQ_ItemsCODIGO_BARRA: TStringField;
    ZQ_ItemsNOMBRE_PRODUCTO: TStringField;
    ZQ_ItemsNOMBRE_COLOR: TStringField;
    ZQ_ItemsNOMBRE_MARCA: TStringField;
    ZQ_ItemsNOMBRE_MEDIDA: TStringField;
    ZQ_ItemsPORC_IVA: TFloatField;
    ZQ_Config: TZQuery;
    ZQ_ConfigCLAVE: TStringField;
    ZQ_ConfigFECHA: TDateField;
    ZQ_ConfigNUMERO: TFloatField;
    ZQ_ConfigTEXTO: TStringField;
    ZQ_Config_Fiscal: TZQuery;
    ZQ_Config_FiscalID: TIntegerField;
    ZQ_Config_FiscalMARCA: TStringField;
    ZQ_Config_FiscalMODELO: TStringField;
    ZQ_Config_FiscalPUERTO: TStringField;
    ZQ_Config_FiscalVELOCIDAD: TStringField;
    ZQ_Config_FiscalPREDETERMINADA: TStringField;
    ZQ_FormaPago: TZQuery;
    ZQ_FormaPagoFORMA_PAGO_NOMBRE: TStringField;
    ZQ_FormaPagoFORMA_PAGO_IMPORTE: TFloatField;
    EKIni: TEKIni;
    ZQ_FacturaOS: TZQuery;
    ZQ_ItemsOS: TZQuery;
    ZQ_FacturaOSID_COMPROBANTE: TIntegerField;
    ZQ_FacturaOSID_OBRA_SOCIAL: TIntegerField;
    ZQ_FacturaOSNOMBRE: TStringField;
    ZQ_FacturaOSCUIT_CUIL: TStringField;
    ZQ_FacturaOSLOCALIDAD: TStringField;
    ZQ_FacturaOSDIRECCION: TStringField;
    ZQ_FacturaOSID_TIPO_IVA: TIntegerField;
    ZQ_FacturaOSTIPO_FACTURA: TStringField;
    ZQ_ItemsOSID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_ItemsOSDETALLE: TStringField;
    ZQ_ItemsOSCANTIDAD: TFloatField;
    ZQ_ItemsOSIMPORTE_VENTA: TFloatField;
    ZQ_ItemsOSPORC_IVA: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
