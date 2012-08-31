unit UABM_CPB_Recibo;

//ACOMODAR EL PROCEDURE guardarPagos;

// FALTA IMPRESION DEL TICKET, AHI QUE VER QUE PONEMOS COMO PRODUCTO Y HACER TODOS LOS CALCULOS

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  EKVistaPreviaQR, QRCtrls, QuickRpt, Buttons, ImgList, EKListadoSQL,
  ComCtrls, EKDBDateTimePicker, EKFiltrarColumna, ZStoredProcedure,
  EKDbSuma, DBClient, Menus, UBuscarPersona, UBuscarComprobante, ZSqlUpdate;

type
  TFABM_CPB_Recibo = class(TForm)
    PanelFondo: TPanel;
    PanelVer: TPanel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnEnviarMail: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBaja: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PanelInfo: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AConfirmar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    PanelEditar: TPanel;
    PanelListaCpb: TPanel;
    PanelCpbActual: TPanel;
    Splitter1: TSplitter;
    PanelCpbActual_FPago: TPanel;
    PanelCpbActual_Info: TPanel;
    PanelEditar_DatosGral: TPanel;
    PanelEditar_FPago: TPanel;
    PanelEditar_FPagoInfo: TPanel;
    DBGridEditar_Fpago: TDBGrid;
    btnEliminarFPago: TButton;
    btnBuscarEmpresa: TSpeedButton;
    ImageListEntidad: TImageList;
    ZQ_VerCpb: TZQuery;
    DS_VerCpb: TDataSource;
    ZQ_VerCpbID_COMPROBANTE: TIntegerField;
    ZQ_VerCpbID_SUCURSAL: TIntegerField;
    ZQ_VerCpbID_PROVEEDOR: TIntegerField;
    ZQ_VerCpbID_CLIENTE: TIntegerField;
    ZQ_VerCpbID_TIPO_CPB: TIntegerField;
    ZQ_VerCpbID_VENDEDOR: TIntegerField;
    ZQ_VerCpbID_COMP_ESTADO: TIntegerField;
    ZQ_VerCpbFECHA: TDateTimeField;
    ZQ_VerCpbOBSERVACION: TStringField;
    ZQ_VerCpbIMPORTE_TOTAL: TFloatField;
    ZQ_VerCpbENCABEZADO: TStringField;
    ZQ_VerCpbPIE: TStringField;
    ZQ_VerCpbSUCURSAL: TStringField;
    ZQ_VerCpbPROVEEDOR: TStringField;
    ZQ_VerCpbCUIT_PROVEEDOR: TStringField;
    ZQ_VerCpbCLIENTE: TStringField;
    ZQ_VerCpbCLIENTE_DOCUMENTO: TStringField;
    ZQ_VerCpbCLIENTE_CUIL: TStringField;
    ZQ_VerCpbESTADO: TStringField;
    DBGridListaCpb: TDBGrid;
    DBGridCpbActual_FPago: TDBGrid;
    EKOrd_VerCpb: TEKOrdenarGrilla;
    GroupBoxCpbActual_Info: TGroupBox;
    DBMemoCpbActual_Info: TDBMemo;
    ZQ_VerCpbPUNTO_VENTA: TIntegerField;
    ZQ_VerCpbNUMERO_CPB: TIntegerField;
    lblTipoComprobante: TLabel;
    EKListadoEntidad: TEKListadoSQL;
    PanelEditar_DatosGralCliente: TPanel;
    PanelEditar_DatosGralProveedor: TPanel;
    ZQ_Proveedor: TZQuery;
    ZQ_Cliente: TZQuery;
    DS_Proveedor: TDataSource;
    DS_Cliente: TDataSource;
    btnBuscarPersona: TSpeedButton;
    ZQ_ProveedorID: TIntegerField;
    ZQ_ProveedorID_EMPRESA: TIntegerField;
    ZQ_ProveedorID_PROVINCIA: TIntegerField;
    ZQ_ProveedorID_TIPO_IVA: TIntegerField;
    ZQ_ProveedorID_TIPO_EMPRESA: TIntegerField;
    ZQ_ProveedorCUIT_CUIL: TStringField;
    ZQ_ProveedorNOMBRE: TStringField;
    ZQ_ProveedorDIRECCION: TStringField;
    ZQ_ProveedorLOCALIDAD: TStringField;
    ZQ_ProveedorCODIGO_POSTAL: TStringField;
    ZQ_ProveedorTELEFONO: TStringField;
    ZQ_ProveedorEMAIL: TStringField;
    ZQ_ProveedorPAGINA_WEB: TStringField;
    ZQ_ProveedorBAJA: TStringField;
    ZQ_ProveedorDESCRIPCION: TStringField;
    ZQ_ProveedorDESCRIPCION_PRIVADA: TStringField;
    ZQ_ProveedorNOMBRE_PROVINCIA: TStringField;
    ZQ_ProveedorNOMBRE_TIPO_IVA: TStringField;
    ZQ_ProveedorCOD_IVA: TStringField;
    ZQ_ClienteID: TIntegerField;
    ZQ_ClienteID_PERSONA: TIntegerField;
    ZQ_ClienteID_PROVINCIA: TIntegerField;
    ZQ_ClienteID_TIPO_DOC: TIntegerField;
    ZQ_ClienteID_TIPO_IVA: TIntegerField;
    ZQ_ClienteNOMBRE: TStringField;
    ZQ_ClienteDIRECCION: TStringField;
    ZQ_ClienteLOCALIDAD: TStringField;
    ZQ_ClienteCODIGO_POSTAL: TStringField;
    ZQ_ClienteTELEFONO: TStringField;
    ZQ_ClienteEMAIL: TStringField;
    ZQ_ClienteFECHA_NACIMIENTO: TDateField;
    ZQ_ClienteNUMERO_DOC: TStringField;
    ZQ_ClienteSEXO: TStringField;
    ZQ_ClienteBAJA: TStringField;
    ZQ_ClienteDESCRIPCION: TStringField;
    ZQ_ClienteCUIT_CUIL: TStringField;
    ZQ_ClienteDESCUENTO_ESPECIAL: TFloatField;
    ZQ_ClienteNOMBRE_PROVINCIA: TStringField;
    ZQ_ClienteNOMBRE_TIPO_IVA: TStringField;
    ZQ_ClienteCOD_IVA: TStringField;
    ZQ_ClienteNOMBRE_TIPO_DOC: TStringField;
    ZQ_ProveedorTIPO_EMPRESA: TStringField;
    DBText7: TDBText;
    ZQ_ProveedorCODIGO_CORTO: TIntegerField;
    ZQ_ClienteCODIGO_CORTO: TIntegerField;
    Label2: TLabel;
    Label3: TLabel;
    DBText8: TDBText;
    Label4: TLabel;
    DBText9: TDBText;
    Label5: TLabel;
    DBText10: TDBText;
    Label6: TLabel;
    DBText11: TDBText;
    Label7: TLabel;
    DBText12: TDBText;
    Label8: TLabel;
    DBText13: TDBText;
    Label9: TLabel;
    DBText14: TDBText;
    Label10: TLabel;
    DBText15: TDBText;
    Label11: TLabel;
    DBText16: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBText6: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    Label12: TLabel;
    LblCPB_PuntoVenta: TLabel;
    LblCPB_Numero: TLabel;
    Label26: TLabel;
    DBTxtCPB_PuntoVenta: TDBText;
    DBTxtCPB_Numero: TDBText;
    ZQ_Comprobante: TZQuery;
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
    DS_Comprobante: TDataSource;
    ZQ_ComprobanteFECHA_ANULADO: TDateField;
    ZQ_NumeroCpb: TZQuery;
    ZQ_NumeroCpbULTIMO_NUMERO: TIntegerField;
    ZQ_VerCpbFECHA_ANULADO: TDateField;
    ZQ_CpbFormaPago: TZQuery;
    DS_CpbFormaPago: TDataSource;
    ZQ_CpbFormaPagoID_COMPROB_FP: TIntegerField;
    ZQ_CpbFormaPagoID_COMPROBANTE: TIntegerField;
    ZQ_CpbFormaPagoID_TIPO_FORMAPAG: TIntegerField;
    ZQ_CpbFormaPagoMDCP_FECHA: TDateField;
    ZQ_CpbFormaPagoMDCP_BANCO: TStringField;
    ZQ_CpbFormaPagoMDCP_CHEQUE: TStringField;
    ZQ_CpbFormaPagoIMPORTE: TFloatField;
    ZQ_CpbFormaPagoCONCILIADO: TDateField;
    ZQ_CpbFormaPagoCUENTA_INGRESO: TIntegerField;
    ZQ_Cuenta: TZQuery;
    DS_Cuenta: TDataSource;
    ZQ_CuentaID_CUENTA: TIntegerField;
    ZQ_CuentaMEDIO_DEFECTO: TIntegerField;
    ZQ_CuentaCODIGO: TStringField;
    ZQ_CuentaNOMBRE_CUENTA: TStringField;
    ZQ_CuentaNRO_CTA_BANCARIA: TStringField;
    ZQ_CuentaBAJA: TStringField;
    ZQ_CuentaDESCRIPCION: TStringField;
    ZQ_CuentaBUSQUEDA: TStringField;
    ZQ_CpbFormaPago_CuentaIngreso_Nombre: TStringField;
    ZQ_CpbFormaPago_CuentaIngreso_Codigo: TStringField;
    ZQ_TipoFPago: TZQuery;
    DS_TipoFPago: TDataSource;
    ZQ_TipoFPagoID_TIPO_FORMAPAGO: TIntegerField;
    ZQ_TipoFPagoDESCRIPCION: TStringField;
    ZQ_TipoFPagoBAJA: TStringField;
    ZQ_CpbFormaPago_TipoFormaPago: TStringField;
    EKListadoCuenta: TEKListadoSQL;
    ZQ_ListadoCuenta: TZQuery;
    ZQ_ListadoCuentaID_CUENTA: TIntegerField;
    ZQ_ListadoCuentaMEDIO_DEFECTO: TIntegerField;
    ZQ_ListadoCuentaCODIGO: TStringField;
    ZQ_ListadoCuentaNOMBRE_CUENTA: TStringField;
    ZQ_ListadoCuentaNRO_CTA_BANCARIA: TStringField;
    ZQ_ListadoCuentaBAJA: TStringField;
    EKListadoMedio: TEKListadoSQL;
    ZQ_ListadoMedio: TZQuery;
    ZQ_ListadoMedioID_TIPO_FORMAPAGO: TIntegerField;
    ZQ_ListadoMedioDESCRIPCION: TStringField;
    ZQ_ListadoMedioBAJA: TStringField;
    ZP_CpbID: TZStoredProc;
    ZP_CpbIDID: TIntegerField;
    ZQ_NumeroCpbID_TIPO_CPB: TIntegerField;
    ZQ_NumeroCpbNOMBRE_TIPO_CPB: TStringField;
    ZQ_NumeroCpbSIGNO_COBRO_PAGO: TIntegerField;
    ZQ_NumeroCpbSIGNO_STOCK: TIntegerField;
    ZQ_NumeroCpbSIGNO_CTA_CTE: TIntegerField;
    ZQ_NumeroCpbBAJA: TStringField;
    EKSuma_FPago: TEKDbSuma;
    PanelFechas: TPanel;
    PanelFechaEmision: TPanel;
    EKDBDateEmision: TEKDBDateTimePicker;
    lblTituloFecha_Emision: TLabel;
    ZQ_BuscarMail: TZQuery;
    ZQ_BuscarMailEMAIL: TStringField;
    btnConfirmar: TdxBarLargeButton;
    EKOrd_EditarFpago: TEKOrdenarGrilla;
    ZQ_CpbFormaPagoFECHA_FP: TDateTimeField;
    ZQ_CpbFormaPagoIMPORTE_REAL: TFloatField;
    ZQ_ComprobanteID_TIPO_IVA: TIntegerField;
    ZQ_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_ComprobanteIMPORTE_VENTA: TFloatField;
    ZQ_VerCpb_Fpago: TZQuery;
    ZQ_VerCpb_FpagoID_COMPROB_FP: TIntegerField;
    ZQ_VerCpb_FpagoID_COMPROBANTE: TIntegerField;
    ZQ_VerCpb_FpagoID_TIPO_FORMAPAG: TIntegerField;
    ZQ_VerCpb_FpagoMDCP_FECHA: TDateField;
    ZQ_VerCpb_FpagoMDCP_BANCO: TStringField;
    ZQ_VerCpb_FpagoMDCP_CHEQUE: TStringField;
    ZQ_VerCpb_FpagoIMPORTE: TFloatField;
    ZQ_VerCpb_FpagoCONCILIADO: TDateField;
    ZQ_VerCpb_FpagoCUENTA_INGRESO: TIntegerField;
    ZQ_VerCpb_FpagoNOMBTR_TIPO: TStringField;
    ZQ_VerCpb_FpagoCTA_INGRESO_CODIGO: TStringField;
    ZQ_VerCpb_FpagoCTA_INGRESO: TStringField;
    ZQ_VerCpb_FpagoFECHA_FP: TDateTimeField;
    ZQ_VerCpb_FpagoIMPORTE_REAL: TFloatField;
    DS_VerCpb_Fpago: TDataSource;
    EKOrd_VerCpb_Fpago: TEKOrdenarGrilla;
    editTotalFinal: TEdit;
    Label29: TLabel;
    lblDatos_Proveedor: TLabel;
    DBTxtDatos_Proveedor: TDBText;
    lblDatos_Cliente: TLabel;
    DBTxtDatos_Cliente: TDBText;
    Label30: TLabel;
    DBText33: TDBText;
    StaticTxtConfirmado: TStaticText;
    EKBuscar: TEKBusquedaAvanzada;
    DBMemoCPB_Observacion: TDBMemo;
    DBTxtFechaAnulado: TDBText;
    lblAnulado: TLabel;
    DBTxtMonto: TDBText;
    Label1: TLabel;
    PanelFacturas: TPanel;
    Label19: TLabel;
    Label23: TLabel;
    PanelFacturasEditar: TPanel;
    btnAgregarFactura: TSpeedButton;
    btnQuitarFactura: TSpeedButton;
    PanelFacturasDatos: TPanel;
    PanelFacturasInfo: TPanel;
    Label24: TLabel;
    editTotalFacturas: TEdit;
    DBGridFacturas: TDBGrid;
    CD_Facturas: TClientDataSet;
    CD_Facturas_idComprobante: TIntegerField;
    CD_Facturas_idFactura: TIntegerField;
    CD_Facturas_idTipoComprobante: TIntegerField;
    CD_Facturas_importeComprobante: TFloatField;
    CD_Facturas_fecha: TDateField;
    CD_Facturas_importeCancelar: TFloatField;
    CD_Facturas_descripcion: TStringField;
    DS_Facturas: TDataSource;
    EKSuma_Factura: TEKDbSuma;
    ZQ_PagosFactura: TZQuery;
    ZQ_PagosFacturaID_PAGO_FACTURAS: TIntegerField;
    ZQ_PagosFacturaID_COMPROBANTE: TIntegerField;
    ZQ_PagosFacturaID_FACTURA: TIntegerField;
    ZQ_PagosFacturaID_TIPO_COMPROBANTE: TIntegerField;
    ZQ_PagosFacturaIMPORTE: TFloatField;
    ZQ_PagosFacturaFECHA: TDateTimeField;
    ZQ_PagosFacturaIMPORTE_VENTA: TFloatField;
    ZQ_PagosFacturaDESCRIPCION: TStringField;
    ZU_PagosFactura: TZUpdateSQL;
    ZQ_PagosFacturaIMPORTE_REAL: TFloatField;
    CD_Facturas_saldoComprobante: TFloatField;
    DBGridVerFacturas: TDBGrid;
    Label25: TLabel;
    Label27: TLabel;
    DS_PagosFactura: TDataSource;
    ZQ_VerCpbNOMBRE_CPB: TStringField;
    PanelTipoCpb: TPanel;
    RadioGroupTipoComprobante: TRadioGroup;
    Panel16: TPanel;
    btnTipoCpb_Aceptar: TButton;
    btnTipoCpb_Cancelar: TButton;
    Label28: TLabel;
    Panel1: TPanel;
    ZQ_ConfirmarReciboCtaCte: TZQuery;
    ZQ_AnularReciboCtaCte: TZQuery;
    Label31: TLabel;
    editTotalSaldo: TEdit;
    ZQ_SaldoNotaCredito: TZQuery;
    ZQ_SaldoNotaCreditoSALDO: TFloatField;
    PanelEditar_NotaCredito: TPanel;
    Label32: TLabel;
    DBGrid_ANotaCredito: TDBGrid;
    PanelEditar_NotaCreditoInfo: TPanel;
    Label33: TLabel;
    btnEliminarNotaCredito: TButton;
    EditTotalNotaCredito: TEdit;
    ZQ_CpbFormaPago_NotaCredito: TZQuery;
    ZQ_CpbFormaPago_NotaCreditoID_COMPROB_FP: TIntegerField;
    ZQ_CpbFormaPago_NotaCreditoID_COMPROBANTE: TIntegerField;
    ZQ_CpbFormaPago_NotaCreditoID_TIPO_FORMAPAG: TIntegerField;
    ZQ_CpbFormaPago_NotaCreditoMDCP_FECHA: TDateField;
    ZQ_CpbFormaPago_NotaCreditoMDCP_BANCO: TStringField;
    ZQ_CpbFormaPago_NotaCreditoMDCP_CHEQUE: TStringField;
    ZQ_CpbFormaPago_NotaCreditoIMPORTE: TFloatField;
    ZQ_CpbFormaPago_NotaCreditoCONCILIADO: TDateField;
    ZQ_CpbFormaPago_NotaCreditoCUENTA_EGRESO: TIntegerField;
    ZQ_CpbFormaPago_NotaCreditoFECHA_FP: TDateTimeField;
    ZQ_CpbFormaPago_NotaCreditoIMPORTE_REAL: TFloatField;
    DS_CpbFormaPago_NotaCredito: TDataSource;
    ZQ_CpbFormaPago_NotaCreditoNOMBRECUENTA: TStringField;
    ZQ_CpbFormaPago_NotaCreditoMEDIOPAGO: TStringField;
    EKSuma_FPagoNCredito: TEKDbSuma;
    Label34: TLabel;
    DBGridCpbActual_NCredito: TDBGrid;
    ZQ_VerCpb_NCredito: TZQuery;
    DS_VerCpb_NCredito: TDataSource;
    ZQ_VerCpb_NCreditoID_COMPROB_FP: TIntegerField;
    ZQ_VerCpb_NCreditoID_COMPROBANTE: TIntegerField;
    ZQ_VerCpb_NCreditoID_TIPO_FORMAPAG: TIntegerField;
    ZQ_VerCpb_NCreditoMDCP_FECHA: TDateField;
    ZQ_VerCpb_NCreditoMDCP_BANCO: TStringField;
    ZQ_VerCpb_NCreditoMDCP_CHEQUE: TStringField;
    ZQ_VerCpb_NCreditoIMPORTE: TFloatField;
    ZQ_VerCpb_NCreditoCONCILIADO: TDateField;
    ZQ_VerCpb_NCreditoCUENTA_EGRESO: TIntegerField;
    ZQ_VerCpb_NCreditoFECHA_FP: TDateTimeField;
    ZQ_VerCpb_NCreditoIMPORTE_REAL: TFloatField;
    ZQ_VerCpb_NCreditoNOMBTR_TIPO: TStringField;
    ZQ_VerCpb_NCreditoCTA_EGRESO_CODIGO: TStringField;
    ZQ_VerCpb_NCreditoCTA_EGRESO: TStringField;
    EKOrd_VerCpb_NCredito: TEKOrdenarGrilla;
    CD_Facturas_vencida: TStringField;
    ZQ_ClienteCODIGO_BARRA: TStringField;
    ZQ_ClienteCLAVE: TStringField;
    ZQ_ClienteLIMITE_DEUDA: TFloatField;
    ZQ_ClienteVENCIMIENTO_DIAS: TIntegerField;
    CD_Facturas_recargo: TFloatField;
    CD_Facturas_pagoCompleto: TStringField;
    DBCheckBox_GrillaFacturas: TDBCheckBox;
    ZQ_PagosFacturaDESC_REC: TFloatField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    //------TECLAS RAPIDAS
    procedure ANuevoExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure AConfirmarExecute(Sender: TObject);
    procedure ABajaExecute(Sender: TObject);
    procedure AFSieteExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ZQ_VerCpbAfterScroll(DataSet: TDataSet);
    procedure modoEdicion(flag: boolean);
    procedure cargarTipoComprobante(tipo: integer);
    procedure btnBuscarEmpresaClick(Sender: TObject);
    procedure DBGridEditar_FpagoColExit(Sender: TObject);
    procedure DBGridEditar_FpagoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnEliminarFPagoClick(Sender: TObject);
    procedure EKSuma_FPagoSumListChanged(Sender: TObject); //configuro la pantalla de visualizacion segun el tipo de comprobante
    procedure configPanelFechas(panel: TPanel; Activar: boolean);
    procedure btnEnviarMailClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure DBGridListaCpbDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridCpbActual_FPagoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridEditar_FpagoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnBajaClick(Sender: TObject);
    procedure btnAgregarFacturaClick(Sender: TObject);
    procedure btnBuscarPersonaClick(Sender: TObject);
    procedure EKSuma_FacturaSumListChanged(Sender: TObject);
    procedure btnQuitarFacturaClick(Sender: TObject);
    procedure DBGridFacturasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cargarFacturas;
    procedure guardarPagos; //cuando se confirma el recibo aplica todos los pagos realizados a las facturas correspondiente
    procedure DBGridVerFacturasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnTipoCpb_AceptarClick(Sender: TObject);
    procedure btnTipoCpb_CancelarClick(Sender: TObject);
    procedure CD_Facturas_importeCancelarValidate(Sender: TField);
    procedure buscarFormaPago();
    procedure buscarCuenta();
    function verificarSaldoNotaCredito(query: TDataSet; id_cliente: integer): boolean;
    procedure alta_recibo_cta_cte_desde_afuera(id_cliente: integer);
    procedure DBGrid_ANotaCreditoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid_ANotaCreditoColExit(Sender: TObject);
    procedure btnEliminarNotaCreditoClick(Sender: TObject);
    procedure EKSuma_FPagoNCreditoSumListChanged(Sender: TObject);
    procedure DBGridCpbActual_NCreditoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure CD_Facturas_recargoChange(Sender: TField);
    procedure DBGridFacturasColExit(Sender: TObject);
    procedure DBGridFacturasColEnter(Sender: TObject);
    procedure DBGridFacturasDblClick(Sender: TObject);
    procedure CD_Facturas_importeCancelarChange(Sender: TField);
    procedure CD_Facturas_pagoCompletoChange(Sender: TField);
  Private
    campo_modificado: string;
    nota_credito_total, nota_credito_saldo: double;
    id_cuenta_fpago: integer;
    estadoPantalla: string;
    tipoComprobante: integer;
    id_comprobante: integer;
    vselPersona: TFBuscarPersona;
    vselFactura: TFBuscarComprobante;
    pasarANotaCredito: double;
    totalFormaPago: double;
    cant_dias_vencim: integer;
    mensaje: string;
    procedure onSelPersona;
    procedure onSelFactura;
    procedure onSelTodasFactura;
  Public
    { Public declarations }
  end;

