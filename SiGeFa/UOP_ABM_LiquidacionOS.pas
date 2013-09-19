unit UOP_ABM_LiquidacionOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  EKVistaPreviaQR, QRCtrls, QuickRpt, Buttons, ImgList, EKListadoSQL,
  ComCtrls, EKDBDateTimePicker, EKFiltrarColumna, ZStoredProcedure,
  EKDbSuma, DBClient, Menus, UOP_BuscarProductosOS, ZSqlUpdate, jpeg,
  ExtDlgs, ZSequence, UOP_BuscarFacturaOS, cxClasses;

type
  TFOP_ABM_LiquidacionOS = class(TForm)
    PanelFondo: TPanel;
    PanelVer: TPanel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnEnviarMail: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBaja: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimirListado: TdxBarLargeButton;
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
    AGuardar: TAction;
    ACancelar: TAction;
    PanelListaCpb: TPanel;
    PanelCpbActual: TPanel;
    Splitter1: TSplitter;
    PanelCpbActual_Facturas: TPanel;
    PanelCpbActual_Info: TPanel;
    ImageListEntidad: TImageList;
    ZQ_VerCpb: TZQuery;
    DS_VerCpb: TDataSource;
    DBGridListaCpb: TDBGrid;
    DBGridFacturas: TDBGrid;
    EKOrd_VerCpb: TEKOrdenarGrilla;
    GroupBoxCpbActual_Info: TGroupBox;
    Label24: TLabel;
    DBTxtMonto: TDBText;
    DBMemoCpbActual_Info: TDBMemo;
    DBText1: TDBText;
    Label1: TLabel;
    lblTipoComprobante: TLabel;
    EKListadoEntidad: TEKListadoSQL;
    ZQ_ObraSocial: TZQuery;
    DS_ObraSocial: TDataSource;
    ZQ_BuscarMail: TZQuery;
    ZQ_BuscarMailEMAIL: TStringField;
    btnConfirmar: TdxBarLargeButton;
    DBTxtSaldo: TDBText;
    lblSaldo: TLabel;
    Label28: TLabel;
    DBText4: TDBText;
    Label31: TLabel;
    DBText5: TDBText;
    EKBuscar: TEKBusquedaAvanzada;
    RepListado: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepListado_Subtitulo: TQRLabel;
    RepListado_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand11: TQRBand;
    QRlblPieDePagina: TQRLabel;
    QRLabel43: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand12: TQRBand;
    QRExpr18: TQRExpr;
    TitleBand2: TQRBand;
    QRLabelCritBusqueda: TQRLabel;
    QRLabel48: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    EKVistaPrevia: TEKVistaPreviaQR;
    lblAnulado: TLabel;
    DBTxtFechaAnulado: TDBText;
    ZQ_ObraSocialID: TIntegerField;
    ZQ_ObraSocialID_OS: TIntegerField;
    ZQ_ObraSocialCODIGO: TStringField;
    ZQ_ObraSocialNOMBRE: TStringField;
    ZQ_ObraSocialDIRECCION: TStringField;
    ZQ_ObraSocialTELEFONO: TStringField;
    ZQ_ObraSocialDESCRIPCION: TStringField;
    ZQ_ObraSocialBAJA: TStringField;
    ZQ_ObraSocialCUIT_CUIL: TStringField;
    ZQ_ObraSocialLOCALIDAD: TStringField;
    ZQ_ObraSocialCODIGO_POSTAL: TStringField;
    ZQ_ObraSocialEMAIL: TStringField;
    ZQ_ObraSocialID_TIPO_IVA: TIntegerField;
    ZQ_ObraSocialNOMBRE_TIPO_IVA: TStringField;
    ZQ_ObraSocialCOD_IVA: TStringField;
    btnImprimirComprobante: TdxBarLargeButton;
    PanelEditar: TPanel;
    PanelDatosOSLiquidar: TPanel;
    btnBuscarOSLiquidar: TSpeedButton;
    PanelDatosOSLiquidacion: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBMemoDetalleLiq: TDBMemo;
    PanelFechaLiquidacion: TPanel;
    Label11: TLabel;
    Panel4: TPanel;
    Label27: TLabel;
    EKDBDateFechaLiq: TEKDBDateTimePicker;
    ALiquidar: TAction;
    Panel1: TPanel;
    Label13: TLabel;
    Panel2: TPanel;
    Label32: TLabel;
    Label33: TLabel;
    btnQuitarLiqFactura: TButton;
    editCantidadFacturas: TEdit;
    EditImporteFinal: TEdit;
    DBGridCargaFacturasLiq: TDBGrid;
    Popup_Factura: TPopupMenu;
    PopItemFactura_Agregar: TMenuItem;
    PopItemFactura_Quitar: TMenuItem;
    ZQ_Liquidacion: TZQuery;
    ZQ_LiquidacionID_OPTICA_LIQUIDACION: TIntegerField;
    ZQ_LiquidacionID_OS: TIntegerField;
    ZQ_LiquidacionFECHA_LIQUIDACION: TDateTimeField;
    ZQ_LiquidacionFECHA_ANULACION: TDateTimeField;
    DS_Liquidacion: TDataSource;
    ZS_Liquidacion: TZSequence;
    CD_LiqFactura: TClientDataSet;
    DS_LiqFactura: TDataSource;
    CD_LiqFacturaid_comprobante: TIntegerField;
    CD_LiqFacturapunto_venta: TIntegerField;
    CD_LiqFacturanumero_cpb: TIntegerField;
    CD_LiqFacturafecha: TDateTimeField;
    CD_LiqFacturaimporte: TFloatField;
    CD_LiqFacturaid_liquidacion: TIntegerField;
    CD_LiqFacturacodigo: TStringField;
    ZQ_LiquidacionDETALLE: TStringField;
    ZQ_VerCpbID_OPTICA_LIQUIDACION: TIntegerField;
    ZQ_VerCpbID_OS: TIntegerField;
    ZQ_VerCpbFECHA_LIQUIDACION: TDateTimeField;
    ZQ_VerCpbFECHA_ANULACION: TDateTimeField;
    ZQ_VerCpbDETALLE: TStringField;
    ZQ_LiqFacturas: TZQuery;
    ZQ_LiqFacturasID_OPTICA_LIQUIDACION_FACTURA: TIntegerField;
    ZQ_LiqFacturasID_OPTICA_LIQUIDACION: TIntegerField;
    ZQ_LiqFacturasID_COMPROBANTE: TIntegerField;
    ZQ_LiqFacturasDETALLE: TStringField;
    ZQ_VerCpbIMPORTE: TFloatField;
    ZQ_LiquidacionIMPORTE: TFloatField;
    EKDbSuma: TEKDbSuma;
    ZQ_LiqFacturasID_SUCURSAL: TIntegerField;
    ZQ_LiqFacturasCODIGO: TStringField;
    ZQ_LiqFacturasNUMERO_CPB: TIntegerField;
    ZQ_LiqFacturasPUNTO_VENTA: TIntegerField;
    ZQ_LiqFacturasFECHA: TDateTimeField;
    ZQ_LiqFacturasIMPORTE_TOTAL: TFloatField;
    ZQ_LiqFacturasID_OBRA_SOCIAL: TIntegerField;
    ZU_LiqFacturas: TZUpdateSQL;
    DS_VerLiqFacturas: TDataSource;
    CD_LiqFacturaid_liq_factura: TIntegerField;
    ZS_LiqFactura: TZSequence;
    ZQ_LiquidacionESTADO: TIntegerField;
    ZQ_VerCpbESTADO: TIntegerField;
    StaticTxtConfirmado: TStaticText;
    EKOrd_VerCpb_Facturas: TEKOrdenarGrilla;
    ZQ_VerCpbCODIGO: TStringField;
    ZQ_VerCpbNOMBRE: TStringField;
    ZQ_VerCpbDIRECCION: TStringField;
    ZQ_VerCpbTELEFONO: TStringField;
    ZQ_VerCpbDESCRIPCION: TStringField;
    ZQ_VerCpbBAJA: TStringField;
    ZQ_VerCpbCUIT_CUIL: TStringField;
    ZQ_VerCpbLOCALIDAD: TStringField;
    ZQ_VerCpbCODIGO_POSTAL: TStringField;
    ZQ_VerCpbEMAIL: TStringField;
    ZQ_VerCpbID_TIPO_IVA: TIntegerField;
    ZQ_VerCpbID_PROVINCIA: TIntegerField;
    ZQ_VerCpbFACTURA_AUTOMATICA: TStringField;
    ZQ_VerCpbID_OS_1: TIntegerField;
    ZQ_VerCpbNOMBRE_TIPO_IVA: TStringField;
    ZQ_VerCpbNOMBRE_PROVINCIA: TStringField;
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
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure btnImprimirListadoClick(Sender: TObject);
    procedure ZQ_VerCpbAfterScroll(DataSet: TDataSet);
    procedure modoEdicion(flag: boolean);
    procedure cargarTipoComprobante(tipo: integer);
    procedure agregarFactura();
    procedure cargarFacturasClienDataset(); //configuro la pantalla de visualizacion segun el tipo de comprobante
    procedure configPanelFechas(panel: TPanel; Activar: boolean);
    procedure btnEnviarMailClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure DBGridListaCpbDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridFacturasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnBajaClick(Sender: TObject);
    procedure btnImprimirComprobanteClick(Sender: TObject);
    procedure btnBuscarOSLiquidarClick(Sender: TObject);
    procedure PopItemFactura_AgregarClick(Sender: TObject);
    procedure PopItemFactura_QuitarClick(Sender: TObject);
    procedure btnQuitarLiqFacturaClick(Sender: TObject);
    procedure EKDbSumaSumListChanged(Sender: TObject);
    procedure DBGridCargaFacturasLiqDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridCargaFacturasLiqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    nuevo: boolean;
    estadoPantalla: string;
    id_liquidacion: integer;
    vselFactura: TFOP_BuscarFacturaOS;
    procedure onSelFactura;
    procedure onSelTodosFactura;
    function getColumnIndex(Grid: TDBGrid; Nombre: string): Integer;
  public
    { Public declarations }
  end;

