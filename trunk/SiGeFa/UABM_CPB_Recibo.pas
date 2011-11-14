unit UABM_CPB_Recibo;

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
    procedure AReactivarExecute(Sender: TObject);
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
    procedure DBGridEditar_FpagoKeyPress(Sender: TObject; var Key: Char);
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
    procedure guardarPagos; //guarda las facturas que se van a pagar con el recibo y la forma de pago
    procedure aplicarPagosCuentaCorriente; //cuando se confirma el recibo aplica todos los pagos realizados a las facturas correspondiente
    procedure DBGridVerFacturasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnTipoCpb_AceptarClick(Sender: TObject);
    procedure btnTipoCpb_CancelarClick(Sender: TObject);
    procedure CD_Facturas_importeCancelarValidate(Sender: TField);
  private
    estadoPantalla: string;
    tipoComprobante: integer;
    id_comprobante: integer;
    vselPersona: TFBuscarPersona;
    vselFactura: TFBuscarComprobante;
    procedure onSelPersona;
    procedure onSelFactura;
  public
    { Public declarations }
  end;

type
  THackDBGrid = class(TDBGrid);

var
  FABM_CPB_Recibo: TFABM_CPB_Recibo;

const
  transaccion_ABM = 'ABM RECIBOS';
  EDITANDO = 'EDITANDO';
  VIENDO   = 'VIENDO';

implementation

uses UPrincipal, UDM, EKModelo, UImpresion_Comprobantes, UMailEnviar;

{$R *.dfm}

procedure TFABM_CPB_Recibo.modoEdicion(flag:boolean);
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

    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
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

    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
  end;
end;


procedure TFABM_CPB_Recibo.FormCreate(Sender: TObject);
begin
  EKOrd_VerCpb.CargarConfigColumnas;
  EKOrd_VerCpb_Fpago.CargarConfigColumnas;
  EKOrd_EditarFpago.CargarConfigColumnas;

  dm.EKModelo.abrir(ZQ_Cuenta); //abro las cuentas bancarias
  dm.EKModelo.abrir(ZQ_TipoFPago); //abro los tipos de forma de pago

  modoEdicion(false);
  StaticTxtBaja.Color:= FPrincipal.baja;
  ImageListEntidad.GetBitmap(0, btnBuscarEmpresa.Glyph); //cargo la imagen del boton buscar entidad
  ImageListEntidad.GetBitmap(1, btnBuscarPersona.Glyph); //cargo la imagen del boton buscar entidad

  FPrincipal.Iconos_Menu_32.GetBitmap(14, btnAgregarFactura.Glyph); //cargo la imagen del boton buscar entidad
  FPrincipal.Iconos_Menu_32.GetBitmap(15, btnQuitarFactura.Glyph); //cargo la imagen del boton buscar entidad

  //abro todos los recibos del sistema
  EKBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);

  //FACTURAS
  CD_Facturas.CreateDataSet;
end;


procedure TFABM_CPB_Recibo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFABM_CPB_Recibo.btnSalirClick(Sender: TObject);
begin
  Close;
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
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante, ZQ_CpbFormaPago, ZQ_NumeroCpb, ZQ_PagosFactura]) then
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

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante, ZQ_CpbFormaPago, ZQ_PagosFactura]) then
  begin
    modoEdicion(true);
    PanelFacturas.Visible:= false;

    ZQ_Comprobante.Close;
    ZQ_Comprobante.ParamByName('id_comprobante').AsInteger:= id_comprobante;
    ZQ_Comprobante.Open;

    ZQ_CpbFormaPago.Close;
    ZQ_CpbFormaPago.ParamByName('id_comprobante').AsInteger:= id_comprobante;
    ZQ_CpbFormaPago.Open;

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
      editTotalFacturas.Text := FormatFloat('$ ###,###,###,##0.00', 0);

      cargarFacturas;

      btnBuscarEmpresa.Enabled:= False;
      PanelFacturas.Visible:= true;
    end;
  end;
end;


