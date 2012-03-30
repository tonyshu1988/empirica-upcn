unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ActnMan, ActnCtrls, Menus, XPStyleActnCtrls, ActnList,
  ComCtrls, ImgList, ExtCtrls, jpeg, QPrinters,
  Grids, DBGrids, EKImageList32, EKVentanas, EKInformacion, DB, StdCtrls;

type
  TFPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    ActionPrincipal: TActionManager;
    MainMenuPrincipal: TMainMenu;
    ActionToolBar1: TActionToolBar;
    Salir1: TMenuItem;
    PanelTapa: TPanel;
    CambiarContrasenia: TMenuItem;
    Salir: TMenuItem;
    ConfigurarImpresora: TMenuItem;
    AConfigImpresora: TAction;
    AAcerca_de: TAction;
    AcercaDe: TMenuItem;
    LogoFondo: TImage;
    EKImageMenu24: TEKImageList32;
    Iconos_Menu_32: TEKImageList32;
    Iconos_Menu_16: TEKImageList32;
    EKVentanas1: TEKVentanas;
    Productos1: TMenuItem;
    ABMProductos1: TMenuItem;
    Clientes1: TMenuItem;
    Empresas1: TMenuItem;
    ABMEmpresas1: TMenuItem;
    AABMProductos: TAction;
    AABMClientes: TAction;
    AABMEmpresas: TAction;
    Iconos_Barra_32: TImageList;
    AABM_Colores: TAction;
    AABM_TipoArticulo: TAction;
    AABM_Marcas: TAction;
    AABM_ArticuloMedida: TAction;
    AABM_TipoEmpresa: TAction;
    AABM_Sucursal: TAction;
    AABM_SucursalPosic: TAction;
    AABM_ProductoStock: TAction;
    AABM_Personas: TAction;
    ABM_Articulos: TMenuItem;
    ABMMarcas1: TMenuItem;
    ABMTipoArticulo1: TMenuItem;
    ABMArticulosMedida1: TMenuItem;
    ABMProductoStock1: TMenuItem;
    ABMPersonas1: TMenuItem;
    ABMTipoEmpresa1: TMenuItem;
    ABMSucursal1: TMenuItem;
    ABMSucursalPosicion1: TMenuItem;
    EKInformacion1: TEKInformacion;
    ControlStock1: TMenuItem;
    AImprimirEtiqueta: TAction;
    ImprimirEtiquetas1: TMenuItem;
    ABandejaMail: TAction;
    BandejadeMail1: TMenuItem;
    Iconos_Mail: TImageList;
    AConfigMail: TAction;
    AEnviarMail: TAction;
    BandejadeMail2: TMenuItem;
    EnviarMail1: TMenuItem;
    ConfigurarMail1: TMenuItem;
    AABM_Articulo: TAction;
    ABMArticulo1: TMenuItem;
    PantallasNuevas1: TMenuItem;
    ABMTipoIva1: TMenuItem;
    ABMTipoComprobante1: TMenuItem;
    ABMTipo1: TMenuItem;
    ABMCuentas1: TMenuItem;
    AABM_TipoIva: TAction;
    AABM_TipoComprobante: TAction;
    AABM_TipoMedioPago: TAction;
    AABM_Cuenta: TAction;
    AABM_Precios: TAction;
    ABMPrecios1: TMenuItem;
    AABM_Comprobante: TAction;
    ACajero: TAction;
    Cajero1: TMenuItem;
    AMovInternos: TAction;
    MovimientosInternos1: TMenuItem;
    AABM_TipoMov: TAction;
    ABMTipoMovimiento1: TMenuItem;
    ATransferirStock: TAction;
    ransferirStock1: TMenuItem;
    ACtaCte_Cliente: TAction;
    AEstad_MovInternos: TAction;
    AEstad_Ventas: TAction;
    Estadisticas1: TMenuItem;
    EstadisticaMovimientosInt1: TMenuItem;
    EstadisticaFacturacion1: TMenuItem;
    AEstad_Disponib: TAction;
    EstadisticaDisponibilidades1: TMenuItem;
    AArqueo_Caja: TAction;
    ArqueodeCaja1: TMenuItem;
    colorBaja: TPanel;
    colorBajaFocus: TPanel;
    colorActivo: TPanel;
    colorActivoFocus: TPanel;
    colorResaltado: TPanel;
    colorResaltadoFocus: TPanel;
    AEstad_Stock: TAction;
    EstadisticaStock1: TMenuItem;
    Comprobantes1: TMenuItem;
    AABM_CPB_Recibo: TAction;
    AABM_CPB_Remito: TAction;
    AABM_CPB_OrdenPago: TAction;
    ABMRecibo1: TMenuItem;
    ABMOrdendePago1: TMenuItem;
    ABMRemito1: TMenuItem;
    AABM_CPB_Presupuesto: TAction;
    ABMPresupuesto1: TMenuItem;
    AABM_CPB_NotaPedido: TAction;
    ABMPresupuesto2: TMenuItem;
    AABM_CPB_FacturaComp: TAction;
    AABM_CPB_Devolucion: TAction;
    ABMDevolucin1: TMenuItem;
    ABMFacturaCompra1: TMenuItem;
    N4: TMenuItem;
    N8: TMenuItem;
    APreventa: TAction;
    VentadeMostrador1: TMenuItem;
    ABM1: TMenuItem;
    Facturacin1: TMenuItem;
    Productos2: TMenuItem;
    Caja1: TMenuItem;
    N1: TMenuItem;
    N3: TMenuItem;
    N6: TMenuItem;
    ACtaCte_Proveedor: TAction;
    CtaCteCliente1: TMenuItem;
    CtaCteProveedor1: TMenuItem;
    Sucursal1: TMenuItem;
    Mail1: TMenuItem;
    Comprobantes2: TMenuItem;
    MovInternos1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    AAuditoria: TAction;
    Auditoria1: TMenuItem;
    AConfigGral: TAction;
    AConfiguracionGeneral1: TMenuItem;
    AABM_CPB_Transfer: TAction;
    ABMTransferencia1: TMenuItem;
    ADebugging: TAction;
    Debugging1: TMenuItem;
    AReimpresionComprob: TAction;
    ReimpresindeComprobantes1: TMenuItem;
    EKImage_ABM_Comprobantes: TEKImageList32;
    AABM_PersonasPtos: TAction;
    N7: TMenuItem;
    ABMPersonasPuntos1: TMenuItem;
    AConsulta_Precios: TAction;
    ConsultaPrecios1: TMenuItem;
    N9: TMenuItem;
    AShutdown: TAction;
    Shutdown1: TMenuItem;
    procedure CambiarContraseniaClick(Sender: TObject);
    procedure SalirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure AConfigImpresoraExecute(Sender: TObject);
    procedure AAcerca_deExecute(Sender: TObject);
    procedure AABMProductosExecute(Sender: TObject);
    procedure AABMClientesExecute(Sender: TObject);
    procedure AABMEmpresasExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AABM_ColoresExecute(Sender: TObject);
    procedure AABM_TipoArticuloExecute(Sender: TObject);
    procedure AABM_MarcasExecute(Sender: TObject);
    procedure AABM_ArticuloMedidaExecute(Sender: TObject);
    procedure AABM_TipoEmpresaExecute(Sender: TObject);
    procedure AABM_SucursalExecute(Sender: TObject);
    procedure AABM_SucursalPosicExecute(Sender: TObject);
    procedure AABM_ProductoStockExecute(Sender: TObject);
    procedure AABM_PersonasExecute(Sender: TObject);
    procedure AImprimirEtiquetaExecute(Sender: TObject);
    procedure ABandejaMailExecute(Sender: TObject);
    procedure AConfigMailExecute(Sender: TObject);
    procedure AEnviarMailExecute(Sender: TObject);
    procedure AABM_ArticuloExecute(Sender: TObject);
    procedure AABM_TipoIvaExecute(Sender: TObject);
    procedure AABM_TipoComprobanteExecute(Sender: TObject);
    procedure AABM_TipoMedioPagoExecute(Sender: TObject);
    procedure AABM_CuentaExecute(Sender: TObject);
    procedure AABM_PreciosExecute(Sender: TObject);
    procedure AABM_ComprobanteExecute(Sender: TObject);
    procedure ACajeroExecute(Sender: TObject);
    procedure AMovInternosExecute(Sender: TObject);
    procedure AABM_TipoMovExecute(Sender: TObject);
    procedure ATransferirStockExecute(Sender: TObject);
    procedure ACtaCte_ClienteExecute(Sender: TObject);
    procedure AEstad_MovInternosExecute(Sender: TObject);
    procedure AEstad_VentasExecute(Sender: TObject);
    procedure AEstad_DisponibExecute(Sender: TObject);
    procedure AArqueo_CajaExecute(Sender: TObject);
    procedure AEstad_StockExecute(Sender: TObject);
    procedure AABM_CPB_ReciboExecute(Sender: TObject);
    procedure AABM_CPB_RemitoExecute(Sender: TObject);
    procedure AABM_CPB_OrdenPagoExecute(Sender: TObject);
    procedure AABM_CPB_PresupuestoExecute(Sender: TObject);
    procedure AABM_CPB_NotaPedidoExecute(Sender: TObject);
    procedure AABM_CPB_FacturaCompExecute(Sender: TObject);
    procedure AABM_CPB_DevolucionExecute(Sender: TObject);
    procedure APreventaExecute(Sender: TObject);
    procedure ACtaCte_ProveedorExecute(Sender: TObject);
    procedure AAuditoriaExecute(Sender: TObject);
    procedure AConfigGralExecute(Sender: TObject);
    procedure AABM_CPB_TransferExecute(Sender: TObject);
    procedure ADebuggingExecute(Sender: TObject);
    procedure AReimpresionComprobExecute(Sender: TObject);
    procedure AABM_PersonasPtosExecute(Sender: TObject);
    procedure AConsulta_PreciosExecute(Sender: TObject);
    procedure AShutdownExecute(Sender: TObject);
  private
    { Private declarations }
  public
    baja, bajaFocus,
    activo, activoFocus,
    resaltado, resaltadoFocus: Tcolor;
    procedure PintarFilasGrillas(grilla: TDBGrid; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PintarFilasGrillasConBajas(grilla: TDBGrid; valor: string; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    function  cerrar_ventana(transaccion: string): boolean;
  end;

var
  FPrincipal: TFPrincipal;

type
  THackDBGrid = class(TDBGrid);  

implementation

{$R *.dfm}

Uses UDM, UAcerca_De, UABMClientes, UABMEmpresas, UABMProductos,
  UABM_Articulo, UABM_TipoArticulo, UABM_Marcas, UABM_ArticuloMedida,
  UABM_TipoEmpresa, UABM_Sucursal, UABM_SucursalPosicion,
  UABM_ProductoStock, UABM_Personas,
  UImprimirEtiquetas, UMailBandeja, USeleccionarSucursal, UMailConfigurar,
  UMailEnviar, UABM_Colores, UABM_TipoIVA, UABM_TipoFormaPago,
  UABM_Cuentas, UABM_TipoComprobante, UABM_Precios, UABM_Comprobantes,
  UCajero, UMovimientosInternos, UABM_TipoMovimiento, UTransferirStock,
  UCuentaCorriente, UEstadisticaMovInternos,
  UEstadisticaDisponibilidades, UArqueo_Caja, Types, UEstadisticaStock,
  UABM_CPB_Recibo, UABM_CPB_OrdenPago, UABM_CPB_Remito,
  UABM_CPB_Presupuesto, UABM_CPB_NotaPedido, UABM_Preventa,
  UCuentaCorriente_Proveedor, UABM_CPB_FacturaCompra, UAuditoria,
  UConfiguracion, UABM_CPB_Transferencia, UABM_CPB_Devolucion, UDebugging,
  UEstadisticaVentas, UReimpresionComprobantes, UABM_PersonasPuntos,
  UConsulta_Precios, DateUtils;


procedure TFPrincipal.FormCreate(Sender: TObject);
var
  i: integer;
  pertenece: boolean;
  cerrarSistema: integer; //si es 1 se cierra el sistema
begin

  dm.ZQ_Configuracion_Variables.Close;
  dm.ZQ_Configuracion_Variables.Open;

 //Chequeo que la hora y fecha del Server Sean Correctas
  if dm.ZQ_Configuracion_Variables.Locate('CLAVE', vararrayof(['validar_fecha_hora']), []) then
  begin
    if (dm.ZQ_Configuracion_Variables.fieldbyname('texto').AsString = 'SI') then
    begin
      dm.ZQ_ValidarFecha_Hora.Close;
      dm.ZQ_ValidarFecha_Hora.Open;

      i := DaysBetween(dm.EKModelo.FechayHora, dm.ZQ_ValidarFecha_HoraDATE_TIME.AsDateTime);

      if (dm.ZQ_ValidarFecha_HoraDATE_TIME.AsDateTime > dm.EKModelo.FechayHora) or (i > dm.ZQ_Configuracion_Variables.fieldbyname('numero').AsInteger) then
      begin
          if not(Application.MessageBox('ATENCIÓN!!!'+Char(13)+Char(13)+'El Ultimo ingreso al sistema es mayor al ingreso actual, '+Char(13)+'o pasaron muchos dias sin que el sistema fuese usado.'+Char(13)+'Verifique la fecha y Hora del Servidor.'+Char(13)+Char(13)+'¿Desea Continuar ejecutando el sistema?','',MB_YESNO+MB_ICONWARNING)= IDYES) then
            Application.Terminate;
      end;

    end;
  end;


  pertenece:= false;
  SUCURSAL_LOGUEO:= -1;

  dm.ZQ_Configuracion.Close;
  dm.ZQ_Configuracion.Open;

  if not dm.ZQ_ConfiguracionDB_SUCURSAL.IsNull  then
  begin
    SUCURSAL_LOGUEO:= dm.ZQ_ConfiguracionDB_SUCURSAL.AsInteger; //cargo la sucursal a la cual pertenece la base de datos

    if DM.EKUsrLogin.PermisoAccionValorGrupo('ACCESO') <> nil then
    begin
      sucursales:= DM.EKUsrLogin.PermisoAccionValorGrupo('ACCESO'); //obtengo todas las sucursales
    end;                                                            //a las q tiene acceso el usuario

    for  i:= 0 to Length(sucursales) - 1 do //Recorro todas las sucursales
    begin                                   //del usuario seleccionado
      if (SUCURSAL_LOGUEO = StrToInt(sucursales[i].valor)) or (StrToInt(sucursales[i].valor) = 0)then
        pertenece:= true;
    end;
  end;

  if not pertenece then  //si no selecciono ninguna sucursal o el
  begin
    if SUCURSAL_LOGUEO = -1 then
      ShowMessage('La Base de Datos no tiene asociada una sucursal, verifique.')
    else
      ShowMessage('El usuario ingresado no tiene permisos en esta sucursal, verifique.');
    Application.Terminate;      //usuario no tiene asignada ninguna salgo del sistema
  end;

  dm.buscarSucursalesVisibles;
  dm.configMail('SUCURSAL', SUCURSAL_LOGUEO);
  dm.cargarReporteSucursal(SUCURSAL_LOGUEO);
  StatusBar1.Panels[0].text:= 'SUCURSAL: '+inttostr(SUCURSAL_LOGUEO);
  baja:= colorBaja.Color;    //ROJO = color de los registros dados de baja
  bajafocus:= colorBajaFocus.Color;    //ROJO OSCURO = color del registro seleccionado dado de baja
  activo:= colorActivo.Color;  //AZUL = color de los registro activos
  activofocus:= colorActivoFocus.Color;  //AZUL OSCURO = color del registro seleccionado activo
  resaltado:= colorResaltado.Color; //
  resaltadofocus:= colorResaltadoFocus.Color; //

  //valido si la demo no esta vencida
  cerrarSistema:= 0;
  if dm.EKModelo.iniciar_transaccion('VALIDAR', [dm.ZQ_DemoSistema]) then
  begin
    dm.ZQ_DemoSistema.Close;
    dm.ZQ_DemoSistema.Open;
    cerrarSistema:= dm.ZQ_DemoSistemaRESULTADO.AsInteger;

    if not (dm.EKModelo.finalizar_transaccion('VALIDAR')) then
      dm.EKModelo.cancelar_transaccion('VALIDAR');
  end;
  if cerrarSistema = 1 then
  begin
    ShowMessage('Atención, la DEMO del sistema a vencido. Para seguir utilizandolo contactese a "contacto.empirica@gmail.com"');
    Application.Terminate;
  end;

   //valido si DEBE o nó cerrarse por causas anormales (;-P)
  cerrarSistema:= 0;
  if dm.EKModelo.iniciar_transaccion('shutdown', [dm.ZQ_Configuracion_Variables]) then
  begin
   dm.ZQ_Configuracion_Variables.Open;
   dm.ZQ_Configuracion_Variables.Locate('CLAVE', 'shutdown', []);

   if (dm.ZQ_Configuracion_VariablesTEXTO.AsString = 'SI') then
    cerrarSistema:= 1;

   if not (dm.EKModelo.finalizar_transaccion('shutdown')) then
      dm.EKModelo.cancelar_transaccion('shutdown');
  end;
  if cerrarSistema = 1 then
  begin
    AShutdown.Execute;
    Application.Terminate;
  end;
end;


function cerrar_sistema:boolean;
begin
  result := true;
  if dm.EKModelo.hay_transaccion then
  begin
    if Application.MessageBox('Hay transacciones abiertas, Desea cerrar igualmente la aplicación', 'Atención', MB_YESNO ) = IDYES then
      ExitProcess(0)
    else
      result := false;
  end
  else
    ExitProcess(0);
end;


//FUNCION PARA CERRAR LAS VENTANAS Y UNIFICAR EL MENSAJE.
//SE LE PASA COMO PARAMETRO LA TRANSACCION QUE HAY QUE VERIFICAR.
function  TFPrincipal.cerrar_ventana(transaccion: string):boolean;
begin
  Result:= True;

  if DM.EKModelo.verificar_transaccion(transaccion) then
  begin
    if not (application.MessageBox(pchar('Si continua con el cierre se perderan los cambios realizados.'+#13+#13+'¿Salir de todos modos?'),'Atención', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      Result:= False
    else
      DM.EKModelo.cancelar_transaccion(transaccion);
  end;
end;


//PROCEDURE PARA PINTAR LAS FILAS DE LA GRILLA QUE SE PASA POR PARAMETROS.
procedure TFPrincipal.PintarFilasGrillas(grilla: TDBGrid; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  a: TRect;
begin
  if grilla.DataSource.DataSet.IsEmpty then
    exit;
    
  a:= Rect;

  if (THackDBGrid(grilla).DataLink.ActiveRecord + 1 = THackDBGrid(grilla).Row) then
  begin
    a.Top:= a.Top + 1;
    a.Bottom:= a.Bottom - 1;

    grilla.Canvas.Font.Color:= clWhite;
    grilla.Canvas.Brush.Color:= resaltado;
    if (gdFocused in State) or (gdSelected in State) then
    begin
      grilla.Canvas.Brush.Color:= resaltadoFocus;
      grilla.Canvas.Font.Style := grilla.Canvas.Font.Style + [fsBold];
    end;
  end;

  grilla.DefaultDrawColumnCell(a,datacol,column,state);
end;


//PROCEDURE PARA PINTAR LAS FILAS DE LA GRILLA QUE SE PASA POR PARAMETROS.
//Y SI EL PARAMETRO VALOR ES 'S' SE PINTA LA FILA EN ROJO
procedure TFPrincipal.PintarFilasGrillasConBajas(grilla: TDBGrid; valor:string; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  a: TRect;
begin
  if grilla.DataSource.DataSet.IsEmpty then
    exit;

  a:= Rect;

  if (valor = 'S') then //si el registro esta dado de baja
  begin
    grilla.Canvas.Font.Color := clBlack;
    grilla.Canvas.Brush.Color:= baja;
    if (gdFocused in State) or (gdSelected in State) then
    begin
      grilla.Canvas.Font.Color := clwhite;
      grilla.Canvas.Brush.Color:= bajaFocus;
      grilla.Canvas.Font.Style := grilla.Canvas.Font.Style + [fsBold];
    end
  end;

  if (THackDBGrid(grilla).DataLink.ActiveRecord + 1 = THackDBGrid(grilla).Row) then
  begin
    a.Top:= a.Top + 1;
    a.Bottom:= a.Bottom - 1;

    grilla.Canvas.Font.Color:= clWhite;
    grilla.Canvas.Brush.Color:= resaltado;
    if (gdFocused in State) or (gdSelected in State) then
    begin
      grilla.Canvas.Brush.Color:= resaltadoFocus;
      grilla.Canvas.Font.Style := grilla.Canvas.Font.Style + [fsBold];
    end;
  end;

  grilla.DefaultDrawColumnCell(a,datacol,column,state);
end;


procedure TFPrincipal.CambiarContraseniaClick(Sender: TObject);
var
  i:integer;
begin
  dm.EKUsrLogin.CambiarClave;
end;


procedure TFPrincipal.SalirClick(Sender: TObject);
begin
  cerrar_sistema;
end;


procedure TFPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if not cerrar_sistema then
    CanClose := false;
end;


procedure TFPrincipal.AConfigImpresoraExecute(Sender: TObject);
begin
  TPrinterSetupDialog.Create(Application).Execute;
end;


procedure TFPrincipal.AAcerca_deExecute(Sender: TObject);
begin
  Application.CreateForm(TFAcerca_De,FAcerca_De);
  FAcerca_De.ShowModal;
  FAcerca_De.Release;
end;


procedure TFPrincipal.AABMProductosExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABMProductos, FABMProductos);
end;


procedure TFPrincipal.AABMClientesExecute(Sender: TObject);
begin
//  EKVentanas1.Abrir(Sender, TFABMClientes, FABMClientes);
end;


procedure TFPrincipal.AABMEmpresasExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABMEmpresas, FABMEmpresas);
end;


procedure TFPrincipal.AABM_ColoresExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_Colores, FABM_Colores);
end;


procedure TFPrincipal.AABM_TipoArticuloExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_TipoArticulo, FABM_TipoArticulo);
end;


procedure TFPrincipal.AABM_MarcasExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_Marcas, FABM_Marcas);
end;


procedure TFPrincipal.AABM_ArticuloMedidaExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_ArticuloMedida, FABM_ArticuloMedida);
end;


procedure TFPrincipal.AABM_TipoEmpresaExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_TipoEmpresa, FABM_TipoEmpresa);
end;