var
  FABM_CPB_Recibo: TFABM_CPB_Recibo;

const
  transaccion_ABM = 'ABM RECIBOS';
  EDITANDO = 'EDITANDO';
  VIENDO = 'VIENDO';

implementation

uses UPrincipal, UDM, EKModelo, UImpresion_Comprobantes, UMailEnviar,
  DateUtils;

{$R *.dfm}

procedure TFABM_CPB_Recibo.modoEdicion(flag: boolean);
begin
  if flag then //si estoy en modo edicion
  begin
    estadoPantalla:= EDITANDO;
    PanelEditar.BringToFront;
    PanelEditar.Visible:= true;
    PanelVer.Visible:= false;

    lblCantidadRegistros.Visible:= false;
    StaticTxtBaja.Visible:= false;
    StaticTxtConfirmado.Visible:= false;
    lblTipoComprobante.Visible:= true;

    GrupoEditando.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= true;
  end
  else
  begin
    estadoPantalla:= VIENDO;
    PanelVer.BringToFront;
    PanelVer.Visible:= true;
    PanelEditar.Visible:= false;

    lblCantidadRegistros.Visible:= true;
    StaticTxtBaja.Visible:= true;
    StaticTxtConfirmado.Visible:= true;
    lblTipoComprobante.Visible:= false;

    GrupoEditando.Enabled:= true;
    GrupoGuardarCancelar.Enabled:= false;
  end;