type
  THackDBGrid = class(TDBGrid);

var
  FOP_ABM_LiquidacionOS: TFOP_ABM_LiquidacionOS;

const
  transaccion_ABM = 'ABM LIQUIDACION OBRA SOCIAL';
  EDITANDO = 'EDITANDO';
  VIENDO = 'VIENDO';

implementation

uses UPrincipal, UDM, EKModelo, UImpresion_Comprobantes, UMailEnviar, UVerImagen;

{$R *.dfm}

//Devuelve el indice en la grilla de la columna que se pasa como parametro

function TFOP_ABM_LiquidacionOS.getColumnIndex(Grid: TDBGrid; Nombre: string): Integer;
var
  i: Integer;
begin
  Result:= -1;
  for i:= 0 to Grid.Columns.Count - 1 do
    if Nombre = Grid.Columns[i].FieldName then
    begin
      Result:= i;
      Exit;
    end;
end;


procedure TFOP_ABM_LiquidacionOS.modoEdicion(flag: boolean);
begin
  if flag then //si estoy en modo edicion
  begin
    estadoPantalla:= EDITANDO;
    PanelEditar.BringToFront;
    PanelEditar.Visible:= true;
    PanelVer.Visible:= false;

    lblCantidadRegistros.Visible:= false;
    StaticTxtBaja.Visible:= false;
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
    lblTipoComprobante.Visible:= false;

    GrupoEditando.Enabled:= true;
    GrupoGuardarCancelar.Enabled:= false;
  end;