procedure TFPrincipal.AABM_SucursalExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_Sucursal, FABM_Sucursal);
end;


procedure TFPrincipal.AABM_SucursalPosicExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_SucursalPosicion, FABM_SucursalPosicion);
end;


procedure TFPrincipal.AABM_ProductoStockExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_ProductoStock, FABM_ProductoStock);
end;


procedure TFPrincipal.AABM_PersonasExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_Personas, FABM_Personas);
end;


procedure TFPrincipal.AImprimirEtiquetaExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFImprimirEtiquetas, FImprimirEtiquetas);
end;


procedure TFPrincipal.ABandejaMailExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFMailBandeja, FMailBandeja);
end;


procedure TFPrincipal.AConfigMailExecute(Sender: TObject);
begin
  Application.CreateForm(TFMailConfigurar, FMailConfigurar);
  FMailConfigurar.ShowModal;
end;


procedure TFPrincipal.AEnviarMailExecute(Sender: TObject);
begin
  Application.CreateForm(TFMailEnviar, FMailEnviar);
  FMailEnviar.ShowModal;
end;


procedure TFPrincipal.AABM_ArticuloExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_Articulo, FABM_Articulo);
end;


procedure TFPrincipal.AABM_TipoIvaExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_TipoIVA, FABM_TipoIVA);
end;