end;


procedure TFABM_CPB_Recibo.FormCreate(Sender: TObject);
begin
  EKOrd_VerCpb.CargarConfigColumnas;
  EKOrd_VerCpb_Fpago.CargarConfigColumnas;
  EKOrd_VerCpb_NCredito.CargarConfigColumnas;
  EKOrd_EditarFpago.CargarConfigColumnas;

  dm.EKModelo.abrir(ZQ_Cuenta); //abro las cuentas bancarias
  dm.EKModelo.abrir(ZQ_TipoFPago); //abro los tipos de forma de pago

  modoEdicion(false);
  StaticTxtBaja.Color:= FPrincipal.baja;

  FPrincipal.EKImage_ABM_Comprobantes.GetBitmap(0, btnBuscarEmpresa.Glyph); //cargo la imagen del boton buscar entidad
  FPrincipal.EKImage_ABM_Comprobantes.GetBitmap(1, btnBuscarPersona.Glyph); //cargo la imagen del boton buscar entidad
  FPrincipal.EKImage_ABM_Comprobantes.GetBitmap(2, btnAgregarFactura.Glyph); //cargo la imagen del boton buscar entidad
  FPrincipal.EKImage_ABM_Comprobantes.GetBitmap(3, btnQuitarFactura.Glyph); //cargo la imagen del boton buscar entidad

  if dm.ZQ_SucursalesVisibles.Locate('id_sucursal', VarArrayOf([SUCURSAL_LOGUEO]), []) then
    TEKCriterioBA(EKBuscar.CriteriosBusqueda.Items[4]).ItemIndex:= dm.ZQ_SucursalesVisibles.RecNo - 1;

  //abro todos los recibos del sistema
  EKBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);

  //FACTURAS
  CD_Facturas.CreateDataSet;

  DBCheckBox_GrillaFacturas.Visible:= false;
  DBCheckBox_GrillaFacturas.Color:= DBGridFacturas.Color;
  DBCheckBox_GrillaFacturas.Caption:= '';
  DBCheckBox_GrillaFacturas.ValueChecked:= 'True';
  DBCheckBox_GrillaFacturas.ValueUnChecked:= 'False';
end;


procedure TFABM_CPB_Recibo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFABM_CPB_Recibo.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFABM_CPB_Recibo.btnBuscarClick(Sender: TObject);
begin
  if EKbuscar.buscar then
  begin
    ZQ_VerCpb.Refresh;
    dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
  end
end;


procedure TFABM_CPB_Recibo.configPanelFechas(panel: TPanel; Activar: boolean);
begin
  if activar then
  begin
    panel.Enabled:= true;
    panel.Width:= 127;
  end
  else
  begin
    panel.Enabled:= false;
    panel.Width:= 1;
  end;
end;


procedure TFABM_CPB_Recibo.cargarTipoComprobante(tipo: integer);
begin
  case tipo of
    CPB_RECIBO_COBRO: lblTipoComprobante.Caption:= 'RECIBO';
    CPB_RECIBO_CTA_CTE: lblTipoComprobante.Caption:= 'RECIBO CTA. CTE.';
  end;
end;


procedure TFABM_CPB_Recibo.btnTipoCpb_AceptarClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante, ZQ_CpbFormaPago, ZQ_CpbFormaPago_NotaCredito, ZQ_NumeroCpb, ZQ_PagosFactura]) then
  begin
    case RadioGroupTipoComprobante.ItemIndex of
      0: tipoComprobante:= CPB_RECIBO_COBRO;
      1: tipoComprobante:= CPB_RECIBO_CTA_CTE;
    end;

    PanelTipoCpb.Visible:= false;
    PanelFacturas.Visible:= false;

    modoEdicion(true);
    ZQ_Proveedor.Close;
    ZQ_Cliente.Close;

    ZQ_CpbFormaPago_NotaCredito.Close;
    ZQ_CpbFormaPago_NotaCredito.ParamByName('id_comprobante').AsInteger:= -1;
    ZQ_CpbFormaPago_NotaCredito.Open;

    ZQ_CpbFormaPago.Close;
    ZQ_CpbFormaPago.ParamByName('id_comprobante').AsInteger:= -1;
    ZQ_CpbFormaPago.Open;

    cargarTipoComprobante(tipoComprobante); //acomodo la pantalla de edicion segun el tipo de comprobante que es
    lblTipoComprobante.Caption:= lblTipoComprobante.Caption + ' - NUEVO';

    ZP_CpbID.Active:= false;
    ZP_CpbID.Active:= true;
    id_comprobante:= ZP_CpbIDID.AsInteger;
    ZP_CpbID.Active:= false;

    ZQ_NumeroCpb.Close;
    ZQ_NumeroCpb.ParamByName('id_tipo').AsInteger:= tipoComprobante;
    ZQ_NumeroCpb.Open;

    ZQ_Comprobante.Append;
    ZQ_ComprobanteID_COMPROBANTE.AsInteger:= id_comprobante;
    ZQ_ComprobanteID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;
    ZQ_ComprobanteID_TIPO_CPB.AsInteger:= tipoComprobante;
    ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_SIN_CONFIRMAR;
    ZQ_ComprobantePUNTO_VENTA.AsInteger:= 1;
    ZQ_ComprobanteNUMERO_CPB.AsInteger:= ZQ_NumeroCpbULTIMO_NUMERO.AsInteger + 1;
    ZQ_ComprobanteFECHA.AsDateTime:= dm.EKModelo.FechayHora;
    ZQ_ComprobanteFECHA_COBRADA.Clear;
    ZQ_ComprobanteFECHA_ENVIADA.Clear;
    ZQ_ComprobanteFECHA_IMPRESA.Clear;
    ZQ_ComprobanteFECHA_VENCIMIENTO.Clear;
    ZQ_ComprobanteFECHA_ANULADO.Clear;

    EKDBDateEmision.SetFocus;

    if not CD_Facturas.IsEmpty then
      CD_Facturas.EmptyDataSet;

    btnBuscarEmpresa.Enabled:= true;
    if ZQ_ComprobanteID_TIPO_CPB.AsInteger = CPB_RECIBO_CTA_CTE then
    begin
      ZQ_PagosFactura.Close;
      ZQ_PagosFactura.ParamByName('id_comprobante').AsInteger:= -1;
      ZQ_PagosFactura.Open;

      btnBuscarEmpresa.Enabled:= False;
    end;
  end;
end;


procedure TFABM_CPB_Recibo.btnTipoCpb_CancelarClick(Sender: TObject);
begin
  PanelTipoCpb.Visible:= false;
  GrupoEditando.Enabled:= true;
end;


procedure TFABM_CPB_Recibo.btnNuevoClick(Sender: TObject);
begin
  PanelTipoCpb.Visible:= true;
  PanelTipoCpb.BringToFront;
  dm.centrarPanelConAjuste(FABM_CPB_Recibo, PanelTipoCpb, 100);
  RadioGroupTipoComprobante.SetFocus;
  GrupoEditando.Enabled:= false;
end;


procedure TFABM_CPB_Recibo.btnModificarClick(Sender: TObject);
var
  estado: integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or ((estado = ESTADO_CONFIRMADO) or (estado = ESTADO_ANULADO))) then
    exit;

  id_comprobante:= ZQ_VerCpbID_COMPROBANTE.AsInteger;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante, ZQ_CpbFormaPago, ZQ_CpbFormaPago_NotaCredito, ZQ_PagosFactura]) then
  begin
    modoEdicion(true);
    PanelFacturas.Visible:= false;

    ZQ_Comprobante.Close;
    ZQ_Comprobante.ParamByName('id_comprobante').AsInteger:= id_comprobante;
    ZQ_Comprobante.Open;

    ZQ_CpbFormaPago.Close;
    ZQ_CpbFormaPago.ParamByName('id_comprobante').AsInteger:= id_comprobante;
    ZQ_CpbFormaPago.Open;

    ZQ_CpbFormaPago_NotaCredito.Close;
    ZQ_CpbFormaPago_NotaCredito.ParamByName('id_comprobante').AsInteger:= id_comprobante;
    ZQ_CpbFormaPago_NotaCredito.Open;

    if ZQ_ComprobanteID_CLIENTE.IsNull then
    begin
      PanelEditar_DatosGralProveedor.BringToFront;
      ZQ_Proveedor.Close;
      ZQ_Proveedor.ParamByName('id_empresa').AsInteger:= ZQ_ComprobanteID_PROVEEDOR.AsInteger;
      ZQ_Proveedor.Open;
      ZQ_Cliente.Close;
    end;

    if ZQ_ComprobanteID_PROVEEDOR.IsNull then
    begin
      PanelEditar_DatosGralCliente.BringToFront;
      ZQ_Cliente.Close;
      ZQ_Cliente.ParamByName('id_persona').AsInteger:= ZQ_ComprobanteID_CLIENTE.AsInteger;
      ZQ_Cliente.Open;
      ZQ_Proveedor.Close;
    end;

    tipoComprobante:= ZQ_ComprobanteID_TIPO_CPB.AsInteger;
    cargarTipoComprobante(tipoComprobante);
    lblTipoComprobante.Caption:= lblTipoComprobante.Caption + ' - MODIFICAR';

    ZQ_Comprobante.Edit;

    EKDBDateEmision.SetFocus;

    if not CD_Facturas.IsEmpty then
      CD_Facturas.EmptyDataSet;

    btnBuscarEmpresa.Enabled:= true;
    if ZQ_ComprobanteID_TIPO_CPB.AsInteger = CPB_RECIBO_CTA_CTE then
    begin
      ZQ_PagosFactura.Close;
      ZQ_PagosFactura.ParamByName('id_comprobante').AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
      ZQ_PagosFactura.Open;

      EKSuma_Factura.RecalcAll;
      editTotalFacturas.Text:= FormatFloat('$ ###,###,###,##0.00', 0);
      editTotalSaldo.Text:= FormatFloat('$ ###,###,###,##0.00', 0);

      cargarFacturas;

      btnBuscarEmpresa.Enabled:= False;
      PanelFacturas.Visible:= true;
    end;

    //verifico si tenia la cuenta DESCCUENTO/RECARGO cargada anteriormente y la elimino
    if ZQ_CpbFormaPago.Locate('CUENTA_INGRESO', 0, []) then
      ZQ_CpbFormaPago.Delete;
  end;