end;


procedure TFOP_ABM_LiquidacionOS.FormCreate(Sender: TObject);
begin
  EKOrd_VerCpb.CargarConfigColumnas;
  EKOrd_VerCpb_Facturas.CargarConfigColumnas;
//  EKOrd_EditarProducto.CargarConfigColumnas;

  modoEdicion(false);
  StaticTxtBaja.Color:= FPrincipal.baja;
  FPrincipal.EKImage_ABM_Comprobantes.GetBitmap(4, btnBuscarOSLiquidar.Glyph); //cargo la imagen del boton buscar OS

//  if dm.ZQ_SucursalesVisibles.Locate('id_sucursal', VarArrayOf([SUCURSAL_LOGUEO]), []) then
//    TEKCriterioBA(EKBuscar.CriteriosBusqueda.Items[4]).ItemIndex:= dm.ZQ_SucursalesVisibles.RecNo - 1;

  //abro todos los recibos del sistema
  EKBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);

  CD_LiqFactura.CreateDataSet;

  DBTxtSaldo.Visible:= false;
  lblSaldo.Visible:= False;
end;


procedure TFOP_ABM_LiquidacionOS.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFOP_ABM_LiquidacionOS.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFOP_ABM_LiquidacionOS.btnBuscarClick(Sender: TObject);
begin
  if EKbuscar.buscar then
  begin
    ZQ_VerCpb.Refresh;
    dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
  end
end;


procedure TFOP_ABM_LiquidacionOS.configPanelFechas(panel: TPanel; Activar: boolean);
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


procedure TFOP_ABM_LiquidacionOS.cargarTipoComprobante(tipo: integer);
begin
  lblTipoComprobante.Caption:= 'LIQUIDACION OBRA SOCIAL';
end;


