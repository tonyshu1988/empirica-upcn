unit UABM_Comprobantes;

interface

{
  -Proponer enviar las notas de pedido por mail al proveedor
  -Cambiar la clave foranea de comprobante_detalle para que apunte a producto stock en lugar de producto
  -Cambiar la clave foranea de comprobante_forma_pago para que apunte a la tabla tipo_formapago
  -Agregar la clave foranea de comprobante para el campo id_comp_estado
  -Sacar el not null de los campos id_proveedor, id_cliente, id_vendedor
  -Agregar CODIGO_CORTO a tabla de personas y empresa
  -Agregar PUNTO VENTA y NUMERO a la tabla de comprobantes


  ALTER TABLE COMPROBANTE ADD PUNTO_VENTA INTEGER;
  ALTER TABLE COMPROBANTE ADD NUMERO_CPB INTEGER;
  ALTER TABLE COMPROBANTE ADD FECHA_ANULADO DATE;
  ALTER TABLE EMPRESA ADD CODIGO_CORTO INTEGER;
  ALTER TABLE PERSONA ADD CODIGO_CORTO INTEGER;
  ALTER TABLE SUCURSAL ADD COMPROBANTE_TITULO VARCHAR(50);
  ALTER TABLE SUCURSAL ADD COMPROBANTE_RENGLON1 VARCHAR(50);
  ALTER TABLE SUCURSAL ADD COMPROBANTE_RENGLON2 VARCHAR(50);
  ALTER TABLE SUCURSAL ADD COMPROBANTE_RENGLON3 VARCHAR(50);
  ALTER TABLE SUCURSAL ADD COMPROBANTE_RENGLON4 VARCHAR(50);
}


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  EKVistaPreviaQR, QRCtrls, QuickRpt, Buttons, ImgList, EKListadoSQL,
  ComCtrls, EKDBDateTimePicker, EKFiltrarColumna, ZStoredProcedure,
  EKDbSuma, DBClient, Menus, UBuscarProducto, UBuscarPersona;