end;


procedure TFABM_CPB_Recibo.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
  totalCancelarFacturas, totalFormaPago: double;
  descuento_recargo: double;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if ZQ_ComprobanteID_PROVEEDOR.IsNull and ZQ_ComprobanteID_CLIENTE.IsNull then
  begin
    Application.MessageBox('Debe asociar una Persona o Empresa al Comprobante, por favor Verifique', 'Validar Datos', MB_OK + MB_ICONINFORMATION);
    EKDBDateEmision.SetFocus;
    exit;
  end;

  //si es recibo cta cte, verifico si lo que me paga con Nota de credito es menor o igual al saldo disponible en Nota de credito
  if ZQ_ComprobanteID_TIPO_CPB.AsInteger = CPB_RECIBO_CTA_CTE then
    if (not verificarSaldoNotaCredito(ZQ_CpbFormaPago, ZQ_ComprobanteID_CLIENTE.AsInteger)) then
    begin
      mensaje:= format('El Cliente no posee una Nota de Credito con'+#13+
                       'saldo suficiente para realizar la operación'+#13+
                       '(Total Nota Credito = %n / Saldo Nota Credito = %n)',[nota_credito_total, nota_credito_saldo]);
      Application.MessageBox(pchar(mensaje), 'Atención', MB_OK + MB_ICONINFORMATION);
      DBGridEditar_Fpago.SetFocus;
      exit;
    end;

  //calculo lo que tengo que cargar como descuento/recargo  
  descuento_recargo:= 0;
  if not CD_Facturas.IsEmpty then
  begin
    CD_Facturas.First;
    while not CD_Facturas.Eof do
    begin
      if CD_Facturas_pagoCompleto.AsString = 'true' then
        descuento_recargo:= descuento_recargo + (CD_Facturas_saldoComprobante.AsFloat - CD_Facturas_importeCancelar.AsFloat);

      CD_Facturas.Next;
    end;
  end;

  //si tiene descuento recargo agrego la forma de pago Descuento/Recargo
  if descuento_recargo <> 0 then
  begin
    if ZQ_CpbFormaPago.Locate('CUENTA_INGRESO', 0, []) then
      ZQ_CpbFormaPago.Edit //si ya tiene cargada la cuenta de descuento/recargo la edito
    else
      ZQ_CpbFormaPago.Append; //si todavia no tiene cargada la cuenta de descuento/recargo la agrego
    ZQ_CpbFormaPagoCUENTA_INGRESO.AsInteger:= 0;
    ZQ_CpbFormaPagoID_TIPO_FORMAPAG.AsInteger:= 1;
    ZQ_CpbFormaPagoID_COMPROBANTE.AsInteger:= id_Comprobante;
    ZQ_CpbFormaPagoIMPORTE.AsFloat:= descuento_recargo;
    ZQ_CpbFormaPago.Post;
  end
  else //si no tiene descuento recargo
  begin
    //verifico si tenia la cuenta cargada anteriormente y la elimino
    if ZQ_CpbFormaPago.Locate('CUENTA_INGRESO', 0, []) then
      ZQ_CpbFormaPago.Delete;
  end;

  if not ZQ_CpbFormaPago.IsEmpty then  //si tiene forma de pago cargada
  begin
    ZQ_CpbFormaPago.First;
    while not ZQ_CpbFormaPago.Eof do //por cada una de las formas de pago cargadas
    begin
      ZQ_CpbFormaPago.Edit;
      if ZQ_CpbFormaPagoID_COMPROBANTE.IsNull then
        ZQ_CpbFormaPagoID_COMPROBANTE.AsInteger:= id_comprobante;

      if ZQ_CpbFormaPagoIMPORTE.IsNull then
        ZQ_CpbFormaPagoIMPORTE.AsFloat:= 0;

      //si es una forma de pago descuento/recargo le actualizo el importe
      if ZQ_CpbFormaPagoCUENTA_INGRESO.AsInteger = 0 then
        ZQ_CpbFormaPagoIMPORTE.AsFloat:= descuento_recargo;

      ZQ_CpbFormaPagoIMPORTE_REAL.AsFloat:= ZQ_CpbFormaPagoIMPORTE.AsFloat; //pongo el mismo importe cargado al importe_real
      ZQ_CpbFormaPagoFECHA_FP.AsDateTime:= ZQ_ComprobanteFECHA.AsDateTime; //y le pongo la fecha de fp igual a la del comprobante

      ZQ_CpbFormaPago.Next;
    end;
  end;

  //Veo si se cargo nota de credito
  if not ZQ_CpbFormaPago_NotaCredito.IsEmpty then //si tiene nota de credito como forma pago
  begin
    ZQ_CpbFormaPago_NotaCredito.First;
    while not ZQ_CpbFormaPago_NotaCredito.Eof do //por cada una de las notas de credito
    begin
      ZQ_CpbFormaPago_NotaCredito.Edit;
      if ZQ_CpbFormaPago_NotaCreditoID_COMPROBANTE.IsNull then
        ZQ_CpbFormaPago_NotaCreditoID_COMPROBANTE.AsInteger:= id_comprobante;

      if (ZQ_CpbFormaPago_NotaCreditoIMPORTE.IsNull) or (ZQ_CpbFormaPago_NotaCreditoIMPORTE.AsInteger = 0) then
        ZQ_CpbFormaPago_NotaCredito.Delete
      else
      begin
        ZQ_CpbFormaPago_NotaCreditoIMPORTE_REAL.AsFloat:= ZQ_CpbFormaPago_NotaCreditoIMPORTE.AsFloat; //pongo el mismo importe cargado al importe_real
        ZQ_CpbFormaPago_NotaCreditoFECHA_FP.AsDateTime:= ZQ_ComprobanteFECHA.AsDateTime; //y le pongo la fecha de fp igual a la del comprobante

        ZQ_CpbFormaPago_NotaCredito.Next;
      end;
    end;
  end;

  if ZQ_Comprobante.State = dsInsert then //si estoy dando de alta un comprobante
  begin
    //busco de nuevo cual es el ultimo numero
    ZQ_NumeroCpb.Close;
    ZQ_NumeroCpb.ParamByName('id_tipo').AsInteger:= tipoComprobante;
    ZQ_NumeroCpb.Open;

    //si el ultimo numero es distinto al que cargue al principio lo actualizo
    if ZQ_ComprobanteNUMERO_CPB.AsInteger <> (ZQ_NumeroCpbULTIMO_NUMERO.AsInteger + 1) then
    begin
      ZQ_ComprobantePUNTO_VENTA.AsInteger:= 1;
      ZQ_ComprobanteNUMERO_CPB.AsInteger:= ZQ_NumeroCpbULTIMO_NUMERO.AsInteger + 1;
    end;

    ZQ_NumeroCpb.Edit;
    ZQ_NumeroCpbULTIMO_NUMERO.AsInteger:= ZQ_ComprobanteNUMERO_CPB.AsInteger;
  end;

  ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_SIN_CONFIRMAR;

  EKSuma_FPago.RecalcAll; //es un recibo, el importe del comprobante es igual a la suma de las formas de pago
  totalFormaPago:= EKSuma_FPago.SumCollection[0].SumValue - descuento_recargo;
  ZQ_ComprobanteIMPORTE_TOTAL.AsFloat:= totalFormaPago;
  ZQ_ComprobanteIMPORTE_DESCUENTO.AsFloat:= descuento_recargo;
  ZQ_ComprobanteIMPORTE_VENTA.AsFloat:= totalFormaPago;

  //si es un recibo de cuenta corriente
  if ZQ_ComprobanteID_TIPO_CPB.AsInteger = CPB_RECIBO_CTA_CTE then
  begin
    EKSuma_Factura.RecalcAll;
    totalCancelarFacturas:= EKSuma_Factura.SumCollection[0].SumValue;

    if totalFormaPago > totalCancelarFacturas then
    begin
      Application.MessageBox(pchar('El monto de la forma de pago (' + FormatFloat('$ ###,###,###,##0.00', totalFormaPago) + ') es superior al total a cancelar de las facturas (' + FormatFloat('$ ###,###,###,##0.00', totalCancelarFacturas) +'), por favor Verifique'), 'Validar Datos', MB_OK + MB_ICONINFORMATION);
      DBGridEditar_Fpago.SetFocus;
      exit;
    end;

    guardarPagos;
  end;

  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      modoEdicion(false);
      DBGridListaCpb.SetFocus;

      ZQ_VerCpb.Refresh;
      ZQ_VerCpb.Locate('ID_COMPROBANTE', id_comprobante, []);
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención', MB_OK + MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFABM_CPB_Recibo.btnCancelarClick(Sender: TObject);
begin
  if (application.MessageBox(pchar('¿Seguro que desea cancelar? Se perderan los cambios realizados.'), 'ATENCION - ABM Comprobantes', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
    begin
      modoEdicion(false);
      DBGridListaCpb.SetFocus;
    end;
end;


procedure TFABM_CPB_Recibo.btnImprimirClick(Sender: TObject);
var
  estado: Integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or (estado <> ESTADO_CONFIRMADO)) then
    exit;

  if not Assigned(FImpresion_Comprobantes) then
    FImpresion_Comprobantes:= TFImpresion_Comprobantes.Create(nil);
  FImpresion_Comprobantes.cargarDatos(ZQ_VerCpbID_COMPROBANTE.AsInteger, ZQ_VerCpbID_CLIENTE.AsInteger, ZQ_VerCpbID_PROVEEDOR.AsInteger, false);
  FImpresion_Comprobantes.imprimir;
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------

procedure TFABM_CPB_Recibo.ABuscarExecute(Sender: TObject);
begin //F1
  if estadoPantalla = VIENDO then
  begin
    if btnBuscar.Enabled then
      btnBuscar.Click
  end
  else
  begin
    if btnBuscarEmpresa.Enabled then
      btnBuscarEmpresa.Click;
  end;
end;

procedure TFABM_CPB_Recibo.ANuevoExecute(Sender: TObject);
begin //F2
  if estadoPantalla = VIENDO then
  begin
    if btnNuevo.Enabled then
      btnNuevo.Click;
  end
  else
  begin
    if btnBuscarPersona.Enabled then
      btnBuscarPersona.Click;
  end;
end;

procedure TFABM_CPB_Recibo.AModificarExecute(Sender: TObject);
begin //F3
  if estadoPantalla = VIENDO then
  begin
    if btnModificar.Enabled then
      btnModificar.Click;
  end
  else
  begin
    if btnAgregarFactura.Enabled and (tipoComprobante = CPB_RECIBO_CTA_CTE) then
      btnAgregarFactura.Click;
  end;
end;

procedure TFABM_CPB_Recibo.AConfirmarExecute(Sender: TObject);
begin //F4
  if estadoPantalla = VIENDO then
  begin
    if btnConfirmar.Enabled then
      btnConfirmar.Click;
  end
  else
  begin
    if btnQuitarFactura.Enabled and (tipoComprobante = CPB_RECIBO_CTA_CTE) then
      btnQuitarFactura.Click;
  end;
end;

procedure TFABM_CPB_Recibo.ABajaExecute(Sender: TObject);
begin //F5
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_CPB_Recibo.AFSieteExecute(Sender: TObject);
begin //F7
  if estadoPantalla = EDITANDO then
  begin
    DBGridEditar_Fpago.SetFocus;
  end
end;

procedure TFABM_CPB_Recibo.AGuardarExecute(Sender: TObject);
begin //F11
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_CPB_Recibo.ACancelarExecute(Sender: TObject);
begin //F12
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------

procedure TFABM_CPB_Recibo.ZQ_VerCpbAfterScroll(DataSet: TDataSet);
begin
  ZQ_VerCpb_Fpago.Close;
  ZQ_VerCpb_NCredito.Close;
  ZQ_PagosFactura.Close;

  if ZQ_VerCpb.IsEmpty then
    exit;

  ZQ_VerCpb_Fpago.ParamByName('id_comprobante').AsInteger:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
  ZQ_VerCpb_Fpago.Open;

  ZQ_VerCpb_NCredito.ParamByName('id_comprobante').AsInteger:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
  ZQ_VerCpb_NCredito.Open;

  if ZQ_VerCpbID_CLIENTE.IsNull then //si es un proveedor
  begin
    DBTxtDatos_Proveedor.Visible:= true;
    lblDatos_Proveedor.Visible:= true;
    DBTxtDatos_Cliente.Visible:= false;
    lblDatos_Cliente.Visible:= false;
  end
  else //si es un cliente
  begin
    DBTxtDatos_Proveedor.Visible:= false;
    lblDatos_Proveedor.Visible:= false;
    DBTxtDatos_Cliente.Visible:= true;
    lblDatos_Cliente.Visible:= true;

    ZQ_PagosFactura.ParamByName('id_comprobante').AsInteger:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
    ZQ_PagosFactura.Open;
  end;

  if ZQ_VerCpbFECHA_ANULADO.IsNull then
  begin
    DBTxtFechaAnulado.Visible:= false;
    lblAnulado.Visible:= False;
  end
  else
  begin
    DBTxtFechaAnulado.Visible:= true;
    lblAnulado.Visible:= true;
  end;
end;


procedure TFABM_CPB_Recibo.btnBuscarEmpresaClick(Sender: TObject);
var
  sql: string;
begin
  sql:= Format('select emp.id_empresa as id, emp.nombre||%s|| coalesce(tipo.descripcion, %s) as busqueda ' +
    'from empresa emp ' +
    'left join tipo_empresa tipo on (emp.id_tipo_empresa = tipo.id_tipo_empresa) ' +
    'where emp.baja = %s ' +
    'order by emp.nombre', [QuotedStr(' - '), QuotedStr(''), QuotedStr('N')]);

  EKListadoEntidad.SQL.Text:= sql;

  if EKListadoEntidad.Buscar then
  begin
    if (EKListadoEntidad.Resultado <> '') then
    begin
      btnBuscarEmpresa.Down:= true;
      ZQ_Cliente.Close;
      PanelEditar_DatosGralProveedor.BringToFront;

      ZQ_Proveedor.Close;
      ZQ_Proveedor.ParamByName('id_empresa').AsInteger:= StrToInt(EKListadoEntidad.Resultado);
      ZQ_Proveedor.Open;

      if ZQ_Comprobante.State = dsBrowse then
        ZQ_Comprobante.Edit;
      ZQ_ComprobanteID_CLIENTE.Clear;
      ZQ_ComprobanteID_PROVEEDOR.AsInteger:= ZQ_ProveedorID_EMPRESA.AsInteger;

      CD_Facturas.EmptyDataSet;
      EKSuma_Factura.RecalcAll;
      editTotalFacturas.Text:= FormatFloat('$ ###,###,###,##0.00', 0);
      editTotalSaldo.Text:= FormatFloat('$ ###,###,###,##0.00', 0);
      PanelFacturas.Visible:= false;
    end
    else
      if not ZQ_ComprobanteID_CLIENTE.IsNull then
        btnBuscarPersona.Down:= true;
  end
  else
    if not ZQ_ComprobanteID_CLIENTE.IsNull then
      btnBuscarPersona.Down:= true;

  EKDBDateEmision.SetFocus;
end;


procedure TFABM_CPB_Recibo.btnBuscarPersonaClick(Sender: TObject);
begin
  if not Assigned(vselPersona) then
    vselPersona:= TFBuscarPersona.Create(nil);
  vselPersona.btnBuscar.Click;
  vselPersona.OnSeleccionar:= onSelPersona;
  vselPersona.ShowModal;
end;


procedure TFABM_CPB_Recibo.onSelPersona;
begin
  if (not (vselPersona.ZQ_Personas.IsEmpty)) then //si se selecciona un cliente
  begin
    //si ya tengo un cliente cargado y es el mismo que seleccione de la busqueda no hago nada
    if ZQ_ComprobanteID_CLIENTE.AsInteger = vselPersona.ZQ_PersonasID_PERSONA.AsInteger then
    begin
      vselPersona.Close;
      exit;
    end;

    btnBuscarPersona.Down:= true;
    ZQ_Proveedor.Close;
    PanelEditar_DatosGralCliente.BringToFront;

    ZQ_Cliente.Close;
    ZQ_Cliente.ParamByName('id_persona').AsInteger:= vselPersona.ZQ_PersonasID_PERSONA.AsInteger;
    ZQ_Cliente.Open;

    if ZQ_Comprobante.State = dsBrowse then
      ZQ_Comprobante.Edit;
    ZQ_ComprobanteID_PROVEEDOR.Clear;
    ZQ_ComprobanteID_CLIENTE.AsInteger:= ZQ_ClienteID_PERSONA.AsInteger;

    CD_Facturas.EmptyDataSet;
    EKSuma_Factura.RecalcAll;
    editTotalFacturas.Text:= FormatFloat('$ ###,###,###,##0.00', 0);
    editTotalSaldo.Text:= FormatFloat('$ ###,###,###,##0.00', 0);
    if ZQ_ComprobanteID_TIPO_CPB.AsInteger = CPB_RECIBO_CTA_CTE then //si es un recibo de cuenta corriente
      PanelFacturas.Visible:= true;
  end
  else
    if not ZQ_ComprobanteID_PROVEEDOR.IsNull then
      btnBuscarEmpresa.Down:= true;

  EKDBDateEmision.SetFocus;

  vselPersona.Close;
end;


//----------------------
//    FORMA DE PAGO
//----------------------

procedure TFABM_CPB_Recibo.DBGridEditar_FpagoColExit(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then //SI ESTOY DANDO DE ALTA O EDITANDO
  begin
    //PARA LOS RECIBOS - CUENTA INGRESO
    if ((sender as tdbgrid).SelectedField.FullName = '_CuentaIngreso_Nombre') then
    begin
      if (not ZQ_CpbFormaPagoCUENTA_INGRESO.IsNull) then
        exit;

      buscarCuenta;
    end;

    //MEDIO
    if ((sender as tdbgrid).SelectedField.FullName = '_TipoFormaPago') then
    begin
      //si no hay ninguna cuenta cargada salgo
      if ZQ_CpbFormaPagoCUENTA_INGRESO.IsNull then
        exit;

      //si hay algo cargado salgo
      if not ZQ_CpbFormaPagoID_TIPO_FORMAPAG.IsNull then
        exit;

      buscarFormaPago;
    end;
  end;
end;


procedure TFABM_CPB_Recibo.DBGridEditar_FpagoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
  begin
    if key = 118 then
    begin
      //PARA LOS RECIBOS - CUENTA INGRESO
      if ((sender as tdbgrid).SelectedField.FullName = '_CuentaIngreso_Nombre') then
      begin
        buscarCuenta;
      end;

      //MEDIO
      if ((sender as tdbgrid).SelectedField.FullName = '_TipoFormaPago') then
      begin
        //si no hay ninguna cuenta cargada salgo
        if ZQ_CpbFormaPagoCUENTA_INGRESO.IsNull then
          exit;

        buscarFormaPago;
      end;
    end;
  end;
end;


procedure TFABM_CPB_Recibo.btnEliminarFPagoClick(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
  begin
    if not ZQ_CpbFormaPago.IsEmpty then
      ZQ_CpbFormaPago.Delete;

    DBGridEditar_Fpago.SetFocus;

    EKSuma_FPago.RecalcAll;
  end;
end;


procedure TFABM_CPB_Recibo.EKSuma_FPagoSumListChanged(Sender: TObject);
begin
  editTotalFinal.Text:= FormatFloat('$ ###,###,###,##0.00', EKSuma_FPago.SumCollection[0].SumValue);
end;


procedure TFABM_CPB_Recibo.btnEnviarMailClick(Sender: TObject);
var
  destino, archivoPDF: string;
begin
  destino:= '';
  archivoPDF:= '';

  if ZQ_VerCpb.IsEmpty then
    exit;

  ZQ_BuscarMail.Close;
  if ZQ_VerCpbID_PROVEEDOR.IsNull then //si es un CLIENTE
  begin
    ZQ_BuscarMail.SQL.Text:= Format('select p.email from persona p where p.id_persona = %d',
      [ZQ_VerCpbID_CLIENTE.AsInteger]);
  end
  else
    if ZQ_VerCpbID_CLIENTE.IsNull then //si es un PROVEEDOR
    begin
      ZQ_BuscarMail.SQL.Text:= Format('select e.email from empresa e where e.id_empresa = %d',
        [ZQ_VerCpbID_PROVEEDOR.AsInteger]);
    end;

  ZQ_BuscarMail.Open;
  if (not ZQ_BuscarMailEMAIL.IsNull) or (ZQ_BuscarMailEMAIL.AsString <> '') then
    destino:= ZQ_BuscarMailEMAIL.AsString;

  if not Assigned(FImpresion_Comprobantes) then
    FImpresion_Comprobantes:= TFImpresion_Comprobantes.Create(nil);
  FImpresion_Comprobantes.cargarDatos(ZQ_VerCpbID_COMPROBANTE.AsInteger, ZQ_VerCpbID_CLIENTE.AsInteger, ZQ_VerCpbID_PROVEEDOR.AsInteger, false);
  archivoPDF:= FImpresion_Comprobantes.generarPDF;

  //if not Assigned(TFMailEnviar) then
  Application.CreateForm(TFMailEnviar, FMailEnviar);
  FMailEnviar.enviarConAdjunto(destino, dm.ZQ_SucursalNOMBRE.AsString, archivoPDF);
  FMailEnviar.ShowModal;
end;


procedure TFABM_CPB_Recibo.btnConfirmarClick(Sender: TObject);
var
  recno, estado: Integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or ((estado = ESTADO_CONFIRMADO) or (estado = ESTADO_ANULADO))) then
    exit;

  //si es un recibo cta cte, verifico si lo que me paga con Nota de credito es menor o igual al saldo disponible en Nota de credito
  if ZQ_VerCpbID_TIPO_CPB.AsInteger = CPB_RECIBO_CTA_CTE then
    if (not verificarSaldoNotaCredito(ZQ_VerCpb_Fpago, ZQ_VerCpbID_CLIENTE.AsInteger)) then
    begin
      mensaje:= format('El Cliente no posee una Nota de Credito con'+#13+
                       'saldo suficiente para realizar la operación'+#13+
                       '(Total Nota Credito = %n / Saldo Nota Credito = %n)',[nota_credito_total, nota_credito_saldo]);
      Application.MessageBox(pchar(mensaje), 'Atención', MB_OK + MB_ICONINFORMATION);
      exit;
    end;

  id_comprobante:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
  if (application.MessageBox(pchar('¿Desea confirmar el Recibo seleccionado?'), 'ABM Recibo', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante]) then
    begin
      ZQ_Comprobante.Close;
      ZQ_Comprobante.ParamByName('id_comprobante').AsInteger:= id_comprobante;
      ZQ_Comprobante.Open;

      ZQ_Comprobante.Edit;
      ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_CONFIRMADO;
      if ZQ_ComprobanteID_TIPO_CPB.AsInteger = CPB_RECIBO_CTA_CTE then
      begin
        ZQ_ConfirmarReciboCtaCte.Close;
        ZQ_ConfirmarReciboCtaCte.ParamByName('ID_COMPROBANTE').AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
        ZQ_ConfirmarReciboCtaCte.ExecSQL;
      end;

      try
        if not DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
          dm.EKModelo.cancelar_transaccion(transaccion_ABM)
      except
        begin
          Application.MessageBox('No se pudo confirmar el Recibo.', 'Atención', MB_OK + MB_ICONINFORMATION);
          exit;
        end
      end;
    end;

  recNo:= ZQ_VerCpb.RecNo;
  ZQ_VerCpb.Refresh;
  ZQ_VerCpb.RecNo:= recNo;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFABM_CPB_Recibo.DBGridListaCpbDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DBGridListaCpb.Canvas.Font.Color:= clBlack;

  if (ZQ_VerCpbID_COMP_ESTADO.AsInteger = ESTADO_CONFIRMADO) or (ZQ_VerCpbID_COMP_ESTADO.AsInteger = ESTADO_ALMACENADO) then //si el registro esta dado de baja
  begin
    DBGridListaCpb.Canvas.Brush.Color:= StaticTxtConfirmado.Color;
    if (gdFocused in State) or (gdSelected in State) then
      DBGridListaCpb.Canvas.Font.Style:= DBGridListaCpb.Canvas.Font.Style + [fsBold];
  end;

  if (ZQ_VerCpbID_COMP_ESTADO.AsInteger = ESTADO_ANULADO) then //si el registro esta dado de baja
  begin
    DBGridListaCpb.Canvas.Brush.Color:= StaticTxtBaja.Color;
    if (gdFocused in State) or (gdSelected in State) then
      DBGridListaCpb.Canvas.Font.Style:= DBGridListaCpb.Canvas.Font.Style + [fsBold];
  end;

  DBGridListaCpb.DefaultDrawColumnCell(rect, datacol, column, state);

  FPrincipal.PintarFilasGrillas(DBGridListaCpb, Rect, DataCol, Column, State);
end;


procedure TFABM_CPB_Recibo.DBGridCpbActual_FPagoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridCpbActual_FPago, Rect, DataCol, Column, State);
end;


procedure TFABM_CPB_Recibo.DBGridEditar_FpagoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridEditar_Fpago, Rect, DataCol, Column, State);
end;