procedure TFOP_ABM_LiquidacionOS.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Liquidacion, ZQ_LiqFacturas]) then
  begin
    nuevo:= true;
    modoEdicion(true);

    ZQ_LiqFacturas.Close;
    ZQ_LiqFacturas.ParamByName('id_liquidacion').AsInteger:= -1;
    ZQ_LiqFacturas.Open;

    cargarTipoComprobante(1); //acomodo la pantalla de edicion segun el tipo de comprobante que es
    lblTipoComprobante.Caption:= lblTipoComprobante.Caption + ' - NUEVO';

    ZQ_ObraSocial.Close;
    CD_LiqFactura.EmptyDataSet;

    ZQ_Liquidacion.Append;
    ZQ_LiquidacionFECHA_LIQUIDACION.AsDateTime:= dm.EKModelo.FechayHora;
    ZQ_LiquidacionFECHA_ANULACION.Clear;
    ZQ_LiquidacionESTADO.AsInteger:= 0;

    EKDBDateFechaLiq.SetFocus;
  end;
end;


procedure TFOP_ABM_LiquidacionOS.btnModificarClick(Sender: TObject);
var
  estado: integer;
begin
  estado:= ZQ_VerCpbESTADO.AsInteger;
  if (ZQ_VerCpb.IsEmpty) or (estado = 1) or (estado = 2) then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Liquidacion, ZQ_LiqFacturas]) then
  begin
    nuevo:= false;
    modoEdicion(true);

    ZQ_Liquidacion.Close;
    ZQ_Liquidacion.ParamByName('id_liquidacion').AsInteger:= ZQ_VerCpbID_OPTICA_LIQUIDACION.AsInteger;
    ZQ_Liquidacion.Open;

    ZQ_LiqFacturas.Close;
    ZQ_LiqFacturas.ParamByName('id_liquidacion').AsInteger:= ZQ_VerCpbID_OPTICA_LIQUIDACION.AsInteger;
    ZQ_LiqFacturas.Open;
    CD_LiqFactura.EmptyDataSet;
    cargarFacturasClienDataset;

    cargarTipoComprobante(1); //acomodo la pantalla de edicion segun el tipo de comprobante que es
    lblTipoComprobante.Caption:= lblTipoComprobante.Caption + ' - EDICION';

    ZQ_ObraSocial.Close;
    ZQ_ObraSocial.ParamByName('id_os').AsInteger:= ZQ_VerCpbID_OS.AsInteger;
    ZQ_ObraSocial.Open;

    ZQ_Liquidacion.Edit;

    EKDBDateFechaLiq.SetFocus;
  end;
end;


procedure TFOP_ABM_LiquidacionOS.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if ZQ_LiquidacionID_OS.IsNull then
  begin
    Application.MessageBox('Debe asociar una Obra Social a la Liquidacion, por favor Verifique', 'Validar Datos', MB_OK + MB_ICONINFORMATION);
    EKDBDateFechaLiq.SetFocus;
    exit;
  end;

  if nuevo then
  begin
    id_liquidacion:= ZS_Liquidacion.GetNextValue;
    ZQ_LiquidacionID_OPTICA_LIQUIDACION.AsInteger:= id_liquidacion;

    CD_LiqFactura.First;
    while not CD_LiqFactura.Eof do
    begin
      ZQ_LiqFacturas.Append;
      ZQ_LiqFacturasID_OPTICA_LIQUIDACION_FACTURA.AsInteger:= CD_LiqFacturaid_liq_factura.AsInteger;
      ZQ_LiqFacturasID_OPTICA_LIQUIDACION.AsInteger:= id_liquidacion;
      ZQ_LiqFacturasID_COMPROBANTE.AsInteger:= CD_LiqFacturaid_comprobante.AsInteger;

      CD_LiqFactura.Next;
    end
  end
  else
  begin
    CD_LiqFactura.First;
    while not CD_LiqFactura.Eof do
    begin
      if not ZQ_LiqFacturas.Locate('ID_OPTICA_LIQUIDACION_FACTURA', CD_LiqFacturaid_liq_factura.AsInteger, []) then
      begin
        ZQ_LiqFacturas.Append;
        ZQ_LiqFacturasID_OPTICA_LIQUIDACION_FACTURA.AsInteger:= CD_LiqFacturaid_liq_factura.AsInteger;
        ZQ_LiqFacturasID_OPTICA_LIQUIDACION.AsInteger:= ZQ_LiquidacionID_OPTICA_LIQUIDACION.AsInteger;
        ZQ_LiqFacturasID_COMPROBANTE.AsInteger:= CD_LiqFacturaid_comprobante.AsInteger;
      end;

      CD_LiqFactura.Next;
    end
  end;

  EKDbSuma.RecalcAll; //el importe del comprobante es igual a la suma del importe de todos los productos
  EKDbSuma.RecalcAll;
  ZQ_LiquidacionIMPORTE.AsFloat:= EKDbSuma.SumCollection[0].SumValue;

  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      modoEdicion(false);
      DBGridListaCpb.SetFocus;

      recNo:= ZQ_VerCpb.RecNo;
      ZQ_VerCpb.Refresh;
      ZQ_VerCpb.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención', MB_OK + MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFOP_ABM_LiquidacionOS.btnCancelarClick(Sender: TObject);