type
  TFABM_Comprobantes = class(TForm)
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
    PanelCpbActual_Producto: TPanel;
    PanelCpbActual_FPago: TPanel;
    PanelCpbActual_Info: TPanel;
    PanelEditar_DatosGral: TPanel;
    PanelEditar_Producto: TPanel;
    PanelEditar_FPago: TPanel;
    PanelEditar_FPagoInfo: TPanel;
    PanelEditar_ProductoInfo: TPanel;
    DBGridEditar_Producto: TDBGrid;
    DBGridEditar_Fpago: TDBGrid;
    btnEliminarProducto: TButton;
    btnEliminarFPago: TButton;
    btnBuscarEmpresa: TSpeedButton;
    ImageListEntidad: TImageList;
    ZQ_VerCpb: TZQuery;
    ZQ_VerCpb_Fpago: TZQuery;
    ZQ_VerCpb_Producto: TZQuery;
    DS_VerCpb: TDataSource;
    DS_VerCpb_Fpago: TDataSource;
    DS_VerCpb_Producto: TDataSource;
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
    ZQ_VerCpbFECHA_COBRADA: TDateField;
    ZQ_VerCpbFECHA_ENVIADA: TDateField;
    ZQ_VerCpbFECHA_IMPRESA: TDateField;
    ZQ_VerCpbFECHA_VENCIMIENTO: TDateField;
    ZQ_VerCpbSUCURSAL: TStringField;
    ZQ_VerCpbPROVEEDOR: TStringField;
    ZQ_VerCpbCUIT_PROVEEDOR: TStringField;
    ZQ_VerCpbCLIENTE: TStringField;
    ZQ_VerCpbCLIENTE_DOCUMENTO: TStringField;
    ZQ_VerCpbCLIENTE_CUIL: TStringField;
    ZQ_VerCpbVENDEDOR: TStringField;
    ZQ_VerCpbNOMBRE_TIPO_CPB: TStringField;
    ZQ_VerCpbESTADO: TStringField;
    DBGridListaCpb: TDBGrid;
    DBGridCpbActual_Producto: TDBGrid;
    DBGridCpbActual_FPago: TDBGrid;
    ZQ_VerCpb_ProductoID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_VerCpb_ProductoID_COMPROBANTE: TIntegerField;
    ZQ_VerCpb_ProductoID_PRODUCTO: TIntegerField;
    ZQ_VerCpb_ProductoDETALLE: TStringField;
    ZQ_VerCpb_ProductoCANTIDAD: TFloatField;
    ZQ_VerCpb_ProductoIMPORTE_FINAL: TFloatField;
    ZQ_VerCpb_ProductoPORC_DESCUENTO: TFloatField;
    ZQ_VerCpb_ProductoBASE_IMPONIBLE: TFloatField;
    ZQ_VerCpb_ProductoIMPORTE_UNITARIO: TFloatField;
    ZQ_VerCpb_ProductoPORC_IVA: TFloatField;
    ZQ_VerCpb_ProductoCOD_CABECERA: TStringField;
    ZQ_VerCpb_ProductoPRODUCTO: TStringField;
    ZQ_VerCpb_ProductoIMAGEN: TBlobField;
    ZQ_VerCpb_ProductoMEDIDA: TStringField;
    ZQ_VerCpb_ProductoCOLOR: TStringField;
    ZQ_VerCpb_ProductoMARCA: TStringField;
    ZQ_VerCpb_ProductoARTICULO: TStringField;
    ZQ_VerCpb_ProductoTIPO_ARTICULO: TStringField;
    ZQ_VerCpb_ProductoCOD_PRODUCTO: TStringField;
    EKOrd_VerCpb: TEKOrdenarGrilla;
    EKOrd_VerCpb_Fpago: TEKOrdenarGrilla;
    EKOrd_VerCpb_Producto: TEKOrdenarGrilla;
    GroupBoxCpbActual_Info: TGroupBox;
    ZQ_VerCpb_FpagoID_COMPROB_FP: TIntegerField;
    ZQ_VerCpb_FpagoID_COMPROBANTE: TIntegerField;
    ZQ_VerCpb_FpagoID_TIPO_FORMAPAG: TIntegerField;
    ZQ_VerCpb_FpagoMDCP_FECHA: TDateField;
    ZQ_VerCpb_FpagoMDCP_BANCO: TStringField;
    ZQ_VerCpb_FpagoMDCP_CHEQUE: TStringField;
    ZQ_VerCpb_FpagoIMPORTE: TFloatField;
    ZQ_VerCpb_FpagoCONCILIADO: TDateField;
    ZQ_VerCpb_FpagoCUENTA_INGRESO: TIntegerField;
    ZQ_VerCpb_FpagoCUENTA_EGRESO: TIntegerField;
    ZQ_VerCpb_FpagoNOMBTR_TIPO: TStringField;
    ZQ_VerCpb_FpagoCTA_EGRESO_CODIGO: TStringField;
    ZQ_VerCpb_FpagoCTA_EGRESO: TStringField;
    ZQ_VerCpb_FpagoCTA_INGRESO_CODIGO: TStringField;
    ZQ_VerCpb_FpagoCTA_INGRESO: TStringField;
    PanelCpbActual_ProductoDetalle: TPanel;
    GroupBox2: TGroupBox;
    DBMemoCpbActual_Producto: TDBMemo;
    lblVerFecha_Ven_Ejec: TLabel;
    lblVerFecha_Cpb_Dev: TLabel;
    Label28: TLabel;
    Label27: TLabel;
    Label24: TLabel;
    DBTxtMonto: TDBText;
    DBText5: TDBText;
    DBText4: TDBText;
    DBText3: TDBText;
    DBText2: TDBText;
    DBMemoCpbActual_Info: TDBMemo;
    DBText1: TDBText;
    Label1: TLabel;
    ZQ_VerCpbPUNTO_VENTA: TIntegerField;
    ZQ_VerCpbNUMERO_CPB: TIntegerField;
    PanelTipoCpb: TPanel;
    RadioGroupTipoComprobante: TRadioGroup;
    Panel16: TPanel;
    btnTipoCpb_Aceptar: TButton;
    btnTipoCpb_Cancelar: TButton;
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
    DBMemoCPB_Observacion: TDBMemo;
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
    ZQ_CpbProducto: TZQuery;
    DS_CpbProducto: TDataSource;
    ZQ_CpbFormaPagoID_COMPROB_FP: TIntegerField;
    ZQ_CpbFormaPagoID_COMPROBANTE: TIntegerField;
    ZQ_CpbFormaPagoID_TIPO_FORMAPAG: TIntegerField;
    ZQ_CpbFormaPagoMDCP_FECHA: TDateField;
    ZQ_CpbFormaPagoMDCP_BANCO: TStringField;
    ZQ_CpbFormaPagoMDCP_CHEQUE: TStringField;
    ZQ_CpbFormaPagoIMPORTE: TFloatField;
    ZQ_CpbFormaPagoCONCILIADO: TDateField;
    ZQ_CpbFormaPagoCUENTA_INGRESO: TIntegerField;
    ZQ_CpbFormaPagoCUENTA_EGRESO: TIntegerField;
    ZQ_CpbProductoID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_CpbProductoID_COMPROBANTE: TIntegerField;
    ZQ_CpbProductoID_PRODUCTO: TIntegerField;
    ZQ_CpbProductoDETALLE: TStringField;
    ZQ_CpbProductoCANTIDAD: TFloatField;
    ZQ_CpbProductoIMPORTE_FINAL: TFloatField;
    ZQ_CpbProductoPORC_DESCUENTO: TFloatField;
    ZQ_CpbProductoBASE_IMPONIBLE: TFloatField;
    ZQ_CpbProductoIMPORTE_UNITARIO: TFloatField;
    ZQ_CpbProductoPORC_IVA: TFloatField;
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
    ZQ_CpbFormaPago_CuentaEgreso_Nombre: TStringField;
    ZQ_CpbFormaPago_CuentaEgreso_Codigo: TStringField;
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
    lblTotalFormaPago: TLabel;
    EKSuma_FPago: TEKDbSuma;
    Panel1: TPanel;
    edImagen: TDBImage;
    DS_Producto: TDataSource;
    CD_Producto: TClientDataSet;
    CD_Producto_idProducto: TIntegerField;
    CD_Producto_producto: TStringField;
    CD_Producto_medida: TStringField;
    CD_Producto_marca: TStringField;
    CD_Producto_tipoArticulo: TStringField;
    CD_Producto_articulo: TStringField;
    CD_Producto_codigoBarra: TStringField;
    CD_Producto_codProducto: TStringField;
    CD_Producto_codCabecera: TStringField;
    Popup_Producto: TPopupMenu;
    PopItemProducto_Agregar: TMenuItem;
    PopItemProducto_Quitar: TMenuItem;
    CD_Producto_precioCosto: TFloatField;
    CD_Producto_precioVenta: TFloatField;
    CD_Producto_coefGanancia: TFloatField;
    CD_Producto_coefDescuento: TFloatField;
    CD_Producto_impuestoIVA: TFloatField;
    ZQ_CpbProducto_Nombre: TStringField;
    ZQ_CpbProducto_Medida: TStringField;
    ZQ_CpbProducto_Color: TStringField;
    ZQ_CpbProducto_CodBarra: TStringField;
    CD_Producto_color: TStringField;
    Panel2: TPanel;
    DBImage1: TDBImage;
    ZQ_VerCpb_ProductoCODIGO_BARRA: TStringField;
    ZQ_VerCpb_ProductoPRECIO_COSTO: TFloatField;
    ZQ_VerCpb_ProductoPRECIO_VENTA: TFloatField;
    ZQ_VerCpb_ProductoCOEF_GANANCIA: TFloatField;
    ZQ_VerCpb_ProductoCOEF_DESCUENTO: TFloatField;
    ZQ_VerCpb_ProductoIMPUESTO_IVA: TFloatField;
    ZQ_Imagen: TZQuery;
    DS_Imagen: TDataSource;
    ZQ_ImagenIMAGEN: TBlobField;
    Panel3: TPanel;
    Panel4: TPanel;
    DBText21: TDBText;
    Label32: TLabel;
    Label33: TLabel;
    DBText26: TDBText;
    Label34: TLabel;
    DBText27: TDBText;
    Label35: TLabel;
    DBText28: TDBText;
    Label36: TLabel;
    DBText29: TDBText;
    Label37: TLabel;
    DBText30: TDBText;
    Label38: TLabel;
    DBText31: TDBText;
    PopupGridFpago: TPopupMenu;
    PopUpItem_FPagoAgrandar: TMenuItem;
    PopupGridProducto: TPopupMenu;
    PopUpItem_ProductoOcultarDetalle: TMenuItem;
    PanelFiltro: TPanel;
    BtnFiltro_Todos: TSpeedButton;
    BtnFiltro_Presupuesto: TSpeedButton;
    BtnFiltro_NotaPedido: TSpeedButton;
    BtnFiltro_OrdenPago: TSpeedButton;
    BtnFiltro_Remito: TSpeedButton;
    BtnFiltro_Recibo: TSpeedButton;
    Label39: TLabel;
    PanelFechas: TPanel;
    PanelFechaVencimiento: TPanel;
    PanelFechaImpreso: TPanel;
    PanelFechaEnviado: TPanel;
    PanelFechaCobrado: TPanel;
    PanelFechaEmision: TPanel;
    EKDBDateEmision: TEKDBDateTimePicker;
    lblTituloFecha_Emision: TLabel;
    EKDBDateCobrado: TEKDBDateTimePicker;
    EKDBDateEnviado: TEKDBDateTimePicker;
    EKDBDateImpreso: TEKDBDateTimePicker;
    EKDBDateVencimiento: TEKDBDateTimePicker;
    lblTituloFecha_Cobrado: TLabel;
    lblTituloFecha_Enviado: TLabel;
    lblTituloFecha_Impreso: TLabel;
    lblTituloFecha_Vencimiento: TLabel;
    ZQ_BuscarMail: TZQuery;
    ZQ_BuscarMailEMAIL: TStringField;
    btnConfirmar: TdxBarLargeButton;
    ZQ_CpbProductoCANTIDAD_RECIBIDA: TFloatField;
    ZQ_CpbProductoCANTIDAD_ALMACENADA: TFloatField;
    lblCantidadProductos: TLabel;
    EKSuma_Productos: TEKDbSuma;
    EKOrd_EditarProducto: TEKOrdenarGrilla;
    EKOrd_EditarFpago: TEKOrdenarGrilla;
    ZQ_CpbFormaPagoFECHA_FP: TDateTimeField;
    ZQ_CpbFormaPagoIMPORTE_REAL: TFloatField;
    ZQ_ComprobanteID_TIPO_IVA: TIntegerField;
    ZQ_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_ComprobanteIMPORTE_VENTA: TFloatField;
    ZQ_VerCpb_FpagoFECHA_FP: TDateTimeField;
    ZQ_VerCpb_FpagoIMPORTE_REAL: TFloatField;
    ZQ_CpbProductoIMPUESTO_INTERNO: TFloatField;
    ZQ_CpbProductoID_STOCK_PRODUCTO: TIntegerField;
    ZQ_CpbProductoIMPORTE_VENTA: TFloatField;
    ZQ_VerCpb_ProductoIMPUESTO_INTERNO: TFloatField;
    ZQ_VerCpb_ProductoCANTIDAD_RECIBIDA: TFloatField;
    ZQ_VerCpb_ProductoCANTIDAD_ALMACENADA: TFloatField;
    ZQ_VerCpb_ProductoID_STOCK_PRODUCTO: TIntegerField;
    ZQ_VerCpb_ProductoIMPORTE_VENTA: TFloatField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
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
    procedure ssDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure sDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ZQ_VerCpbAfterScroll(DataSet: TDataSet);
    procedure modoEdicion(flag: boolean);
    procedure cargarTipoComprobante(tipo: integer);
    procedure btnTipoCpb_AceptarClick(Sender: TObject);
    procedure btnTipoCpb_CancelarClick(Sender: TObject);
    procedure btnBuscarEmpresaClick(Sender: TObject);
    procedure btnBuscarPersonaClick(Sender: TObject);
    procedure mostrarNumeroCpbBase(flag: boolean);
    procedure DBGridEditar_FpagoColExit(Sender: TObject);
    procedure DBGridEditar_FpagoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnEliminarFPagoClick(Sender: TObject);
    procedure configFormaPago(tipo: integer; edicion: boolean);
    procedure configDetalleProducto(tipo: integer);    
    procedure DBGridEditar_FpagoKeyPress(Sender: TObject; var Key: Char);
    procedure EKSuma_FPagoSumListChanged(Sender: TObject);
    procedure PopItemProducto_AgregarClick(Sender: TObject);
    procedure PopItemProducto_QuitarClick(Sender: TObject);
    procedure btnEliminarProductoClick(Sender: TObject);
    procedure DBGridEditar_ProductoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure agregarProducto();
    procedure cargarProductosClienDataset();
    procedure cargarImagen(id_prducto: integer);
    procedure ZQ_CpbProductoAfterScroll(DataSet: TDataSet);
    procedure calcularImporteProducto(Sender: TField);
    procedure mostrarPanelCompleto(panel: Tpanel; valor: boolean);
    procedure PopUpItem_FPagoAgrandarClick(Sender: TObject);
    procedure PopUpItem_ProductoAgrandarClick(Sender: TObject);
    procedure PopUpItem_ProductoOcultarDetalleClick(Sender: TObject);
    procedure configVisualizacion();
    procedure AplicarFiltro(Sender: TObject); //configuro la pantalla de visualizacion segun el tipo de comprobante
    procedure configPanelFechas(panel: TPanel; Activar: boolean);
    procedure btnEnviarMailClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure confirmarCpb(tipo: integer);
    procedure ZQ_CpbProductoCANTIDAD_RECIBIDAChange(Sender: TField);
    procedure DBGridListaCpbDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridEditar_ProductoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EKSuma_ProductosSumListChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEditar_ProductoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    confirmarComprobante: boolean;
    estadoPantalla: string;
    tipoComprobante: integer;
    id_comprobante: integer;
    alignAnterior: TAlign;
    grillaActual: string;
    agrandarPanelFPago: boolean;
    agrandarPanelProducto: boolean;
    descuentoCliente: double;
    preguntarPorDescuento: boolean;
    vselProducto: TFBuscarProducto;
    vselPersona: TFBuscarPersona;
    procedure onSelPersona;
    procedure onSelProducto;
    procedure onSelTodosProducto;
    function getColumnIndex(Grid: TDBGrid; Nombre: string): Integer;
  public
    { Public declarations }
  end;

type
  THackDBGrid = class(TDBGrid);

var
  FABM_Comprobantes: TFABM_Comprobantes;

const
  transaccion_ABM = 'ABM COMPROBANTES';
  EDITANDO = 'EDITANDO';
  VIENDO   = 'VIENDO';