procedure TFABM_CPB_Recibo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrd_VerCpb.GuardarConfigColumnas;
  EKOrd_VerCpb_Fpago.GuardarConfigColumnas;
  EKOrd_VerCpb_NCredito.GuardarConfigColumnas;
  EKOrd_EditarFpago.GuardarConfigColumnas;
end;


procedure TFABM_CPB_Recibo.btnBajaClick(Sender: TObject);
var
  recno, estado: Integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or (estado = ESTADO_ANULADO)) then
    exit;

  id_comprobante:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
  if (application.MessageBox(pchar('¿Desea anular el Recibo seleccionado?'), 'ABM Recibo', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante]) then
    begin
      ZQ_Comprobante.Close;
      ZQ_Comprobante.ParamByName('id_comprobante').AsInteger:= id_comprobante;
      ZQ_Comprobante.Open;

      ZQ_Comprobante.Edit;
      ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_ANULADO;
      ZQ_ComprobanteFECHA_ANULADO.AsDateTime:= dm.EKModelo.FechayHora;
      if ZQ_ComprobanteID_TIPO_CPB.AsInteger = CPB_RECIBO_CTA_CTE then
      begin
        ZQ_AnularReciboCtaCte.Close;
        ZQ_AnularReciboCtaCte.ParamByName('ID_COMPROBANTE').AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
        ZQ_AnularReciboCtaCte.ExecSQL;
      end;

      try
        if not DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
          dm.EKModelo.cancelar_transaccion(transaccion_ABM)
      except
        begin
          Application.MessageBox('No se pudo anular el Recibo.', 'Atención', MB_OK + MB_ICONINFORMATION);
          exit;
        end
      end;
    end;

  recNo:= ZQ_VerCpb.RecNo;
  ZQ_VerCpb.Refresh;
  ZQ_VerCpb.RecNo:= recNo;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFABM_CPB_Recibo.btnQuitarFacturaClick(Sender: TObject);