procedure TFABM_CPB_Recibo.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
  totalCancelarFacturas, totalFormaPago: double;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if ZQ_ComprobanteID_PROVEEDOR.IsNull and ZQ_ComprobanteID_CLIENTE.IsNull then
  begin
    Application.MessageBox('Debe asociar una Persona o Empresa al Comprobante, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
    EKDBDateEmision.SetFocus;
    exit;
  end;

  if not ZQ_CpbFormaPago.IsEmpty then
  begin
    ZQ_CpbFormaPago.First;
    while not ZQ_CpbFormaPago.Eof do  //por cada una de las formas de pago cargadas
    begin
      ZQ_CpbFormaPago.Edit;
      if ZQ_CpbFormaPagoIMPORTE.IsNull then
        ZQ_CpbFormaPagoIMPORTE.AsFloat:=0;
      ZQ_CpbFormaPagoIMPORTE_REAL.AsFloat:= ZQ_CpbFormaPagoIMPORTE.AsFloat; //pongo el mismo importe cargado al importe_real
      ZQ_CpbFormaPagoFECHA_FP.AsDateTime:= ZQ_ComprobanteFECHA.AsDateTime; //y le pongo la fecha de fp igual a la del comprobante

      ZQ_CpbFormaPago.Next;
    end;
  end
  else
  begin
    Application.MessageBox('No selecciono ninguna forma de pago, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
    DBGridEditar_Fpago.SetFocus;
    exit;
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

  EKSuma_FPago.RecalcAll; //es un recibo, el importe del comprobante es igual a la
  totalFormaPago:= EKSuma_FPago.SumCollection[0].SumValue;
  ZQ_ComprobanteIMPORTE_TOTAL.AsFloat:= totalFormaPago; //suma de las formas de pago
  ZQ_ComprobanteIMPORTE_VENTA.AsFloat:= totalFormaPago;

  if ZQ_ComprobanteID_TIPO_CPB.AsInteger = CPB_RECIBO_CTA_CTE then
  begin
    EKSuma_Factura.RecalcAll;
    totalCancelarFacturas:= EKSuma_Factura.SumCollection[0].SumValue;

    if totalCancelarFacturas <> totalFormaPago then
    begin
      Application.MessageBox(pchar('El monto total a cancelar de las facturas ('+FloatToStr(totalCancelarFacturas)+') es distinto al monto total de la forma de pago ('+FloatToStr(totalFormaPago)+'), por favor Verifique'),'Validar Datos',MB_OK+MB_ICONINFORMATION);
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
      ZQ_VerCpb.Locate('ID_COMPROBANTE',id_comprobante,[]);
    end
  except
    begin
      Application.MessageBox('Verifique que los datos est�n cargados correctamente.', 'Atenci�n',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFABM_CPB_Recibo.btnCancelarClick(Sender: TObject);
begin
  if (application.MessageBox(pchar('�Seguro que desea cancelar? Se perderan los cambios realizados.'), 'ATENCION - ABM Comprobantes', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
    begin
      modoEdicion(false);
      DBGridListaCpb.SetFocus;
    end;
end;


procedure TFABM_CPB_Recibo.btnImprimirClick(Sender: TObject);
begin
  if (ZQ_VerCpb.IsEmpty) or (ZQ_VerCpbID_COMP_ESTADO.AsInteger <> ESTADO_CONFIRMADO) then
    exit;

  if not Assigned(FImpresion_Comprobantes) then
    FImpresion_Comprobantes := TFImpresion_Comprobantes.Create(nil);
  FImpresion_Comprobantes.cargarDatos(ZQ_VerCpbID_COMPROBANTE.AsInteger, ZQ_VerCpbID_CLIENTE.AsInteger, ZQ_VerCpbID_PROVEEDOR.AsInteger, false);
  FImpresion_Comprobantes.imprimir;
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFABM_CPB_Recibo.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFABM_CPB_Recibo.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABM_CPB_Recibo.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_CPB_Recibo.AConfirmarExecute(Sender: TObject);
begin
  if btnConfirmar.Enabled then
    btnConfirmar.Click;
end;

procedure TFABM_CPB_Recibo.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_CPB_Recibo.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFABM_CPB_Recibo.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_CPB_Recibo.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------

procedure TFABM_CPB_Recibo.ZQ_VerCpbAfterScroll(DataSet: TDataSet);
begin
  ZQ_VerCpb_Fpago.Close;

  if ZQ_VerCpb.IsEmpty then
    exit;

  ZQ_VerCpb_Fpago.ParamByName('id_comprobante').AsInteger:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
  ZQ_VerCpb_Fpago.Open;

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

    ZQ_PagosFactura.Close;
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
  sql:= Format('select emp.id_empresa as id, emp.nombre||%s|| coalesce(tipo.descripcion, %s) as busqueda '+
               'from empresa emp '+
               'left join tipo_empresa tipo on (emp.id_tipo_empresa = tipo.id_tipo_empresa) '+
               'where emp.baja = %s '+
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
      editTotalFacturas.Text := FormatFloat('$ ###,###,###,##0.00', 0);
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
  vselPersona.OnSeleccionar := onSelPersona;
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
      if (((sender as tdbgrid).SelectedField.FullName = '_CuentaIngreso_Codigo') or
          ((sender as tdbgrid).SelectedField.FullName = '_CuentaIngreso_Nombre')) then
      begin
        if (not ZQ_CpbFormaPagoCUENTA_INGRESO.IsNull) then //or (tipoComprobante <> CPB_RECIBO_COBRO) then
          exit;

        if EKListadoCuenta.Buscar then
        begin
          if EKListadoCuenta.Resultado <> '' then
          begin
            ZQ_ListadoCuenta.Close;
            ZQ_ListadoCuenta.ParamByName('id_cuenta').AsInteger:= StrToInt(EKListadoCuenta.Resultado);
            ZQ_ListadoCuenta.Open;

            if ZQ_CpbFormaPagoID_COMPROBANTE.IsNull then
              ZQ_CpbFormaPago.Append //pongo en modo edicion
            else
              ZQ_CpbFormaPago.edit; //pongo en modo edicion

            ZQ_CpbFormaPagoCUENTA_INGRESO.AsInteger:= ZQ_ListadoCuentaID_CUENTA.AsInteger;
            ZQ_CpbFormaPagoID_TIPO_FORMAPAG.AsInteger:= ZQ_ListadoCuentaMEDIO_DEFECTO.AsInteger;
            ZQ_CpbFormaPagoID_COMPROBANTE.AsInteger:= id_Comprobante;
          end;
        end;
      end;

      //MEDIO
      if ((sender as tdbgrid).SelectedField.FullName = '_TipoFormaPago') then
      begin
        if not ZQ_CpbFormaPagoID_TIPO_FORMAPAG.IsNull then
          exit;

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
          end;
        end;
      end;
  end;
end;


procedure TFABM_CPB_Recibo.DBGridEditar_FpagoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
  begin
    if key = 112 then
    begin
      //PARA LOS RECIBOS - CUENTA INGRESO
      if (((sender as tdbgrid).SelectedField.FullName = '_CuentaIngreso_Codigo') or
          ((sender as tdbgrid).SelectedField.FullName = '_CuentaIngreso_Nombre')) then
      begin
//        if (tipoComprobante <> CPB_RECIBO_COBRO) then
//          exit;

        if EKListadoCuenta.Buscar then
        begin
          if EKListadoCuenta.Resultado <> '' then
          begin
            ZQ_ListadoCuenta.Close;
            ZQ_ListadoCuenta.ParamByName('id_cuenta').AsInteger:= StrToInt(EKListadoCuenta.Resultado);
            ZQ_ListadoCuenta.Open;

            if ZQ_CpbFormaPagoID_COMPROBANTE.IsNull then
              ZQ_CpbFormaPago.Append //pongo en modo edicion
            else
              ZQ_CpbFormaPago.edit; //pongo en modo edicion

            ZQ_CpbFormaPagoCUENTA_INGRESO.AsInteger:= ZQ_ListadoCuentaID_CUENTA.AsInteger;
            ZQ_CpbFormaPagoID_TIPO_FORMAPAG.AsInteger:= ZQ_ListadoCuentaMEDIO_DEFECTO.AsInteger;
            ZQ_CpbFormaPagoID_COMPROBANTE.AsInteger:= id_Comprobante;
          end;
        end;
      end;

      //MEDIO
      if ((sender as tdbgrid).SelectedField.FullName = '_TipoFormaPago') then
      begin
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
          end;
        end;
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


procedure TFABM_CPB_Recibo.DBGridEditar_FpagoKeyPress(Sender: TObject; var Key: Char);
var
  columna: string;
begin
//  columna:= (sender as tdbgrid).SelectedField.FullName;
//
//  if (columna = 'IMPORTE') then
//  begin
//    if (Key = #13) or (key = #9) then  { if it's an enter key }
//    begin
//      Key := #0;  { eat enter key }
//      with TStringGrid(DBGridEditar_Fpago) do
//      begin
//        if tipoComprobante = CPB_RECIBO_COBRO then
//          Col := 0
//        else
//          if tipoComprobante = CPB_ORDEN_PAGO then
//            Col := 2;
//
//        SetFocus;
//      end;
//    end;
//  end;
end;


procedure TFABM_CPB_Recibo.EKSuma_FPagoSumListChanged(Sender: TObject);
begin
  editTotalFinal.Text := FormatFloat('$ ###,###,###,##0.00', EKSuma_FPago.SumCollection[0].SumValue);
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
    FImpresion_Comprobantes := TFImpresion_Comprobantes.Create(nil);
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

  id_comprobante:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
  if (application.MessageBox(pchar('�Desea confirmar el Recibo seleccionado?'), 'ABM Recibo', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
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
        ZQ_ConfirmarReciboCtaCte.ParamByName('ID_COMPROBANTE').AsInteger := ZQ_ComprobanteID_COMPROBANTE.AsInteger;
        ZQ_ConfirmarReciboCtaCte.ExecSQL;
      end;

      try
        if not DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
          dm.EKModelo.cancelar_transaccion(transaccion_ABM)
      except
        begin
          Application.MessageBox('No se pudo confirmar el Recibo.', 'Atenci�n',MB_OK+MB_ICONINFORMATION);
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
  DBGridListaCpb.Canvas.Font.Color := clBlack;

  if (ZQ_VerCpbID_COMP_ESTADO.AsInteger = ESTADO_CONFIRMADO) or (ZQ_VerCpbID_COMP_ESTADO.AsInteger = ESTADO_ALMACENADO) then //si el registro esta dado de baja
  begin
    DBGridListaCpb.Canvas.Brush.Color:= StaticTxtConfirmado.Color;
    if (gdFocused in State) or (gdSelected in State) then
      DBGridListaCpb.Canvas.Font.Style := DBGridListaCpb.Canvas.Font.Style + [fsBold];
  end;

  if (ZQ_VerCpbID_COMP_ESTADO.AsInteger = ESTADO_ANULADO) then //si el registro esta dado de baja
  begin
    DBGridListaCpb.Canvas.Brush.Color:= StaticTxtBaja.Color;
    if (gdFocused in State) or (gdSelected in State) then
      DBGridListaCpb.Canvas.Font.Style := DBGridListaCpb.Canvas.Font.Style + [fsBold];
  end;  

  DBGridListaCpb.DefaultDrawColumnCell(rect,datacol,column,state);

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
  if (application.MessageBox(pchar('�Desea anular el Recibo seleccionado?'), 'ABM Recibo', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
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
        ZQ_AnularReciboCtaCte.ParamByName('ID_COMPROBANTE').AsInteger := ZQ_ComprobanteID_COMPROBANTE.AsInteger;
        ZQ_AnularReciboCtaCte.ExecSQL;
      end;

      try
        if not DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
          dm.EKModelo.cancelar_transaccion(transaccion_ABM)
      except
        begin
          Application.MessageBox('No se pudo anular el Recibo.', 'Atenci�n',MB_OK+MB_ICONINFORMATION);
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
  if not CD_Facturas.IsEmpty then
    CD_Facturas.Delete;

  DBGridFacturas.SetFocus;    
end;


procedure TFABM_CPB_Recibo.btnAgregarFacturaClick(Sender: TObject);
begin
  if ZQ_ComprobanteID_CLIENTE.IsNull then
  begin
    ShowMessage('No hay ning�n Cliente seleccionado, verifique');
    exit;
  end;

  if not Assigned(vselFactura) then
    vselFactura:= TFBuscarComprobante.Create(nil);
  vselFactura.SeleccionarYSalir:= true;
  vselFactura.configFactura(true, false, ZQ_ComprobanteID_CLIENTE.AsInteger);
  vselFactura.OnSeleccionar := onSelFactura;
  vselFactura.ShowModal;
end;


procedure TFABM_CPB_Recibo.onSelFactura;
begin
  if (not (vselFactura.ZQ_Factura_Venta.IsEmpty)) then //si se selecciona un factura
  begin
    btnAgregarFactura.Down:= true;

    CD_Facturas.Filter:= '_idFactura = '+vselFactura.ZQ_Factura_VentaID_COMPROBANTE.AsString;
    CD_Facturas.Filtered:= true;
    if not CD_Facturas.IsEmpty then
     begin
      CD_Facturas.Filtered := false;
      Application.MessageBox('La Factura seleccionada ya fue cargada','Carga Factura',MB_OK+MB_ICONINFORMATION);
      exit;
     end;
    CD_Facturas.Filtered := false;

    CD_Facturas.Append;
    CD_Facturas_idComprobante.AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
    CD_Facturas_idFactura.AsInteger:= vselFactura.ZQ_Factura_VentaID_COMPROBANTE.AsInteger;
    CD_Facturas_idTipoComprobante.AsInteger:= tipoComprobante;
    CD_Facturas_importeComprobante.AsFloat:= vselFactura.ZQ_Factura_VentaIMPORTE_VENTA.AsFloat;
    CD_Facturas_saldoComprobante.AsFloat:= vselFactura.ZQ_Factura_VentaIMPORTE_REAL.AsFloat;
    CD_Facturas_importeCancelar.AsFloat:= vselFactura.ZQ_Factura_VentaIMPORTE_REAL.AsFloat;
    CD_Facturas_fecha.AsDateTime:= vselFactura.ZQ_Factura_VentaFECHA.AsDateTime;
    CD_Facturas_descripcion.AsString:= vselFactura.ZQ_Factura_VentaDESCRIPCION.AsString;
    CD_Facturas.Post;
  end;

  if vselFactura.SeleccionarYSalir then
    vselFactura.Close;

  DBGridFacturas.SetFocus;
end;


procedure TFABM_CPB_Recibo.EKSuma_FacturaSumListChanged(Sender: TObject);
begin
  editTotalFacturas.Text := FormatFloat('$ ###,###,###,##0.00', EKSuma_Factura.SumCollection[0].SumValue);
end;


procedure TFABM_CPB_Recibo.DBGridFacturasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridFacturas, Rect, DataCol, Column, State);
end;


procedure TFABM_CPB_Recibo.guardarPagos;
var
  montoRestante: double;
begin
  ZQ_PagosFactura.First;
  while not ZQ_PagosFactura.Eof do //recorro todos los comprobantes agregados y veo cuales puedo pagar
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
    CD_Facturas.Post;

    ZQ_PagosFactura.Next;
  end;
end;


procedure TFABM_CPB_Recibo.DBGridVerFacturasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridVerFacturas, Rect, DataCol, Column, State);
end;


procedure TFABM_CPB_Recibo.aplicarPagosCuentaCorriente;
var
  restante: double;
begin
  if ZQ_PagosFactura.IsEmpty then //si no hay ninguna factura salgo
    exit;

  ZQ_PagosFactura.First;
  while not ZQ_PagosFactura.Eof do //recorro todos los comprobantes agregados
  begin
    restante:= ZQ_PagosFacturaIMPORTE.AsFloat; //al inicio el restante es el monto toal de la factura a cancelar

    ZQ_VerCpb_Fpago.First; //me paro en la primer forma de pago
    while not ZQ_VerCpb_Fpago.Eof do //mientras no sea la ultima forma de pago
    begin

    end;

    ZQ_PagosFactura.Next;
  end;
end;


procedure TFABM_CPB_Recibo.CD_Facturas_importeCancelarValidate(Sender: TField);
begin
  if (CD_Facturas_importeCancelar.AsFloat < 0) or (CD_Facturas_importeCancelar.AsFloat > CD_Facturas_saldoComprobante.AsFloat) then
    raise Exception.Create('El "Importe a Cancelar" ingresado es incorrecto, verifique');
end;

end.