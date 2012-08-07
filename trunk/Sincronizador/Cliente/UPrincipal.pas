unit UPrincipal;

{------------- OBSERVACIONES -------------------------------------------
* PARA QUE FUNCIONE:
  * VERIFICAR QUE EXISTA EL USUARIO SINCRO EN LAS BASES DE DATOS CON EL PASSWORD ´sincro´ Y TENGA TODOS LOS PERMISOS.
  * VERIFICAR QUE EN LA TABLA DEL SERVIDOR ESTEN BIEN CONFIGURADOS LOS CLIENTES, TIENE QUE TENER EL MISMO NOMBRE
    QUE FIGURA EN LA PARTE DE LA CONFIGURACION PARA EL NOMBRE DE ARCHIVO DEL CLINTE.
  * EN LA CONFIGURACION VER QUE EL NOMBRE DE ARCHIVO DEL SERVIDOR SE IGUAL AL ARCHIVO QUE SUBE EL SERVIDOR.

  * REVISAR EL TEMA DE ESTOS TRIGGERS:
     - COMPROBANTE_CTACTE_SALDO
     - COMPROBANTE_DETALLE_AIU0
     - COMPROBANTE_FPAGO_CALC_SALDO

* HACER UNA VALIDACION PARA EL CAMBIO DE MODO, PQ SI ESTA EN MODO CLIENTE CON LA BASE
  DEL SERVIDOR VA A EXPLOTAR.
* VER EL TEMA DE LOS NOMBRE DE ARCHIVO PARA EL CLIENTE Y EL SERVIDOR EN LA CONFIGURACION
  EN MODO CLIENTE TIENE QUE TENER EL MISMO NOMBRE QUE EL QUE FIGURA EN LA BASE DEL SERVIDOR
  PARA ESE CLIENTE, SINO EN MODO SERVIDOR NUNCA VA ENCONTRAR LOS ARCHIVOS SUBIDO POR ESTE CLIENTE.

* Cuando estoy subiendo un archivo al ftp, subirlo con un nombre distinto al que deberia ser
  y cuando este subido por completo renombrarlo al nombre original, porque sino bajaria un archivo
  que esta po la mitad.

* Ver que cuando hago algo a pata que se detenga el timmer.

* Ver el tema de los tringuer que se disparan con las inserciones de otra tabla, por ejemplo
  el de las ventas que actualiza el stock y el stock tambien se actualiza por auditoria.
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ZAbstractRODataset, ZAbstractDataset, Registry,
  ZDataset, ZConnection, StdCtrls, ZSqlUpdate, EKIni, ExtCtrls, EKEdit,
  ZStoredProcedure, dxBar, dxBarExtItems, EKIconizacion, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdFTP, DBClient, ComCtrls, Buttons, Provider, DBCtrls, EKOrdenarGrilla, SqlTimSt,
  Menus, midas, IdException, ImgList, EKImageList32, IdStack;

const
  InputBoxMessage = WM_USER + 200; //para que hacer el imputBox con password

type
  TFPrincipal = class(TForm)
    ZQ_ActualizarBase: TZQuery;
    panelContenedor: TPanel;
    panelAbajo: TPanel;
    Timer: TTimer;
    panelDatos: TPanel;
    ZQ_Configuracion: TZQuery;
    ZQ_ConfiguracionDB_SUCURSAL: TIntegerField;
    ZQ_ConfiguracionID_SUCURSAL: TIntegerField;
    ZQ_ConfiguracionULTIMA_FECHA: TDateTimeField;
    dxBarABM: TdxBarManager;
    btnProcesar: TdxBarLargeButton;
    btnOcultar: TdxBarLargeButton;
    btnConectar: TdxBarLargeButton;
    btnSubir: TdxBarLargeButton;
    btnBajar: TdxBarLargeButton;
    btnBorrarLog: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    Splitter1: TSplitter;
    DS_ProcesarNovedades: TDataSource;
    CD_NovedadesCliente: TClientDataSet;
    DS_NovedadesCliente: TDataSource;
    ZQ_NovedadesCliente: TZQuery;
    DBGridUpload: TDBGrid;
    btnConfig: TdxBarLargeButton;
    panelTitulo: TPanel;
    Label1: TLabel;
    lblTiempoRestante: TLabel;
    DSP_NovedadesCliente: TDataSetProvider;
    CD_NovedadesClienteOPERATION: TStringField;
    CD_NovedadesClienteDATE_TIME: TDateTimeField;
    CD_NovedadesClienteUSER_NAME: TStringField;
    CD_NovedadesClienteTABLE_NAME: TStringField;
    CD_NovedadesClienteKEY_FIELD: TStringField;
    CD_NovedadesClienteKEY_VALUE: TStringField;
    CD_NovedadesClienteFIELD_NAME: TStringField;
    CD_NovedadesClienteNEW_VALUE: TStringField;
    CD_NovedadesClienteOLD_VALUE: TStringField;
    ZQ_NovedadesClienteCant: TZQuery;
    ZQ_NovedadesClienteCantCOUNT: TIntegerField;
    ZQ_CrearLote: TZQuery;
    ZQ_UltimoLote: TZQuery;
    ZQ_UltimoLoteULTIMO_LOTE: TIntegerField;
    ZQ_UltimoArchivoServer: TZQuery;
    ZQ_UltimoArchivoServerULTIMO_ARCHIVO: TStringField;
    PanelLog: TPanel;
    memoLog: TMemo;
    Label2: TLabel;
    lblTituloLog: TLabel;
    Splitter2: TSplitter;
    CD_Tablas_Actualizar: TClientDataSet;
    CD_Tablas_Actualizar_Tabla: TStringField;
    CD_Tablas_Actualizar_CampoClave: TStringField;
    CD_Tablas_Actualizar_Clave: TStringField;
    CD_Tablas_Actualizar_Operacion: TStringField;
    CD_Tablas_Actualizar_Fecha: TDateTimeField;
    CD_ProcesarNovedades: TClientDataSet;
    CD_ProcesarNovedadesOPERATION: TStringField;
    CD_ProcesarNovedadesDATE_TIME: TDateTimeField;
    CD_ProcesarNovedadesUSER_NAME: TStringField;
    CD_ProcesarNovedadesTABLE_NAME: TStringField;
    CD_ProcesarNovedadesKEY_FIELD: TStringField;
    CD_ProcesarNovedadesKEY_VALUE: TStringField;
    CD_ProcesarNovedadesFIELD_NAME: TStringField;
    CD_ProcesarNovedadesNEW_VALUE: TStringField;
    CD_ProcesarNovedadesOLD_VALUE: TStringField;
    DS_Tablas_Actualizar: TDataSource;
    PanelTablas: TPanel;
    DBGridDownload: TDBGrid;
    DBGridTablasActualizar: TDBGrid;
    CD_Tablas_Actualizar_Id: TStringField;
    Splitter3: TSplitter;
    Label4: TLabel;
    PanelDatosXML: TPanel;
    Label5: TLabel;
    lblTituloSincro: TLabel;
    ZQ_GrabarUltimoArchivoServer: TZQuery;
    ZQ_GrabarUltimoArchivoServerID_SINCRO_SERVER: TIntegerField;
    ZQ_GrabarUltimoArchivoServerFECHA_Y_HORA: TDateTimeField;
    ZQ_GrabarUltimoArchivoServerULTIMO_ARCHIVO: TStringField;
    CD_ListaNovedades: TClientDataSet;
    DS_ListaNovedades: TDataSource;
    CD_ListaNovedades_NombreArchivo: TStringField;
    CD_ListaNovedades_Estado: TStringField;
    DBGridListaNovedades: TDBGrid;
    EKOrdGridDownload: TEKOrdenarGrilla;
    EKOrdGridListaNovedades: TEKOrdenarGrilla;
    EKOrdGridUpload: TEKOrdenarGrilla;
    EKOrdGridTablasActualizar: TEKOrdenarGrilla;
    PanelpBar_Ftp: TPanel;
    PanelpBar_Novedades: TPanel;
    pBar_Novedades: TProgressBar;
    pBar_Ftp: TProgressBar;
    Label6: TLabel;
    Label7: TLabel;
    panelListaNovedades: TPanel;
    StatusBar1: TStatusBar;
    CD_ListaNovedades_Origen: TStringField;
    ZQ_ListadoClientes: TZQuery;
    ZQ_UltimoArchivoCliente: TZQuery;
    ZQ_UltimoArchivoClienteID_SINCRO_CLI_ARCHIVO: TIntegerField;
    ZQ_UltimoArchivoClienteID_SINCRO_CLIENTE: TIntegerField;
    ZQ_UltimoArchivoClienteFECHA_Y_HORA: TDateTimeField;
    ZQ_UltimoArchivoClienteULTIMO_ARCHIVO: TStringField;
    ZQ_ListadoClientesID_SINCRO_CLIENTE: TIntegerField;
    ZQ_ListadoClientesNOMBRE_CLIENTE: TStringField;
    ZQ_ListadoClientesID_CLIENTE: TIntegerField;
    ZQ_Sinc_Tabla: TZQuery;
    ZQ_Sinc_TablaID: TLargeintField;
    ZQ_Sinc_TablaTABLE_NAME: TStringField;
    ZQ_Sinc_TablaOPERATION: TStringField;
    ZQ_Sinc_TablaDATE_TIME: TDateTimeField;
    ZQ_Sinc_TablaUSER_NAME: TStringField;
    ZQ_Sinc_TablaID_SINCRO_LOTE: TIntegerField;
    ZQ_Sinc_Clave: TZQuery;
    ZQ_Sinc_Campo: TZQuery;
    ZQ_Sinc_Blob: TZQuery;
    ZQ_GrabarUltimoArchivoCliente: TZQuery;
    ZQ_Sinc_ClaveLOG_TABLES_ID: TLargeintField;
    ZQ_Sinc_ClaveKEY_FIELD: TStringField;
    ZQ_Sinc_ClaveKEY_VALUE: TStringField;
    ZQ_Sinc_CampoLOG_TABLES_ID: TLargeintField;
    ZQ_Sinc_CampoFIELD_NAME: TStringField;
    ZQ_Sinc_CampoOLD_VALUE: TStringField;
    ZQ_Sinc_CampoNEW_VALUE: TStringField;
    ZQ_Sinc_BlobLOG_TABLES_ID: TLargeintField;
    ZQ_Sinc_BlobFIELD_NAME: TStringField;
    ZQ_Sinc_BlobOLD_CHAR_VALUE: TStringField;
    ZQ_Sinc_BlobNEW_CHAR_VALUE: TStringField;
    ZQ_Sinc_BlobOLD_BLOB_VALUE: TBlobField;
    ZQ_Sinc_BlobNEW_BLOB_VALUE: TBlobField;
    ZQ_GrabarUltimoArchivoClienteID_SINCRO_CLI_ARCHIVO: TIntegerField;
    ZQ_GrabarUltimoArchivoClienteID_SINCRO_CLIENTE: TIntegerField;
    ZQ_GrabarUltimoArchivoClienteFECHA_Y_HORA: TDateTimeField;
    ZQ_GrabarUltimoArchivoClienteULTIMO_ARCHIVO: TStringField;
    CD_ListaNovedades_idCliente: TIntegerField;
    CD_Tablas_Actualizar_Usuario: TStringField;
    ZQ_NovedadesServer: TZQuery;
    ZQ_NovedadesServerCant: TZQuery;
    DS_NovedadesServer: TDataSource;
    DSP_NovedadesServer: TDataSetProvider;
    CD_NovedadesServer: TClientDataSet;
    CD_NovedadesServerOPERATION: TStringField;
    CD_NovedadesServerDATE_TIME: TDateTimeField;
    CD_NovedadesServerUSER_NAME: TStringField;
    CD_NovedadesServerTABLE_NAME: TStringField;
    CD_NovedadesServerKEY_FIELD: TStringField;
    CD_NovedadesServerKEY_VALUE: TStringField;
    CD_NovedadesServerFIELD_NAME: TStringField;
    CD_NovedadesServerNEW_VALUE: TStringField;
    CD_NovedadesServerOLD_VALUE: TStringField;
    ZQ_NovedadesServerCantCOUNT: TIntegerField;
    ZQ_NovedadesServerOPERATION: TStringField;
    ZQ_NovedadesServerDATE_TIME: TDateTimeField;
    ZQ_NovedadesServerUSER_NAME: TStringField;
    ZQ_NovedadesServerTABLE_NAME: TStringField;
    ZQ_NovedadesServerKEY_FIELD: TStringField;
    ZQ_NovedadesServerKEY_VALUE: TStringField;
    ZQ_NovedadesServerFIELD_NAME: TStringField;
    ZQ_NovedadesServerNEW_VALUE: TStringField;
    ZQ_NovedadesServerOLD_VALUE: TStringField;
    ZQ_NovedadesServerFBLOB_NAME: TStringField;
    ZQ_NovedadesServerFBLOB_OLD_CHAR_VALUE: TStringField;
    ZQ_NovedadesServerFBLOB_NEW_CHAR_VALUE: TStringField;
    ZQ_NovedadesServerFBLOB_OLD_BLOB_VALUE: TBlobField;
    ZQ_NovedadesServerFBLOB_NEW_BLOB_VALUE: TBlobField;
    CD_NovedadesServerFBLOB_NAME: TStringField;
    CD_NovedadesServerFBLOB_OLD_CHAR_VALUE: TStringField;
    CD_NovedadesServerFBLOB_NEW_CHAR_VALUE: TStringField;
    CD_NovedadesServerFBLOB_OLD_BLOB_VALUE: TBlobField;
    CD_NovedadesServerFBLOB_NEW_BLOB_VALUE: TBlobField;
    CD_NovedadesClienteFBLOB_NAME: TStringField;
    CD_NovedadesClienteFBLOB_OLD_CHAR_VALUE: TStringField;
    CD_NovedadesClienteFBLOB_NEW_CHAR_VALUE: TStringField;
    CD_NovedadesClienteFBLOB_OLD_BLOB_VALUE: TBlobField;
    CD_NovedadesClienteFBLOB_NEW_BLOB_VALUE: TBlobField;
    CD_ProcesarNovedadesFBLOB_NAME: TStringField;
    CD_ProcesarNovedadesFBLOB_OLD_CHAR_VALUE: TStringField;
    CD_ProcesarNovedadesFBLOB_NEW_CHAR_VALUE: TStringField;
    CD_ProcesarNovedadesFBLOB_OLD_BLOB_VALUE: TBlobField;
    CD_ProcesarNovedadesFBLOB_NEW_BLOB_VALUE: TBlobField;
    ZQ_NovedadesClienteOPERATION: TStringField;
    ZQ_NovedadesClienteDATE_TIME: TDateTimeField;
    ZQ_NovedadesClienteUSER_NAME: TStringField;
    ZQ_NovedadesClienteTABLE_NAME: TStringField;
    ZQ_NovedadesClienteKEY_FIELD: TStringField;
    ZQ_NovedadesClienteKEY_VALUE: TStringField;
    ZQ_NovedadesClienteFIELD_NAME: TStringField;
    ZQ_NovedadesClienteNEW_VALUE: TStringField;
    ZQ_NovedadesClienteOLD_VALUE: TStringField;
    ZQ_NovedadesClienteFBLOB_NAME: TStringField;
    ZQ_NovedadesClienteFBLOB_OLD_CHAR_VALUE: TStringField;
    ZQ_NovedadesClienteFBLOB_NEW_CHAR_VALUE: TStringField;
    ZQ_NovedadesClienteFBLOB_OLD_BLOB_VALUE: TBlobField;
    ZQ_NovedadesClienteFBLOB_NEW_BLOB_VALUE: TBlobField;
    ZQ_VerificarUpdate: TZQuery;
    ZQ_VerificarUpdateID: TLargeintField;
    PopupMenu: TPopupMenu;
    popUpItemSalir: TMenuItem;
    popUpItemMostrarOcultar: TMenuItem;
    ZQ_NovedadesClienteID: TIntegerField;
    ZQ_NovedadesClienteCantMIN: TIntegerField;
    ZQ_NovedadesClienteCantMAX: TIntegerField;
    ZQ_NovedadesServerID: TIntegerField;
    ZQ_NovedadesServerCantMIN: TIntegerField;
    ZQ_NovedadesServerCantMAX: TIntegerField;
    CD_NovedadesClienteID: TIntegerField;
    CD_NovedadesServerID: TIntegerField;
    CD_ProcesarNovedadesID: TIntegerField;
    EKImageListIcono: TEKImageList32;
    btnPararContinuar: TButton;
    TimerError: TTimer;
    procedure PintarFilasGrillas(grilla: TDBGrid; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridTablasActualizarDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridListaNovedadesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridDownloadDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridUploadDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerTimer(Sender: TObject);
    procedure cargarIni();
    function getFechayHoraString: string;
    function getFechayHora: TDateTime;
    procedure guardarArchivoLog();
    function conectarDBLectura(): boolean;
    function conectarDBEscritura(): boolean;
    procedure configGrillas(opcion: integer); //0 = Cargar configuracion; 1 = Guardar configuracion
    procedure FormActivate(Sender: TObject);
    procedure ponerTodoEnCero();
    procedure QuitarProgramaInicio;
    procedure PonerProgramaInicio;
    //procedimientos con el servidor FTP
    function FTP_conectarse(): integer;
    function FTP_desconectarse(): integer;
    function FTP_SubirArchivo(directorio, archivo: string): integer;
    function FTP_BajarArchivo(directorio, archivo: string): integer;
    function FTP_BorrarArchivo(directorio, archivo: string): integer;
    function FTP_ExisteArchivo(directorio, archivo: string): integer;
    function FTP_BuscarListaArchivos(directorio, inicio_nombre_archivo, ultimo_archivo, origen_archivo: string): integer;
    //procedimientos de los botones
    procedure btnSubirClick(Sender: TObject);
    procedure btnBajarClick(Sender: TObject);
    procedure btnProcesarClick(Sender: TObject);
    procedure btnBorrarLogClick(Sender: TObject);
    procedure btnOcultarClick(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    //procedientos compartidos modo CLIENTE y SERVIDOR
    function guardar_lote(archivo: string): boolean;
    function nro_lote_actual: integer;
    procedure obtener_tablas_actualizar();
    //MODO CLIENTE------------------------------------------
    //procedimientos para subir novedades del cliente al servidor FTP
    procedure buscarNovedadesCliente();
    procedure subirNovedadesCliente();
    procedure ZQ_NovedadesClienteAfterScroll(DataSet: TDataSet);
    //procedimientos bajar novedades del servidor FTP al cliente
    procedure bajarNovedadesServer();
    //procedimientos para procesar los archivos de novedades del servidor descargados desde el servidor FTP
    procedure procesarNovedadesServer();
    function actualizar_base_local(archivo: string): boolean;
    //MODO SERVIDOR------------------------------------------
    //procedimientos para subir novedades del servidor al servidor FTP
    procedure buscarNovedadesServer();
    procedure subirNovedadesServer();
    procedure ZQ_NovedadesServerAfterScroll(DataSet: TDataSet);
    //procedimientos bajar novedades de los clientes desde el servidor FTP al servidor
    function buscarNovedadesClientes(): boolean;
    procedure bajarNovedadesClientes();
    //procedimientos para procesar los archivos de novedades de los clientes descargados desde el servidor FTP
    procedure procesarNovedadesClientes();
    function actualizar_base_server(id_cliente: integer; archivo: string): boolean;
    procedure popUpItemSalirClick(Sender: TObject);
    procedure popUpItemMostrarOcultarClick(Sender: TObject);
    procedure subirNovedades();
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnPararContinuarClick(Sender: TObject);
    procedure TimerErrorTimer(Sender: TObject);
    procedure lblTituloSincroDblClick(Sender: TObject);
  Private
    procedure InputBoxSetPasswordChar(var Msg: TMessage); Message InputBoxMessage;
  Public
    iconoSistema, iconoError: TIcon;
    auxCambiarIcono: integer;
    modo: string;
    lunes, martes, miercoles, jueves, viernes, sabado, domingo,
      intervalo, dia_hoy, tiempo_restante: integer;
    dirAplica, nameAplica: string;
    db_host, db_name, db_user, db_pass: string;
    ftp_host, ftp_user, ftp_pass: string;
    dirFTP_Server, dirFTP_Cliente, dirLocal, dirLog: string;
    archivo_cliente, archivo_server: string;
    nserie_cliente, nserie_server, rango_Novedades: integer;
    posicion_PBar: integer;
    encendido: string;
    ultFecha: TDate;
    lote_commit, loteGenerado, ultLoteR, ultLoteL, ultSuc, idSucursal: integer;
    id_base_local: string;
    password_configuracion: string;
    estado_sincronizando: boolean;
    ini_windows, ini_minimizar: boolean;
    resultado_SubirNovedades, resultado_BajarNovedades, resultado_ProcesarNovedades: boolean;
    cantidadNovedades, idMinNovedades, idMaxNovedades: integer;
    error_servidor_FTP: string;
    error_sql: string;
    intentos_Conexion_FTP: integer;
    sincronizador_activado: boolean;
    colorError, colorNormal: TColor;
  end;

var
  FPrincipal: TFPrincipal;

type
  THackDBGrid = class(TDBGrid);

const
  transaccion_cliente = 'NOVEDADES CLIENTE';
  transaccion_sertver = 'NOVEDADES SERVIDOR';
  transaccion_actualizar_base = 'ACTUALIZANDO BASE';
  modo_cliente = 'CLIENTE';
  modo_servidor = 'SERVIDOR';
  FTP_ERROR_GRAL = -1;
  FTP_ERROR_CCG = -2; //Connection closed gracefully
  FTP_OK = 0;


implementation

uses UUtil_Procesos, UDM, UConfiguracion, IniFiles, DateUtils, StrUtils,
  EKModelo;

{$R *.dfm}

//*********************************************************************
//                PROCEDIMIENTOS AGREGAR Y QUITAR ARRANQUE CON WINDOWS
//*********************************************************************

procedure TFPrincipal.PonerProgramaInicio;
var
  Registro: TRegistry;
begin
  Registro:= TRegistry.Create;
  Registro.RootKey:= HKEY_CURRENT_USER; //HKEY_LOCAL_MACHINE;

  if Registro.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run', true) then
  begin
    Registro.WriteString('EKSincronizador', ExtractFilePath(Application.ExeName) + ExtractFileName(Application.ExeName));
    Registro.CloseKey;
  end;

  Registro.Free;
end;


procedure TFPrincipal.QuitarProgramaInicio;
var
  Registro: TRegistry;
begin
  Registro:= TRegistry.Create;
  Registro.RootKey:= HKEY_CURRENT_USER; //HKEY_LOCAL_MACHINE;

  if Registro.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run', true) then
  begin
    // ¿Existe el valor que vamos a borrar?
    if Registro.ValueExists('EKSincronizador') then
      Registro.DeleteValue('EKSincronizador');

    Registro.CloseKey;
  end;

  Registro.Free;
end;


//*********************************************************************
//                PROCEDIMIENTOS DE PINTADO DE GRILLAS
//*********************************************************************

procedure TFPrincipal.PintarFilasGrillas(grilla: TDBGrid; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  a: TRect;
begin
  if grilla.DataSource.DataSet.IsEmpty then
    exit;

  a:= Rect;

  if (THackDBGrid(grilla).DataLink.ActiveRecord + 1 = THackDBGrid(grilla).Row) then
  begin
    grilla.Canvas.Font.Color:= clWhite;
    grilla.Canvas.Brush.Color:= $00818181;
    if (gdFocused in State) or (gdSelected in State) then
    begin
      grilla.Canvas.Brush.Color:= $002E1701;
      grilla.Canvas.Font.Style:= grilla.Canvas.Font.Style + [fsBold];
    end;
  end;

  grilla.DefaultDrawColumnCell(a, datacol, column, state);
end;

procedure TFPrincipal.DBGridTablasActualizarDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  PintarFilasGrillas(DBGridTablasActualizar, Rect, DataCol, Column, State);
end;

procedure TFPrincipal.DBGridListaNovedadesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  PintarFilasGrillas(DBGridListaNovedades, Rect, DataCol, Column, State);
end;

procedure TFPrincipal.DBGridDownloadDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  PintarFilasGrillas(DBGridDownload, Rect, DataCol, Column, State);
end;

procedure TFPrincipal.DBGridUploadDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  PintarFilasGrillas(DBGridUpload, Rect, DataCol, Column, State);
end;


//*********************************************************************
//                PROCEDIMIENTOS GENERALES
//*********************************************************************
//paras utilizar el InputBox con los caracteres como password

procedure TFPrincipal.InputBoxSetPasswordChar(var Msg: TMessage);
var
  hInputForm, hEdit, hButton: HWND;
begin
  hInputForm:= Screen.Forms[0].Handle;
  if (hInputForm <> 0) then
  begin
    hEdit:= FindWindowEx(hInputForm, 0, 'TEdit', nil);
    SendMessage(hEdit, EM_SETPASSWORDCHAR, Ord('*'), 0);
  end;
end;

//OnCreate

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  auxCambiarIcono:= 0;

  colorNormal:= $0098FEC4;
  colorError:= $008080FF;

  iconoError:= TIcon.Create;
  EKImageListIcono.GetIcon(2, iconoError);
  iconoSistema:= TIcon.Create;

  intentos_Conexion_FTP:= 3;
  estado_sincronizando:= false;
  configGrillas(0); //cargo la config de las grillas

  nserie_cliente:= 0;
  nserie_server:= 0;
  id_base_local:= '-1';

  dirAplica:= ExtractFilePath(Application.ExeName);
  nameAplica:= ExtractFileName(Application.ExeName);

  //chequeo que no este ejecutando el sistema
  if ParamCount = 0 then
  begin
    if IsProcess(nameAplica) then
    begin
      Application.MessageBox('Ya hay una instancia del programa ejecutándose.', 'Atención');
      ExitProcess(0);
    end;
  end;

  cargarIni;

  dm.ConexionLectura.Disconnect;
  dm.ConexionEscritura.Disconnect;
  DM.IdFTP.Disconnect;
  CD_NovedadesCliente.CreateDataSet;
  CD_NovedadesServer.CreateDataSet;
  CD_ProcesarNovedades.CreateDataSet;
  CD_Tablas_Actualizar.CreateDataSet;
  CD_ListaNovedades.CreateDataSet;

  memoLog.Lines.Clear;
  memoLog.Lines.Add('...### Sincronización SiGeFa ###...');

  if ini_minimizar then
  begin
    Visible:= False;
    Application.ShowMainForm:= False;
//    dm.EKIconizar.mostrarGlobo('Sincronizador ' + modo, 'Iniciando sincronizador, doble click para maximizar.');
  end;
  Application.Title:= 'Sincronizador ' + modo;
end;


//OnClose

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    if dm.IdFTP.Connected then
      FTP_desconectarse;
  except
    exit;
  end;
end;


//OnActivte

procedure TFPrincipal.FormActivate(Sender: TObject);
begin
  if panelTitulo.Enabled then
    panelTitulo.SetFocus;
end;


//Cargar los datos del archivo ini

procedure TFPrincipal.cargarIni();
begin
  dm.EKInicio.Path:= ExtractFilePath(Application.ExeName);
  dm.EKInicio.abrir;
  //Cargo la configuracion general
  ini_minimizar:= dm.EKInicio.Ini.ValueExists('GENERAL', 'INICIAR_MINIMIZADO');
  ini_windows:= dm.EKInicio.Ini.ValueExists('GENERAL', 'INICIAR_CON_WINDOWS');

  modo:= dm.EKInicio.Ini.ReadString('SINCRONIZADOR', 'MODO', 'CLIENTE'); //cargo el modo, si no esta por defecto es CLIENTE
  if modo = modo_cliente then
    EKImageListIcono.GetIcon(0, iconoSistema)
  else
    EKImageListIcono.GetIcon(1, iconoSistema);
  dm.EKIconizar.Icon:= iconoSistema;

  password_configuracion:= dm.EKInicio.Desencripta(dm.EKInicio.Ini.ReadString('SINCRONIZADOR', 'CONFIG_PASS', ''));

  rango_Novedades:= dm.EKInicio.Ini.ReadInteger('SINCRONIZADOR', 'TAMANIO_LOTE', 500);

  db_host:= dm.EKInicio.Ini.ReadString('BASE', 'DB_HOST', '');
  db_name:= dm.EKInicio.Ini.ReadString('BASE', 'DB_NAME', '');
  db_user:= dm.EKInicio.Desencripta(dm.EKInicio.Ini.ReadString('BASE', 'DB_USER', ''));
  db_pass:= dm.EKInicio.Desencripta(dm.EKInicio.Ini.ReadString('BASE', 'DB_PASS', ''));

  ftp_host:= dm.EKInicio.Ini.ReadString('FTP', 'FTP_HOST', '');
  ftp_user:= dm.EKInicio.Desencripta(dm.EKInicio.Ini.ReadString('FTP', 'FTP_USER', ''));
  ftp_pass:= dm.EKInicio.Desencripta(dm.EKInicio.Ini.ReadString('FTP', 'FTP_PASS', ''));

  dirFTP_Server:= dm.EKInicio.Ini.ReadString('FTP', 'FTP_DIR_SERVER', '');
  dirFTP_Cliente:= dm.EKInicio.Ini.ReadString('FTP', 'FTP_DIR_PUBLIC', '');

  dirLocal:= dirAplica + 'Archivos\';
  if not DirectoryExists(dirLocal) then
    CreateDir(dirLocal);

  dirLog:= dirAplica + 'Log\';
  if not DirectoryExists(dirLog) then
    CreateDir(dirLog);

  archivo_cliente:= dm.EKInicio.Ini.ReadString('FILE', 'FILE_UPLOAD', 'sucursal_');
  archivo_server:= dm.EKInicio.Ini.ReadString('FILE', 'FILE_DOWNLOAD', 'server_');

  //configuro base
  DM.ConexionLectura.HostName:= db_host;
  DM.ConexionLectura.Database:= db_name;
  DM.ConexionLectura.User:= db_user;
  DM.ConexionLectura.Password:= db_pass;

  //configuro base para guardar las novedades bajadas del servidor
  DM.ConexionEscritura.HostName:= db_host;
  DM.ConexionEscritura.Database:= db_name;
  DM.ConexionEscritura.User:= 'sincro'; //para indicar que las modificaciones
  DM.ConexionEscritura.Password:= 'sincro'; //se realizaron con el sincronizador

  //configuro ftp
  DM.IdFTP.Host:= ftp_host;
  DM.IdFTP.Username:= ftp_user;
  DM.IdFTP.Password:= ftp_pass;

  //configuro los dias en que se sincronizq
  lunes:= dm.EKInicio.Ini.ReadInteger('CRONOGRAMA', 'LUNES', -1);
  martes:= dm.EKInicio.Ini.ReadInteger('CRONOGRAMA', 'MARTES', -1);
  miercoles:= dm.EKInicio.Ini.ReadInteger('CRONOGRAMA', 'MIERCOLES', -1);
  jueves:= dm.EKInicio.Ini.ReadInteger('CRONOGRAMA', 'JUEVES', -1);
  viernes:= dm.EKInicio.Ini.ReadInteger('CRONOGRAMA', 'VIERNES', -1);
  sabado:= dm.EKInicio.Ini.ReadInteger('CRONOGRAMA', 'SABADO', -1);
  domingo:= dm.EKInicio.Ini.ReadInteger('CRONOGRAMA', 'DOMINGO', -1);

  //obtengo el numero del dia de hoy
  dia_hoy:= DayOfTheWeek(getFechayHora);
  //Activo o desactivo el timmer de sincronizacion
  Timer.Enabled:= false;
  sincronizador_activado:= false;
  if (dia_hoy = lunes) or (dia_hoy = martes) or (dia_hoy = miercoles) or (dia_hoy = jueves) or (dia_hoy = viernes) or (dia_hoy = sabado) or (dia_hoy = domingo) then
  begin
    sincronizador_activado:= true;
    Timer.Enabled:= true;
  end;

  //configuro el timmer con el intervalo de la configuracion
  intervalo:= dm.EKInicio.Ini.ReadInteger('CRONOGRAMA', 'HORA', 1) * 3600 + dm.EKInicio.Ini.ReadInteger('CRONOGRAMA', 'MINUTOS', 0) * 60;
  tiempo_restante:= intervalo;
  lblTiempoRestante.Caption:= FormatDateTime('hh:nn:ss', tiempo_restante / SecsPerDay);

  dm.EKInicio.cerrar;

  lblTituloSincro.Caption:= db_name;
  FPrincipal.Caption:= 'Sincronizador en Modo ' + modo;
  Application.Title:= 'Sincronizador ' + modo;

  if ini_windows then
    PonerProgramaInicio
  else
    QuitarProgramaInicio;
end;


procedure TFPrincipal.TimerErrorTimer(Sender: TObject);
begin
  if memoLog.Color = colorError then
  begin
    if auxCambiarIcono = 0 then
    begin
      auxCambiarIcono:= 1;
      dm.EKIconizar.Icon:= iconoError;
    end
    else
    begin
      auxCambiarIcono:= 0;
      dm.EKIconizar.Icon:= iconoSistema;
    end;
  end
  else
    dm.EKIconizar.Icon:= iconoSistema;

  Application.ProcessMessages;
end;

//Timer para que realice la sincronizacion automaticamente

procedure TFPrincipal.TimerTimer(Sender: TObject);
begin
  if sincronizador_activado then
    if tiempo_restante = 0 then
    begin
      Timer.Enabled:= false;

      if modo = modo_cliente then
      begin
        bajarNovedadesServer;
        if resultado_BajarNovedades then
          procesarNovedadesServer;
      end
      else
      begin
        bajarNovedadesClientes;
        if resultado_BajarNovedades then
          procesarNovedadesClientes;
      end;
      subirNovedades();

      Timer.Enabled:= true;
      tiempo_restante:= intervalo;
    end
    else
    begin
      lblTiempoRestante.Caption:= FormatDateTime('hh:nn:ss', tiempo_restante / SecsPerDay);
      tiempo_restante:= tiempo_restante - 1;
    end
end;


//devuelve la fecha y hora como un dateTime

function TFPrincipal.getFechayHora: TDateTime;
begin
  result:= -1;
  if dm.ConexionLectura.Connected then
    result:= dm.ModeloLectura.FechayHora
  else
    result:= Now;
end;


//devuelve la fecha y hora como un string

function TFPrincipal.getFechayHoraString: string;
begin
  result:= '';
  if dm.ConexionLectura.Connected then
    result:= DateTimeToStr(dm.ModeloLectura.FechayHora)
  else
    result:= DateTimeToStr(Now);
end;


//boton salir

procedure TFPrincipal.btnSalirClick(Sender: TObject);
begin
  if Application.MessageBox('Si apaga el sincronizador dejará de actualizar la Base de Datos.', 'Atención', MB_OKCANCEL) = IDOK then
  begin
    configGrillas(1); //guardo la config de las grillas
    dm.ConexionLectura.Disconnect;
    dm.ConexionEscritura.Disconnect;

    guardarArchivoLog;
    dm.EKIconizar.Visible:= false;
    ExitProcess(0);
  end;
end;


//minimizar la aplicacion a la bandeja de sistema

procedure TFPrincipal.btnOcultarClick(Sender: TObject);
begin
  Visible:= False;
//  dm.EKIconizar.mostrarGlobo('Sincronizador ' + modo, 'Doble click sobre el icono para maximizar.');
end;


//abrir la pantalla de configuracion

procedure TFPrincipal.btnConfigClick(Sender: TObject);
var
  clave: string;
begin
  PostMessage(Handle, InputBoxMessage, 0, 0);
  clave:= InputBox('Clave de Ingreso', 'Clave', '');
  if clave = password_configuracion then
  begin
    Application.CreateForm(TFConfiguracion, FConfiguracion);
    FConfiguracion.ShowModal;
    FConfiguracion.Release;
  end
  else if clave <> '' then
    ShowMessage('La clave ingresada es incorrecta.');
end;


//guara el log en un archivo

procedure TFPrincipal.guardarArchivoLog();
var
  archivoLog: string;
begin
  try
    archivoLog:= Format('LOG_%s.TXT', [FormatDateTime('dd-mm-yyyy(hh.nn.ss)', getFechayHora)]);
    memoLog.Lines.SaveToFile(dirLog + archivoLog);
  except
    Application.MessageBox('Se produjo un error al crear el archivo de Log.', 'Atención', MB_OK + MB_ICONINFORMATION);
  end
end;


//borro el log, pero primero creo un archivo

procedure TFPrincipal.btnBorrarLogClick(Sender: TObject);
begin
  guardarArchivoLog;
  memoLog.Lines.Clear;
end;


//Limpia los progress bar y todos los client dataset

procedure TFPrincipal.ponerTodoEnCero;
begin
  pBar_Novedades.Position:= 0;
  pBar_Ftp.Position:= 0;

  CD_NovedadesCliente.EmptyDataSet;
  CD_NovedadesServer.EmptyDataSet;
  CD_ListaNovedades.EmptyDataSet;
  CD_Tablas_Actualizar.EmptyDataSet;
  CD_ProcesarNovedades.EmptyDataSet;
end;


//Configurar las grillas, grabar o cargar la configuracion

procedure TFPrincipal.configGrillas(opcion: integer); //0 = Cargar configuracion; 1 = Guardar configuracion
begin
  if opcion = 0 then
  begin
    EKOrdGridDownload.CargarConfigColumnas;
    EKOrdGridUpload.CargarConfigColumnas;
    EKOrdGridListaNovedades.CargarConfigColumnas;
    EKOrdGridTablasActualizar.CargarConfigColumnas;
  end
  else
  begin
    EKOrdGridDownload.GuardarConfigColumnas;
    EKOrdGridUpload.GuardarConfigColumnas;
    EKOrdGridListaNovedades.GuardarConfigColumnas;
    EKOrdGridTablasActualizar.GuardarConfigColumnas;
  end
end;


//*********************************************************************
//                PROCEDIMIENTOS DE CONEXION A LA BASE DE DATOS
//*********************************************************************
//Conectarse en modo lectura, para buscar novedades

function TFPrincipal.conectarDBLectura(): boolean;
begin
  result:= true;
  try
    begin
      DM.ConexionLectura.Disconnect;
      memoLog.Lines.Add(getFechayHoraString + ' - Conectando DB Local: ' + db_host + ':' + db_name + ' modo lectura.');
      DM.ConexionLectura.Connect;
      memoLog.Lines.Add(getFechayHoraString + ' - Conectado.');
    end
  except
    on E: Exception do
    begin
      result:= false;
      DM.ConexionLectura.Disconnect;
      memoLog.Lines.Add(' ERROR Conexión DB Local ' + db_host + ':' + db_name + ' modo lectura.');
    end;
  end;
end;


//Conectarse en modo escritura, para guardar las novedades

function TFPrincipal.conectarDBEscritura(): boolean;
begin
  result:= true;
  try
    begin
      DM.ConexionEscritura.Disconnect;
      memoLog.Lines.Add(getFechayHoraString + ' - Conectando DB Local: ' + db_host + ':' + db_name + ' modo escritura.');
      DM.ConexionEscritura.Connect;
      memoLog.Lines.Add(getFechayHoraString + ' - Conectado.');
    end
  except
    on E: Exception do
    begin
      result:= false;
      DM.ConexionEscritura.Disconnect;
      memoLog.Lines.Add(' ERROR Conexión DB Local ' + db_host + ':' + db_name + ' modo escritura');
    end;
  end;
end;


//Subir novedades Generico (cliente - servidor)

procedure TFPrincipal.subirNovedades;
var
  salir: boolean;
begin
  RemoveComponent(dm.IdFTP);
  dm.IdFTP.Free;
  dm.IdFTP:= Nil;
  dm.IdFTP:= TIdFTP.Create(Self);
  DM.configFTP;

  GrupoEditando.Enabled:= false;
  DBGridUpload.BringToFront;

  try
    if modo = modo_cliente then
    begin //-------------MODO CLIENTE
      DBGridUpload.DataSource:= DS_NovedadesCliente;
      memoLog.Lines.Add('--------------------------------------------------------------');
      memoLog.Lines.Add('        INICIO SUBIR NOVEDADES CLIENTE                        ');
      memoLog.Lines.Add('--------------------------------------------------------------');
      salir:= false;
      while not salir do
      begin
        ponerTodoEnCero;
        posicion_PBar:= 0;
        //obtengo la cantidad del novedades encontradas (todas las modif. mias, <> SINCRO, q no tiene lote asignado)
        conectarDBLectura;
        conectarDBEscritura;
        ZQ_NovedadesClienteCant.Close;
        ZQ_NovedadesClienteCant.ParamByName('RANGO_NOVEDADES').AsInteger:= rango_Novedades;
        ZQ_NovedadesClienteCant.Open;
        idMinNovedades:= ZQ_NovedadesClienteCantMIN.AsInteger;
        idMaxNovedades:= ZQ_NovedadesClienteCantMAX.AsInteger;
        cantidadNovedades:= ZQ_NovedadesClienteCantCOUNT.AsInteger;
        //si se encontraron novedades las subo
        if cantidadNovedades > 0 then
        begin
          pBar_Novedades.Max:= cantidadNovedades;
          subirNovedadesCliente;
          //si se produjo un error en la subida salgo
          if resultado_SubirNovedades = false then
            salir:= true;
        end
        else //si no hay mas novedades salgo
          salir:= true;
      end;
      memoLog.Lines.Add(getFechayHoraString + ' - No hay Novedades para Subir');
      memoLog.Lines.Add('--------------------------------------------------------------');
      memoLog.Lines.Add('        FIN SUBIR NOVEDADES CLIENTE                           ');
      memoLog.Lines.Add('--------------------------------------------------------------');
      memoLog.Lines.Add('');
    end
    else
    begin //-------------MODO SERVIDOR
      DBGridUpload.DataSource:= DS_NovedadesServer;
      memoLog.Lines.Add('--------------------------------------------------------------');
      memoLog.Lines.Add('        INICIO SUBIR NOVEDADES SERVER                         ');
      memoLog.Lines.Add('--------------------------------------------------------------');
      salir:= false;
      while not salir do
      begin
        ponerTodoEnCero;
        posicion_PBar:= 0;
        //obtengo la cantidad del novedades encontradas (todas las modif. mias, <> SINCRO, q no tiene lote asignado)
        conectarDBLectura;
        conectarDBEscritura;
        ZQ_NovedadesServerCant.Close;
        ZQ_NovedadesServerCant.ParamByName('RANGO_NOVEDADES').AsInteger:= rango_Novedades;
        ZQ_NovedadesServerCant.Open;
        idMinNovedades:= ZQ_NovedadesServerCantMIN.AsInteger;
        idMaxNovedades:= ZQ_NovedadesServerCantMAX.AsInteger;
        cantidadNovedades:= ZQ_NovedadesServerCantCOUNT.AsInteger;
        //si se encontraron novedades las subo
        if cantidadNovedades > 0 then
        begin
          pBar_Novedades.Max:= cantidadNovedades;
          subirNovedadesServer;
          //si se produjo un error en la subida salgo
          if resultado_SubirNovedades = false then
            salir:= true;
        end
        else //si no hay mas novedades salgo
          salir:= true;
      end;
      memoLog.Lines.Add(getFechayHoraString + ' - No hay Novedades para Subir');
      memoLog.Lines.Add('--------------------------------------------------------------');
      memoLog.Lines.Add('        FIN SUBIR NOVEDADES SERVER                            ');
      memoLog.Lines.Add('--------------------------------------------------------------');
      memoLog.Lines.Add('');
    end;
  except
    memoLog.Color:= colorError;
    memoLog.Lines.Add(getFechayHoraString + ' - Se produjo un error inesperado');
    memoLog.Lines.Add('--------------------------------------------------------------');
    memoLog.Lines.Add('        FIN SUBIR NOVEDADES                                   ');
    memoLog.Lines.Add('--------------------------------------------------------------');
    memoLog.Lines.Add('');
    GrupoEditando.Enabled:= true;
  end;

  GrupoEditando.Enabled:= true;
end;


//Boton subir novedades

procedure TFPrincipal.btnSubirClick(Sender: TObject);
begin
  Timer.Enabled:= false;
  subirNovedades();
  Timer.Enabled:= true;

  try
    if dm.IdFTP.Connected then
      FTP_desconectarse;
  except
    exit;
  end;
end;


//Boton bajar novedades

procedure TFPrincipal.btnBajarClick(Sender: TObject);
begin
  Timer.Enabled:= false;
  if modo = modo_cliente then
    bajarNovedadesServer
  else
    bajarNovedadesClientes;
  Timer.Enabled:= true;

  try
    if dm.IdFTP.Connected then
      FTP_desconectarse;
  except
    exit;
  end;
end;


//Boton procesar novedades

procedure TFPrincipal.btnProcesarClick(Sender: TObject);
begin
  //si no pude bajar correctamente las novedades salgo
  if not resultado_BajarNovedades then
    exit;

  Timer.Enabled:= false;
  if modo = modo_cliente then
    procesarNovedadesServer
  else
    procesarNovedadesClientes;
  Timer.Enabled:= true;

  try
    if dm.IdFTP.Connected then
      FTP_desconectarse;
  except
    exit;
  end;
end;


//*********************************************************************
//                PROCEDIMIENTOS CON EL SERVIDOR FTP
//*********************************************************************

function TFPrincipal.FTP_conectarse: integer;
var
  intentos: integer;
begin
  //por defecto tira el error general
  Result:= FTP_ERROR_GRAL;
  error_servidor_FTP:= '';

  intentos:= 0;
  while intentos < intentos_Conexion_FTP do //cantidad de intentos para conectarme
  begin
    try
      DM.IdFTP.Disconnect;
      Sleep(500);
      DM.IdFTP.Connect;
      Result:= FTP_OK;
      exit;
    except
      on E: Exception do
      begin
        intentos:= intentos + 1;
        if intentos = intentos_Conexion_FTP then //si llegue al maximo de intentos de conexion salgo;
        begin
          error_servidor_FTP:= 'ERROR SERVER FTP: '+e.Message;
          if E is EIdConnClosedGracefully then //manejo el error "Connection Closed Gracefully"
            Result:= FTP_ERROR_CCG;
          exit;
        end;
      end;
    end;
  end;
end;


function TFPrincipal.FTP_desconectarse: integer;
var
  intentos: integer;
begin
  //por defecto tira el error general
  Result:= FTP_ERROR_GRAL;
  error_servidor_FTP:= '';

  try
    Sleep(500);
    DM.IdFTP.Disconnect;
    Result:= FTP_OK;
  except
    on E: Exception do
    begin
      error_servidor_FTP:= 'ERROR SERVER FTP: '+e.Message;
      if E is EIdConnClosedGracefully then //manejo el error "Connection Closed Gracefully"
        Result:= FTP_ERROR_CCG;
    end;
  end;
end;


//Subir un archivo al servidor FTP en un directorio especifico

function TFPrincipal.FTP_SubirArchivo(directorio, archivo: string): integer;
var
  F: file of byte;
  size_archivo: integer;
  archivo_temp: string;
  intentos: integer;
begin
  try
    //si no me puedo conectar salgo
    if not dm.IdFTP.Connected then
      if FTP_conectarse <> FTP_OK then
        exit;

    //por defecto tira el error general
    Result:= FTP_ERROR_GRAL;
    error_servidor_FTP:= '';
    archivo_temp:= 'temp' + archivo;

    //obtengo el tamaño del archivo a subir para poder reflejar el proceso de subida en el progress bar correspondiente
    AssignFile(F, dirLocal + archivo);
    Reset(F);
    size_archivo:= FileSize(F) div 1024;
    pBar_Ftp.max:= size_archivo;
    CloseFile(F);

    //me ubico en el directorio correspondiente en el ftp y subo el archivo
    DM.IdFTP.BeginWork(wmWrite, 0);
    DM.IdFTP.ChangeDir(directorio); //cambio al directorio pasado como parametro
    DM.IdFTP.Put(dirLocal + archivo, ExtractFileName(archivo_temp), False); //subo el archivo con un nombre temporal
    DM.IdFTP.Rename(archivo_temp, archivo); //luego que termino de subirlo lo renombro al nombre original
    DM.IdFTP.EndWork(wmWrite);
    Result:= FTP_OK;
  except
    on E: Exception do
    begin
      error_servidor_FTP:= 'ERROR SERVER FTP: '+e.Message;
      if not (E is EIdConnClosedGracefully) then //manejo el error "Connection Closed Gracefully"
        Result:= FTP_ERROR_CCG;
    end
  end;
end;


//Bajar un archivo de un directorio especifico del servidor FTP

function TFPrincipal.FTP_BajarArchivo(directorio, archivo: string): integer;
var
  size_archivo: integer;
  intentos, maxIntentos: integer;
begin
  maxIntentos:= 1;
  intentos:= 0;
  repeat
    try
      //si no me puedo conectar salgo
      if not dm.IdFTP.Connected then
        if FTP_conectarse <> FTP_OK then
          exit;

      //por defecto tira el error general
      Result:= FTP_ERROR_GRAL;
      error_servidor_FTP:= '';

      //me ubico en el directorio correspondiente en el ftp
      DM.IdFTP.ChangeDir(directorio);
      //si el archivo que voy a bajar ya lo tengo en la pc, lo borro
      if FileExists(dirLocal + archivo) then
        DeleteFile(dirLocal + archivo);
      //obtengo el tamaño del archivo para setear el progrees bar
      size_archivo:= DM.IdFTP.Size(archivo) div 1024;
      pBar_Ftp.max:= size_archivo;
      Application.ProcessMessages;

      DM.IdFTP.BeginWork(wmRead, 0);
      DM.IdFTP.Get(archivo, dirLocal + archivo, False, False);
      DM.IdFTP.EndWork(wmRead);
      Result:= FTP_OK;
    except
      On E:EIdSocketError Do
      Begin
        inc(intentos); //si se produjo un socke error 10054 repito el proceso para solucionarlo
        if intentos <= maxIntentos then
        begin
          if E.LastError = 10054 then
          Begin
//            ShowMessage('MATIAS');
            RemoveComponent(dm.IdFTP);
            dm.IdFTP.Free;
            dm.IdFTP:= Nil;
            dm.IdFTP:= TIdFTP.Create(Self);
            DM.configFTP;
          End;
        end
        else
        begin
          error_servidor_FTP:= 'ERROR SERVER FTP: '+e.Message;
          if FileExists(dirLocal + archivo) then
            DeleteFile(dirLocal + archivo);
        end;
      End;
      on E: Exception do  //si se produjo un error distinto a socke error 10054 salgo y no reintento nada
      begin
        intentos:= 2;
        error_servidor_FTP:= 'ERROR SERVER FTP: '+e.Message;
        if FileExists(dirLocal + archivo) then
          DeleteFile(dirLocal + archivo);

        if not (E is EIdConnClosedGracefully) then //manejo el error "Connection Closed Gracefully"
          Result:= FTP_ERROR_CCG;
      end;
    end; //TRY
  until (intentos > maxIntentos) or (Result = FTP_OK)
end;


//Borrar un archivo en un directorio especifico en el servidor FTP

function TFPrincipal.FTP_BorrarArchivo(directorio, archivo: string): integer;
begin
  try
    //si no me puedo conectar salgo
    if not dm.IdFTP.Connected then
      if FTP_conectarse <> FTP_OK then
        exit;

    //por defecto tira el error general
    Result:= FTP_ERROR_GRAL;
    error_servidor_FTP:= '';

    //me ubico en el directorio correspondiente en el ftp y borro el archivo
    DM.IdFTP.BeginWork(wmWrite);
    DM.IdFTP.ChangeDir(directorio);
    DM.IdFTP.Delete(archivo);
    DM.IdFTP.EndWork(wmWrite);
    Result:= FTP_OK;
  except
    on E: Exception do
    begin
      error_servidor_FTP:= 'ERROR SERVER FTP: '+e.Message;
      if not (E is EIdConnClosedGracefully) then //manejo el error "Connection Closed Gracefully"
        Result:= FTP_ERROR_CCG;
    end;
  end;
end;


//cheque que el archivo pasado como parametro exista en el servidor ftp

function TFPrincipal.FTP_ExisteArchivo(directorio, archivo: string): integer;
var
  auxCantidad: integer;
  auxLista: TStringList;
begin
  try
    //si no me puedo conectar salgo
    if not dm.IdFTP.Connected then
      if FTP_conectarse <> FTP_OK then
        exit;

    //por defecto tira el error general
    Result:= FTP_ERROR_GRAL;
    error_servidor_FTP:= '';

    auxLista:= TStringList.Create;
    //me ubico en el directorio correspondiente en el ftp y verifico si existe el archivo
    DM.IdFTP.ChangeDir(directorio);
    DM.IdFTP.List(auxLista, archivo, False);
    //si la lista obtenida es mayor a cero es porque el archivo existe
    DM.IdFTP.EndWork(wmRead);

    if auxLista.Count > 0 then
      Result:= FTP_OK;
  except
    on E: Exception do
    begin
      error_servidor_FTP:= 'ERROR SERVER FTP: '+e.Message;
      if not (E is EIdConnClosedGracefully) then //manejo el error "Connection Closed Gracefully"
        Result:= FTP_ERROR_CCG;
    end;
  end;
end;


//busca las novedades subidas por el servidor al FTP

function TFPrincipal.FTP_BuscarListaArchivos(directorio, inicio_nombre_archivo, ultimo_archivo, origen_archivo: string): integer;
var
  auxLista: TStringList;
  i, cantidad: integer;
begin
  try
    //si no me puedo conectar salgo
    result:= -1;
    cantidad:= 0;

    //si no me puedo conectar salgo
    if not dm.IdFTP.Connected then
      if FTP_conectarse <> FTP_OK then
        exit;

    error_servidor_FTP:= '';

    auxLista:= TStringList.Create;
    //me ubico en el directorio correspondiente en el ftp
    DM.IdFTP.ChangeDir(directorio);
    //obtengo la lista de todos los archivos que existen en el directorio correspondiente del ftp que comiencen con el nombre del archivo del servidor y terminen en xml
    DM.IdFTP.List(auxLista, inicio_nombre_archivo + '_*.xml', false); //cargar en lista, los archivos que empiezen con el nombre del servidor y terminen en xml, todos los archivos
    //por cada uno de los nombres de archivo obtenidos
    for i:= 0 to auxLista.Count - 1 do
    begin
      if (Length(auxLista.Strings[i]) = Length(ultimo_archivo)) or (ultimo_archivo = '') then //si la longitud del nombre de archivo bajado es igual a la longitud del ultimo archivo procesado
        if (auxLista.Strings[i]) > ultimo_archivo then //si el archivo es mas reciente que el ultimo procesado lo agrego a la lista (el nombre es esta incrementado en numeros)
        begin
          CD_ListaNovedades.Append;
          CD_ListaNovedades_Origen.AsString:= origen_archivo;
          CD_ListaNovedades_NombreArchivo.AsString:= auxLista.Strings[i];
          CD_ListaNovedades_Estado.AsString:= ESTADO_SIN_PROCESAR;
          CD_ListaNovedades.Post;
          cantidad:= cantidad + 1;
        end
    end;
    result:= cantidad;
  except
    on E: Exception do
    begin
      error_servidor_FTP:= 'ERROR SERVER FTP: '+e.Message;
      if E is EIdConnClosedGracefully then //manejo el error "Connection Closed Gracefully"
        Result:= FTP_ERROR_CCG;
      exit;
    end;
  end;
end;


//*********************************************************************
//      PROCEDIMIENTOS COMPARTIDOS POR EL MODO CLIENTE Y SERVIDOR
//*********************************************************************
//procedimiento que crea el lote en la base de datos, devuelve falso si no se pudo crear

function TFPrincipal.guardar_lote(archivo: string): boolean;
var
  transaccion: string;
begin
  Result:= false;
  try
    begin
      if modo = modo_cliente then //si estoy en modo cliente
      begin
        transaccion:= transaccion_cliente;

        if dm.ModeloEscritura.iniciar_transaccion(transaccion, [ZQ_GrabarUltimoArchivoCliente]) then
        begin
          //ejectuto el procedimiento que genera el nuevo lote y graba el nro de lote generado en
          //la tabla z_zinc_tabla en el campo id_sincro_lote para reflejar q esos registros ya se
          //subieron
          ZQ_CrearLote.Close;
          ZQ_CrearLote.ParamByName('id_min').AsInteger:= idMinNovedades;
          ZQ_CrearLote.ParamByName('id_max').AsInteger:= idMaxNovedades;
          ZQ_CrearLote.ExecSQL;

          //grabo en la base de datos del cliente el nombre del archivo que se acaba de subir al servidor FTP
          ZQ_GrabarUltimoArchivoCliente.Close;
          ZQ_GrabarUltimoArchivoCliente.Open;
          ZQ_GrabarUltimoArchivoCliente.Append;
          ZQ_GrabarUltimoArchivoClienteID_SINCRO_CLIENTE.AsInteger:= 0;
          ZQ_GrabarUltimoArchivoClienteFECHA_Y_HORA.AsDateTime:= getFechayHora;
          ZQ_GrabarUltimoArchivoClienteULTIMO_ARCHIVO.AsString:= archivo;
          ZQ_GrabarUltimoArchivoCliente.Post;

          if dm.ModeloEscritura.finalizar_transaccion(transaccion) then
            Result:= true
          else
            dm.ModeloEscritura.cancelar_transaccion(transaccion);
        end;
      end
      else //si estoy en modo servidor
      begin
        transaccion:= transaccion_sertver;

        if dm.ModeloEscritura.iniciar_transaccion(transaccion, [ZQ_GrabarUltimoArchivoServer]) then
        begin
          //ejectuto el procedimiento que genera el nuevo lote y graba el nro de lote generado en
          //la tabla z_zinc_tabla en el campo id_sincro_lote para reflejar q esos registros ya se
          //subieron
          ZQ_CrearLote.Close;
          ZQ_CrearLote.ParamByName('id_min').AsInteger:= idMinNovedades;
          ZQ_CrearLote.ParamByName('id_max').AsInteger:= idMaxNovedades;
          ZQ_CrearLote.ExecSQL;

          //grabo en la base de datos del servidor el nombre del archivo que se acaba de subir al servidor FTP
          ZQ_GrabarUltimoArchivoServer.Close;
          ZQ_GrabarUltimoArchivoServer.Open;
          ZQ_GrabarUltimoArchivoServer.Append;
          ZQ_GrabarUltimoArchivoServerFECHA_Y_HORA.AsDateTime:= getFechayHora;
          ZQ_GrabarUltimoArchivoServerULTIMO_ARCHIVO.AsString:= archivo;
          ZQ_GrabarUltimoArchivoServer.Post;

          if dm.ModeloEscritura.finalizar_transaccion(transaccion) then
            Result:= true
          else
            dm.ModeloEscritura.cancelar_transaccion(transaccion);
        end;
      end;
    end;
  except
    on E: Exception do
    begin
      result:= false;
      error_sql:= e.Message;
    end;
  end;
end;

//devuelve el numero del lote con el que se van a subir los datos

function TFPrincipal.nro_lote_actual: integer;
begin
  Result:= 1;

  ZQ_UltimoLote.Close;
  ZQ_UltimoLote.Open;

  if not ZQ_UltimoLote.IsEmpty then
    Result:= ZQ_UltimoLoteULTIMO_LOTE.AsInteger + 1;
end;


//obtengo el listados de las tablas que se van a insertar/actualizar/eliminar

procedure TFPrincipal.obtener_tablas_actualizar();
var
  id_anterior: integer;
  auxId: string;
begin
  if CD_ProcesarNovedades.IsEmpty then
    exit;

  CD_ProcesarNovedades.DisableControls;
  CD_Tablas_Actualizar.EmptyDataSet;

  id_anterior:= -1;
  CD_ProcesarNovedades.First;
  while not CD_ProcesarNovedades.Eof do //recorro el clientDataset que contiene los datos del archivo de novedades
  begin
    //guardo todas las tablas que se tienen que tocar y la accion que se va a realizar, descarto los repetidos
    if CD_ProcesarNovedadesID.AsInteger <> id_anterior then
    begin
      //obtengo los primeros 2 digitos del id de la tabla para saber si es de mi sucursal o de otra
      auxId:= LeftStr(CD_ProcesarNovedadesID.AsString, 2);
      if (auxId <> id_base_local) then //descarto las modificaciones que realizo mi sucursal para no repetirlas
      begin
        id_anterior:= CD_ProcesarNovedadesID.AsInteger;
        CD_Tablas_Actualizar.Append;
        CD_Tablas_Actualizar_Id.AsString:= IntToStr(CD_ProcesarNovedadesID.AsInteger);
        CD_Tablas_Actualizar_Tabla.AsString:= CD_ProcesarNovedadesTABLE_NAME.AsString;
        CD_Tablas_Actualizar_Clave.AsString:= CD_ProcesarNovedadesKEY_VALUE.AsString;
        CD_Tablas_Actualizar_CampoClave.AsString:= CD_ProcesarNovedadesKEY_FIELD.AsString;
        CD_Tablas_Actualizar_Operacion.AsString:= CD_ProcesarNovedadesOPERATION.AsString;
        CD_Tablas_Actualizar_Fecha.AsDateTime:= CD_ProcesarNovedadesDATE_TIME.AsDateTime;
        CD_Tablas_Actualizar.Post;
      end
    end;
    CD_ProcesarNovedades.Next;
  end;
  CD_ProcesarNovedades.EnableControls;
end;


//-------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------
//          ----------------------------  MODO    -------------------------
//          ----------------------------  CLIENTE -------------------------
//-------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------
//buscar novedades en el cliente

procedure TFPrincipal.buscarNovedadesCliente();
begin
  //ejecuto la query que busca los cambio realizados en la base de datos por todos los usuarios distintos de SINCRO
  ZQ_NovedadesCliente.ParamByName('RANGO_NOVEDADES').AsInteger:= rango_Novedades;
  CD_NovedadesCliente.Close;
  CD_NovedadesCliente.Open;
end;


//reflejo el progreso de la carga de novedades encontrada en el progress bar correspondiente

procedure TFPrincipal.ZQ_NovedadesClienteAfterScroll(DataSet: TDataSet);
begin
  pBar_Novedades.Position:= posicion_PBar;
  posicion_PBar:= posicion_PBar + 1;
  Application.ProcessMessages;
end;


//procedimiento que realiza la subida de las novedades del cliente al FTP

procedure TFPrincipal.subirNovedadesCliente;
var
  archivo: string;
begin
  resultado_SubirNovedades:= false;
  memoLog.Lines.Add(getFechayHoraString + ' - Buscando Novedades');
  //cargo el client dataset de novedades con todas las novedades encontradas
  buscarNovedadesCliente;
  //obtengo el numero de lote que voy a subir
  nserie_cliente:= nro_lote_actual();
  //establezco en nombre del archivo a subir al servidor
  archivo:= archivo_cliente + '_' + FormatFloat('00000', nserie_cliente) + '.xml';
  //si el archivo existe lo borro para crearlo nuevamente
  if FileExists(dirLocal + archivo) then
    DeleteFile(dirLocal + archivo);
  memoLog.Lines.Add(getFechayHoraString + ' - Creando Archivo Novedades (' + archivo + ')');
  //creo el archivo para subir
  CD_NovedadesCliente.SaveToFile(dirLocal + archivo, dfXMLUTF8);
  memoLog.Lines.Add(getFechayHoraString + ' - Enviando Archivo Novedades (' + archivo + ') al Servidor FTP');
  //inicio subida del archivo al directorio asignado a los clientes en el servidor FTP
  if FTP_SubirArchivo(dirFTP_Cliente, archivo) = FTP_OK then //si el archivo se subio correctamente
  begin
    memoLog.Lines.Add(getFechayHoraString + ' - Fin Envio Archivo Novedades (' + archivo + ') al Servidor FTP');
    memoLog.Lines.Add(getFechayHoraString + ' - Guardando Lote Sincronizacion ' + IntToStr(nserie_cliente));
    //comienzo el guardado del lote de sincronizacion
    if guardar_lote(archivo) then //si el lote se guardo correctamente
    begin
      memoLog.Lines.Add(getFechayHoraString + ' - Fin Guardar Lote Sincronizacion ' + IntToStr(nserie_cliente));
      resultado_SubirNovedades:= true;
    end
    else //si no pude guardar el lote entonces borro el archivo que subi al servidor
    begin
      memoLog.Lines.Add(getFechayHoraString + ' - Error en Guardar Lote Sincronizacion ' + IntToStr(nserie_cliente));
      memoLog.Lines.Add(getFechayHoraString + ' - ' + error_sql);
      memoLog.Lines.Add(getFechayHoraString + ' - Borrando Archivo Novedades (' + archivo + ') del Servidor FTP');
      if FTP_BorrarArchivo(dirFTP_Cliente, archivo) = FTP_OK then
        memoLog.Lines.Add(getFechayHoraString + ' - Fin Borrar Archivo Novedades (' + archivo + ') del Servidor FTP')
      else
        memoLog.Lines.Add(getFechayHoraString + ' - No se pudo Borrar Archivo Novedades (' + archivo + ') del Servidor FTP');
    end;
  end
  else //si el archivo no se pudo subir al servidor
  begin
    memoLog.Lines.Add(getFechayHoraString + ' - Error en el Envio Archivo Novedades (' + archivo + ') al Servidor FTP');
    memoLog.Lines.Add(getFechayHoraString + ' - ' + error_servidor_FTP);
  end;
end;


//Bajo todos los archivos subidos por el servidor para poder procesarlos y actualizar la base del cliente

procedure TFPrincipal.bajarNovedadesServer();
var
  ultimo_archivo: string;
  cantidad_archivos_encontrados: integer;
begin
  RemoveComponent(dm.IdFTP);
  dm.IdFTP.Free;
  dm.IdFTP:= Nil;
  dm.IdFTP:= TIdFTP.Create(Self);
  DM.configFTP;

  resultado_BajarNovedades:= false;
  ponerTodoEnCero;
  GrupoEditando.Enabled:= false;
  pBar_Ftp.Position:= 0;
  pBar_Novedades.Position:= 0;

  panelListaNovedades.Enabled:= false;
  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('        INICIO BAJAR NOVEDADES SERVIDOR                       ');
  memoLog.Lines.Add('--------------------------------------------------------------');
  //si no estoy conectado a la base me conecto
  conectarDBLectura;
  conectarDBEscritura;
  //obtengo el id generador de mi base para luego descartar las modificaciones del archivo del server hechas localmente
  ZQ_Configuracion.Close;
  ZQ_Configuracion.Open;
  id_base_local:= ZQ_ConfiguracionDB_SUCURSAL.AsString;
  ZQ_Configuracion.Close;
  //busco el ultimo archivo que se bajo del servidor
  memoLog.Lines.Add(getFechayHoraString + ' - Buscando Novedades del Servidor en el Servidor FTP');
  DBGridDownload.BringToFront;
  ZQ_UltimoArchivoServer.Close;
  ZQ_UltimoArchivoServer.Open;
  ZQ_UltimoArchivoServer.Refresh;
  if ZQ_UltimoArchivoServer.IsEmpty then //si no baje ninguno todavia paso como parametro ''
    ultimo_archivo:= ''
  else //si ya baje un archivo lo paso como parametro
    ultimo_archivo:= ZQ_UltimoArchivoServerULTIMO_ARCHIVO.AsString;
  //vacio la lista de novedades y busco todas las novedades que haya en el servidor FTP
  CD_ListaNovedades.EmptyDataSet;
  cantidad_archivos_encontrados:= FTP_BuscarListaArchivos(dirFTP_Server, archivo_server, ultimo_archivo, 'SERVIDOR');
  if cantidad_archivos_encontrados <= FTP_ERROR_GRAL then //si devuelve menor o igual a -1 es porque no me puedo conectar
  begin
    memoLog.Color:= colorError;
    memoLog.Lines.Add(getFechayHoraString + ' - No se pudo conectar al servidor FTP');
    memoLog.Lines.Add(getFechayHoraString + ' - ' + error_servidor_FTP);
    memoLog.Lines.Add('--------------------------------------------------------------');
    memoLog.Lines.Add('        FIN BAJAR NOVEDADES SERVIDOR                          ');
    memoLog.Lines.Add('--------------------------------------------------------------');
    memoLog.Lines.Add('');
    GrupoEditando.Enabled:= true;
    panelListaNovedades.Enabled:= true;
    exit;
  end
  else //si me puedo conectar
  begin
    if cantidad_archivos_encontrados > 0 then
      memoLog.Lines.Add(getFechayHoraString + ' - Se encontraron ' + IntToStr(cantidad_archivos_encontrados) + ' archivos de novedades en el Servidor FTP')
    else
      memoLog.Lines.Add(getFechayHoraString + ' - No se encontraron archivos de novedades en el Servidor FTP');
    Application.ProcessMessages;
    CD_ListaNovedades.First;
    while not CD_ListaNovedades.Eof do //por cada una de las novedades encontradas, las bajo una por una
    begin
      memoLog.Lines.Add(getFechayHoraString + ' - Descargando el archivo ' + CD_ListaNovedades_NombreArchivo.AsString + ' del Servidor FTP');
      pBar_Ftp.Position:= 0;
      Application.ProcessMessages;
      //bajo el archivo de novedades
      if FTP_BajarArchivo(dirFTP_Server, CD_ListaNovedades_NombreArchivo.AsString) = FTP_OK then
        memoLog.Lines.Add(getFechayHoraString + ' - Archivo ' + CD_ListaNovedades_NombreArchivo.AsString + ' descargado con exito')
      else
      begin
        memoLog.Color:= colorError;
        memoLog.Lines.Add(getFechayHoraString + ' - Error al descargar el archivo ' + CD_ListaNovedades_NombreArchivo.AsString + ' del Servidor FTP');
        memoLog.Lines.Add(getFechayHoraString + ' - ' + error_servidor_FTP);
        memoLog.Lines.Add('--------------------------------------------------------------');
        memoLog.Lines.Add('        FIN BAJAR NOVEDADES SERVIDOR                          ');
        memoLog.Lines.Add('--------------------------------------------------------------');
        memoLog.Lines.Add('');
        GrupoEditando.Enabled:= true;
        panelListaNovedades.Enabled:= true;
        exit;
      end;
      CD_ListaNovedades.Next;
    end;
  end;
  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('        FIN BAJAR NOVEDADES SERVIDOR                          ');
  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('');
  GrupoEditando.Enabled:= true;
  panelListaNovedades.Enabled:= true;
  resultado_BajarNovedades:= true;
end;


//procesar los archivos descargados del servidor FTP

procedure TFPrincipal.procesarNovedadesServer;
begin
  resultado_ProcesarNovedades:= false;
  if CD_ListaNovedades.IsEmpty then
  begin
    resultado_ProcesarNovedades:= true;
    exit;
  end;

  panelContenedor.Enabled:= false;
  GrupoEditando.Enabled:= false;
  panelListaNovedades.Enabled:= false;
  pBar_Novedades.Position:= 0;
  CD_ProcesarNovedades.EmptyDataSet;

  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('        INICIO PROCESAR NOVEDADES SERVIDOR                    ');
  memoLog.Lines.Add('--------------------------------------------------------------');
  //si no estoy conectado a la base me conecto como modo escritura
  if dm.ConexionEscritura.Connected = false then
    conectarDBEscritura;

  CD_ListaNovedades.First;
  while not CD_ListaNovedades.eof do //por cada uno de los archivos obtenidos del servidor
  begin
    if CD_ListaNovedades_Estado.AsString = ESTADO_SIN_PROCESAR then //si todavia no se proceso el archivo
    begin
      memoLog.Lines.Add(getFechayHoraString + ' - Cargando el archivo de novedades ' + CD_ListaNovedades_NombreArchivo.AsString);
      //cargo el archivo en el client dataset
      CD_ProcesarNovedades.LoadFromFile(dirLocal + CD_ListaNovedades_NombreArchivo.AsString);
      pBar_Novedades.Position:= 0;
      //obtengo el listado de todas las tablas a actualizar
      obtener_tablas_actualizar();
      pBar_Novedades.Max:= CD_Tablas_Actualizar.RecordCount;
      memoLog.Lines.Add(getFechayHoraString + ' - Procesando el archivo de novedades ' + CD_ListaNovedades_NombreArchivo.AsString);
      //actualizo la base de datos local con el contenido del archivo
      if not actualizar_base_local(CD_ListaNovedades_NombreArchivo.AsString) then //si se produjo un error mientras actualizaba salgo
      begin
        if CD_Tablas_Actualizar.IsEmpty then
        begin
          memoLog.Lines.Add(getFechayHoraString + ' - El archivo de de novedades ' + CD_ListaNovedades_NombreArchivo.AsString + ' no tiene datos de otras sucursales para actualizar');
          CD_ListaNovedades.edit;
          CD_ListaNovedades_Estado.AsString:= ESTADO_PROCESADO;
          CD_ListaNovedades.Post;
        end
        else
        begin
          memoLog.Color:= colorError;
          memoLog.Lines.Add(getFechayHoraString + ' - Se produjo un error mientras se procesaba el archivo de novedades ' + CD_ListaNovedades_NombreArchivo.AsString);
          memoLog.Lines.Add(getFechayHoraString + ' - ' + error_sql);
          memoLog.Lines.Add('--------------------------------------------------------------');
          memoLog.Lines.Add('           FIN PROCESAR NOVEDADES SERVIDOR                    ');
          memoLog.Lines.Add('--------------------------------------------------------------');
          memoLog.Lines.Add('');
          GrupoEditando.Enabled:= true;
          panelContenedor.Enabled:= true;
          exit;
        end;
      end
      else //si se actualizo correctamente
      begin
        memoLog.Lines.Add(getFechayHoraString + ' - El archivo de de novedades ' + CD_ListaNovedades_NombreArchivo.AsString + ' se proceso correctamente');
        //edito la lista de archivos de novedades y marco el archivo como que se proceso correctamente
        CD_ListaNovedades.edit;
        CD_ListaNovedades_Estado.AsString:= ESTADO_PROCESADO;
        CD_ListaNovedades.Post;
      end;
    end;
    CD_ListaNovedades.Next;
  end;
  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('           FIN PROCESAR NOVEDADES SERVIDOR                    ');
  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('');
  GrupoEditando.Enabled:= true;
  panelContenedor.Enabled:= true;
  panelListaNovedades.Enabled:= true;
  resultado_ProcesarNovedades:= true;
end;


//Actualizo la base local con el archivo descargado del servidor FTP y que se pasa como parametro

function TFPrincipal.actualizar_base_local(archivo: string): boolean;
var
  es_query_vacia: boolean;
  operacion: string;
  fechaDateTime: TDateTime;
  fechaString: string;
  lineaCodigo: string;
begin
  Result:= false;

  CD_ProcesarNovedades.DisableControls;
  try
    //inicio transaccion
    if dm.ModeloEscritura.iniciar_transaccion(transaccion_actualizar_base, []) then
    begin
      CD_Tablas_Actualizar.First;
      while not CD_Tablas_Actualizar.Eof do //por cada una de las tablas que se tienen que tocar
      begin
        error_sql:= '';
        //filtro las acciones a realizar para la tabla que estoy recorriendo en este momento
        CD_ProcesarNovedades.Filter:= format('ID = %s', [QuotedStr(CD_Tablas_Actualizar_Id.AsString)]);
        CD_ProcesarNovedades.Filtered:= true;

        //buscar si hay un registro mas nuevo en la base local, si es asi no actualizar, sino proceso el dato
        ZQ_VerificarUpdate.Close;
        ZQ_VerificarUpdate.ParamByName('table_name').AsString:= CD_ProcesarNovedadesTABLE_NAME.AsString;
        ZQ_VerificarUpdate.ParamByName('date_time').AsDateTime:= CD_ProcesarNovedadesDATE_TIME.AsDateTime;
        ZQ_VerificarUpdate.ParamByName('key_field').AsString:= CD_ProcesarNovedadesKEY_FIELD.AsString;
        ZQ_VerificarUpdate.ParamByName('key_value').AsString:= CD_ProcesarNovedadesKEY_VALUE.AsString;
        ZQ_VerificarUpdate.Open;

        if ZQ_VerificarUpdate.IsEmpty then //si es la ultima modificacion la proceso
        begin
          //creo la query correspondiente y la ejecuto
          ZQ_ActualizarBase.SQL.Clear;
          ZQ_ActualizarBase.SQL.Add('select * from ' + CD_ProcesarNovedadesTABLE_NAME.AsString +
                                    ' where ' + CD_ProcesarNovedadesKEY_FIELD.AsString + '=' + CD_ProcesarNovedadesKEY_VALUE.AsString);
          ZQ_ActualizarBase.Open;

          //pregunto si la query esta vacia
          es_query_vacia:= false;
          if ZQ_ActualizarBase.IsEmpty then
            es_query_vacia:= True;

          operacion:= CD_ProcesarNovedadesOPERATION.AsString;
          if operacion = 'D' then //si la operacion es un delete
          begin
            if es_query_vacia = false then //si existe el registro lo borro
              ZQ_ActualizarBase.Delete;
          end
          else
          begin
            if operacion = 'I' then //si la operacion es un insert, pongo en modo insercion la query
              ZQ_ActualizarBase.Append
            else if operacion = 'U' then //si la operacion es un update, pongo en modo edicion la query
              ZQ_ActualizarBase.Edit;

            CD_ProcesarNovedades.First;
            //si es un insert de un registro que ya existe entonces no hago nada
            if not ((es_query_vacia = false) and (operacion = 'I')) then
            begin
              while not CD_ProcesarNovedades.Eof do //recorro todos los campos que cambian y actualizo la query
              begin
                if error_sql = '' then
                  error_sql:= 'Error en Tabla '+CD_ProcesarNovedadesTABLE_NAME.AsString+' ('+operacion+') => '+CD_ProcesarNovedadesFIELD_NAME.AsString + ': ' + CD_ProcesarNovedadesNEW_VALUE.AsString
                else
                  error_sql:= error_sql + ' // ' + CD_ProcesarNovedadesFIELD_NAME.AsString + ': ' + CD_ProcesarNovedadesNEW_VALUE.AsString;

                //PARA LOS CAMPOS NO BLOB
                if not ((CD_ProcesarNovedadesFIELD_NAME.IsNull) or (CD_ProcesarNovedadesFIELD_NAME.AsString = '')) then
                begin
                  if (CD_ProcesarNovedadesNEW_VALUE.IsNull) or (CD_ProcesarNovedadesNEW_VALUE.Value = '') then //si el nuevo valor es null o string vacio
                  begin
                    //si el tipo de campo es un string pongo ''
                    if ZQ_ActualizarBase.FieldByName(CD_ProcesarNovedadesFIELD_NAME.AsString).DataType = ftString then
                      ZQ_ActualizarBase.FieldByName(CD_ProcesarNovedadesFIELD_NAME.AsString).AsString:= ''
                    else //para cualquier otro tipo de campo lo pongo en null
                      ZQ_ActualizarBase.FieldByName(CD_ProcesarNovedadesFIELD_NAME.AsString).Clear;
                  end
                  else //si el nuevo valor es distinto de null y de vacio
                  begin
                    //Si el campo que tengo que agregar es insert_manual lo agrego como 'N' para que no se disparen
                    //los triggers de las tablas COMPROBANTE_DETALLE, COMPROBANTE_FORMA_PAGO, COMPROBANTE
                    if (CD_ProcesarNovedadesFIELD_NAME.AsString = 'INSERT_MANUAL') then
                      ZQ_ActualizarBase.FieldByName(CD_ProcesarNovedadesFIELD_NAME.AsString).AsString:= 'N'
                    else
                    begin
                      application.ProcessMessages;
                      //pregunto si el campo esta definido como FLOAT
                      if ZQ_ActualizarBase.FieldByName(CD_ProcesarNovedadesFIELD_NAME.AsString).DataType = ftFloat then
                        ZQ_ActualizarBase.FieldByName(CD_ProcesarNovedadesFIELD_NAME.AsString).AsFloat:= StrToFloat(FormatFloat('0.0000', CD_ProcesarNovedadesNEW_VALUE.AsFloat))
                      else {//pregunto si el campo esta definido como INTEGER}
                        if ZQ_ActualizarBase.FieldByName(CD_ProcesarNovedadesFIELD_NAME.AsString).DataType = ftInteger then
                          ZQ_ActualizarBase.FieldByName(CD_ProcesarNovedadesFIELD_NAME.AsString).AsInteger:= CD_ProcesarNovedadesNEW_VALUE.AsInteger
                        else {//pregunto si el campo esta definido como STRING}
                          if ZQ_ActualizarBase.FieldByName(CD_ProcesarNovedadesFIELD_NAME.AsString).DataType = ftString then
                            ZQ_ActualizarBase.FieldByName(CD_ProcesarNovedadesFIELD_NAME.AsString).AsString:= CD_ProcesarNovedadesNEW_VALUE.AsString
                          else {//pregunto si el campo esta definido como DATETIME}
                            if ZQ_ActualizarBase.FieldByName(CD_ProcesarNovedadesFIELD_NAME.AsString).DataType = ftDateTime then
                            begin
                              try
                                fechaDateTime:= CD_ProcesarNovedadesNEW_VALUE.AsDateTime;
                              except
                                begin
                                  //tengo que convertir eno tiene datos de otras sucursales para actualizar dato que viene de la forma '2012-01-24 18:46:37.0000' a un date time
                                  fechaString:= CD_ProcesarNovedadesNEW_VALUE.AsString;
                                  fechaDateTime:= EncodeDateTime(StrToInt(Copy(fechaString, 1, 4)), StrToInt(Copy(fechaString, 6, 2)), StrToInt(Copy(fechaString, 9, 2)),
                                    StrToInt(Copy(fechaString, 12, 2)), StrToInt(Copy(fechaString, 15, 2)), StrToInt(Copy(fechaString, 18, 2)), StrToInt(Copy(fechaString, 21, 4)));
                                end;
                              end;
                              ZQ_ActualizarBase.FieldByName(CD_ProcesarNovedadesFIELD_NAME.AsString).AsDateTime:= fechaDateTime;
                            end
                            else //si es cualquier otro tipo de campo
                              ZQ_ActualizarBase.FieldByName(CD_ProcesarNovedadesFIELD_NAME.AsString).value:= CD_ProcesarNovedadesNEW_VALUE.Value;
                    end;
                  end;
                end;

                //PARA LOS CAMPOS BLOB
                if not ((CD_ProcesarNovedadesFBLOB_NAME.IsNull) or (CD_ProcesarNovedadesFBLOB_NAME.AsString = '')) then
                  ZQ_ActualizarBase.FieldByName(CD_ProcesarNovedadesFBLOB_NAME.AsString).value:= CD_ProcesarNovedadesFBLOB_NEW_BLOB_VALUE.value;

                CD_ProcesarNovedades.Next;
              end
            end;
          end;

          //  si la query no esta vacia y no es una operacion de Insert
          //o si la query es vacia pero es una operacion de Insert aplico los cambios
          if ((es_query_vacia = false) and (operacion <> 'I')) or ((es_query_vacia = true) and (operacion = 'I')) then
            ZQ_ActualizarBase.ApplyUpdates; //aplico los cambios
        end;

        //saco el filro
        CD_ProcesarNovedades.Filtered:= false;

        //paso a la tabla siguiente
        CD_Tablas_Actualizar.next;
        Application.ProcessMessages;
        pBar_Novedades.Position:= pBar_Novedades.Position + 1;
      end;
//      //saco el filro
//      CD_ProcesarNovedades.Filtered:= false;

      //grabo en la base de datos local el nombre del archivo procesado con fecha y hora actual
      ZQ_GrabarUltimoArchivoServer.Close;
      ZQ_GrabarUltimoArchivoServer.Open;
      ZQ_GrabarUltimoArchivoServer.Append;
      ZQ_GrabarUltimoArchivoServerFECHA_Y_HORA.AsDateTime:= getFechayHora;
      ZQ_GrabarUltimoArchivoServerULTIMO_ARCHIVO.AsString:= archivo;
      ZQ_GrabarUltimoArchivoServer.Post;

      //finalizo transaccion
      if dm.ModeloEscritura.finalizar_transaccion(transaccion_actualizar_base) then
        Result:= true
      else
        dm.ModeloEscritura.cancelar_transaccion(transaccion_actualizar_base);

      CD_ProcesarNovedades.EnableControls;
    end;
  except //si se produce una excepcion en el proceso cancelo el mismo
    on E: Exception do
    begin
      CD_ProcesarNovedades.EnableControls;
      error_sql:= E.Message + #13 + #13 + error_sql;
      CD_ProcesarNovedades.Filtered:= false;
      dm.ModeloEscritura.cancelar_transaccion(transaccion_actualizar_base);
      Result:= false;
    end
  end;
end;


//-------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------
//          ----------------------------  MODO     ------------------------
//          ----------------------------  SERVIDOR ------------------------
//-------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------
//busca las novedades subidas por los clientes asociados al sistema en la carpeta del servidor FTP

function TFPrincipal.buscarNovedadesClientes(): boolean;
var
  ultimo_archivo: string;
  inicio_nombre_archivo: string;
  cantidad_archivos_encontrados: integer;
begin
  result:= true;

  CD_ListaNovedades.EmptyDataSet;
  //cargo el listado de todos los clientes de la aplicacion
  ZQ_ListadoClientes.Close;
  ZQ_ListadoClientes.Open;
  ZQ_ListadoClientes.First;
  while not ZQ_ListadoClientes.Eof do //por cada uno de los clientes
  begin
    //busco el ultimo archivo que se descargo del cliente que estoy recorriendo
    ZQ_UltimoArchivoCliente.Close;
    ZQ_UltimoArchivoCliente.ParamByName('id_sincro_cliente').AsInteger:= ZQ_ListadoClientesID_SINCRO_CLIENTE.AsInteger;
    ZQ_UltimoArchivoCliente.Open;
    if ZQ_UltimoArchivoCliente.IsEmpty then //si no baje ninguno todavia paso como parametro ''
      ultimo_archivo:= ''
    else //si no paso el ultimo bajado
      ultimo_archivo:= ZQ_UltimoArchivoClienteULTIMO_ARCHIVO.AsString;
    inicio_nombre_archivo:= ZQ_ListadoClientesNOMBRE_CLIENTE.AsString;

    cantidad_archivos_encontrados:= FTP_BuscarListaArchivos(dirFTP_Cliente, inicio_nombre_archivo, ultimo_archivo, inicio_nombre_archivo);
    if cantidad_archivos_encontrados <= FTP_ERROR_GRAL then //si es menor o igual a -1 es porque no me pude conectar al servidor FTP
    begin
      Result:= false;
      exit;
    end
    else
    begin
      if cantidad_archivos_encontrados > 0 then
        memoLog.Lines.Add(getFechayHoraString + ' - Se encontraron ' + IntToStr(cantidad_archivos_encontrados) + ' archivos de novedades del cliente ' + ZQ_ListadoClientesNOMBRE_CLIENTE.AsString + ' en el Servidor FTP')
      else
        memoLog.Lines.Add(getFechayHoraString + ' - No se encontraron archivos de novedades del cliente ' + ZQ_ListadoClientesNOMBRE_CLIENTE.AsString + ' en el Servidor FTP');
    end;

    ZQ_ListadoClientes.Next;
  end;
end;


//bajo todos los archivos de novedades de los diferentes clientes de la aplicacion

procedure TFPrincipal.bajarNovedadesClientes;
var
  cantidad_archivos_encontrados: integer;
begin
  RemoveComponent(dm.IdFTP);
  dm.IdFTP.Free;
  dm.IdFTP:= Nil;
  dm.IdFTP:= TIdFTP.Create(Self);
  DM.configFTP;

  resultado_BajarNovedades:= false;
  ponerTodoEnCero;
  GrupoEditando.Enabled:= false;
  pBar_Ftp.Position:= 0;
  pBar_Novedades.Position:= 0;

  panelListaNovedades.Enabled:= false;
  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('        INICIO BAJAR NOVEDADES CLIENTES                       ');
  memoLog.Lines.Add('--------------------------------------------------------------');
  //si no estoy conectado a la base me conecto
  conectarDBLectura;
  conectarDBEscritura;
  //busco el ultimo archivo que se bajo del servidor
  memoLog.Lines.Add(getFechayHoraString + ' - Buscando Novedades de los Clientes en el Servidor FTP');
  if not buscarNovedadesClientes then //si devuelve falso es porque no me puedo conectar
  begin
    memoLog.Color:= colorError;
    memoLog.Lines.Add(getFechayHoraString + ' - No se pudo conectar al servidor FTP');
    memoLog.Lines.Add(getFechayHoraString + ' - ' + error_servidor_FTP);
  end
  else //si me puedo conectar
  begin
    cantidad_archivos_encontrados:= CD_ListaNovedades.RecordCount;
    if cantidad_archivos_encontrados > 0 then
      memoLog.Lines.Add(getFechayHoraString + ' - Se encontraron en total ' + IntToStr(cantidad_archivos_encontrados) + ' archivos de novedades en el Servidor FTP')
    else
      memoLog.Lines.Add(getFechayHoraString + ' - No se encontraron archivos de novedades en el Servidor FTP');
    Application.ProcessMessages;
    CD_ListaNovedades.First;
    while not CD_ListaNovedades.Eof do //por cada una de las novedades encontradas, las bajo una por una
    begin
      memoLog.Lines.Add(getFechayHoraString + ' - Descargando el archivo ' + CD_ListaNovedades_NombreArchivo.AsString + ' del Servidor FTP');
      pBar_Ftp.Position:= 0;
      Application.ProcessMessages;
      //bajo el archivo de novedades
      if FTP_BajarArchivo(dirFTP_Cliente, CD_ListaNovedades_NombreArchivo.AsString) = FTP_OK then
        memoLog.Lines.Add(getFechayHoraString + ' - Archivo ' + CD_ListaNovedades_NombreArchivo.AsString + ' descargado con exito')
      else
      begin
        memoLog.Lines.Add(getFechayHoraString + ' - Error al descargar el archivo ' + CD_ListaNovedades_NombreArchivo.AsString + ' del Servidor FTP');
        memoLog.Lines.Add(getFechayHoraString + ' - ' + error_servidor_FTP);
        memoLog.Lines.Add('--------------------------------------------------------------');
        memoLog.Lines.Add('        FIN BAJAR NOVEDADES CLIENTES                          ');
        memoLog.Lines.Add('--------------------------------------------------------------');
        memoLog.Lines.Add('');
        GrupoEditando.Enabled:= true;
        panelListaNovedades.Enabled:= true;
        exit;
      end;
      CD_ListaNovedades.Next;
    end;
  end;
  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('        FIN BAJAR NOVEDADES CLIENTES                          ');
  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('');
  GrupoEditando.Enabled:= true;
  panelListaNovedades.Enabled:= true;
  resultado_BajarNovedades:= true; //indico que se bajaron todos los archivos con exito
end;


//proceso los archivos de novedades de los clientes que descargue del servidor FTP

procedure TFPrincipal.procesarNovedadesClientes;
var
  id_cliente: integer;
begin
  resultado_ProcesarNovedades:= false;
  if CD_ListaNovedades.IsEmpty then
  begin
    resultado_ProcesarNovedades:= true;
    exit;
  end;

  panelContenedor.Enabled:= false;
  GrupoEditando.Enabled:= false;
  panelListaNovedades.Enabled:= false;
  pBar_Novedades.Position:= 0;
  CD_ProcesarNovedades.EmptyDataSet;

  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('        INICIO PROCESAR NOVEDADES CLIENTES                    ');
  memoLog.Lines.Add('--------------------------------------------------------------');
  //si no estoy conectado a la base me conecto como modo escritura
  if dm.ConexionEscritura.Connected = false then
    conectarDBEscritura;
  CD_ListaNovedades.First;
  while not CD_ListaNovedades.eof do //por cada uno de los archivos obtenidos del servidor
  begin
    if CD_ListaNovedades_Estado.AsString = ESTADO_SIN_PROCESAR then //si todavia no se proceso el archivo
    begin
      memoLog.Lines.Add(getFechayHoraString + ' - Cargando el archivo de novedades ' + CD_ListaNovedades_NombreArchivo.AsString);
      //cargo el archivo en el client dataset
      CD_ProcesarNovedades.LoadFromFile(dirLocal + CD_ListaNovedades_NombreArchivo.AsString);
      pBar_Novedades.Position:= 0;
      //obtengo el listado de todas las tablas a actualizar
      obtener_tablas_actualizar();
      pBar_Novedades.Max:= CD_Tablas_Actualizar.RecordCount;
      memoLog.Lines.Add(getFechayHoraString + ' - Procesando el archivo de novedades ' + CD_ListaNovedades_NombreArchivo.AsString);
      //busco el id_cliente del cliente que subio el archivo
      id_cliente:= 1;
      if ZQ_ListadoClientes.Locate('NOMBRE_CLIENTE', CD_ListaNovedades_Origen.AsString, []) then
        id_cliente:= ZQ_ListadoClientesID_SINCRO_CLIENTE.AsInteger;
      //actualizo la base de datos local con el contenido del archivo
      if not actualizar_base_server(id_cliente, CD_ListaNovedades_NombreArchivo.AsString) then //si se produjo un error mientras actualizaba salgo
      begin
        if CD_Tablas_Actualizar.IsEmpty then
        begin
          memoLog.Lines.Add(getFechayHoraString + ' - El archivo de de novedades ' + CD_ListaNovedades_NombreArchivo.AsString + ' no tiene datos de para actualizar');
          CD_ListaNovedades.edit;
          CD_ListaNovedades_Estado.AsString:= ESTADO_PROCESADO;
          CD_ListaNovedades.Post;
        end
        else
        begin
          memoLog.Lines.Add(getFechayHoraString + ' - Se produjo un error mientras se procesaba el archivo de novedades ' + CD_ListaNovedades_NombreArchivo.AsString);
          memoLog.Lines.Add(getFechayHoraString + ' - ' + error_sql);
          memoLog.Lines.Add('--------------------------------------------------------------');
          memoLog.Lines.Add('           FIN PROCESAR NOVEDADES CLIENTES                    ');
          memoLog.Lines.Add('--------------------------------------------------------------');
          memoLog.Lines.Add('');
          GrupoEditando.Enabled:= true;
          panelContenedor.Enabled:= true;
          exit;
        end;
      end
      else //si se actualizo correctamente
      begin
        memoLog.Lines.Add(getFechayHoraString + ' - El archivo de de novedades ' + CD_ListaNovedades_NombreArchivo.AsString + ' se proceso correctamente');
        //edito la lista de archivos de novedades y marco el archivo como que se proceso correctamente
        CD_ListaNovedades.edit;
        CD_ListaNovedades_Estado.AsString:= ESTADO_PROCESADO;
        CD_ListaNovedades.Post;
      end;
    end;
    CD_ListaNovedades.Next;
  end;
  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('           FIN PROCESAR NOVEDADES CLIENTES                    ');
  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('');
  GrupoEditando.Enabled:= true;
  panelContenedor.Enabled:= true;
  panelListaNovedades.Enabled:= true;
  resultado_ProcesarNovedades:= true;
end;


//Actualizar Base de datos del servidor

function TFPrincipal.actualizar_base_server(id_cliente: integer; archivo: string): boolean;
begin
  Result:= false;

  if CD_Tablas_Actualizar.Eof then
    exit;

  CD_ProcesarNovedades.DisableControls;

  try
    //inicio transaccion
    if dm.ModeloEscritura.iniciar_transaccion(transaccion_actualizar_base, [ZQ_GrabarUltimoArchivoCliente, ZQ_Sinc_Tabla, ZQ_Sinc_Clave, ZQ_Sinc_Campo, ZQ_Sinc_Blob]) then
    begin
      CD_Tablas_Actualizar.First;
      while not CD_Tablas_Actualizar.Eof do //por cada una de las tablas que se tienen que tocar
      begin
        //filtro las acciones a realizar para la tabla que estoy recorriendo en este momento
        CD_ProcesarNovedades.Filter:= format('ID = %s', [QuotedStr(CD_Tablas_Actualizar_Id.AsString)]);
        CD_ProcesarNovedades.Filtered:= true;
        CD_ProcesarNovedades.First;

        //agrego el registro a la tabla Z_SINC_TABLA
        ZQ_Sinc_Tabla.Append;
        ZQ_Sinc_TablaID.AsInteger:= CD_ProcesarNovedadesID.AsInteger;
        ZQ_Sinc_TablaTABLE_NAME.AsString:= CD_ProcesarNovedadesTABLE_NAME.AsString;
        ZQ_Sinc_TablaOPERATION.AsString:= CD_ProcesarNovedadesOPERATION.AsString;
        ZQ_Sinc_TablaDATE_TIME.AsDateTime:= CD_ProcesarNovedadesDATE_TIME.AsDateTime;
        ZQ_Sinc_TablaUSER_NAME.AsString:= CD_ProcesarNovedadesUSER_NAME.AsString;
        ZQ_Sinc_TablaID_SINCRO_LOTE.Clear;

        //agrego el registro a la tabla Z_SINC_CLAVE
        ZQ_Sinc_Clave.Append;
        ZQ_Sinc_ClaveLOG_TABLES_ID.AsInteger:= CD_ProcesarNovedadesID.AsInteger;
        ZQ_Sinc_ClaveKEY_FIELD.AsString:= CD_ProcesarNovedadesKEY_FIELD.AsString;
        ZQ_Sinc_ClaveKEY_VALUE.AsString:= CD_ProcesarNovedadesKEY_VALUE.AsString;

        while not CD_ProcesarNovedades.Eof do //recorro todos los campos que cambian y actualizo la query
        begin
          //agrego uno por uno los registro a la tabla Z_SINC_CAMPO
          if CD_ProcesarNovedadesFIELD_NAME.AsString <> '' then
          begin
            ZQ_Sinc_Campo.Append;
            ZQ_Sinc_CampoLOG_TABLES_ID.AsInteger:= CD_ProcesarNovedadesID.AsInteger;
            ZQ_Sinc_CampoFIELD_NAME.AsString:= CD_ProcesarNovedadesFIELD_NAME.AsString;
            ZQ_Sinc_CampoOLD_VALUE.AsString:= CD_ProcesarNovedadesOLD_VALUE.AsString;
            ZQ_Sinc_CampoNEW_VALUE.AsString:= CD_ProcesarNovedadesNEW_VALUE.AsString;
          end;

          //agrego uno por uno los registro a la tabla Z_SINC_BLOB
          if CD_ProcesarNovedadesFBLOB_NAME.AsString <> '' then
          begin
            ZQ_Sinc_Blob.Append;
            ZQ_Sinc_BlobLOG_TABLES_ID.AsInteger:= CD_ProcesarNovedadesID.AsInteger;
            ZQ_Sinc_BlobFIELD_NAME.AsString:= CD_ProcesarNovedadesFBLOB_NAME.AsString;
            ZQ_Sinc_BlobOLD_CHAR_VALUE.Value:= CD_ProcesarNovedadesFBLOB_OLD_CHAR_VALUE.Value;
            ZQ_Sinc_BlobNEW_CHAR_VALUE.Value:= CD_ProcesarNovedadesFBLOB_NEW_CHAR_VALUE.Value;
            ZQ_Sinc_BlobOLD_BLOB_VALUE.Value:= CD_ProcesarNovedadesFBLOB_OLD_BLOB_VALUE.Value;
            ZQ_Sinc_BlobNEW_BLOB_VALUE.Value:= CD_ProcesarNovedadesFBLOB_NEW_BLOB_VALUE.Value;
          end;

          CD_ProcesarNovedades.Next;
        end;
        //aplico las actualizaciones de las tablas
        ZQ_Sinc_Tabla.ApplyUpdates;
        ZQ_Sinc_Clave.ApplyUpdates;
        ZQ_Sinc_Campo.ApplyUpdates;

        CD_Tablas_Actualizar.next;
        pBar_Novedades.Position:= pBar_Novedades.Position + 1;
        Application.ProcessMessages;
      end;
      //saco el filro
      CD_ProcesarNovedades.Filtered:= false;

      //grabo en la base de datos local el nombre del archivo procesado con fecha y hora actual
      ZQ_GrabarUltimoArchivoCliente.Close;
      ZQ_GrabarUltimoArchivoCliente.Open;
      ZQ_GrabarUltimoArchivoCliente.Append;
      ZQ_GrabarUltimoArchivoClienteID_SINCRO_CLIENTE.AsInteger:= id_cliente;
      ZQ_GrabarUltimoArchivoClienteFECHA_Y_HORA.AsDateTime:= getFechayHora;
      ZQ_GrabarUltimoArchivoClienteULTIMO_ARCHIVO.AsString:= archivo;
      ZQ_GrabarUltimoArchivoCliente.Post;

      CD_ProcesarNovedades.EnableControls;

      //finalizo transaccion
      if dm.ModeloEscritura.finalizar_transaccion(transaccion_actualizar_base) then
        Result:= true
      else
        dm.ModeloEscritura.cancelar_transaccion(transaccion_actualizar_base);
    end;
  except //si se produce una excepcion en el proceso cancelo el mismo
    on E: Exception do
    begin
      error_sql:= e.Message;
      CD_ProcesarNovedades.EnableControls;
      CD_ProcesarNovedades.Filtered:= false;
      dm.ModeloEscritura.cancelar_transaccion(transaccion_actualizar_base);
      Result:= false;
    end
  end;
end;


//buscar novedades en el servidor

procedure TFPrincipal.buscarNovedadesServer;
begin
  //ejecuto el procedimiento que busca los datos para generar el archivo de actualizacion del servidor
  ZQ_NovedadesServer.ParamByName('RANGO_NOVEDADES').AsInteger:= rango_Novedades;
  CD_NovedadesServer.Close;
  CD_NovedadesServer.Open;
end;


//reflejo el progreso de la carga de novedades encontrada en el progress bar correspondiente

procedure TFPrincipal.ZQ_NovedadesServerAfterScroll(DataSet: TDataSet);
begin
  pBar_Novedades.Position:= posicion_PBar;
  posicion_PBar:= posicion_PBar + 1;
  Application.ProcessMessages;
end;


//Subir novedades del servidor al servidor FTP

procedure TFPrincipal.subirNovedadesServer;
var
  archivo: string;
begin
  resultado_SubirNovedades:= false;
  memoLog.Lines.Add(getFechayHoraString + ' - Buscando Novedades');
  //cargo el client dataset de novedades con todas las novedades encontradas
  buscarNovedadesServer;
  //obtengo el numero de lote que voy a subir
  nserie_server:= nro_lote_actual();
  //establezco en nombre del archivo a subir al servidor FTP
  archivo:= archivo_server + '_' + FormatFloat('00000', nserie_server) + '.xml';
  //si el archivo existe lo borro para crearlo nuevamente
  if FileExists(dirLocal + archivo) then
    DeleteFile(dirLocal + archivo);
  memoLog.Lines.Add(getFechayHoraString + ' - Creando Archivo Novedades (' + archivo + ')');
  //creo el archivo para subir
  CD_NovedadesServer.SaveToFile(dirLocal + archivo, dfXMLUTF8);
  memoLog.Lines.Add(getFechayHoraString + ' - Enviando Archivo Novedades (' + archivo + ') al Servidor FTP');
  //inicio subida del archivo al directorio asignado a los clientes en el servidor FTP
  if FTP_SubirArchivo(dirFTP_Server, archivo) = FTP_OK then //si el archivo se subio correctamente
  begin
    memoLog.Lines.Add(getFechayHoraString + ' - Fin Envio Archivo Novedades (' + archivo + ') al Servidor FTP');
    memoLog.Lines.Add(getFechayHoraString + ' - Guardando Lote Sincronizacion ' + IntToStr(nserie_server));
    //comienzo el guardado del lote de sincronizacion
    if guardar_lote(archivo) then //si el lote se guardo correctamente
    begin
      resultado_SubirNovedades:= true;
      memoLog.Lines.Add(getFechayHoraString + ' - Fin Guardar Lote Sincronizacion ' + IntToStr(nserie_server));
    end
    else //si no pude guardar el lote entonces borro el archivo que subi al servidor
    begin
      memoLog.Lines.Add(getFechayHoraString + ' - Error en Guardar Lote Sincronizacion ' + IntToStr(nserie_server));
      memoLog.Lines.Add(getFechayHoraString + ' - ' + error_sql);
      memoLog.Lines.Add(getFechayHoraString + ' - Borrando Archivo Novedades (' + archivo + ') del Servidor FTP');
      if FTP_BorrarArchivo(dirFTP_Server, archivo) = FTP_OK then
        memoLog.Lines.Add(getFechayHoraString + ' - Fin Borrar Archivo Novedades (' + archivo + ') del Servidor FTP')
      else
        memoLog.Lines.Add(getFechayHoraString + ' - No se pudo Borrar Archivo Novedades (' + archivo + ') del Servidor FTP');
    end;
  end
  else //si el archivo no se pudo subir al servidor
  begin
    memoLog.Lines.Add(getFechayHoraString + ' - Error en el Envio Archivo Novedades (' + archivo + ') al Servidor FTP');
    memoLog.Lines.Add(getFechayHoraString + ' - ' + error_servidor_FTP);
  end;
end;


procedure TFPrincipal.popUpItemSalirClick(Sender: TObject);
begin
  btnSalir.Click;
end;


procedure TFPrincipal.popUpItemMostrarOcultarClick(Sender: TObject);
begin
  Visible:= not Visible;

  memoLog.SelStart:= Length(memoLog.Lines.Text);
  memoLog.SelLength := 0;
end;

procedure TFPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= false;
  if Application.MessageBox('Si apaga el sincronizador dejará de actualizar la Base de Datos.', 'Atención', MB_OKCANCEL) = IDOK then
  begin
    CanClose:= true;
    configGrillas(1); //guardo la config de las grillas
    dm.ConexionLectura.Disconnect;
    dm.ConexionEscritura.Disconnect;

    guardarArchivoLog;
    dm.EKIconizar.Visible:= false;
  end;
end;


procedure TFPrincipal.btnPararContinuarClick(Sender: TObject);
begin
//  memoLog.Color:= colorError;

  if Timer.Enabled then
  begin
    Timer.Enabled:= false;
    btnPararContinuar.Caption:= 'Continuar';
  end
  else
  begin
    Timer.Enabled:= true;
    btnPararContinuar.Caption:= 'Parar';    
  end
end;


procedure TFPrincipal.lblTituloSincroDblClick(Sender: TObject);
begin
  memoLog.Color:= colorNormal;
end;

end.