begin
  if CD_Facturas.IsEmpty then
    exit;

  if (application.MessageBox(pchar('¿Desea quitar la factura seleccionada (' + CD_Facturas_descripcion.AsString + ')?'), 'ABM Orden de Pago', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    CD_Facturas.Delete;

  DBGridFacturas.SetFocus;
end;


procedure TFABM_CPB_Recibo.btnAgregarFacturaClick(Sender: TObject);
var
  saldo, notaCredito: string;
begin
  if ZQ_ComprobanteID_CLIENTE.IsNull then
  begin
    ShowMessage('No hay ningún Cliente seleccionado, verifique');
    exit;
  end;

  if not Assigned(vselFactura) then
    vselFactura:= TFBuscarComprobante.Create(nil);
  vselFactura.SeleccionarYSalir:= true;
  vselFactura.configFactura(true, false, ZQ_ComprobanteID_CLIENTE.AsInteger);
  vselFactura.OnSeleccionar:= onSelFactura;
  vselFactura.OnSeleccionarTodos:= onSelTodasFactura;
  vselFactura.EKBuscarFacturaVenta.VerConsultaOriginal;
  saldo:= 'Saldo Total: ' + FormatFloat('$ ###,###,###,##0.00', vselFactura.EKDbSumaVenta.SumCollection[0].SumValue);
  notaCredito:= 'Nota Credito: ' + FormatFloat('$ ###,###,###,##0.00', vselFactura.ZQ_SaldoNotaCreditoSALDO.AsFloat);
  vselFactura.lblSaldoTotal.Caption:= saldo + ' || ' + notaCredito + ' ';
  vselFactura.ShowModal;
end;


procedure TFABM_CPB_Recibo.onSelFactura;
var
  saldo_comprobante, recargo_vencimiento: double;
  vencida, pagoCompleto: string;
begin
  if (not (vselFactura.ZQ_Factura_Venta.IsEmpty)) then //si se selecciona un factura
  begin
    btnAgregarFactura.Down:= true;

    CD_Facturas.Filter:= '_idFactura = ' + vselFactura.ZQ_Factura_VentaID_COMPROBANTE.AsString;
    CD_Facturas.Filtered:= true;
    if not CD_Facturas.IsEmpty then
    begin
      CD_Facturas.Filtered:= false;
      Application.MessageBox('La Factura seleccionada ya fue cargada', 'Carga Factura', MB_OK + MB_ICONINFORMATION);
      exit;
    end;
    CD_Facturas.Filtered:= false;

    vencida:= 'NO';
    recargo_vencimiento:= 0;
    pagoCompleto:= 'false';
    saldo_comprobante:= vselFactura.ZQ_Factura_VentaIMPORTE_REAL.AsFloat;
    if DaysBetween(vselFactura.ZQ_Factura_VentaFECHA.AsDateTime, dm.EKModelo.FechayHora) > (ZQ_ClienteVENCIMIENTO_DIAS.AsInteger) then
    begin
      recargo_vencimiento:= recargo_factura_vencida;
      saldo_comprobante:= vselFactura.ZQ_Factura_VentaIMPORTE_REAL.AsFloat * (1 + (recargo_factura_vencida/100));
      vencida:= 'SI';
      pagoCompleto:= 'true';
    end;

    CD_Facturas.Append;
    CD_Facturas_idComprobante.AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
    CD_Facturas_idFactura.AsInteger:= vselFactura.ZQ_Factura_VentaID_COMPROBANTE.AsInteger;
    CD_Facturas_idTipoComprobante.AsInteger:= tipoComprobante;
    CD_Facturas_importeComprobante.AsFloat:= vselFactura.ZQ_Factura_VentaIMPORTE_VENTA.AsFloat;
    CD_Facturas_saldoComprobante.AsFloat:= vselFactura.ZQ_Factura_VentaIMPORTE_REAL.AsFloat;
    CD_Facturas_importeCancelar.AsFloat:= saldo_comprobante;
    CD_Facturas_vencida.AsString:= vencida;
    CD_Facturas_fecha.AsDateTime:= vselFactura.ZQ_Factura_VentaFECHA.AsDateTime;
    CD_Facturas_descripcion.AsString:= vselFactura.ZQ_Factura_VentaDESCRIPCION.AsString;
    CD_Facturas_recargo.AsFloat:= recargo_vencimiento;
    CD_Facturas_pagoCompleto.AsString:= pagoCompleto;
    CD_Facturas.Post;
  end;

  if vselFactura.SeleccionarYSalir then
    vselFactura.Close;

  DBGridFacturas.SetFocus;
end;


procedure TFABM_CPB_Recibo.onSelTodasFactura;
var
  saldo_comprobante, recargo_vencimiento: double;
  vencida, pagoCompleto: string;
begin
  if (not (vselFactura.ZQ_Factura_Venta.IsEmpty)) then //si se selecciona un factura
  begin
    btnAgregarFactura.Down:= true;

    vselFactura.ZQ_Factura_Venta.First;
    while not vselFactura.ZQ_Factura_Venta.Eof do
    begin
      CD_Facturas.Filter:= '_idFactura = ' + vselFactura.ZQ_Factura_VentaID_COMPROBANTE.AsString;
      CD_Facturas.Filtered:= true;
      if not CD_Facturas.IsEmpty then
      begin
        CD_Facturas.Filtered:= false;
        vselFactura.ZQ_Factura_Venta.Next;
      end
      else
      begin
        CD_Facturas.Filtered:= false;

        vencida:= 'NO';
        recargo_vencimiento:= 0;
        pagoCompleto:= 'false';
        saldo_comprobante:= vselFactura.ZQ_Factura_VentaIMPORTE_REAL.AsFloat;
        if DaysBetween(vselFactura.ZQ_Factura_VentaFECHA.AsDateTime, dm.EKModelo.FechayHora) > (ZQ_ClienteVENCIMIENTO_DIAS.AsInteger) then
        begin
          recargo_vencimiento:= recargo_factura_vencida;
          saldo_comprobante:= vselFactura.ZQ_Factura_VentaIMPORTE_REAL.AsFloat * (1 + (recargo_factura_vencida/100));
          vencida:= 'SI';
          pagoCompleto:= 'true';
        end;

        CD_Facturas.Append;
        CD_Facturas_idComprobante.AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
        CD_Facturas_idFactura.AsInteger:= vselFactura.ZQ_Factura_VentaID_COMPROBANTE.AsInteger;
        CD_Facturas_idTipoComprobante.AsInteger:= tipoComprobante;
        CD_Facturas_importeComprobante.AsFloat:= vselFactura.ZQ_Factura_VentaIMPORTE_VENTA.AsFloat;
        CD_Facturas_saldoComprobante.AsFloat:= vselFactura.ZQ_Factura_VentaIMPORTE_REAL.AsFloat;
        CD_Facturas_importeCancelar.AsFloat:= saldo_comprobante;
        CD_Facturas_vencida.AsString:= vencida;
        CD_Facturas_fecha.AsDateTime:= vselFactura.ZQ_Factura_VentaFECHA.AsDateTime;
        CD_Facturas_descripcion.AsString:= vselFactura.ZQ_Factura_VentaDESCRIPCION.AsString;
        CD_Facturas_recargo.AsFloat:= recargo_vencimiento;
        CD_Facturas_pagoCompleto.AsString:= pagoCompleto;
        CD_Facturas.Post;

        vselFactura.ZQ_Factura_Venta.Next;
      end
    end;

    if vselFactura.SeleccionarYSalir then
      vselFactura.Close;
  end;

  DBGridFacturas.SetFocus;
end;


procedure TFABM_CPB_Recibo.EKSuma_FacturaSumListChanged(Sender: TObject);
begin
  editTotalFacturas.Text:= FormatFloat('$ ###,###,###,##0.00', EKSuma_Factura.SumCollection[0].SumValue);
  editTotalSaldo.Text:= FormatFloat('$ ###,###,###,##0.00', EKSuma_Factura.SumCollection[1].SumValue);
end;


procedure TFABM_CPB_Recibo.DBGridFacturasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
const
  IsChecked: array[boolean] of Integer = (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);
var
  DrawState: Integer;
  DrawRect: TRect;
begin
  FPrincipal.PintarFilasGrillas(DBGridFacturas, Rect, DataCol, Column, State);

  if (Column.Field.FieldName = DBCheckBox_GrillaFacturas.DataField) then
  begin
    DrawRect:= Rect;
    InflateRect(DrawRect, -1, -1);

    DrawState:= ISChecked[Column.Field.AsBoolean];

    DBGridFacturas.Canvas.FillRect(Rect);
    DrawFrameControl(DBGridFacturas.Canvas.Handle, DrawRect, DFC_BUTTON, DrawState);
  end;
end;


procedure TFABM_CPB_Recibo.guardarPagos;
var
  montoRestante: double;
begin
  //vacia todos los pagos de facturas asociados anteriormente por si es una modificacion
  ZQ_PagosFactura.First;
  while not ZQ_PagosFactura.Eof do
    ZQ_PagosFactura.Delete;

  if CD_Facturas.IsEmpty then
    exit;

  montoRestante:= ZQ_ComprobanteIMPORTE_TOTAL.AsFloat;

  CD_Facturas.IndexFieldNames:= '_fecha'; //ordeno por fecha descenciente
  CD_Facturas.First;
  while not CD_Facturas.Eof do //recorro todos los comprobantes agregados y veo cuales puedo pagar
  begin
    if montoRestante <> 0 then //si todavia tengo plata para pagar, entro, sino salgo
    begin
      ZQ_PagosFactura.Append;
      ZQ_PagosFacturaID_COMPROBANTE.AsInteger:= CD_Facturas_idComprobante.AsInteger;
      ZQ_PagosFacturaID_FACTURA.AsInteger:= CD_Facturas_idFactura.AsInteger;
      ZQ_PagosFacturaID_TIPO_COMPROBANTE.AsInteger:= CD_Facturas_idTipoComprobante.AsInteger;
      ZQ_PagosFacturaDESC_REC.AsFloat:= CD_Facturas_recargo.AsFloat;

      if montoRestante <= CD_Facturas_saldoComprobante.AsFloat then //si lo que me resta pagar es menor o igual al saldo de la cuenta
      begin
        ZQ_PagosFacturaIMPORTE.AsFloat:= montoRestante; //cancelo el resto
        montoRestante:= 0; //pongo en 0 para que no se puede pagar mas
      end
      else
      begin
        ZQ_PagosFacturaIMPORTE.AsFloat:= CD_Facturas_saldoComprobante.AsFloat; //
        montoRestante:= montoRestante - CD_Facturas_saldoComprobante.AsFloat;
      end;
    end;

    CD_Facturas.Next;
  end;
end;


procedure TFABM_CPB_Recibo.cargarFacturas;
begin
  if ZQ_PagosFactura.IsEmpty then
    exit;

  while not ZQ_PagosFactura.Eof do
  begin
    CD_Facturas.Append;
    CD_Facturas_idComprobante.AsInteger:= ZQ_PagosFacturaID_COMPROBANTE.AsInteger;
    CD_Facturas_idFactura.AsInteger:= ZQ_PagosFacturaID_FACTURA.AsInteger;
    CD_Facturas_idTipoComprobante.AsInteger:= ZQ_PagosFacturaID_TIPO_COMPROBANTE.AsInteger;
    CD_Facturas_fecha.AsDateTime:= ZQ_PagosFacturaFECHA.AsDateTime;
    CD_Facturas_descripcion.AsString:= ZQ_PagosFacturaDESCRIPCION.AsString;
    CD_Facturas_importeComprobante.AsFloat:= ZQ_PagosFacturaIMPORTE_VENTA.AsFloat;
    CD_Facturas_saldoComprobante.AsFloat:= ZQ_PagosFacturaIMPORTE_REAL.AsFloat;
    CD_Facturas_importeCancelar.AsFloat:= ZQ_PagosFacturaIMPORTE.AsFloat;
    CD_Facturas_recargo.AsFloat:= ZQ_PagosFacturaDESC_REC.AsFloat;
    CD_Facturas.Post;

    ZQ_PagosFactura.Next;
  end;
end;


procedure TFABM_CPB_Recibo.DBGridVerFacturasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridVerFacturas, Rect, DataCol, Column, State);
end;


procedure TFABM_CPB_Recibo.CD_Facturas_importeCancelarValidate(Sender: TField);
begin
  if (CD_Facturas_importeCancelar.AsFloat < 0) then
    raise Exception.Create('El "Importe a Cancelar" ingresado es incorrecto, verifique');
end;


procedure TFABM_CPB_Recibo.buscarCuenta;
var
  cargarMonto: boolean;
  saldoNotaCredito: double;
begin
  if EKListadoCuenta.Buscar then
  begin
    if EKListadoCuenta.Resultado <> '' then
    begin
      id_cuenta_fpago:= StrToInt(EKListadoCuenta.Resultado);

      ZQ_ListadoCuenta.Close;
      ZQ_ListadoCuenta.ParamByName('id_cuenta').AsInteger:= id_cuenta_fpago;
      ZQ_ListadoCuenta.Open;

      ZQ_ListadoMedio.Close;
      ZQ_ListadoMedio.ParamByName('id_tipo').AsInteger:= ZQ_ListadoCuentaMEDIO_DEFECTO.AsInteger;
      ZQ_ListadoMedio.Open;

      //obtengo el saldo en nota de credito que tiene el cliente si se elige nota de credito como forma pago
      saldoNotaCredito:= 0;
      if id_cuenta_fpago = 2 then
      begin
        ZQ_SaldoNotaCredito.Close;
        ZQ_SaldoNotaCredito.ParamByName('id_cliente').AsInteger:= ZQ_ComprobanteID_CLIENTE.AsInteger;
        ZQ_SaldoNotaCredito.Open;
        saldoNotaCredito:= ZQ_SaldoNotaCreditoSALDO.AsFloat;
      end;

      cargarMonto:= false;
      if ZQ_CpbFormaPago.IsEmpty then
        cargarMonto:= true;

      if ZQ_CpbFormaPagoID_COMPROBANTE.IsNull then
        ZQ_CpbFormaPago.Append //pongo en modo edicion
      else
        ZQ_CpbFormaPago.edit; //pongo en modo edicion

      ZQ_CpbFormaPagoCUENTA_INGRESO.AsInteger:= ZQ_ListadoCuentaID_CUENTA.AsInteger;
      ZQ_CpbFormaPagoID_TIPO_FORMAPAG.AsInteger:= ZQ_ListadoCuentaMEDIO_DEFECTO.AsInteger;
      ZQ_CpbFormaPagoID_COMPROBANTE.AsInteger:= id_Comprobante;
      if saldoNotaCredito > 0 then
        ZQ_CpbFormaPagoIMPORTE.AsFloat:= saldoNotaCredito
      else
        if cargarMonto then
          ZQ_CpbFormaPagoIMPORTE.AsFloat:= EKSuma_Factura.SumCollection[0].SumValue;

      ZQ_CpbFormaPago.Post;
    end;
  end;
end;


procedure TFABM_CPB_Recibo.buscarFormaPago;
begin
  EKListadoMedio.SQL.Clear;
  EKListadoMedio.SQL.Add(Format('select tipo.* ' +
    'from tipo_formapago tipo ' +
    'left join cuenta_tipo_formapago ctfp on (tipo.id_tipo_formapago = ctfp.id_tipo_formapago) ' +
    'where tipo.baja = %s ' +
    '  and ctfp.id_cuenta = %d ' +
    'order by tipo.descripcion',
    [QuotedStr('N'), id_cuenta_fpago]));

  if EKListadoMedio.Buscar then
  begin
    if EKListadoMedio.Resultado <> '' then
    begin
      ZQ_ListadoMedio.Close;
      ZQ_ListadoMedio.ParamByName('id_tipo').AsInteger:= StrToInt(EKListadoMedio.Resultado);
      ZQ_ListadoMedio.Open;

      if ZQ_CpbFormaPagoID_COMPROBANTE.IsNull then
        ZQ_CpbFormaPago.Append //pongo en modo edicion
      else
        ZQ_CpbFormaPago.edit; //pongo en modo edicion

      ZQ_CpbFormaPagoID_TIPO_FORMAPAG.AsInteger:= ZQ_ListadoMedioID_TIPO_FORMAPAGO.AsInteger;
      ZQ_CpbFormaPagoID_COMPROBANTE.AsInteger:= id_Comprobante;
      ZQ_CpbFormaPago.Post;
    end;
  end;
end;


function TFABM_CPB_Recibo.verificarSaldoNotaCredito(query: TDataSet; id_cliente: integer): boolean;
begin
  Result:= true;
  if query.IsEmpty then
    exit;

  //obtengo el saldo en nota de credito que tiene el cliente
  ZQ_SaldoNotaCredito.Close;
  ZQ_SaldoNotaCredito.ParamByName('id_cliente').AsInteger:= id_cliente;
  ZQ_SaldoNotaCredito.Open;
  nota_credito_saldo:= ZQ_SaldoNotaCreditoSALDO.AsFloat;

  //calculo todo lo que me va a pagar con Nota de Credito
  nota_credito_total:= 0;
  query.First;
  while not query.Eof do //por cada una de las formas de pago cargadas
  begin
    //si la forma de pago es nota de credito
    if query.FieldByName('CUENTA_INGRESO').AsInteger = 2 then
      nota_credito_total:= nota_credito_total + query.FieldByName('IMPORTE').AsFloat;

    query.Next;
  end;

  //si lo que esta pagando en Nota de Credito es mayo al saldo que tiene devuelvo False
  //para que no lo deje cancelar
  if nota_credito_total <> 0 then
    if nota_credito_total > nota_credito_saldo then
      Result:= false;
end;

procedure TFABM_CPB_Recibo.alta_recibo_cta_cte_desde_afuera(
  id_cliente: integer);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante, ZQ_CpbFormaPago, ZQ_CpbFormaPago_NotaCredito, ZQ_NumeroCpb, ZQ_PagosFactura]) then
  begin
    tipoComprobante:= CPB_RECIBO_CTA_CTE;

    GrupoEditando.Enabled:= false;
    PanelTipoCpb.Visible:= false;
    PanelFacturas.Visible:= false;

    modoEdicion(true);
    ZQ_Proveedor.Close;
    ZQ_Cliente.Close;

    ZQ_CpbFormaPago.Close;
    ZQ_CpbFormaPago.ParamByName('id_comprobante').AsInteger:= -1;
    ZQ_CpbFormaPago.Open;

    ZQ_CpbFormaPago_NotaCredito.Close;
    ZQ_CpbFormaPago_NotaCredito.ParamByName('id_comprobante').AsInteger:= -1;
    ZQ_CpbFormaPago_NotaCredito.Open;

    cargarTipoComprobante(tipoComprobante); //acomodo la pantalla de edicion segun el tipo de comprobante que es
    lblTipoComprobante.Caption:= lblTipoComprobante.Caption + ' - NUEVO';

    ZP_CpbID.Active:= false;
    ZP_CpbID.Active:= true;
    id_comprobante:= ZP_CpbIDID.AsInteger;
    ZP_CpbID.Active:= false;

    ZQ_NumeroCpb.Close;
    ZQ_NumeroCpb.ParamByName('id_tipo').AsInteger:= tipoComprobante;
    ZQ_NumeroCpb.Open;

    ZQ_Comprobante.Append;
    ZQ_ComprobanteID_COMPROBANTE.AsInteger:= id_comprobante;
    ZQ_ComprobanteID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;
    ZQ_ComprobanteID_TIPO_CPB.AsInteger:= tipoComprobante;
    ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_SIN_CONFIRMAR;
    ZQ_ComprobantePUNTO_VENTA.AsInteger:= 1;
    ZQ_ComprobanteNUMERO_CPB.AsInteger:= ZQ_NumeroCpbULTIMO_NUMERO.AsInteger + 1;
    ZQ_ComprobanteFECHA.AsDateTime:= dm.EKModelo.FechayHora;
    ZQ_ComprobanteFECHA_COBRADA.Clear;
    ZQ_ComprobanteFECHA_ENVIADA.Clear;
    ZQ_ComprobanteFECHA_IMPRESA.Clear;
    ZQ_ComprobanteFECHA_VENCIMIENTO.Clear;
    ZQ_ComprobanteFECHA_ANULADO.Clear;

    EKDBDateEmision.SetFocus;

    if not CD_Facturas.IsEmpty then
      CD_Facturas.EmptyDataSet;

    ZQ_PagosFactura.Close;
    ZQ_PagosFactura.ParamByName('id_comprobante').AsInteger:= -1;
    ZQ_PagosFactura.Open;

    btnBuscarEmpresa.Enabled:= False;
    btnBuscarPersona.Down:= true;

    PanelEditar_DatosGralCliente.BringToFront;

    ZQ_Cliente.Close;
    ZQ_Cliente.ParamByName('id_persona').AsInteger:= id_cliente;
    ZQ_Cliente.Open;

    if ZQ_Comprobante.State = dsBrowse then
      ZQ_Comprobante.Edit;
    ZQ_ComprobanteID_PROVEEDOR.Clear;
    ZQ_ComprobanteID_CLIENTE.AsInteger:= ZQ_ClienteID_PERSONA.AsInteger;

    CD_Facturas.EmptyDataSet;
    EKSuma_Factura.RecalcAll;
    editTotalFacturas.Text:= FormatFloat('$ ###,###,###,##0.00', 0);
    editTotalSaldo.Text:= FormatFloat('$ ###,###,###,##0.00', 0);
    PanelFacturas.Visible:= true;

    EKDBDateEmision.SetFocus;
  end;