procedure TFPrincipal.AABM_TipoComprobanteExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_TipoComprobante, FABM_TipoComprobante);
end;


procedure TFPrincipal.AABM_TipoMedioPagoExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_TipoFormaPago, FABM_TipoFormaPago);
end;


procedure TFPrincipal.AABM_CuentaExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_Cuentas, FABM_Cuentas);
end;


procedure TFPrincipal.AABM_PreciosExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_Precios, FABM_Precios);
end;


procedure TFPrincipal.AABM_ComprobanteExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_Comprobantes, FABM_Comprobantes);
end;


procedure TFPrincipal.ACajeroExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFCajero, FCajero);
end;


procedure TFPrincipal.AMovInternosExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFMovimientosInternos, FMovimientosInternos);
end;


procedure TFPrincipal.AABM_TipoMovExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_TipoMovimiento, FABM_TipoMovimiento);
end;


procedure TFPrincipal.ATransferirStockExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFTransferirStock, FTransferirStock);
end;


procedure TFPrincipal.ACtaCte_ClienteExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFCuentaCorriente, FCuentaCorriente);
end;


procedure TFPrincipal.AEstad_MovInternosExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFEstadisticaMovInternos, FEstadisticaMovInternos);
end;


procedure TFPrincipal.AEstad_VentasExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFEstadisticaVentas, FEstadisticaVentas);
end;