implementation

uses UPrincipal, UDM, EKModelo, UImpresion_Comprobantes, UMailEnviar;

{$R *.dfm}

//Devuelve el indice en la grilla de la columna que se pasa como parametro
function TFABM_Comprobantes.getColumnIndex(Grid: TDBGrid; Nombre: string): Integer;
var
  i: Integer;
begin
  Result:= -1;
  for i:= 0 to Grid.Columns.Count -1 do
    if Nombre = Grid.Columns[i].FieldName then
    begin
      Result:= i;
      Exit;
    end;
end;


procedure TFABM_Comprobantes.modoEdicion(flag:boolean);
begin
  if flag then //si estoy en modo edicion
  begin
    estadoPantalla:= EDITANDO;
    PanelEditar.BringToFront;
    PanelEditar.Visible:= true;

    PanelVer.Visible:= false;
    PanelFiltro.Visible:= false;

    lblCantidadRegistros.Visible:= false;
    StaticTxtBaja.Visible:= false;
    lblTipoComprobante.Visible:= true;

    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end
  else
  begin
    estadoPantalla:= VIENDO;
    PanelVer.BringToFront;
    PanelVer.Visible:= true;
    PanelFiltro.Visible:= true;
    
    PanelEditar.Visible:= false;

    lblCantidadRegistros.Visible:= true;
    StaticTxtBaja.Visible:= true;
    lblTipoComprobante.Visible:= false;

    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
  end;
end;


procedure TFABM_Comprobantes.FormCreate(Sender: TObject);
begin
  EKOrd_VerCpb.CargarConfigColumnas;
  EKOrd_VerCpb_Fpago.CargarConfigColumnas;
  EKOrd_VerCpb_Producto.CargarConfigColumnas;
  EKOrd_EditarProducto.CargarConfigColumnas;
  EKOrd_EditarFpago.CargarConfigColumnas;

  agrandarPanelFPago:=false;
  agrandarPanelProducto:=false;

  dm.EKModelo.abrir(ZQ_Cuenta); //abro las cuentas bancarias
  dm.EKModelo.abrir(ZQ_TipoFPago); //abro los tipos de forma de pago

  modoEdicion(false);
  StaticTxtBaja.Color:= FPrincipal.baja;
  ImageListEntidad.GetBitmap(0, btnBuscarEmpresa.Glyph); //cargo la imagen del boton buscar entidad
  ImageListEntidad.GetBitmap(1, btnBuscarPersona.Glyph); //cargo la imagen del boton buscar entidad

  ZQ_VerCpb.Close;
  ZQ_VerCpb.open;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);

  CD_Producto.CreateDataSet;  
end;


procedure TFABM_Comprobantes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFABM_Comprobantes.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_Comprobantes.btnBuscarClick(Sender: TObject);
begin
//  EKbuscar.buscar;
end;


procedure TFABM_Comprobantes.configPanelFechas(panel: TPanel; Activar: boolean);
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


procedure TFABM_Comprobantes.cargarTipoComprobante(tipo: integer);
begin
  lblTituloFecha_Impreso.Caption:=  'Impreso';
  configPanelFechas(PanelFechaCobrado, false);
  configPanelFechas(PanelFechaEnviado, false);
  configPanelFechas(PanelFechaImpreso, false);
  configPanelFechas(PanelFechaVencimiento, false);

  case tipo of
    CPB_PRESUPUESTO:  begin //CPB_PRESUPUESTO; COMPROBANTE_DETALLE
                        lblTipoComprobante.Caption:= 'PRESUPUESTO';
                        PanelEditar_Producto.Visible:= true;
                        PanelEditar_Producto.Align:= alClient;

                        PanelEditar_FPago.Visible:= false;
                        PanelEditar_FPago.Align:= alClient;

                        configPanelFechas(PanelFechaVencimiento, true);
                      end;
    CPB_NOTA_PEDIDO:  begin //CPB_NOTA_PEDIDO; COMPROBANTE_DETALLE
                        lblTipoComprobante.Caption:= 'NOTA DE PEDIDO';
                        PanelEditar_Producto.Visible:= true;
                        PanelEditar_Producto.Align:= alClient;

                        PanelEditar_FPago.Visible:= false;
                        PanelEditar_FPago.Align:= alClient;

                        configPanelFechas(PanelFechaEnviado, true);

                        if confirmarComprobante then
                        begin
                          configPanelFechas(PanelFechaImpreso, true);
                          lblTituloFecha_Impreso.Caption:=  'Recibido';
                        end;
                      end;
    CPB_REMITO_VENTA: begin //CPB_REMITO_VENTA; COMPROBANTE_DETALLE
                        lblTipoComprobante.Caption:= 'REMITO DE VENTA';
                        PanelEditar_Producto.Visible:= true;
                        PanelEditar_Producto.Align:= alClient;

                        PanelEditar_FPago.Visible:= false;
                        PanelEditar_FPago.Align:= alClient;

                        configPanelFechas(PanelFechaEnviado, true);
                      end;
    CPB_RECIBO_COBRO: begin //CPB_RECIBO_COBRO; COMPROBANTE_FORMA_PAGO
                        lblTipoComprobante.Caption:= 'RECIBO DE COBRO';
                        PanelEditar_Producto.Visible:= false;
                        PanelEditar_Producto.Align:= alClient;

                        PanelEditar_FPago.Visible:= true;
                        PanelEditar_FPago.Align:= alClient;
                      end;
    CPB_ORDEN_PAGO:   begin //CPB_ORDEN_PAGO; COMPROBANTE_FORMA_PAGO
                        lblTipoComprobante.Caption:= 'ORDEN DE PAGO';
                        PanelEditar_Producto.Visible:= false;
                        PanelEditar_Producto.Align:= alClient;

                        PanelEditar_FPago.Visible:= true;
                        PanelEditar_FPago.Align:= alClient;
                      end;
  end;
end;


procedure TFABM_Comprobantes.configFormaPago(tipo: integer; edicion: boolean);
begin
  case tipo of
    CPB_RECIBO_COBRO: begin //Usa la cuenta de ingreso
                        if edicion then
                        begin
                          DBGridEditar_Fpago.Columns[getColumnIndex(DBGridEditar_Fpago, '_CuentaIngreso_Codigo')].Visible:= true;
                          DBGridEditar_Fpago.Columns[getColumnIndex(DBGridEditar_Fpago, '_CuentaIngreso_Nombre')].Visible:= true;

                          DBGridEditar_Fpago.Columns[getColumnIndex(DBGridEditar_Fpago, '_CuentaEgreso_Codigo')].Visible:= false;
                          DBGridEditar_Fpago.Columns[getColumnIndex(DBGridEditar_Fpago, '_CuentaEgreso_Nombre')].Visible:= false;
                        end
                        else
                        begin
                          DBGridCpbActual_FPago.Columns[getColumnIndex(DBGridCpbActual_FPago, 'CTA_INGRESO')].Visible:= true;
                          DBGridCpbActual_FPago.Columns[getColumnIndex(DBGridCpbActual_FPago, 'CTA_INGRESO_CODIGO')].Visible:= true;

                          DBGridCpbActual_FPago.Columns[getColumnIndex(DBGridCpbActual_FPago, 'CTA_EGRESO')].Visible:= false;
                          DBGridCpbActual_FPago.Columns[getColumnIndex(DBGridCpbActual_FPago, 'CTA_EGRESO_CODIGO')].Visible:= false;
                        end;
                      end;
    CPB_ORDEN_PAGO:   begin //Usu la cuenta de egreso
                        if edicion then
                        begin
                          DBGridEditar_Fpago.Columns[getColumnIndex(DBGridEditar_Fpago, '_CuentaIngreso_Codigo')].Visible:= false;
                          DBGridEditar_Fpago.Columns[getColumnIndex(DBGridEditar_Fpago, '_CuentaIngreso_Nombre')].Visible:= false;

                          DBGridEditar_Fpago.Columns[getColumnIndex(DBGridEditar_Fpago, '_CuentaEgreso_Codigo')].Visible:= true;
                          DBGridEditar_Fpago.Columns[getColumnIndex(DBGridEditar_Fpago, '_CuentaEgreso_Nombre')].Visible:= true;
                        end
                        else
                        begin
                          DBGridCpbActual_FPago.Columns[getColumnIndex(DBGridCpbActual_FPago, 'CTA_INGRESO')].Visible:= false;
                          DBGridCpbActual_FPago.Columns[getColumnIndex(DBGridCpbActual_FPago, 'CTA_INGRESO_CODIGO')].Visible:= false;

                          DBGridCpbActual_FPago.Columns[getColumnIndex(DBGridCpbActual_FPago, 'CTA_EGRESO')].Visible:= true;
                          DBGridCpbActual_FPago.Columns[getColumnIndex(DBGridCpbActual_FPago, 'CTA_EGRESO_CODIGO')].Visible:= true;
                        end;
                      end;
  end;
end;