end;

procedure TFABM_CPB_Recibo.DBGrid_ANotaCreditoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGrid_ANotaCredito, Rect, DataCol, Column, State);
end;

procedure TFABM_CPB_Recibo.DBGrid_ANotaCreditoColExit(Sender: TObject);
begin
  if ZQ_CpbFormaPago_NotaCreditoID_COMPROBANTE.IsNull then
    ZQ_CpbFormaPago_NotaCredito.Append //pongo en modo edicion
  else
    ZQ_CpbFormaPago_NotaCredito.edit; //pongo en modo edicion

  ZQ_CpbFormaPago_NotaCreditoCUENTA_EGRESO.AsInteger:= 2;
  ZQ_CpbFormaPago_NotaCreditoID_TIPO_FORMAPAG.AsInteger:= 2;
  ZQ_CpbFormaPago_NotaCreditoID_COMPROBANTE.AsInteger:= id_Comprobante;
  ZQ_CpbFormaPago_NotaCreditoNOMBRECUENTA.AsString:= 'NOTA CREDITO';
  ZQ_CpbFormaPago_NotaCreditoMEDIOPAGO.AsString:= 'NOTA CREDITO';
end;

procedure TFABM_CPB_Recibo.btnEliminarNotaCreditoClick(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
  begin
    if not ZQ_CpbFormaPago_NotaCredito.IsEmpty then
      ZQ_CpbFormaPago_NotaCredito.Delete;

    DBGrid_ANotaCredito.SetFocus;

    EKSuma_FPagoNCredito.RecalcAll;
  end;
end;


procedure TFABM_CPB_Recibo.EKSuma_FPagoNCreditoSumListChanged(Sender: TObject);
begin
  EditTotalNotaCredito.Text:= FormatFloat('$ ###,###,###,##0.00', EKSuma_FPagoNCredito.SumCollection[0].SumValue);
end;


procedure TFABM_CPB_Recibo.DBGridCpbActual_NCreditoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridCpbActual_NCredito, Rect, DataCol, Column, State);
end;