procedure TFPrincipal.AEstad_DisponibExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFEstadisticaDisponibilidades, FEstadisticaDisponibilidades);
end;


procedure TFPrincipal.AArqueo_CajaExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFArqueo_Caja, FArqueo_Caja);
end;


procedure TFPrincipal.AEstad_StockExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFEstadisticaStock, FEstadisticaStock);
end;


procedure TFPrincipal.AABM_CPB_ReciboExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_CPB_Recibo, FABM_CPB_Recibo);
end;


procedure TFPrincipal.AABM_CPB_RemitoExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_CPB_Remito, FABM_CPB_Remito);
end;


procedure TFPrincipal.AABM_CPB_OrdenPagoExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_CPB_OrdenPago, FABM_CPB_OrdenPago);
end;


procedure TFPrincipal.AABM_CPB_PresupuestoExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_CPB_Presupuesto, FABM_CPB_Presupuesto);
end;


procedure TFPrincipal.AABM_CPB_NotaPedidoExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_CPB_NotaPedido, FABM_CPB_NotaPedido);
end;


procedure TFPrincipal.AABM_CPB_FacturaCompExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_CPB_FacturaCompra, FABM_CPB_FacturaCompra);
end;


procedure TFPrincipal.AABM_CPB_DevolucionExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_CPB_Devolucion, FABM_CPB_Devolucion);
end;