procedure TFABM_Comprobantes.configDetalleProducto(tipo: integer);
begin
  case tipo of
    CPB_PRESUPUESTO:  begin //Usa la cuenta de ingreso
                        DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'IMPORTE_UNITARIO')].Visible:= true;
                        DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'PORC_DESCUENTO')].Visible:= true;
                        DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'BASE_IMPONIBLE')].Visible:= true;
                        DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'PORC_IVA')].Visible:= true;
                        DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'IMPORTE_FINAL')].Visible:= true;
                        DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'CANTIDAD_RECIBIDA')].Visible:= false;
                      end;
    CPB_REMITO_VENTA: begin //Usu la cuenta de egreso
                        DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'IMPORTE_UNITARIO')].Visible:= false;
                        DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'PORC_DESCUENTO')].Visible:= false;
                        DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'BASE_IMPONIBLE')].Visible:= false;
                        DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'PORC_IVA')].Visible:= false;
                        DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'IMPORTE_FINAL')].Visible:= false;
                        DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'CANTIDAD_RECIBIDA')].Visible:= false;
                      end;
    CPB_NOTA_PEDIDO:  begin //Usu la cuenta de egreso
                        DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'IMPORTE_UNITARIO')].Visible:= false;
                        DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'PORC_DESCUENTO')].Visible:= false;
                        DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'BASE_IMPONIBLE')].Visible:= false;
                        DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'PORC_IVA')].Visible:= false;
                        DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'IMPORTE_FINAL')].Visible:= false;
                        if confirmarComprobante then
                          DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'CANTIDAD_RECIBIDA')].Visible:= true
                        else
                          DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'CANTIDAD_RECIBIDA')].Visible:= false;
                      end;
  end;
end;


procedure TFABM_Comprobantes.mostrarNumeroCpbBase(flag: boolean);
begin
  if flag then
  begin
    LblCPB_PuntoVenta.Visible:= false;
    LblCPB_Numero.Visible:= false;

    DBTxtCPB_PuntoVenta.Visible:= true;
    DBTxtCPB_Numero.Visible:= true;
  end
  else
  begin
    LblCPB_PuntoVenta.Visible:= true;
    LblCPB_Numero.Visible:= true;

    DBTxtCPB_PuntoVenta.Visible:= false;
    DBTxtCPB_Numero.Visible:= false;
  end;
end;


procedure TFABM_Comprobantes.btnNuevoClick(Sender: TObject);
begin
  confirmarComprobante:= false;
  PanelTipoCpb.left:= (FABM_Comprobantes.width div 2) - PanelTipoCpb.width div 2;
  PanelTipoCpb.top := (FABM_Comprobantes.height div 2) - PanelTipoCpb.height;
  PanelTipoCpb.Visible:= true;
  PanelTipoCpb.BringToFront;
  RadioGroupTipoComprobante.SetFocus;

  PanelFechaEnviado.Enabled:= false;
  PanelFechaEnviado.Width:= 127;
  PanelFechaEnviado.Width:= 1;

  GrupoEditando.Enabled:= false;

  preguntarPorDescuento:= true;
end;


procedure TFABM_Comprobantes.btnTipoCpb_AceptarClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante, ZQ_CpbFormaPago, ZQ_CpbProducto, ZQ_NumeroCpb]) then
  begin
    PanelTipoCpb.Visible:= false;
    modoEdicion(true);

    ZQ_Proveedor.Close;
    ZQ_Cliente.Close;
    ZQ_Imagen.Close;

    ZQ_CpbFormaPago.Close;
    ZQ_CpbFormaPago.ParamByName('id_comprobante').AsInteger:= -1;
    ZQ_CpbFormaPago.Open;

    ZQ_CpbProducto.Close;
    ZQ_CpbProducto.ParamByName('id_comprobante').AsInteger:= -1;
    ZQ_CpbProducto.Open;

    if not CD_Producto.IsEmpty then
      CD_Producto.EmptyDataSet;

    case RadioGroupTipoComprobante.ItemIndex of
      0: tipoComprobante:= CPB_PRESUPUESTO;
      1: tipoComprobante:= CPB_NOTA_PEDIDO;
      2: tipoComprobante:= CPB_REMITO_VENTA;
      3: tipoComprobante:= CPB_RECIBO_COBRO;
      4: tipoComprobante:= CPB_ORDEN_PAGO;
    end;

    cargarTipoComprobante(tipoComprobante); //acomodo la pantalla de edicion segun el tipo de comprobante que es
    configFormaPago(tipoComprobante, true); //acomodo la grilla de forma de pago segun el tipo de comprobante que es
    configDetalleProducto(tipoComprobante); //acomodo la grilla de los productos segun el tipo de comprobante que es
    lblTipoComprobante.Caption:= lblTipoComprobante.Caption + ' - NUEVO';
    confirmarCpb(tipoComprobante);

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
    case tipoComprobante of
      CPB_PRESUPUESTO:  begin //CPB_PRESUPUESTO
                          ZQ_ComprobanteFECHA_VENCIMIENTO.AsDateTime:= dm.EKModelo.FechayHora;
                        end;
      CPB_NOTA_PEDIDO:  begin //CPB_NOTA_PEDIDO
                          ZQ_ComprobanteFECHA_ENVIADA.AsDateTime:= dm.EKModelo.FechayHora;
                        end;
      CPB_REMITO_VENTA: begin //CPB_REMITO_VENTA
                          ZQ_ComprobanteFECHA_ENVIADA.AsDateTime:= dm.EKModelo.FechayHora;
                        end;
      CPB_RECIBO_COBRO: begin //CPB_RECIBO_COBRO
                          //ZQ_ComprobanteFECHA_ENVIADA.AsDateTime:= dm.EKModelo.FechayHora;
                        end;
      CPB_ORDEN_PAGO:   begin //CPB_ORDEN_PAGO
                          //ZQ_ComprobanteFECHA_ENVIADA.AsDateTime:= dm.EKModelo.FechayHora;
                        end;
    end;

    descuentoCliente:= 0;

    EKDBDateEmision.SetFocus;
  end;
end;


procedure TFABM_Comprobantes.btnTipoCpb_CancelarClick(Sender: TObject);
begin
  PanelTipoCpb.Visible:= false;
  modoEdicion(false);
end;