procedure TFABM_CPB_Recibo.CD_Facturas_recargoChange(Sender: TField);
var
  saldo_comprobante, recargo_descuento: double;
begin
  if campo_modificado <> 'REC_DESC' then
    exit;

  recargo_descuento:= CD_Facturas_saldoComprobante.AsFloat * (CD_Facturas_recargo.AsFloat / 100);
  saldo_comprobante:= CD_Facturas_saldoComprobante.AsFloat + recargo_descuento;

  CD_Facturas.edit;
  CD_Facturas_importeCancelar.AsFloat:= saldo_comprobante;
  if recargo_descuento = 0 then
    CD_Facturas_pagoCompleto.AsString:= 'false'
  else
    CD_Facturas_pagoCompleto.AsString:= 'true';
end;


procedure TFABM_CPB_Recibo.CD_Facturas_importeCancelarChange(Sender: TField);
var
  recargo_descuento: double;
begin
  if campo_modificado <> 'IMPORTE' then
    exit;

  CD_Facturas.edit;

  if (CD_Facturas_importeCancelar.AsFloat > CD_Facturas_saldoComprobante.AsFloat) then
    CD_Facturas_pagoCompleto.AsString:= 'true';

  if CD_Facturas_pagoCompleto.AsString = 'false' then
  begin
    CD_Facturas_recargo.AsFloat:= 0;
  end
  else
  begin
    recargo_descuento:= (CD_Facturas_importeCancelar.AsFloat / CD_Facturas_saldoComprobante.AsFloat) - 1;

    CD_Facturas_recargo.AsFloat:= recargo_descuento * 100;
  end;
end;


procedure TFABM_CPB_Recibo.CD_Facturas_pagoCompletoChange(Sender: TField);
begin
  if campo_modificado <> 'CHECK' then
    exit;

  CD_Facturas.edit;
  CD_Facturas_recargo.AsFloat:= 0;
  CD_Facturas_importeCancelar.AsFloat:= CD_Facturas_saldoComprobante.AsFloat;
end;


procedure TFABM_CPB_Recibo.DBGridFacturasColExit(Sender: TObject);
begin
  if ((sender as tdbgrid).SelectedField.FullName = '_recargo')
    or ((sender as tdbgrid).SelectedField.FullName = '_importeCancelar')
    or ((sender as tdbgrid).SelectedField.FullName = '_pagoCompleto') then
  begin
    EKSuma_Factura.RecalcAll;
    EKSuma_Factura.RecalcAll;
    editTotalFacturas.Text:= FormatFloat('$ ###,###,###,##0.00', EKSuma_Factura.SumCollection[0].SumValue);
    editTotalSaldo.Text:= FormatFloat('$ ###,###,###,##0.00', EKSuma_Factura.SumCollection[1].SumValue);
  end;
end;


procedure TFABM_CPB_Recibo.DBGridFacturasColEnter(Sender: TObject);
begin
  if ((sender as tdbgrid).SelectedField.FieldName = '_recargo') then
    campo_modificado:= 'REC_DESC'
  else
  if ((sender as tdbgrid).SelectedField.FieldName = '_importeCancelar') then
    campo_modificado:= 'IMPORTE'
  else
  if ((sender as tdbgrid).SelectedField.FieldName = '_pagoCompleto') then
    campo_modificado:= 'CHECK';

  if (DBGridFacturas.SelectedField.FieldName = '_recargo') or
     (DBGridFacturas.SelectedField.FieldName = '_importeCancelar') then
    DBGridFacturas.Options := DBGridFacturas.Options + [dgEditing]
  else
    DBGridFacturas.Options := DBGridFacturas.Options - [dgEditing];
end;


procedure TFABM_CPB_Recibo.DBGridFacturasDblClick(Sender: TObject);
begin
  if CD_Facturas.IsEmpty then
    exit; 

  if (DBGridFacturas.SelectedField.FieldName = DBCheckBox_GrillaFacturas.DataField) then
  begin
    if DBCheckBox_GrillaFacturas.Checked then
    begin
      CD_Facturas.Edit;
      CD_Facturas_pagoCompleto.AsString:= 'false'
    end
    else
    begin
      CD_Facturas.Edit;
      CD_Facturas_pagoCompleto.AsString:= 'true'
    end;
  end;
end;


end.