procedure TFPrincipal.APreventaExecute(Sender: TObject);
begin
   EKVentanas1.Abrir(Sender, TFABM_Preventa, FABM_Preventa);
end;


procedure TFPrincipal.ACtaCte_ProveedorExecute(Sender: TObject);
begin
   EKVentanas1.Abrir(Sender, TFCuentaCorriente_Proveedor, FCuentaCorriente_Proveedor);
end;


procedure TFPrincipal.AAuditoriaExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFAuditoria, FAuditoria);
end;


procedure TFPrincipal.AConfigGralExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfiguracion, FConfiguracion);
  FConfiguracion.ShowModal;
  FConfiguracion.Release;
end;


procedure TFPrincipal.AABM_CPB_TransferExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_CPB_Transferencia, FABM_CPB_Transferencia);
end;


procedure TFPrincipal.ADebuggingExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFDebugging, FDebugging);
end;

procedure TFPrincipal.AReimpresionComprobExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFReimpresionComprobantes, FReimpresionComprobantes);
end;

procedure TFPrincipal.AABM_PersonasPtosExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_PersonasPuntos, FABM_PersonasPuntos);
end;

procedure TFPrincipal.AConsulta_PreciosExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFConsulta_Precios, FConsulta_Precios);
end;

procedure TFPrincipal.AShutdownExecute(Sender: TObject);
begin

 if dm.EKModelo.iniciar_transaccion('shutdown', [dm.ZQ_Configuracion_Variables]) then
  begin
   dm.ZQ_Configuracion_Variables.Open;
   dm.ZQ_Configuracion_Variables.Locate('CLAVE', 'shutdown', []);
   dm.ZQ_Configuracion_Variables.Edit;

   dm.ZQ_Configuracion_VariablesTEXTO.AsString := 'SI';
   dm.ZQ_Configuracion_Variables.Post;

   if not (dm.EKModelo.finalizar_transaccion('shutdown')) then
      dm.EKModelo.cancelar_transaccion('shutdown');
  end;

  WinExec(Pchar(
            Format('%s -user SYSDBA -password masterkey %s:%s -shut -force 0',[ExtractFilePath(Application.ExeName)+'gfix.exe',dm.Conexion.HostName,dm.Conexion.Database]))
            ,SW_HIDE);

end;

end.