procedure TFABM_Comprobantes.btnModificarClick(Sender: TObject);
var
  estado: integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or ((estado = ESTADO_CONFIRMADO) or (estado = ESTADO_ALMACENADO))) then
    exit;

  confirmarComprobante:= false;
  preguntarPorDescuento:= true;

  id_comprobante:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
  tipoComprobante:= ZQ_VerCpbID_TIPO_CPB.AsInteger;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante, ZQ_CpbFormaPago, ZQ_CpbProducto]) then
  begin
    PanelTipoCpb.Visible:= false;
    modoEdicion(true);

    if not CD_Producto.IsEmpty then
      CD_Producto.EmptyDataSet;
    cargarProductosClienDataset();

    ZQ_Comprobante.Close;
    ZQ_Comprobante.ParamByName('id_comprobante').AsInteger:= id_comprobante;
    ZQ_Comprobante.Open;

    ZQ_CpbFormaPago.Close;
    ZQ_CpbFormaPago.ParamByName('id_comprobante').AsInteger:= id_comprobante;
    ZQ_CpbFormaPago.Open;

    ZQ_CpbProducto.Close;
    ZQ_CpbProducto.ParamByName('id_comprobante').AsInteger:= id_comprobante;
    ZQ_CpbProducto.Open;

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

    descuentoCliente:= 0;
    if tipoComprobante = CPB_PRESUPUESTO then //si es un presupuesto pregunto si deseo aplicar el descuento especial del cliente
      if (not ZQ_ClienteDESCUENTO_ESPECIAL.IsNull) or (ZQ_ClienteDESCUENTO_ESPECIAL.AsFloat <> 0) then
        if (application.MessageBox(pchar('El cliente asociado al comprobante posee un descuento especial del '+FloatToStr(ZQ_ClienteDESCUENTO_ESPECIAL.AsFloat*100)+'%.'+
            #13+'Desea aplicar este descuento para todos los productos nuevos que se carguen?'), 'Descuento Cliente', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
        begin
          descuentoCliente:= ZQ_ClienteDESCUENTO_ESPECIAL.AsFloat;
        end;

    cargarTipoComprobante(tipoComprobante); //acomodo la pantalla de edicion segun el tipo de comprobante que es
    configFormaPago(tipoComprobante, true); //acomodo la grilla de forma de pago segun el tipo de comprobante que es
    configDetalleProducto(tipoComprobante); //acomodo la grilla de los productos segun el tipo de comprobante que es
    lblTipoComprobante.Caption:= lblTipoComprobante.Caption + ' - MODIFICAR';
    confirmarCpb(tipoComprobante);

    ZQ_Comprobante.Edit;

    EKDBDateEmision.SetFocus;
  end;
end;


procedure TFABM_Comprobantes.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
//  if (ZQ_TipoFPago.IsEmpty) OR (ZQ_TipoFPagoBAJA.AsString <> 'N') then
//    exit;
//
//  if (application.MessageBox(pchar('¿Desea dar de baja el "Tipo Medio Pago" seleccionado?'), 'ABM Tipo Medio Pago', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
//  begin
//    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoFPago]) then
//    begin
//      ZQ_TipoFPago.Edit;
//      ZQ_TipoFPagoBAJA.AsString:='S';
//    end
//    else
//      exit;
//
//    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
//      dm.EKModelo.cancelar_transaccion(transaccion_ABM);
//
//    recNo:= ZQ_TipoFPago.RecNo;
//    ZQ_TipoFPago.Refresh;
//    ZQ_TipoFPago.RecNo:= recNo;
//  end;
end;


procedure TFABM_Comprobantes.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
//  if (ZQ_TipoFPago.IsEmpty) OR (ZQ_TipoFPagoBAJA.AsString <> 'S') then
//    exit;
//
//  if (application.MessageBox(pchar('¿Desea reactivar el "Tipo Medio Pago" seleccionado?'), 'ABM Tipo Medio Pago', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
//  begin
//    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoFPago]) then
//    begin
//      ZQ_TipoFPago.Edit;
//      ZQ_TipoFPagoBAJA.AsString:='N';
//    end
//    else
//      exit;
//
//    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
//      dm.EKModelo.cancelar_transaccion(transaccion_ABM);
//
//    recNo:= ZQ_TipoFPago.RecNo;
//    ZQ_TipoFPago.Refresh;
//    ZQ_TipoFPago.RecNo:= recNo;
//  end;
end;


procedure TFABM_Comprobantes.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
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
      ZQ_CpbFormaPagoIMPORTE_REAL.AsFloat:= ZQ_CpbFormaPagoIMPORTE.AsFloat; //pongo el mismo importe cargado al importe_real
      ZQ_CpbFormaPagoFECHA_FP.AsDateTime:= ZQ_ComprobanteFECHA.AsDateTime; //y le pongo la fecha de fp igual a la del comprobante

      ZQ_CpbFormaPago.Next;
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

  ZQ_ComprobanteIMPORTE_TOTAL.AsFloat:= 0;
  ZQ_ComprobanteIMPORTE_VENTA.AsFloat:= 0;
  if (tipoComprobante = CPB_PRESUPUESTO) then //si es un presupuesto
  begin
    EKSuma_Productos.RecalcAll; //el importe del comprobante es igual a la suma del importe de los productos
    ZQ_ComprobanteIMPORTE_TOTAL.AsFloat:= EKSuma_Productos.SumCollection[1].SumValue;
    ZQ_ComprobanteIMPORTE_VENTA.AsFloat:= ZQ_ComprobanteIMPORTE_TOTAL.AsFloat;
  end
  else
    if (tipoComprobante = CPB_ORDEN_PAGO) or  (tipoComprobante = CPB_RECIBO_COBRO) then
    begin
      EKSuma_FPago.RecalcAll; //si es un recibo o una orden de pago el importe del comprobante es igual a la
      ZQ_ComprobanteIMPORTE_TOTAL.AsFloat:= EKSuma_FPago.SumCollection[0].SumValue; //suma de las formas de pago
      ZQ_ComprobanteIMPORTE_VENTA.AsFloat:= ZQ_ComprobanteIMPORTE_TOTAL.AsFloat;
    end;

  if confirmarComprobante then
    ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_CONFIRMADO
  else
      ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_SIN_CONFIRMAR;

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
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFABM_Comprobantes.btnCancelarClick(Sender: TObject);
begin
  if (application.MessageBox(pchar('¿Seguro que desea cancelar? Se perderan los cambios realizados.'), 'ATENCION - ABM Comprobantes', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
    begin
      modoEdicion(false);
      DBGridListaCpb.SetFocus;
    end;
end;


procedure TFABM_Comprobantes.btnImprimirClick(Sender: TObject);
begin
  if ZQ_VerCpb.IsEmpty then
    exit;

  if not Assigned(FImpresion_Comprobantes) then
    FImpresion_Comprobantes := TFImpresion_Comprobantes.Create(nil);
  FImpresion_Comprobantes.cargarDatos(ZQ_VerCpbID_COMPROBANTE.AsInteger, ZQ_VerCpbID_CLIENTE.AsInteger, ZQ_VerCpbID_PROVEEDOR.AsInteger, false);
  FImpresion_Comprobantes.imprimir;
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFABM_Comprobantes.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFABM_Comprobantes.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABM_Comprobantes.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_Comprobantes.AConfirmarExecute(Sender: TObject);
begin
  if btnConfirmar.Enabled then
    btnConfirmar.Click;
end;

procedure TFABM_Comprobantes.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_Comprobantes.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFABM_Comprobantes.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_Comprobantes.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFABM_Comprobantes.configVisualizacion(); //configuro la pantalla de visualizacion segun el tipo de comprobante
begin
  if (ZQ_VerCpbID_TIPO_CPB.AsInteger = CPB_PRESUPUESTO)
    or (ZQ_VerCpbID_TIPO_CPB.AsInteger = CPB_NOTA_PEDIDO)
    or (ZQ_VerCpbID_TIPO_CPB.AsInteger = CPB_REMITO_VENTA) then
  begin
    ZQ_VerCpb_Producto.Close;
    ZQ_VerCpb_Producto.ParamByName('id_comprobante').AsInteger:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
    ZQ_VerCpb_Producto.Open;

    if agrandarPanelProducto = false then
    begin
      agrandarPanelProducto:= true;
      agrandarPanelFPago:= false;
      mostrarPanelCompleto(PanelCpbActual_FPago, false);
      mostrarPanelCompleto(PanelCpbActual_Producto, true);
    end
  end
  else
  begin
    ZQ_VerCpb_Fpago.Close;
    ZQ_VerCpb_Fpago.ParamByName('id_comprobante').AsInteger:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
    ZQ_VerCpb_Fpago.Open;
    configFormaPago(ZQ_VerCpbID_TIPO_CPB.AsInteger, false);

    if agrandarPanelFPago = false then
    begin
      agrandarPanelFPago:= true;
      agrandarPanelProducto:= False;
      mostrarPanelCompleto(PanelCpbActual_Producto, false);
      mostrarPanelCompleto(PanelCpbActual_FPago, true);
    end
  end;
end;


//------------------------------------------------------------------------------
//      VISUALIZACION  DE COMPROBANTES
//------------------------------------------------------------------------------
procedure TFABM_Comprobantes.ZQ_VerCpbAfterScroll(DataSet: TDataSet);
begin
  ZQ_VerCpb_Fpago.Close;
  ZQ_VerCpb_Producto.Close;

  if ZQ_VerCpb.IsEmpty then
    exit;

  configVisualizacion;

  if ZQ_VerCpbID_TIPO_CPB.AsInteger = CPB_NOTA_PEDIDO then
  begin
    btnConfirmar.Visible:=  ivAlways;
    lblVerFecha_Cpb_Dev.Caption:= 'F. Confirm.:';
  end
  else
  begin
    btnConfirmar.Visible:=  ivNever;
    lblVerFecha_Cpb_Dev.Caption:= 'F. Impreso:';
  end
end;


//PINTAR GRILLAS VISUALIZACION
procedure TFABM_Comprobantes.ssDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if ZQ_VerCpb_Fpago.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillas(DBGridCpbActual_FPago, Rect, DataCol, Column, State);
end;


procedure TFABM_Comprobantes.sDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if ZQ_VerCpb_Producto.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillas(DBGridCpbActual_Producto, Rect, DataCol, Column, State);
end;


procedure TFABM_Comprobantes.btnBuscarEmpresaClick(Sender: TObject);
var
  sql: string;
begin
  if confirmarComprobante then
    exit;

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

      descuentoCliente:= 0;

      if ZQ_Comprobante.State = dsBrowse then
        ZQ_Comprobante.Edit;
      ZQ_ComprobanteID_CLIENTE.Clear;
      ZQ_ComprobanteID_PROVEEDOR.AsInteger:= ZQ_ProveedorID_EMPRESA.AsInteger;
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


procedure TFABM_Comprobantes.onSelPersona;
begin
  if (not (vselPersona.ZQ_Personas.IsEmpty)) then //si se selecciona un cliente
  begin
    btnBuscarPersona.Down:= true;
    ZQ_Proveedor.Close;
    PanelEditar_DatosGralCliente.BringToFront;

    ZQ_Cliente.Close;
    ZQ_Cliente.ParamByName('id_persona').AsInteger:= vselPersona.ZQ_PersonasID_PERSONA.AsInteger;
    ZQ_Cliente.Open;

    descuentoCliente:= 0;
    if tipoComprobante = CPB_PRESUPUESTO then //si es un presupuesto pregunto si deseo aplicar el descuento especial del cliente
      if (not ZQ_ClienteDESCUENTO_ESPECIAL.IsNull) or (ZQ_ClienteDESCUENTO_ESPECIAL.AsFloat <> 0) then
        if (application.MessageBox(pchar('El cliente seleccionado posee un descuento especial del '+FloatToStr(ZQ_ClienteDESCUENTO_ESPECIAL.AsFloat*100)+'%.'+
            #13+'Desea aplicar este descuento para todos los productos que se carguen?'), 'Descuento Cliente', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
        begin
          descuentoCliente:= ZQ_ClienteDESCUENTO_ESPECIAL.AsFloat;
        end;

    if ZQ_Comprobante.State = dsBrowse then
      ZQ_Comprobante.Edit;
    ZQ_ComprobanteID_PROVEEDOR.Clear;
    ZQ_ComprobanteID_CLIENTE.AsInteger:= ZQ_ClienteID_PERSONA.AsInteger;
  end
  else
    if not ZQ_ComprobanteID_PROVEEDOR.IsNull then
      btnBuscarEmpresa.Down:= true;

  EKDBDateEmision.SetFocus;
  
  vselPersona.Close;
end;


procedure TFABM_Comprobantes.btnBuscarPersonaClick(Sender: TObject);
begin
  if confirmarComprobante then  //si estoy confirmando un comprobante salgo
    exit;

  if not Assigned(vselPersona) then
    vselPersona:= TFBuscarPersona.Create(nil);
  vselPersona.btnBuscar.Click;
  vselPersona.OnSeleccionar := onSelPersona;
  vselPersona.ShowModal;
end;


//----------------------
//    FORMA DE PAGO
//----------------------
procedure TFABM_Comprobantes.DBGridEditar_FpagoColExit(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then //SI ESTOY DANDO DE ALTA O EDITANDO
  begin
      //PARA LOS RECIBOS - CUENTA INGRESO
      if (((sender as tdbgrid).SelectedField.FullName = '_CuentaIngreso_Codigo') or
          ((sender as tdbgrid).SelectedField.FullName = '_CuentaIngreso_Nombre')) then
      begin
        if (not ZQ_CpbFormaPagoCUENTA_INGRESO.IsNull) or (tipoComprobante <> CPB_RECIBO_COBRO) then
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

      //ORDEN DE PAGO - CUENTA DE EGRESO
      if (((sender as tdbgrid).SelectedField.FullName = '_CuentaEgreso_Codigo') or
          ((sender as tdbgrid).SelectedField.FullName = '_CuentaEgreso_Nombre')) then
      begin
        if (not ZQ_CpbFormaPagoCUENTA_EGRESO.IsNull)  or (tipoComprobante <> CPB_ORDEN_PAGO) then
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

            ZQ_CpbFormaPagoCUENTA_EGRESO.AsInteger:= ZQ_ListadoCuentaID_CUENTA.AsInteger;
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


procedure TFABM_Comprobantes.DBGridEditar_FpagoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
  begin
    if key = 112 then
    begin
      //PARA LOS RECIBOS - CUENTA INGRESO
      if (((sender as tdbgrid).SelectedField.FullName = '_CuentaIngreso_Codigo') or
          ((sender as tdbgrid).SelectedField.FullName = '_CuentaIngreso_Nombre')) then
      begin
        if (tipoComprobante <> CPB_RECIBO_COBRO) then
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

      //ORDEN DE PAGO - CUENTA DE EGRESO
      if (((sender as tdbgrid).SelectedField.FullName = '_CuentaEgreso_Codigo') or
          ((sender as tdbgrid).SelectedField.FullName = '_CuentaEgreso_Nombre')) then
      begin
        if (tipoComprobante <> CPB_ORDEN_PAGO) then
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

            ZQ_CpbFormaPagoCUENTA_EGRESO.AsInteger:= ZQ_ListadoCuentaID_CUENTA.AsInteger;
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


procedure TFABM_Comprobantes.btnEliminarFPagoClick(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
  begin
    if not ZQ_CpbFormaPago.IsEmpty then
      ZQ_CpbFormaPago.Delete;

    DBGridEditar_Fpago.SetFocus;
    
    EKSuma_FPago.RecalcAll;
  end;
end;


procedure TFABM_Comprobantes.DBGridEditar_FpagoKeyPress(Sender: TObject; var Key: Char);
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


procedure TFABM_Comprobantes.EKSuma_FPagoSumListChanged(Sender: TObject);
begin
  lblTotalFormaPago.Caption := 'Total Forma de Pago: ' + FormatFloat('$ ###,###,###,##0.00', EKSuma_FPago.SumCollection[0].SumValue);
end;


//----------------------
//    DETALLE PRODUCTO
//----------------------
procedure TFABM_Comprobantes.cargarProductosClienDataset();
begin
  if ZQ_VerCpb_Producto.IsEmpty then
    exit;

  ZQ_VerCpb_Producto.First;
  while not ZQ_VerCpb_Producto.Eof do
  begin
    CD_Producto.Append;
    CD_Producto_idProducto.AsInteger := ZQ_VerCpb_ProductoID_PRODUCTO.AsInteger;
    CD_Producto_producto.AsString := ZQ_VerCpb_ProductoPRODUCTO.AsString;
    CD_Producto_medida.AsString := ZQ_VerCpb_ProductoMEDIDA.AsString;
    CD_Producto_color.AsString := ZQ_VerCpb_ProductoCOLOR.AsString;
    CD_Producto_marca.AsString := ZQ_VerCpb_ProductoMARCA.AsString;
    CD_Producto_tipoArticulo.AsString := ZQ_VerCpb_ProductoTIPO_ARTICULO.AsString;
    CD_Producto_articulo.AsString := ZQ_VerCpb_ProductoARTICULO.AsString;
    CD_Producto_codigoBarra.AsString := ZQ_VerCpb_ProductoCODIGO_BARRA.AsString;
    CD_Producto_codCabecera.AsString := ZQ_VerCpb_ProductoCOD_CABECERA.AsString;
    CD_Producto_codProducto.AsString := ZQ_VerCpb_ProductoCOD_PRODUCTO.AsString;
    CD_Producto_precioCosto.AsFloat := ZQ_VerCpb_ProductoPRECIO_COSTO.AsFloat;
    CD_Producto_precioVenta.AsFloat := ZQ_VerCpb_ProductoPRECIO_VENTA.AsFloat;
    CD_Producto_coefGanancia.AsFloat := ZQ_VerCpb_ProductoCOEF_GANANCIA.AsFloat;
    CD_Producto_coefDescuento.AsFloat := ZQ_VerCpb_ProductoCOEF_DESCUENTO.AsFloat;
    CD_Producto_impuestoIVA.AsFloat := ZQ_VerCpb_ProductoIMPUESTO_IVA.AsFloat;

    ZQ_VerCpb_Producto.Next;
  end;
end;

procedure TFABM_Comprobantes.onSelProducto;
begin
  if not vselProducto.ZQ_Producto.IsEmpty then
  begin
    CD_Producto.Append;
    CD_Producto_idProducto.AsInteger := vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
    CD_Producto_producto.AsString := vselProducto.ZQ_ProductoNOMBRE.AsString;
    CD_Producto_medida.AsString := vselProducto.ZQ_ProductoMEDIDA.AsString;
    CD_Producto_color.AsString := vselProducto.ZQ_ProductoCOLOR.AsString;
    CD_Producto_marca.AsString := vselProducto.ZQ_ProductoNOMBRE_MARCA.AsString;
    CD_Producto_tipoArticulo.AsString := vselProducto.ZQ_ProductoTIPO_ARTICULO.AsString;
    CD_Producto_articulo.AsString := vselProducto.ZQ_ProductoNOMBRE_ARTICULO.AsString;
    CD_Producto_codigoBarra.AsString := vselProducto.ZQ_ProductoCODIGO_BARRA.AsString;
    CD_Producto_codCabecera.AsString := vselProducto.ZQ_ProductoCOD_CORTO.AsString;
    CD_Producto_codProducto.AsString := vselProducto.ZQ_ProductoCOD_CORTO_1.AsString;
    CD_Producto_precioCosto.AsFloat := vselProducto.ZQ_ProductoPRECIO_COSTO.AsFloat;
    CD_Producto_precioVenta.AsFloat := vselProducto.ZQ_ProductoPRECIO_VENTA.AsFloat;
    CD_Producto_coefGanancia.AsFloat := vselProducto.ZQ_ProductoCOEF_GANANCIA.AsFloat;
    CD_Producto_coefDescuento.AsFloat := vselProducto.ZQ_ProductoCOEF_DESCUENTO.AsFloat;
    CD_Producto_impuestoIVA.AsFloat := vselProducto.ZQ_ProductoIMPUESTO_IVA.AsFloat;

    ZQ_CpbProducto.Append;
    ZQ_CpbProductoID_COMPROBANTE.AsInteger:= id_comprobante;
    ZQ_CpbProductoID_PRODUCTO.AsInteger:= vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
    ZQ_CpbProductoIMPORTE_UNITARIO.AsFloat:= vselProducto.ZQ_ProductoPRECIO_VENTA.AsFloat;
    ZQ_CpbProductoPORC_IVA.AsFloat:= vselProducto.ZQ_ProductoIMPUESTO_IVA.AsFloat;
    ZQ_CpbProductoPORC_DESCUENTO.AsFloat:= descuentoCliente;
    ZQ_CpbProductoCANTIDAD.AsFloat:= 0;
    ZQ_CpbProductoCANTIDAD_ALMACENADA.AsFloat:= 0;

    cargarImagen(vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger);
  end;

  vselProducto.Close;
end;


procedure TFABM_Comprobantes.onSelTodosProducto;
begin
  vselProducto.ZQ_Producto.First;
  while not vselProducto.ZQ_Producto.Eof do
  begin
    CD_Producto.Append;
    CD_Producto_idProducto.AsInteger := vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
    CD_Producto_producto.AsString := vselProducto.ZQ_ProductoNOMBRE.AsString;
    CD_Producto_medida.AsString := vselProducto.ZQ_ProductoMEDIDA.AsString;
    CD_Producto_color.AsString := vselProducto.ZQ_ProductoCOLOR.AsString;
    CD_Producto_marca.AsString := vselProducto.ZQ_ProductoNOMBRE_MARCA.AsString;
    CD_Producto_tipoArticulo.AsString := vselProducto.ZQ_ProductoTIPO_ARTICULO.AsString;
    CD_Producto_articulo.AsString := vselProducto.ZQ_ProductoNOMBRE_ARTICULO.AsString;
    CD_Producto_codigoBarra.AsString := vselProducto.ZQ_ProductoCODIGO_BARRA.AsString;
    CD_Producto_codCabecera.AsString := vselProducto.ZQ_ProductoCOD_CORTO.AsString;
    CD_Producto_codProducto.AsString := vselProducto.ZQ_ProductoCOD_CORTO_1.AsString;
    CD_Producto_precioCosto.AsFloat := vselProducto.ZQ_ProductoPRECIO_COSTO.AsFloat;
    CD_Producto_precioVenta.AsFloat := vselProducto.ZQ_ProductoPRECIO_VENTA.AsFloat;
    CD_Producto_coefGanancia.AsFloat := vselProducto.ZQ_ProductoCOEF_GANANCIA.AsFloat;
    CD_Producto_coefDescuento.AsFloat := vselProducto.ZQ_ProductoCOEF_DESCUENTO.AsFloat;
    CD_Producto_impuestoIVA.AsFloat := vselProducto.ZQ_ProductoIMPUESTO_IVA.AsFloat;

    ZQ_CpbProducto.Append;
    ZQ_CpbProductoID_COMPROBANTE.AsInteger:= id_comprobante;
    ZQ_CpbProductoID_PRODUCTO.AsInteger:= vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
    ZQ_CpbProductoIMPORTE_UNITARIO.AsFloat:= vselProducto.ZQ_ProductoPRECIO_VENTA.AsFloat;
    ZQ_CpbProductoPORC_IVA.AsFloat:= vselProducto.ZQ_ProductoIMPUESTO_IVA.AsFloat;
    ZQ_CpbProductoPORC_DESCUENTO.AsFloat:= descuentoCliente;
    ZQ_CpbProductoCANTIDAD.AsFloat:= 0;
    ZQ_CpbProductoCANTIDAD_ALMACENADA.AsFloat:= 0;

    cargarImagen(vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger);

    vselProducto.ZQ_Producto.Next;
  end;

  vselProducto.Close;
end;


procedure TFABM_Comprobantes.PopItemProducto_AgregarClick(Sender: TObject);
begin
  agregarProducto;
end;


procedure TFABM_Comprobantes.agregarProducto();
begin
  if not Assigned(vselProducto) then
    vselProducto:= TFBuscarProducto.Create(nil);

  //if not ZQ_ComprobanteID_PROVEEDOR.IsNull then
  //  vselProducto.filtrarEmpresa(ZQ_ComprobanteID_PROVEEDOR.AsInteger);

  vselProducto.OnSeleccionar := onSelProducto;
  vselProducto.OnSeleccionarTodos := onSelTodosProducto;
  vselProducto.btnSeleccionarTodos.Visible:= ivAlways;
  vselProducto.SeleccionarYSalir:= false;
  vselProducto.ShowModal;
end;


procedure TFABM_Comprobantes.PopItemProducto_QuitarClick(Sender: TObject);
begin
  if not ZQ_CpbProducto.IsEmpty then
    ZQ_CpbProducto.Delete;
end;


procedure TFABM_Comprobantes.btnEliminarProductoClick(Sender: TObject);
begin
  if confirmarComprobante and (ZQ_CpbProductoCANTIDAD.AsFloat <> 0) then
    exit;

  if not ZQ_CpbProducto.IsEmpty then
    ZQ_CpbProducto.Delete;
end;


procedure TFABM_Comprobantes.DBGridEditar_ProductoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
  begin
    if key = 112 then
      agregarProducto;
  end;
end;


procedure TFABM_Comprobantes.cargarImagen(id_prducto: integer);
begin
  ZQ_Imagen.Close;
  ZQ_Imagen.ParamByName('id_producto').AsInteger:= id_prducto;
  ZQ_Imagen.Open;
end;


procedure TFABM_Comprobantes.ZQ_CpbProductoAfterScroll(DataSet: TDataSet);
begin
  ZQ_Imagen.Close;

  if ZQ_CpbProducto.IsEmpty then
    exit;

  cargarImagen(ZQ_CpbProductoID_PRODUCTO.AsInteger);
end;

//procedimiento para calcular automaticamente el importe final y la base imponible
//para los comprobantes de tipo PRESUPUESTO 
procedure TFABM_Comprobantes.calcularImporteProducto(Sender: TField);
var
  cantidad,
  precio_unitario,
  coef_descuento,
  iva,
  impuesto_interno: double;
  imponible: double;
  final: double;
begin
  if tipoComprobante <> CPB_PRESUPUESTO then
  begin
    exit;
  end;

  cantidad:= 0;
  precio_unitario:= 0;
  coef_descuento:= 0;
  iva:= 0;
  impuesto_interno:= 0;

  if not ZQ_CpbProductoCANTIDAD.IsNull then
    cantidad:= ZQ_CpbProductoCANTIDAD.AsFloat;

  if not ZQ_CpbProductoIMPORTE_UNITARIO.IsNull then
    precio_unitario:= ZQ_CpbProductoIMPORTE_UNITARIO.AsFloat;

  if not ZQ_CpbProductoPORC_DESCUENTO.IsNull then
    coef_descuento:= ZQ_CpbProductoPORC_DESCUENTO.AsFloat;

  if not ZQ_CpbProductoPORC_IVA.IsNull then
    iva:= ZQ_CpbProductoPORC_IVA.AsFloat;

  imponible:= cantidad * precio_unitario;
  final:= imponible - (imponible * coef_descuento);

  ZQ_CpbProductoBASE_IMPONIBLE.AsFloat:= imponible;
  ZQ_CpbProductoIMPORTE_FINAL.AsFloat:= final;
end;


procedure TFABM_Comprobantes.mostrarPanelCompleto(panel: Tpanel; valor: boolean);
begin
  PanelCpbActual_Producto.Visible:= False;
  PanelCpbActual_FPago.Visible:= False;

  if valor then //AGRANDAR
  begin
    alignAnterior:= panel.Align;
    panel.Align:= alClient;
    panel.Visible:= true;

//    if PopUpItem_FPagoAgrandar.ImageIndex = 14 then
//    begin
//      PopUpItem_FPagoAgrandar.Caption:= 'Reducir';
//      PopUpItem_FPagoAgrandar.ImageIndex:= 15;
//    end;
//
//    if PopUpItem_ProductoAgrandar.ImageIndex = 14 then
//    begin
//      PopUpItem_ProductoAgrandar.Caption:= 'Reducir';
//      PopUpItem_ProductoAgrandar.ImageIndex:= 15;
//    end;
  end
  else
  begin //REDUCIR
    panel.Align:= alignAnterior;
    PanelCpbActual_FPago.Visible:= true;
    PanelCpbActual_FPago.Height:= 100;
    PanelCpbActual_Producto.Visible:= true;

//    if PopUpItem_FPagoAgrandar.ImageIndex = 15 then
//    begin
//      PopUpItem_FPagoAgrandar.Caption:= 'Agrandar';
//      PopUpItem_FPagoAgrandar.ImageIndex:= 14;
//    end;
//
//    if PopUpItem_ProductoAgrandar.ImageIndex = 15 then
//    begin
//      PopUpItem_ProductoAgrandar.Caption:= 'Agrandar';
//      PopUpItem_ProductoAgrandar.ImageIndex:= 14;
//    end;
  end
end;


procedure TFABM_Comprobantes.PopUpItem_FPagoAgrandarClick(Sender: TObject);
begin
  if agrandarPanelFPago = false then
  begin
    agrandarPanelFPago:= true;
    mostrarPanelCompleto(PanelCpbActual_FPago, true);
    PopUpItem_FPagoAgrandar.Caption:= 'Reducir';
    PopUpItem_FPagoAgrandar.ImageIndex:= 15;
  end
  else
  begin
    agrandarPanelFPago:= false;
    mostrarPanelCompleto(PanelCpbActual_FPago, false);
    PopUpItem_FPagoAgrandar.Caption:= 'Agrandar';
    PopUpItem_FPagoAgrandar.ImageIndex:= 14;
  end
end;


procedure TFABM_Comprobantes.PopUpItem_ProductoAgrandarClick(Sender: TObject);
begin
  if agrandarPanelProducto = false then
  begin
    agrandarPanelProducto:= true;
    mostrarPanelCompleto(PanelCpbActual_Producto, true);
//    PopUpItem_ProductoAgrandar.Caption:= 'Reducir';
//    PopUpItem_ProductoAgrandar.ImageIndex:= 15;
  end
  else
  begin
    agrandarPanelProducto:= false;
    mostrarPanelCompleto(PanelCpbActual_Producto, false);
//    PopUpItem_ProductoAgrandar.Caption:= 'Agrandar';
//    PopUpItem_ProductoAgrandar.ImageIndex:= 14;
  end
end;


procedure TFABM_Comprobantes.PopUpItem_ProductoOcultarDetalleClick(Sender: TObject);
begin
  if PanelCpbActual_ProductoDetalle.Visible then
    PopUpItem_ProductoOcultarDetalle.Caption:= 'Ver Detalle'
  else
    PopUpItem_ProductoOcultarDetalle.Caption:= 'Ocultar Detalle';

  PanelCpbActual_ProductoDetalle.Visible:= not PanelCpbActual_ProductoDetalle.Visible;
end;


procedure TFABM_Comprobantes.AplicarFiltro(Sender: TObject);
begin
  if TSpeedButton (Sender).Name = 'BtnFiltro_Todos' then
  begin
    ZQ_VerCpb.Filter:= '';
    ZQ_VerCpb.Filtered:= false;
  end;

  if TSpeedButton (Sender).Name = 'BtnFiltro_Presupuesto' then
  begin
    ZQ_VerCpb.Filter:= Format('ID_TIPO_CPB = %d', [CPB_PRESUPUESTO]);
    ZQ_VerCpb.Filtered:= true;
    btnConfirmar.Visible:=  ivNever;
  end;

  if TSpeedButton (Sender).Name = 'BtnFiltro_OrdenPago' then
  begin
    ZQ_VerCpb.Filter:= Format('ID_TIPO_CPB = %d', [CPB_ORDEN_PAGO]);
    ZQ_VerCpb.Filtered:= true;
    btnConfirmar.Visible:=  ivNever;
  end;

  if TSpeedButton (Sender).Name = 'BtnFiltro_Remito' then
  begin
    ZQ_VerCpb.Filter:= Format('ID_TIPO_CPB = %d', [CPB_REMITO_VENTA]);
    ZQ_VerCpb.Filtered:= true;
    btnConfirmar.Visible:=  ivNever;
  end;

  if TSpeedButton (Sender).Name = 'BtnFiltro_Recibo' then
  begin
    ZQ_VerCpb.Filter:= Format('ID_TIPO_CPB = %d', [CPB_RECIBO_COBRO]);
    ZQ_VerCpb.Filtered:= true;
    btnConfirmar.Visible:=  ivNever;
  end;

  if TSpeedButton (Sender).Name = 'BtnFiltro_NotaPedido' then
  begin
    ZQ_VerCpb.Filter:= Format('ID_TIPO_CPB = %d', [CPB_NOTA_PEDIDO]);
    ZQ_VerCpb.Filtered:= true;
    btnConfirmar.Visible:=  ivAlways;
  end;

  ZQ_VerCpb.Refresh;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFABM_Comprobantes.btnEnviarMailClick(Sender: TObject);
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


procedure TFABM_Comprobantes.btnConfirmarClick(Sender: TObject);
var
  estado: Integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or ((estado = ESTADO_CONFIRMADO) or (estado = ESTADO_ALMACENADO))) then
    exit;

  confirmarComprobante:= true;
  id_comprobante:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
  tipoComprobante:= ZQ_VerCpbID_TIPO_CPB.AsInteger;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante, ZQ_CpbFormaPago, ZQ_CpbProducto]) then
  begin
    PanelTipoCpb.Visible:= false;
    modoEdicion(true);

    if not CD_Producto.IsEmpty then
      CD_Producto.EmptyDataSet;
    cargarProductosClienDataset();

    ZQ_Comprobante.Close;
    ZQ_Comprobante.ParamByName('id_comprobante').AsInteger:= id_comprobante;
    ZQ_Comprobante.Open;

    ZQ_CpbFormaPago.Close;
    ZQ_CpbFormaPago.ParamByName('id_comprobante').AsInteger:= id_comprobante;
    ZQ_CpbFormaPago.Open;

    ZQ_CpbProducto.Close;
    ZQ_CpbProducto.ParamByName('id_comprobante').AsInteger:= id_comprobante;
    ZQ_CpbProducto.Open;

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

    cargarTipoComprobante(tipoComprobante); //acomodo la pantalla de edicion segun el tipo de comprobante que es
    configFormaPago(tipoComprobante, true); //acomodo la grilla de forma de pago segun el tipo de comprobante que es
    configDetalleProducto(tipoComprobante); //acomodo la grilla de los productos segun el tipo de comprobante que es
    lblTipoComprobante.Caption:= lblTipoComprobante.Caption + ' - CONFIRMAR';
    confirmarCpb(tipoComprobante);

    ZQ_Comprobante.Edit;
    ZQ_ComprobanteFECHA_IMPRESA.AsDateTime:= dm.EKModelo.FechayHora;

    EKDBDateImpreso.SetFocus;
  end;
end;


procedure TFABM_Comprobantes.confirmarCpb(tipo: integer);
begin
  case tipo of
    CPB_NOTA_PEDIDO:  begin //CPB_NOTA_PEDIDO; COMPROBANTE_DETALLE
                        if confirmarComprobante then
                        begin
                          PanelFechaEmision.Enabled:= false;
                          PanelFechaEnviado.Enabled:= false;
                          DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'CANTIDAD')].ReadOnly:= true;
                        end
                        else
                        begin
                          PanelFechaEmision.Enabled:= true;
                          PanelFechaEnviado.Enabled:= true;
                          DBGridEditar_Producto.Columns[getColumnIndex(DBGridEditar_Producto, 'CANTIDAD')].ReadOnly:= false;
                        end;
                      end;
  end;
end;


procedure TFABM_Comprobantes.ZQ_CpbProductoCANTIDAD_RECIBIDAChange(Sender: TField);
begin
//  ZQ_CpbProductoCANTIDAD_ALMACENADA.AsFloat:= ZQ_CpbProductoCANTIDAD_RECIBIDA.AsFloat;
end;


procedure TFABM_Comprobantes.DBGridListaCpbDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DBGridListaCpb.Canvas.Font.Color := clBlack;

  if (ZQ_VerCpbID_COMP_ESTADO.AsInteger = ESTADO_CONFIRMADO) or (ZQ_VerCpbID_COMP_ESTADO.AsInteger = ESTADO_ALMACENADO) then //si el registro esta dado de baja
  begin
    DBGridListaCpb.Canvas.Brush.Color:= $0098F8F3;

    if (THackDBGrid(DBGridListaCpb).DataLink.ActiveRecord + 1 = THackDBGrid(DBGridListaCpb).Row) then
    begin
      DBGridListaCpb.Canvas.Brush.Color := $0062FFFF;
//      DBGridListaCpb.Canvas.Font.Style := DBGridListaCpb.Canvas.Font.Style + [fsBold];
    end;

    if (gdFocused in State) or (gdSelected in State) then
      DBGridListaCpb.Canvas.Font.Style := DBGridListaCpb.Canvas.Font.Style + [fsBold];
  end
  else  //si el registro es comun
  begin
    DBGridListaCpb.Canvas.Brush.Color:= $00DEDEBC;

    if (THackDBGrid(DBGridListaCpb).DataLink.ActiveRecord + 1 = THackDBGrid(DBGridListaCpb).Row) then
    begin
      DBGridListaCpb.Canvas.Brush.Color := $00E8C08C;
//      DBGridListaCpb.Canvas.Font.Style := DBGridListaCpb.Canvas.Font.Style + [fsBold];
    end;

    if (gdFocused in State) or (gdSelected in State) then
      DBGridListaCpb.Canvas.Font.Style := DBGridListaCpb.Canvas.Font.Style + [fsBold];
  end;

  DBGridListaCpb.DefaultDrawColumnCell(rect,datacol,column,state);
end;


//Para renombrar el procedimiento Ctrl+Del que viene por defecto en las grillas
procedure TFABM_Comprobantes.DBGridEditar_ProductoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  columna: string;
begin
  columna:= (sender as tdbgrid).SelectedField.FullName;

  if (Key = 13) or (key = 9) then  { if it's an enter key }
  begin
    Key := 0; {ignore}
    if (columna = 'IMPORTE_FINAL') and (tipoComprobante = CPB_PRESUPUESTO) then
    begin
      DBGridEditar_Producto.SelectedIndex:= 0;//getColumnIndex(DBGridEditar_Producto, '_CodBarra');
      ZQ_CpbProducto.Append;
    end;

    if (columna = 'CANTIDAD') and (tipoComprobante = CPB_NOTA_PEDIDO) and (not confirmarComprobante) then
    begin
      DBGridEditar_Producto.SelectedIndex:= 0;
      ZQ_CpbProducto.Append;
    end;

    if (columna = 'CANTIDAD_RECIBIDA') and (tipoComprobante = CPB_NOTA_PEDIDO)  and (confirmarComprobante) then
    begin
      DBGridEditar_Producto.SelectedIndex:= 0;
      ZQ_CpbProducto.Append;
    end;

    if (columna = 'CANTIDAD') and (tipoComprobante = CPB_REMITO_VENTA) then
    begin
      DBGridEditar_Producto.SelectedIndex:= 0;
      ZQ_CpbProducto.Append;
    end;
  end;

  if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
  begin
    Key := 0; {ignore}
    btnEliminarProducto.Click;
  end
end;


procedure TFABM_Comprobantes.EKSuma_ProductosSumListChanged(Sender: TObject);
var
  cantidad, precio: string;
begin
  cantidad := 'Cantidad Productos: ' + FormatFloat('###,###,###,##0.00', EKSuma_Productos.SumCollection[0].SumValue);
  precio := 'Importe Total: ' + FormatFloat('$ ###,###,###,##0.00', EKSuma_Productos.SumCollection[1].SumValue);

  lblCantidadProductos.Caption:= cantidad+' - '+precio;
end;


procedure TFABM_Comprobantes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrd_VerCpb.GuardarConfigColumnas;
  EKOrd_VerCpb_Fpago.GuardarConfigColumnas;
  EKOrd_VerCpb_Producto.GuardarConfigColumnas;
  EKOrd_EditarProducto.GuardarConfigColumnas;
  EKOrd_EditarFpago.GuardarConfigColumnas;  
end;

procedure TFABM_Comprobantes.DBGridEditar_ProductoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (THackDBGrid(DBGridEditar_Producto).DataLink.ActiveRecord + 1 = THackDBGrid(DBGridEditar_Producto).Row) then
  begin
    DBGridEditar_Producto.Canvas.Font.Color := clWhite;
    DBGridEditar_Producto.Canvas.Brush.Color := clBlack;
    DBGridEditar_Producto.Canvas.Font.Style := DBGridEditar_Producto.Canvas.Font.Style + [fsBold];
  end;

  if (gdFocused in State) or (gdSelected in State) then
  begin
    DBGridEditar_Producto.Canvas.Brush.Color := clRed;
    DBGridEditar_Producto.Canvas.Font.Style := DBGridEditar_Producto.Canvas.Font.Style + [fsBold];
  end;

  DBGridEditar_Producto.DefaultDrawColumnCell(Rect, DataCol, Column, state);
end;

end.