begin
  if (application.MessageBox(pchar('¿Seguro que desea cancelar? Se perderan los cambios realizados.'), 'ATENCION', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
    begin
      modoEdicion(false);
      DBGridListaCpb.SetFocus;
    end;
end;


procedure TFOP_ABM_LiquidacionOS.btnImprimirListadoClick(Sender: TObject);
begin
  if ZQ_VerCpb.IsEmpty then
    exit;

  DM.VariablesReportes(RepListado);
  QRlblPieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ', dm.EKModelo.Fecha);
  QRLabelCritBusqueda.Caption:= EKBuscar.ParametrosBuscados;
  EKVistaPrevia.VistaPrevia;
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------

procedure TFOP_ABM_LiquidacionOS.ABuscarExecute(Sender: TObject);
begin //F1
  if estadoPantalla = VIENDO then
  begin
    if btnBuscar.Enabled then
      btnBuscar.Click
  end
  else
  begin
    if btnBuscarOSLiquidar.Enabled then
      btnBuscarOSLiquidar.Click;
  end;
end;

procedure TFOP_ABM_LiquidacionOS.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFOP_ABM_LiquidacionOS.AModificarExecute(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
  begin
    agregarFactura;
  end;

  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFOP_ABM_LiquidacionOS.AConfirmarExecute(Sender: TObject);
begin
  if btnConfirmar.Enabled then
    btnConfirmar.Click;
end;

procedure TFOP_ABM_LiquidacionOS.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFOP_ABM_LiquidacionOS.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFOP_ABM_LiquidacionOS.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFOP_ABM_LiquidacionOS.ZQ_VerCpbAfterScroll(DataSet: TDataSet);
begin
  ZQ_LiqFacturas.Close;

  if ZQ_VerCpb.IsEmpty then
    exit;

  ZQ_LiqFacturas.ParamByName('id_liquidacion').AsInteger:= ZQ_VerCpbID_OPTICA_LIQUIDACION.AsInteger;
  ZQ_LiqFacturas.Open;

  if ZQ_VerCpbFECHA_ANULACION.IsNull then
  begin
    DBTxtFechaAnulado.Visible:= false;
    lblAnulado.Visible:= False;

//    DBTxtSaldo.Visible:= true;
//    lblSaldo.Visible:= true;
  end
  else
  begin
    DBTxtFechaAnulado.Visible:= true;
    lblAnulado.Visible:= true;

//    DBTxtSaldo.Visible:= false;
//    lblSaldo.Visible:= False;
  end;
end;


//----------------------
//    DETALLE PRODUCTO
//----------------------


procedure TFOP_ABM_LiquidacionOS.btnEnviarMailClick(Sender: TObject);
var
  destino, archivoPDF: string;
begin
//  destino:= '';
//  archivoPDF:= '';
//
//  if ZQ_VerCpb.IsEmpty then
//    exit;
//
//  ZQ_BuscarMail.Close;
//  ZQ_BuscarMail.SQL.Text:= Format('select p.email from optica_os p where p.id_os = %d', [ZQ_VerCpbID_OBRA_SOCIAL.AsInteger]);
//  ZQ_BuscarMail.Open;
//
//  if (not ZQ_BuscarMailEMAIL.IsNull) or (ZQ_BuscarMailEMAIL.AsString <> '') then
//    destino:= ZQ_BuscarMailEMAIL.AsString;
//
//  if not Assigned(FImpresion_Comprobantes) then
//    FImpresion_Comprobantes := TFImpresion_Comprobantes.Create(nil);
//  FImpresion_Comprobantes.cargarDatos(ZQ_VerCpbID_COMPROBANTE.AsInteger, -1, -1, ZQ_VerCpbID_OBRA_SOCIAL.AsInteger, false);
//  archivoPDF:= FImpresion_Comprobantes.generarPDF;
//
//  //if not Assigned(TFMailEnviar) then
//    Application.CreateForm(TFMailEnviar, FMailEnviar);
//  FMailEnviar.enviarConAdjunto(destino, dm.ZQ_SucursalNOMBRE.AsString, archivoPDF);
//  FMailEnviar.ShowModal;
end;


procedure TFOP_ABM_LiquidacionOS.btnConfirmarClick(Sender: TObject);
var
  recno, estado: Integer;
begin
  estado:= ZQ_VerCpbESTADO.AsInteger;
  if (ZQ_VerCpb.IsEmpty) or (estado = 1) or (estado = 2) then
    exit;

  if (application.MessageBox(pchar('¿Desea confirmar la Liquidación seleccionada?'), 'ABM Liquidación', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Liquidacion]) then
    begin
      ZQ_Liquidacion.Close;
      ZQ_Liquidacion.ParamByName('id_liquidacion').AsInteger:= ZQ_VerCpbID_OPTICA_LIQUIDACION.AsInteger;
      ZQ_Liquidacion.Open;

      ZQ_Liquidacion.Edit;
      ZQ_LiquidacionESTADO.AsInteger:= 1;

      try
        if not DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
          dm.EKModelo.cancelar_transaccion(transaccion_ABM)
      except
        begin
          Application.MessageBox('No se pudo confirmar la Liquidación.', 'Atención', MB_OK + MB_ICONINFORMATION);
          exit;
        end
      end;
    end;

  recNo:= ZQ_VerCpb.RecNo;
  ZQ_VerCpb.Refresh;
  ZQ_VerCpb.RecNo:= recNo;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


//Para renombrar el procedimiento Ctrl+Del que viene por defecto en las grillas

procedure TFOP_ABM_LiquidacionOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrd_VerCpb.GuardarConfigColumnas;
  EKOrd_VerCpb_Facturas.GuardarConfigColumnas;
//  EKOrd_EditarProducto.GuardarConfigColumnas;
end;


procedure TFOP_ABM_LiquidacionOS.DBGridListaCpbDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (ZQ_VerCpbESTADO.AsInteger = 1) then //si el registro esta confirmado
  begin
    DBGridListaCpb.Canvas.Brush.Color:= StaticTxtConfirmado.Color;
    if (gdFocused in State) or (gdSelected in State) then
      DBGridListaCpb.Canvas.Font.Style:= DBGridListaCpb.Canvas.Font.Style + [fsBold];
  end;

  if (ZQ_VerCpbESTADO.AsInteger = 2) then //si el registro esta dado de baja
  begin
    DBGridListaCpb.Canvas.Brush.Color:= StaticTxtBaja.Color;
    if (gdFocused in State) or (gdSelected in State) then
      DBGridListaCpb.Canvas.Font.Style:= DBGridListaCpb.Canvas.Font.Style + [fsBold];
  end;

  DBGridListaCpb.DefaultDrawColumnCell(rect, datacol, column, state);

  FPrincipal.PintarFilasGrillas(DBGridListaCpb, Rect, DataCol, Column, State);
end;


procedure TFOP_ABM_LiquidacionOS.DBGridFacturasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridFacturas, Rect, DataCol, Column, State);
end;


procedure TFOP_ABM_LiquidacionOS.btnBajaClick(Sender: TObject);
var
  recno, estado: Integer;
begin
  estado:= ZQ_VerCpbESTADO.AsInteger;
  if (ZQ_VerCpb.IsEmpty) or (estado = 2) then
    exit;

  if (application.MessageBox(pchar('¿Desea anular la Liquidación seleccionada?'), 'ABM Liquidación', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Liquidacion]) then
    begin
      ZQ_Liquidacion.Close;
      ZQ_Liquidacion.ParamByName('id_liquidacion').AsInteger:= ZQ_VerCpbID_OPTICA_LIQUIDACION.AsInteger;
      ZQ_Liquidacion.Open;

      ZQ_Liquidacion.Edit;
      ZQ_LiquidacionESTADO.AsInteger:= 2;
      ZQ_LiquidacionFECHA_ANULACION.AsDateTime:= dm.EKModelo.FechayHora;

      try
        if not DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
          dm.EKModelo.cancelar_transaccion(transaccion_ABM)
      except
        begin
          Application.MessageBox('No se pudo anular la Liquidación.', 'Atención', MB_OK + MB_ICONINFORMATION);
          exit;
        end
      end;
    end;

  recNo:= ZQ_VerCpb.RecNo;
  ZQ_VerCpb.Refresh;
  ZQ_VerCpb.RecNo:= recNo;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFOP_ABM_LiquidacionOS.btnImprimirComprobanteClick(
  Sender: TObject);
var
  estado: Integer;
  obra_social: integer;
begin
//  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
//  if ((ZQ_VerCpb.IsEmpty) or (estado = ESTADO_ANULADO)) then
//    exit;
//
//  obra_social:= -1;
//  if not ZQ_VerCpbID_OBRA_SOCIAL.IsNull then
//    obra_social:= ZQ_VerCpbID_OBRA_SOCIAL.AsInteger;
//
//  if not Assigned(FImpresion_Comprobantes) then
//    FImpresion_Comprobantes:= TFImpresion_Comprobantes.Create(nil);
//  FImpresion_Comprobantes.cargarDatos(ZQ_VerCpbID_COMPROBANTE.AsInteger, -1, -1, obra_social, false);
//  FImpresion_Comprobantes.imprimir;
end;


procedure TFOP_ABM_LiquidacionOS.btnBuscarOSLiquidarClick(
  Sender: TObject);
var
  sql: string;
begin
  if EKListadoEntidad.Buscar then
  begin
    if (EKListadoEntidad.Resultado <> '') then
    begin
      if not CD_LiqFactura.IsEmpty then
        CD_LiqFactura.EmptyDataSet;

      btnBuscarOSLiquidar.Down:= true;
      PanelDatosOSLiquidacion.BringToFront;

      ZQ_ObraSocial.Close;
      ZQ_ObraSocial.ParamByName('id_os').AsInteger:= StrToInt(EKListadoEntidad.Resultado);
      ZQ_ObraSocial.Open;

      if ZQ_Liquidacion.State = dsBrowse then
        ZQ_Liquidacion.Edit;
      ZQ_LiquidacionID_OS.AsInteger:= ZQ_ObraSocialID_OS.AsInteger;
    end
  end;

  EKDBDateFechaLiq.SetFocus;
end;


procedure TFOP_ABM_LiquidacionOS.PopItemFactura_AgregarClick(
  Sender: TObject);
begin
  agregarFactura;
end;


procedure TFOP_ABM_LiquidacionOS.agregarFactura;
begin
  if ZQ_LiquidacionID_OS.IsNull then
  begin
    ShowMessage('No se selecciono ninguna Obra Social, Verifique');
    exit;
  end;

  if not Assigned(vselFactura) then
    vselFactura:= TFOP_BuscarFacturaOS.Create(nil);

  vselFactura.EKBuscarFacturas.SQL_Where.ValueFromIndex[3]:= IntToStr(ZQ_LiquidacionID_OS.AsInteger);
  vselFactura.ZQ_Facturas.Close;
  vselFactura.OnSeleccionar:= onSelFactura;
  vselFactura.OnSeleccionarTodos:= onSelTodosFactura;
  vselFactura.btnSeleccionarTodos.Visible:= ivAlways;
  vselFactura.SeleccionarYSalir:= false;
  vselFactura.ShowModal;
end;


procedure TFOP_ABM_LiquidacionOS.onSelFactura;
var
  id_liq_factura: integer;
begin
  if not vselFactura.ZQ_Facturas.IsEmpty then
  begin
    CD_LiqFactura.Filter:= 'id_comprobante = ' + vselFactura.ZQ_FacturasID_COMPROBANTE.AsString;
    CD_LiqFactura.Filtered:= true;
    if CD_LiqFactura.IsEmpty then //si la factura no esta cargada la agrego
    begin
      CD_LiqFactura.Filtered:= false;

      id_liq_factura:= ZS_LiqFactura.GetNextValue;
      CD_LiqFactura.Append;
      CD_LiqFacturaid_comprobante.AsInteger:= vselFactura.ZQ_FacturasID_COMPROBANTE.AsInteger;
      CD_LiqFacturaid_liq_factura.AsInteger:= id_liq_factura;
      CD_LiqFacturacodigo.AsString:= vselFactura.ZQ_FacturasCODIGO.AsString;
      CD_LiqFacturapunto_venta.AsInteger:= vselFactura.ZQ_FacturasPUNTO_VENTA.AsInteger;
      CD_LiqFacturanumero_cpb.AsInteger:= vselFactura.ZQ_FacturasNUMERO_CPB.AsInteger;
      CD_LiqFacturafecha.AsDateTime:= vselFactura.ZQ_FacturasFECHA.AsDateTime;
      CD_LiqFacturaimporte.AsFloat:= vselFactura.ZQ_FacturasIMPORTE_TOTAL.AsFloat;
      CD_LiqFactura.Post;
    end
    else
      CD_LiqFactura.Filtered:= false;
  end;

  if vselFactura.SeleccionarYSalir then
    vselFactura.Close;
end;


procedure TFOP_ABM_LiquidacionOS.onSelTodosFactura;
var
  id_liq_factura: integer;
begin
  if not vselFactura.ZQ_Facturas.IsEmpty then
  begin
    vselFactura.ZQ_Facturas.First;
    while not vselFactura.ZQ_Facturas.Eof do
    begin
      CD_LiqFactura.Filter:= 'id_comprobante = ' + vselFactura.ZQ_FacturasID_COMPROBANTE.AsString;
      CD_LiqFactura.Filtered:= true;
      if not CD_LiqFactura.IsEmpty then //si la factura ya esta cargado, paso al proximo
      begin
        CD_LiqFactura.Filtered:= false;
      end
      else
      begin
        CD_LiqFactura.Filtered:= false;

        id_liq_factura:= ZS_LiqFactura.GetNextValue;
        CD_LiqFactura.Append;
        CD_LiqFacturaid_comprobante.AsInteger:= vselFactura.ZQ_FacturasID_COMPROBANTE.AsInteger;
        CD_LiqFacturaid_liq_factura.AsInteger:= id_liq_factura;
        CD_LiqFacturacodigo.AsString:= vselFactura.ZQ_FacturasCODIGO.AsString;
        CD_LiqFacturapunto_venta.AsInteger:= vselFactura.ZQ_FacturasPUNTO_VENTA.AsInteger;
        CD_LiqFacturanumero_cpb.AsInteger:= vselFactura.ZQ_FacturasNUMERO_CPB.AsInteger;
        CD_LiqFacturafecha.AsDateTime:= vselFactura.ZQ_FacturasFECHA.AsDateTime;
        CD_LiqFacturaimporte.AsFloat:= vselFactura.ZQ_FacturasIMPORTE_TOTAL.AsFloat;
        CD_LiqFactura.Post;
      end;

      vselFactura.ZQ_Facturas.Next;
    end;
  end;

  vselFactura.Close;
end;


procedure TFOP_ABM_LiquidacionOS.PopItemFactura_QuitarClick(Sender: TObject);
begin
  btnQuitarLiqFactura.Click;
end;


procedure TFOP_ABM_LiquidacionOS.btnQuitarLiqFacturaClick(Sender: TObject);
begin
  if not CD_LiqFactura.IsEmpty then
  begin
    if ZQ_LiqFacturas.Locate('ID_OPTICA_LIQUIDACION_FACTURA', CD_LiqFacturaid_liq_factura.AsInteger, []) then
      ZQ_LiqFacturas.Delete;
    CD_LiqFactura.Delete;
  end;
end;


procedure TFOP_ABM_LiquidacionOS.cargarFacturasClienDataset;
begin
  ZQ_LiqFacturas.First;
  while not ZQ_LiqFacturas.Eof do
  begin
    CD_LiqFactura.Append;
    CD_LiqFacturaid_comprobante.AsInteger:= ZQ_LiqFacturasID_COMPROBANTE.AsInteger;
    CD_LiqFacturaid_liq_factura.AsInteger:= ZQ_LiqFacturasID_OPTICA_LIQUIDACION_FACTURA.AsInteger;
    CD_LiqFacturapunto_venta.AsInteger:= ZQ_LiqFacturasPUNTO_VENTA.AsInteger;
    CD_LiqFacturanumero_cpb.AsInteger:= ZQ_LiqFacturasNUMERO_CPB.AsInteger;
    CD_LiqFacturafecha.AsDateTime:= ZQ_LiqFacturasFECHA.AsDateTime;
    CD_LiqFacturaimporte.AsFloat:= ZQ_LiqFacturasIMPORTE_TOTAL.AsFloat;
    CD_LiqFacturaid_liquidacion.AsInteger:= ZQ_LiqFacturasID_OPTICA_LIQUIDACION.AsInteger;
    CD_LiqFacturacodigo.AsString:= ZQ_LiqFacturasCODIGO.AsString;
    CD_LiqFactura.Post;

    ZQ_LiqFacturas.Next;
  end;
end;


procedure TFOP_ABM_LiquidacionOS.EKDbSumaSumListChanged(Sender: TObject);
var
  cantidad, total: string;
begin
  cantidad:= FormatFloat('###,###,###,##0.00', EKDbSuma.SumCollection[1].SumValue);
  total:= FormatFloat('$ ###,###,###,##0.00', EKDbSuma.SumCollection[0].SumValue);

  editCantidadFacturas.Text:= cantidad;
  EditImporteFinal.Text:= total;
end;


procedure TFOP_ABM_LiquidacionOS.DBGridCargaFacturasLiqDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridCargaFacturasLiq, Rect, DataCol, Column, State);
end;


procedure TFOP_ABM_LiquidacionOS.DBGridCargaFacturasLiqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  columna: string;
begin
  columna:= (sender as tdbgrid).SelectedField.FullName;

  if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
  begin
    Key:= 0; {ignore}
    btnQuitarLiqFactura.Click;
  end
end;


end.

