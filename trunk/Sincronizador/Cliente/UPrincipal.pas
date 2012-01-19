unit UPrincipal;

{------------- OBSERVACIONES -------------------------------------------
* HACER UNA VALIDACION PARA EL CAMBIO DE MODO, PQ SI ESTA EN MODO CLIENTE CON LA BASE
  DEL SERVIDOR VA A EXPLOTAR.
* VER EL TEMA DE LOS NOMBRE DE ARCHIVO PARA EL CLIENTE Y EL SERVIDOR EN LA CONFIGURACION
  EN MODO CLIENTE TIENE QUE TENER EL MISMO NOMBRE QUE EL QUE FIGURA EN LA BASE DEL SERVIDOR
  PARA ESE CLIENTE, SINO EN MODO SERVIDOR NUNCA VA ENCONTRAR LOS ARCHIVOS SUBIDO POR ESTE CLIENTE.
*   
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZConnection, StdCtrls, ZSqlUpdate, EKIni, ExtCtrls, EKEdit,
  ZStoredProcedure, dxBar, dxBarExtItems, EKIconizacion, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdFTP, DBClient, ComCtrls, Buttons, Provider, DBCtrls, EKOrdenarGrilla;

type
  TFPrincipal = class(TForm)
    ZQ_ActualizarBase: TZQuery;
    EKInicio: TEKIni;
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
    ZQ_NovedadesClienteOPERATION: TStringField;
    ZQ_NovedadesClienteDATE_TIME: TDateTimeField;
    ZQ_NovedadesClienteUSER_NAME: TStringField;
    ZQ_NovedadesClienteTABLE_NAME: TStringField;
    ZQ_NovedadesClienteKEY_FIELD: TStringField;
    ZQ_NovedadesClienteKEY_VALUE: TStringField;
    ZQ_NovedadesClienteFIELD_NAME: TStringField;
    ZQ_NovedadesClienteNEW_VALUE: TStringField;
    ZQ_NovedadesClienteOLD_VALUE: TStringField;
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
    CD_NovedadesClienteID: TIntegerField;
    CD_ProcesarNovedadesID: TIntegerField;
    ZQ_NovedadesClienteID: TIntegerField;
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
    CD_NovedadesServerID: TIntegerField;
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
    ZQ_NovedadesServerID: TIntegerField;
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
    procedure PintarFilasGrillas(grilla: TDBGrid; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridTablasActualizarDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridListaNovedadesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridDownloadDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridUploadDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerTimer(Sender: TObject);
    procedure cargarIni();
    function  getFechayHoraString: string;
    function  getFechayHora: TDateTime;    
    procedure guardarArchivoLog();
    procedure conectarDBLectura();
    procedure conectarDBEscritura;
    procedure configGrillas(opcion: integer); //0 = Cargar configuracion; 1 = Guardar configuracion
    procedure FormActivate(Sender: TObject);
    procedure ponerTodoEnCero();
    //procedimientos con el servidor FTP
    function  FTP_SubirArchivo(directorio, archivo: String): Boolean;
    function  FTP_BajarArchivo(directorio, archivo: String): Boolean;
    function  FTP_BorrarArchivo(directorio, archivo: String): Boolean;
    function  FTP_ExisteArchivo(directorio, archivo: string): boolean;
    function  FTP_BuscarListaArchivos(directorio, inicio_nombre_archivo, ultimo_archivo, origen_archivo: string): integer;
    //procedimientos de los botones
    procedure btnSubirClick(Sender: TObject);
    procedure btnBajarClick(Sender: TObject);
    procedure btnProcesarClick(Sender: TObject);
    procedure btnBorrarLogClick(Sender: TObject);
    procedure btnOcultarClick(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    //procedientos compartidos modo CLIENTE y SERVIDOR
    function  guardar_lote: boolean;
    function  nro_lote_actual: integer;
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
    function  actualizar_base_local(archivo: string):boolean;
    //MODO SERVIDOR------------------------------------------
    //procedimientos para subir novedades del servidor al servidor FTP
    procedure buscarNovedadesServer();
    procedure subirNovedadesServer();
    procedure ZQ_NovedadesServerAfterScroll(DataSet: TDataSet);
    //procedimientos bajar novedades de los clientes desde el servidor FTP al servidor
    function  buscarNovedadesClientes(): boolean;
    procedure bajarNovedadesClientes();
    //procedimientos para procesar los archivos de novedades de los clientes descargados desde el servidor FTP
    procedure procesarNovedadesClientes();
    function  actualizar_base_server(id_cliente: integer; archivo: string):boolean;


  private
    { Private declarations }
  public
    modo: string;
    lunes, martes, miercoles, jueves, viernes, sabado, domingo,
    intervalo, dia_hoy, tiempo_restante: integer;
    dirAplica, nameAplica: string;
    db_host, db_name, db_user, db_pass: string;
    ftp_host, ftp_user, ftp_pass: string;
    dirFTP_Server, dirFTP_Cliente, dirLocal, dirLog: string;
    archivo_cliente, archivo_server: string;
    nserie_cliente, nserie_server: integer;
    posicion_PBar: integer;
    encendido: string;
    ultFecha: TDate;
    lote_commit, loteGenerado, ultLoteR, ultLoteL, ultSuc, idSucursal : integer;
    id_base_local: string;
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

implementation

uses UUtil_Procesos, UDM, UConfiguracion, IniFiles, DateUtils, StrUtils,
  EKModelo;

{$R *.dfm}

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
      grilla.Canvas.Font.Style := grilla.Canvas.Font.Style + [fsBold];
    end;
  end;

  grilla.DefaultDrawColumnCell(a,datacol,column,state);
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
procedure TFPrincipal.FormCreate(Sender: TObject);
begin
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
      Application.MessageBox('Ya hay una instancia del programa ejecutándose.','Atención');
//      ExitProcess(0);
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
end;


procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  configGrillas(1); //guardo la config de las grillas
  dm.ConexionLectura.Disconnect;
  dm.ConexionEscritura.Disconnect;
end;


procedure TFPrincipal.FormActivate(Sender: TObject);
begin
  panelTitulo.SetFocus;
end;


procedure TFPrincipal.cargarIni();
begin
  EKInicio.abrir;
  modo:= EKInicio.Ini.ReadString('SINCRONIZADOR', 'MODO', 'CLIENTE'); //cargo el modo, si no esta por defecto es CLIENTE

  db_host:= EKInicio.Ini.ReadString('BASE', 'DB_HOST', '');
  db_name:= EKInicio.Ini.ReadString('BASE', 'DB_NAME', '');
  db_user:= EKInicio.Desencripta(EKInicio.Ini.ReadString('BASE', 'DB_USER', ''));
  db_pass:= EKInicio.Desencripta(EKInicio.Ini.ReadString('BASE', 'DB_PASS', ''));

  ftp_host:= EKInicio.Ini.ReadString('FTP', 'FTP_HOST','');
  ftp_user:= EKInicio.Desencripta(EKInicio.Ini.ReadString('FTP', 'FTP_USER', ''));
  ftp_pass:= EKInicio.Desencripta(EKInicio.Ini.ReadString('FTP', 'FTP_PASS', ''));

  dirFTP_Server:= EKInicio.Ini.ReadString('FTP', 'FTP_DIR_SERVER', '');
  dirFTP_Cliente:= EKInicio.Ini.ReadString('FTP', 'FTP_DIR_PUBLIC', '');

  dirLocal:= dirAplica+'Archivos\';
  if not DirectoryExists(dirLocal) then
    CreateDir(dirLocal);

  dirLog:= dirAplica+'Log\';
  if not DirectoryExists(dirLog) then
    CreateDir(dirLog);

  archivo_cliente:= EKInicio.Ini.ReadString('FILE', 'FILE_UPLOAD', 'sucursal_');;
  archivo_server:= EKInicio.Ini.ReadString('FILE', 'FILE_DOWNLOAD', 'server_');;

  //configuro base
  DM.ConexionLectura.HostName:= db_host;
  DM.ConexionLectura.Database:= db_name;
  DM.ConexionLectura.User:= db_user;
  DM.ConexionLectura.Password:= db_pass;

  //configuro base para guardar las novedades bajadas del servidor
  DM.ConexionEscritura.HostName:= db_host;
  DM.ConexionEscritura.Database:= db_name;
  DM.ConexionEscritura.User:= 'sincro';      //para indicar que las modificaciones
  DM.ConexionEscritura.Password:= 'sincro';  //se realizaron con el sincronizador

  //configuro ftp
  DM.IdFTP.Host:= ftp_host;
  DM.IdFTP.Username:= ftp_user;
  DM.IdFTP.Password:= ftp_pass;

  //configuro los dias en que se sincronizq
  lunes:= EKInicio.Ini.ReadInteger('CRONOGRAMA', 'LUNES', -1);
  martes:= EKInicio.Ini.ReadInteger('CRONOGRAMA', 'MARTES', -1);
  miercoles:= EKInicio.Ini.ReadInteger('CRONOGRAMA', 'MIERCOLES', -1);
  jueves:= EKInicio.Ini.ReadInteger('CRONOGRAMA', 'JUEVES', -1);
  viernes:= EKInicio.Ini.ReadInteger('CRONOGRAMA', 'VIERNES', -1);
  sabado:= EKInicio.Ini.ReadInteger('CRONOGRAMA', 'SABADO', -1);
  domingo:= EKInicio.Ini.ReadInteger('CRONOGRAMA', 'DOMINGO', -1);

  //obtengo el numero del dia de hoy
  dia_hoy:= DayOfTheWeek(getFechayHora);

  //Activo o desactivo el timmer de sincronizacion
  Timer.Enabled:= false;
  if (dia_hoy = lunes) or (dia_hoy = martes) or (dia_hoy = miercoles) or (dia_hoy = jueves) or (dia_hoy = viernes) or (dia_hoy = sabado) then
    Timer.Enabled:= true;

  //configuro el timmer con el intervalo de la configuracion
  intervalo:= EKInicio.Ini.ReadInteger('CRONOGRAMA', 'HORA', 1)*3600 + EKInicio.Ini.ReadInteger('CRONOGRAMA', 'MINUTOS', 0)*60;
  tiempo_restante:= intervalo;
  lblTiempoRestante.Caption:= FormatDateTime('hh:nn:ss', tiempo_restante/SecsPerDay);
  
//  lote_commit:= strtoint(inicio.Ini.ReadString('SINCRO', 'lote_commit', '100'));
//  encendido:= inicio.Ini.ReadString('SINCRO', 'encendido', 'SI');
//  chkTimer.Checked:= (encendido = 'SI');
//  cuenta.Text:= inttostr(intervalo);
//  if unidad_tpo = 'segundos' then
//    rGroupTiempo.ItemIndex:= 0
//  else
//    rGroupTiempo.ItemIndex:= 1;
//
//  rGroupTiempoClick(self);

  EKInicio.cerrar;
  lblTituloSincro.Caption:= db_name;
  FPrincipal.Caption:= 'Sincronizador en Modo '+modo;
end;


procedure TFPrincipal.TimerTimer(Sender: TObject);
begin
  if tiempo_restante = 0 then
  begin
    //sincronizar
    tiempo_restante:= intervalo;
  end
  else
  begin
    lblTiempoRestante.Caption:= FormatDateTime('hh:nn:ss', tiempo_restante/SecsPerDay);
    tiempo_restante:= tiempo_restante - 1;
  end
end;


function TFPrincipal.getFechayHora: TDateTime;
begin
  result:= dm.ModeloLectura.FechayHora;
end;


function TFPrincipal.getFechayHoraString: string;
begin
  result:= DateTimeToStr(dm.ModeloLectura.FechayHora);
end;


procedure TFPrincipal.btnSalirClick(Sender: TObject);
begin
//  if Application.MessageBox('Si apaga el sincronizador dejará de actualizar la BD.', 'Atención', MB_OKCANCEL)= IDOK then
  begin
    guardarArchivoLog;
    dm.EKIconizar.Visible:=false;
    ExitProcess(0);
  end;
end;

//minimizar la aplicacion a la bandeja de sistema
procedure TFPrincipal.btnOcultarClick(Sender: TObject);
begin
  Visible:= False;
end;

//abrir la pantalla de configuracion
procedure TFPrincipal.btnConfigClick(Sender: TObject);
var
  clave: string;
begin
  clave:= InputBox('Clave de Ingreso','Clave','');
  if clave = 'jumale03' then
  begin
    Application.CreateForm(TFConfiguracion,FConfiguracion);
    FConfiguracion.ShowModal;
    FConfiguracion.Release;
    cargarIni;
  end
  else
    if clave <> '' then
      ShowMessage('La clave ingresada es incorrecta.');
end;

//guara el log en un archivo
procedure TFPrincipal.guardarArchivoLog();
var
  archivoLog: String;
begin
  try
    archivoLog:= Format('LOG_%s.TXT',[FormatDateTime('dd-mm-yyyy(hh.nn.ss)', getFechayHora)]);
    memoLog.Lines.SaveToFile(dirLog+archivoLog);
  except
    Application.MessageBox('Se produjo un error al crear el archivo de Log.','Atención',MB_OK+MB_ICONINFORMATION);
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
procedure TFPrincipal.conectarDBLectura;
begin
  try
   begin
      DM.ConexionLectura.Disconnect;
      memoLog.Lines.Add(getFechayHoraString+' - Conectando DB Local: '+db_host+':'+db_name+' modo lectura');
      DM.ConexionLectura.Connect;
      memoLog.Lines.Add(getFechayHoraString+' - Conectado.');
   end
  except
    on E: Exception do
    begin
      DM.ConexionLectura.Disconnect;
      memoLog.Lines.Add(getFechayHoraString+' - '+E.Message);
      memoLog.Lines.Add(getFechayHoraString+' - ERROR Conexión DB Local'+db_host+':'+db_name+' modo lectura');
    end;
  end;
end;

//Conectarse en modo escritura, para guardar las novedades
procedure TFPrincipal.conectarDBEscritura;
begin
  try
   begin
      DM.ConexionEscritura.Disconnect;
      memoLog.Lines.Add(getFechayHoraString+' - Conectando DB Local: '+db_host+':'+db_name+' modo escritura');
      DM.ConexionEscritura.Connect;
      memoLog.Lines.Add(getFechayHoraString+' - Conectado.');
   end
  except
    on E: Exception do
    begin
      DM.ConexionEscritura.Disconnect;
      memoLog.Lines.Add(getFechayHoraString+' - '+E.Message);
      memoLog.Lines.Add(getFechayHoraString+' - ERROR Conexión DB Local'+db_host+':'+db_name+' modo escritura');
    end;
  end;
end;


procedure TFPrincipal.btnSubirClick(Sender: TObject);
begin
  if modo = modo_cliente then
    subirNovedadesCliente
  else
    subirNovedadesServer;
end;


procedure TFPrincipal.btnBajarClick(Sender: TObject);
begin
  if modo = modo_cliente then
    bajarNovedadesServer
  else
    bajarNovedadesClientes;
end;

procedure TFPrincipal.btnProcesarClick(Sender: TObject);
begin
  if modo = modo_cliente then
    procesarNovedadesServer
  else
    procesarNovedadesClientes;
end;

//*********************************************************************
//                PROCEDIMIENTOS CON EL SERVIDOR FTP
//*********************************************************************
//Subir un archivo al servidor FTP en un directorio especifico
function TFPrincipal.FTP_SubirArchivo(directorio, archivo: String): Boolean;
Var
  F: File of byte;
  size_archivo: integer;
begin
  Result:= false;

  //si no estoy conectado al ftp me conecto
  If not DM.IdFTP.Connected then
  try
    DM.IdFTP.Connect;
  except
    ShowMessage('No se ha podido conectar con el Servidor FTP '+DM.IdFTP.Host);
    exit;
  end;

  If DM.IdFTP.Connected then //si me pude conectar
  Begin
    Try
      //obtengo el tamaño del archivo a subir para poder reflejar el proceso de subida en el progress bar correspondiente
      AssignFile(F, dirLocal+archivo);
      Reset(F);
      size_archivo:= FileSize(F) div 1024;
      pBar_Ftp.max:= size_archivo;
      CloseFile(F);

      //me ubico en el directorio correspondiente en el ftp y subo el archivo
      DM.IdFTP.BeginWork(wmWrite, 0);
      DM.IdFTP.ChangeDir(directorio); //cambio al directorio pasado como parametro
      DM.IdFTP.Put(dirLocal+archivo, ExtractFileName(archivo), False);
      DM.IdFTP.EndWork(wmWrite);
      DM.IdFTP.Disconnect;

      Result:= true;
    except
      Result:= false;
    end;
  End;
end;

//Bajar un archivo de un directorio especifico del servidor FTP
function TFPrincipal.FTP_BajarArchivo(directorio, archivo: String): Boolean;
Var
  size_archivo: integer;
begin
  Result:= false;

  //si no estoy conectado al ftp me conecto
  If not DM.IdFTP.Connected then
  try
    DM.IdFTP.Connect;
  except
    ShowMessage('No se ha podido conectar con el Servidor FTP '+DM.IdFTP.Host);
    exit;
  end;

  //si estoy conectado
  If DM.IdFTP.Connected then
  Begin
    Try
      //me ubico en el directorio correspondiente en el ftp
      DM.IdFTP.ChangeDir(directorio);

      //si el archivo que voy a bajar ya lo tengo en la pc, lo borro
      if FileExists(dirLocal+archivo) then
        DeleteFile(dirLocal+archivo);
      //obtengo el tamaño del archivo para setear el progrees bar
      size_archivo:= DM.IdFTP.Size(archivo) div 1024;
      pBar_Ftp.max:= size_archivo;
      Application.ProcessMessages;

      try
        if true then//existeArchivoServer(archivo) then
        begin
          //bajo el archivo
          DM.IdFTP.BeginWork(wmRead, 0);
          DM.IdFTP.Get(archivo, dirLocal+archivo, False, False);
          DM.IdFTP.EndWork(wmRead);
          DM.IdFTP.Disconnect;
        end
        else
        begin
          Result:= false;
          Exit;
        end
      except
        //si se produjo un error en la bajada me aseguro que se borre el archivo de la pc
        if FileExists(dirLocal+archivo) then
          DeleteFile(dirLocal+archivo);
        DM.IdFTP.EndWork(wmRead);
        DM.IdFTP.Disconnect;
      end;

      Result:= true;
    except
      Result:= false;
    end;
  end;
end;

//Borrar un archivo en un directorio especifico en el servidor FTP
function TFPrincipal.FTP_BorrarArchivo(directorio, archivo: String): Boolean;
begin
  Result:= false;

  //si no estoy conectado al ftp me conecto
  If not DM.IdFTP.Connected then
  try
    DM.IdFTP.Connect;
  except
    ShowMessage('No se ha podido conectar con el Servidor FTP '+DM.IdFTP.Host);
    exit;
  end;

  If DM.IdFTP.Connected then
  Begin
    Try
      //me ubico en el directorio correspondiente en el ftp y borro el archivo
      DM.IdFTP.BeginWork(wmWrite);
      DM.IdFTP.ChangeDir(directorio);
      DM.IdFTP.Delete(archivo);
      DM.IdFTP.EndWork(wmWrite);
      DM.IdFTP.Disconnect;

      Result:= true;
    except
      Result:= false;
    end;
  End;
end;


//cheque que el archivo pasado como parametro exista en el servidor ftp
function TFPrincipal.FTP_ExisteArchivo(directorio, archivo: string): boolean;
begin
  Result:= false;

  //si no estoy conectado al ftp me conecto
  If not DM.IdFTP.Connected then
  try
    DM.IdFTP.Connect;
  except
    ShowMessage('No se ha podido conectar con el Servidor FTP '+DM.IdFTP.Host);
    exit;
  end;

  //si estoy conectado
  If DM.IdFTP.Connected then
  Begin
    Try
      //me ubico en el directorio correspondiente en el ftp y verifico si existe el archivo
      DM.IdFTP.ChangeDir(directorio);
      DM.IdFTP.List(nil, archivo, False);
      //si la lista obtenida es mayor a cero es porque el archivo existe
      Result:= (dm.IdFTP.ListResult.Count > 0);
      DM.IdFTP.EndWork(wmRead);
      DM.IdFTP.Disconnect;
    except
      Result:= false;
    end;
  End;
end;


//busca las novedades subidas por el servidor al FTP
function TFPrincipal.FTP_BuscarListaArchivos(directorio, inicio_nombre_archivo, ultimo_archivo, origen_archivo: string): integer;
var
  auxLista: TStringList;
  i, cantidad: integer;
begin
  result:= -1;
  cantidad:= 0;

  //si no estoy conectado al ftp me conecto
  If not DM.IdFTP.Connected then
  try
    DM.IdFTP.Connect;
  except
    ShowMessage('No se ha podido conectar con el Servidor FTP '+DM.IdFTP.Host);
    exit;
  end;

  //si estoy conectado
  If DM.IdFTP.Connected then
  Begin
    Try
      auxLista:= TStringList.Create;
      //me ubico en el directorio correspondiente en el ftp
      DM.IdFTP.ChangeDir(directorio);
      //obtengo la lista de todos los archivos que existen en el directorio correspondiente del ftp que comiencen con el nombre del archivo del servidor y terminen en xml
      DM.IdFTP.List(auxLista, inicio_nombre_archivo+'_*.xml', false); //cargar en lista, los archivos que empiezen con el nombre del servidor y terminen en xml, todos los archivos
      //por cada uno de los nombres de archivo obtenidos
      for i := 0 to auxLista.Count - 1 do
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
    Except
      exit;
    end;
  end;
end;


//*********************************************************************
//      PROCEDIMIENTOS COMPARTIDOS POR EL MODO CLIENTE Y SERVIDOR
//*********************************************************************
//procedimiento que crea el lote en la base de datos, devuelve falso si no se pudo crear
function TFPrincipal.guardar_lote: boolean;
var
  transaccion: string;
begin
  if modo = modo_cliente then
    transaccion:= transaccion_cliente
  else
    transaccion:= transaccion_sertver;

  Result:= false;

  if dm.ModeloEscritura.iniciar_transaccion(transaccion, []) then
  begin
    ZQ_CrearLote.Close;
    ZQ_CrearLote.ExecSQL;

    if dm.ModeloEscritura.finalizar_transaccion(transaccion) then
      Result:= true
    else
      dm.ModeloEscritura.cancelar_transaccion(transaccion);
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
        CD_Tablas_Actualizar_Clave.AsString:= CD_ProcesarNovedadesKEY_FIELD.AsString;
        CD_Tablas_Actualizar_CampoClave.AsString:= CD_ProcesarNovedadesKEY_VALUE.AsString;
//        if modo = modo_cliente then
//          CD_Tablas_Actualizar_Usuario.AsString:= CD_ProcesarNovedadesUSER_NAME.AsString
//        else
//          CD_Tablas_Actualizar_Usuario.AsString:= CD_ProcesarNovedadesUSER_NAME.AsString;
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
  ponerTodoEnCero;
  GrupoEditando.Enabled:= false;
  pBar_Ftp.Position:= 0;
  pBar_Novedades.Position:= 0;

  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('        INICIO SUBIR NOVEDADES CLIENTE                        ');
  memoLog.Lines.Add('--------------------------------------------------------------');
  //si no estoy conectado a la base me conecto
  conectarDBLectura;
  conectarDBEscritura;
  memoLog.Lines.Add(getFechayHoraString+' - Buscando Novedades');
  DBGridUpload.BringToFront;
  DBGridUpload.DataSource:= DS_NovedadesCliente;
  posicion_PBar:= 0;
  //obtengo la cantidad del novedades encontradas (todas las modif. mias, <> SINCRO, q no tiene lote asignado)
  ZQ_NovedadesClienteCant.Close;
  ZQ_NovedadesClienteCant.Open;
  //si no se encontraron novedades no hago nada y salgo
  if ZQ_NovedadesClienteCantCOUNT.AsInteger = 0 then
  begin
    memoLog.Lines.Add(getFechayHoraString+' - No hay Novedades para Subir');
    memoLog.Lines.Add('--------------------------------------------------------------');
    memoLog.Lines.Add('        FIN SUBIR NOVEDADES CLIENTE                           ');
    memoLog.Lines.Add('--------------------------------------------------------------');
    memoLog.Lines.Add('');
    GrupoEditando.Enabled:= true;
    exit;
  end;
  //seteo el maximo del progress bar
  pBar_Novedades.Max:= ZQ_NovedadesClienteCantCOUNT.AsInteger;
  //cargo el client dataset de novedades con todas las novedades encontradas
  buscarNovedadesCliente;
  //obtengo el numero de lote que voy a subir
  nserie_cliente:= nro_lote_actual();
  //establezco en nombre del archivo a subir al servidor
  archivo:= archivo_cliente+'_'+FormatFloat('00000', nserie_cliente)+'.xml';
  //si el archivo existe lo borro para crearlo nuevamente
  if FileExists(dirLocal+archivo) then
    DeleteFile(dirLocal+archivo);
  memoLog.Lines.Add(getFechayHoraString+' - Creando Archivo Novedades ('+archivo+')');
  //creo el archivo para subir
  CD_NovedadesCliente.SaveToFile(dirLocal+archivo, dfXMLUTF8);
  memoLog.Lines.Add(getFechayHoraString+' - Enviando Archivo Novedades ('+archivo+') al Servidor FTP');
  //inicio subida del archivo al directorio asignado a los clientes en el servidor FTP
  if FTP_SubirArchivo(dirFTP_Cliente, archivo) then //si el archivo se subio correctamente
  begin
    memoLog.Lines.Add(getFechayHoraString+' - Fin Envio Archivo Novedades ('+archivo+') al Servidor FTP');
    memoLog.Lines.Add(getFechayHoraString+' - Guardando Lote Sincronizacion '+IntToStr(nserie_cliente));
    //comienzo el guardado del lote de sincronizacion
    if guardar_lote then //si el lote se guardo correctamente
      memoLog.Lines.Add(getFechayHoraString+' - Fin Guardar Lote Sincronizacion '+IntToStr(nserie_cliente))
    else //si no pude guardar el lote entonces borro el archivo que subi al servidor
    begin
      memoLog.Lines.Add(getFechayHoraString+' - Error en Guardar Lote Sincronizacion '+IntToStr(nserie_cliente));
      memoLog.Lines.Add(getFechayHoraString+' - Borrando Archivo Novedades ('+archivo+') del Servidor FTP');
      if FTP_BorrarArchivo(dirFTP_Cliente,archivo) then
        memoLog.Lines.Add(getFechayHoraString+' - Fin Borrar Archivo Novedades ('+archivo+') del Servidor FTP')
      else
        memoLog.Lines.Add(getFechayHoraString+' - No se pudo Borrar Archivo Novedades ('+archivo+') del Servidor FTP');
    end;
  end
  else //si el archivo no se pudo subir al servidor
  begin
    memoLog.Lines.Add(getFechayHoraString+' - Error en el Envio Archivo Novedades ('+archivo+') al Servidor FTP');
  end;
  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('        FIN SUBIR NOVEDADES CLIENTE                           ');
  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('');
  GrupoEditando.Enabled:= true;
end;


//Bajo todos los archivos subidos por el servidor para poder procesarlos y actualizar la base del cliente
procedure TFPrincipal.bajarNovedadesServer();
var
  ultimo_archivo: string;
  cantidad_archivos_encontrados: integer;
begin
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
  id_base_local:= ZQ_ConfiguracionID_SUCURSAL.AsString;
  ZQ_Configuracion.Close;
  //busco el ultimo archivo que se bajo del servidor
  memoLog.Lines.Add(getFechayHoraString+' - Buscando Novedades del Servidor en el Servidor FTP');
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
  if cantidad_archivos_encontrados = -1 then  //si devuelve -1 es porque no me puedo conectar
    memoLog.Lines.Add(getFechayHoraString+' - No se pudo conectar al servidor FTP')
  else //si me puedo conectar
  begin
    if cantidad_archivos_encontrados > 0 then
      memoLog.Lines.Add(getFechayHoraString+' - Se encontraron '+IntToStr(cantidad_archivos_encontrados)+' archivos de novedades en el Servidor FTP')
    else
      memoLog.Lines.Add(getFechayHoraString+' - No se encontraron archivos de novedades en el Servidor FTP');
    Application.ProcessMessages;
    CD_ListaNovedades.First;
    while not CD_ListaNovedades.Eof do //por cada una de las novedades encontradas, las bajo una por una
    begin
      memoLog.Lines.Add(getFechayHoraString+' - Descargando el archivo '+CD_ListaNovedades_NombreArchivo.AsString+' del Servidor FTP');
      pBar_Ftp.Position:= 0;
      Application.ProcessMessages;
      //bajo el archivo de novedades
      if FTP_BajarArchivo(dirFTP_Server, CD_ListaNovedades_NombreArchivo.AsString) then
        memoLog.Lines.Add(getFechayHoraString+' - Archivo '+CD_ListaNovedades_NombreArchivo.AsString+' descargado con exito')
      else
        memoLog.Lines.Add(getFechayHoraString+' - Error al descargar el archivo '+CD_ListaNovedades_NombreArchivo.AsString+' del Servidor FTP');
      CD_ListaNovedades.Next;
    end;
  end;
  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('        FIN BAJAR NOVEDADES SERVIDOR                          ');
  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('');
  GrupoEditando.Enabled:= true;
  panelListaNovedades.Enabled:= true;
end;


//procesar los archivos descargados del servidor FTP
procedure TFPrincipal.procesarNovedadesServer;
begin
  if CD_ListaNovedades.IsEmpty then
    exit;

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
      memoLog.Lines.Add(getFechayHoraString+' - Cargando el archivo de novedades '+CD_ListaNovedades_NombreArchivo.AsString);
      //cargo el archivo en el client dataset
      CD_ProcesarNovedades.LoadFromFile(dirLocal+CD_ListaNovedades_NombreArchivo.AsString);
      pBar_Novedades.Position:= 0;
      //obtengo el listado de todas las tablas a actualizar
      obtener_tablas_actualizar();
      pBar_Novedades.Max:= CD_Tablas_Actualizar.RecordCount;
      memoLog.Lines.Add(getFechayHoraString+' - Procesando el archivo de novedades '+CD_ListaNovedades_NombreArchivo.AsString);
      //actualizo la base de datos local con el contenido del archivo
//      if not actualizar_base_local(CD_ListaNovedades_NombreArchivo.AsString) then //si se produjo un error mientras actualizaba salgo
//      begin
//        if CD_Tablas_Actualizar.IsEmpty then
//        begin
//          memoLog.Lines.Add(getFechayHoraString+' - El archivo de de novedades '+CD_ListaNovedades_NombreArchivo.AsString+' no tiene datos de otras sucursales para actualizar');
//          CD_ListaNovedades.edit;
//          CD_ListaNovedades_Estado.AsString:= ESTADO_PROCESADO;
//          CD_ListaNovedades.Post;
//        end
//        else
//        begin
//          memoLog.Lines.Add(getFechayHoraString+' - Se produjo un error mientras se procesaba el archivo de novedades '+CD_ListaNovedades_NombreArchivo.AsString);
//          memoLog.Lines.Add('--------------------------------------------------------------');
//          memoLog.Lines.Add('           FIN PROCESAR NOVEDADES SERVIDOR                    ');
//          memoLog.Lines.Add('--------------------------------------------------------------');
//          memoLog.Lines.Add('');
//          GrupoEditando.Enabled:= true;
//          panelContenedor.Enabled:= true;
//          exit;
//        end;
//      end
//      else //si se actualizo correctamente
//      begin
//        memoLog.Lines.Add(getFechayHoraString+' - El archivo de de novedades '+CD_ListaNovedades_NombreArchivo.AsString+' se proceso correctamente');
//        //edito la lista de archivos de novedades y marco el archivo como que se proceso correctamente
//        CD_ListaNovedades.edit;
//        CD_ListaNovedades_Estado.AsString:= ESTADO_PROCESADO;
//        CD_ListaNovedades.Post;
//      end;
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
end;

//Actualizo la base local con el archivo descargado del servidor FTP y que se pasa como parametro
function TFPrincipal.actualizar_base_local(archivo: string):boolean;
begin
  Result:= false;

  if CD_Tablas_Actualizar.Eof then
    exit;

  try
    //inicio transaccion
    if dm.ModeloEscritura.iniciar_transaccion(transaccion_actualizar_base, [ZQ_GrabarUltimoArchivoServer]) then
    begin
      CD_Tablas_Actualizar.First;
      while not CD_Tablas_Actualizar.Eof do //por cada una de las tablas que se tienen que tocar
      begin
        //filtro las acciones a realizar para la tabla que estoy recorriendo en este momento
        CD_ProcesarNovedades.Filter:= format('ID = %s', [QuotedStr(CD_Tablas_Actualizar_Id.AsString)]);
        CD_ProcesarNovedades.Filtered:= true;

        //creo la query correspondiente y la ejecuto
        ZQ_ActualizarBase.SQL.Clear;
        ZQ_ActualizarBase.SQL.Add('select * from '+CD_ProcesarNovedadesTABLE_NAME.AsString+
                                 ' where '+CD_ProcesarNovedadesKEY_FIELD.AsString+'='+CD_ProcesarNovedadesKEY_VALUE.AsString);
        ZQ_ActualizarBase.Open;

        if CD_ProcesarNovedadesOPERATION.AsString = 'D' then //si la operacion es un delete
        begin
          if ZQ_ActualizarBase.RecordCount = 1 then //si existe el registro lo borro
            ZQ_ActualizarBase.Delete;
        end
        else
        begin
          if (CD_ProcesarNovedadesOPERATION.AsString = 'I') then //si la operacion es un insert, pongo en modo insercion la query
            ZQ_ActualizarBase.Append
          else
            if (CD_ProcesarNovedadesOPERATION.AsString = 'U') then //si la operacion es un update, pongo en modo edicion la query
              ZQ_ActualizarBase.Edit;

          CD_ProcesarNovedades.First;
          while not CD_ProcesarNovedades.Eof do //recorro todos los campos que cambian y actualizo la query
          begin
            //si el campo no es null o vacio entonces le seteo su valor
            if not ((CD_ProcesarNovedadesFIELD_NAME.IsNull) or (CD_ProcesarNovedadesFIELD_NAME.AsString = '')) then
              ZQ_ActualizarBase.FieldByName(CD_ProcesarNovedadesFIELD_NAME.AsString).value:= CD_ProcesarNovedadesNEW_VALUE.value;
            CD_ProcesarNovedades.Next;
          end;
        end;
        pBar_Novedades.Position:= pBar_Novedades.Position + 1;

        //aplico los cambios
        ZQ_ActualizarBase.ApplyUpdates;
        //paso a la tabla siguiente
        CD_Tablas_Actualizar.next;
      end;
      //saco el filro
      CD_ProcesarNovedades.Filtered:= false;

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
    end;
  except //si se produce una excepcion en el proceso cancelo el mismo
    begin
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
    if cantidad_archivos_encontrados = -1 then //si es -1 es porque no me pude conectar al servidor FTP
    begin
      Result:= false;
      exit;
    end
    else
    begin
      if cantidad_archivos_encontrados > 0 then
        memoLog.Lines.Add(getFechayHoraString+' - Se encontraron '+IntToStr(cantidad_archivos_encontrados)+' archivos de novedades del cliente '+ZQ_ListadoClientesNOMBRE_CLIENTE.AsString+' en el Servidor FTP')
      else
        memoLog.Lines.Add(getFechayHoraString+' - No se encontraron archivos de novedades del cliente '+ZQ_ListadoClientesNOMBRE_CLIENTE.AsString+' en el Servidor FTP');
    end;

    ZQ_ListadoClientes.Next;
  end;
end;

//bajo todos los archivos de novedades de los diferentes clientes de la aplicacion
procedure TFPrincipal.bajarNovedadesClientes;
var
  cantidad_archivos_encontrados: integer;
begin
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
  memoLog.Lines.Add(getFechayHoraString+' - Buscando Novedades de los Clientes en el Servidor FTP');
  if not buscarNovedadesClientes then  //si devuelve falso es porque no me puedo conectar
    memoLog.Lines.Add(getFechayHoraString+' - No se pudo conectar al servidor FTP')
  else //si me puedo conectar
  begin
    cantidad_archivos_encontrados:= CD_ListaNovedades.RecordCount;
    if cantidad_archivos_encontrados > 0 then
      memoLog.Lines.Add(getFechayHoraString+' - Se encontraron en total '+IntToStr(cantidad_archivos_encontrados)+' archivos de novedades en el Servidor FTP')
    else
      memoLog.Lines.Add(getFechayHoraString+' - No se encontraron archivos de novedades en el Servidor FTP');
    Application.ProcessMessages;
    CD_ListaNovedades.First;
    while not CD_ListaNovedades.Eof do //por cada una de las novedades encontradas, las bajo una por una
    begin
      memoLog.Lines.Add(getFechayHoraString+' - Descargando el archivo '+CD_ListaNovedades_NombreArchivo.AsString+' del Servidor FTP');
      pBar_Ftp.Position:= 0;
      Application.ProcessMessages;
      //bajo el archivo de novedades
      if FTP_BajarArchivo(dirFTP_Cliente, CD_ListaNovedades_NombreArchivo.AsString) then
        memoLog.Lines.Add(getFechayHoraString+' - Archivo '+CD_ListaNovedades_NombreArchivo.AsString+' descargado con exito')
      else
        memoLog.Lines.Add(getFechayHoraString+' - Error al descargar el archivo '+CD_ListaNovedades_NombreArchivo.AsString+' del Servidor FTP');
      CD_ListaNovedades.Next;
    end;
  end;
  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('        FIN BAJAR NOVEDADES CLIENTES                          ');
  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('');
  GrupoEditando.Enabled:= true;
  panelListaNovedades.Enabled:= true;
end;


//proceso los archivos de novedades de los clientes que descargue del servidor FTP
procedure TFPrincipal.procesarNovedadesClientes;
var
  id_cliente: integer;
begin
  if CD_ListaNovedades.IsEmpty then
    exit;

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
      memoLog.Lines.Add(getFechayHoraString+' - Cargando el archivo de novedades '+CD_ListaNovedades_NombreArchivo.AsString);
      //cargo el archivo en el client dataset
      CD_ProcesarNovedades.LoadFromFile(dirLocal+CD_ListaNovedades_NombreArchivo.AsString);
      pBar_Novedades.Position:= 0;
      //obtengo el listado de todas las tablas a actualizar
      obtener_tablas_actualizar();
      pBar_Novedades.Max:= CD_ProcesarNovedades.RecordCount;
      memoLog.Lines.Add(getFechayHoraString+' - Procesando el archivo de novedades '+CD_ListaNovedades_NombreArchivo.AsString);
      //busco el id_cliente del cliente que subio el archivo
      id_cliente:= 1;
      if ZQ_ListadoClientes.Locate('NOMBRE_CLIENTE', CD_ListaNovedades_Origen.AsString, []) then
        id_cliente:= ZQ_ListadoClientesID_SINCRO_CLIENTE.AsInteger;
      //actualizo la base de datos local con el contenido del archivo
      if not actualizar_base_server(id_cliente, CD_ListaNovedades_NombreArchivo.AsString) then //si se produjo un error mientras actualizaba salgo
      begin
        if CD_Tablas_Actualizar.IsEmpty then
        begin
          memoLog.Lines.Add(getFechayHoraString+' - El archivo de de novedades '+CD_ListaNovedades_NombreArchivo.AsString+' no tiene datos de para actualizar');
          CD_ListaNovedades.edit;
          CD_ListaNovedades_Estado.AsString:= ESTADO_PROCESADO;
          CD_ListaNovedades.Post;
        end
        else
        begin
          memoLog.Lines.Add(getFechayHoraString+' - Se produjo un error mientras se procesaba el archivo de novedades '+CD_ListaNovedades_NombreArchivo.AsString);
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
        memoLog.Lines.Add(getFechayHoraString+' - El archivo de de novedades '+CD_ListaNovedades_NombreArchivo.AsString+' se proceso correctamente');
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
end;


function TFPrincipal.actualizar_base_server(id_cliente: integer; archivo: string): boolean;
begin
  Result:= false;

  if CD_Tablas_Actualizar.Eof then
    exit;

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
          ZQ_Sinc_Campo.Append;
          ZQ_Sinc_CampoLOG_TABLES_ID.AsInteger:= CD_ProcesarNovedadesID.AsInteger;
          ZQ_Sinc_CampoFIELD_NAME.AsString:= CD_ProcesarNovedadesFIELD_NAME.AsString;
          ZQ_Sinc_CampoOLD_VALUE.AsString:= CD_ProcesarNovedadesOLD_VALUE.AsString;
          ZQ_Sinc_CampoNEW_VALUE.AsString:= CD_ProcesarNovedadesNEW_VALUE.AsString;

          CD_ProcesarNovedades.Next;
        end;
        //aplico las actualizaciones de las tablas
        ZQ_Sinc_Tabla.ApplyUpdates;
        ZQ_Sinc_Clave.ApplyUpdates;
        ZQ_Sinc_Campo.ApplyUpdates;

        pBar_Novedades.Position:= pBar_Novedades.Position + 1;
        CD_Tablas_Actualizar.next;
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

      //finalizo transaccion
      if dm.ModeloEscritura.finalizar_transaccion(transaccion_actualizar_base) then
        Result:= true
      else
        dm.ModeloEscritura.cancelar_transaccion(transaccion_actualizar_base);
    end;
  except //si se produce una excepcion en el proceso cancelo el mismo
    begin
      dm.ModeloEscritura.cancelar_transaccion(transaccion_actualizar_base);
      Result:= false;
    end
  end;
end;


//buscar novedades en el servidor
procedure TFPrincipal.buscarNovedadesServer;
begin
  //ejecuto el procedimiento que busca los datos para generar el archivo de actualizacion del servidor
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


procedure TFPrincipal.subirNovedadesServer;
var
  archivo: string;
begin
  ponerTodoEnCero;
  GrupoEditando.Enabled:= false;
  pBar_Ftp.Position:= 0;
  pBar_Novedades.Position:= 0;

  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('        INICIO SUBIR NOVEDADES SERVIDOR                       ');
  memoLog.Lines.Add('--------------------------------------------------------------');
  //si no estoy conectado a la base me conecto
  conectarDBLectura;
  conectarDBEscritura;
  memoLog.Lines.Add(getFechayHoraString+' - Buscando Novedades');
  DBGridUpload.BringToFront;
  DBGridUpload.DataSource:= DS_NovedadesServer;
  posicion_PBar:= 0;
  //obtengo la cantidad del novedades encontradas
  ZQ_NovedadesServerCant.Close;
  ZQ_NovedadesServerCant.Open;
  //si no se encontraron novedades no hago nada y salgo
  if ZQ_NovedadesServerCantCOUNT.AsInteger = 0 then
  begin
    memoLog.Lines.Add(getFechayHoraString+' - No hay Novedades para Subir');
    memoLog.Lines.Add('--------------------------------------------------------------');
    memoLog.Lines.Add('        FIN SUBIR NOVEDADES SERVIDOR                          ');
    memoLog.Lines.Add('--------------------------------------------------------------');
    memoLog.Lines.Add('');
    GrupoEditando.Enabled:= true;
    exit;
  end;
  //seteo el maximo del progress bar
  pBar_Novedades.Max:= ZQ_NovedadesServerCantCOUNT.AsInteger;
  //cargo el client dataset de novedades con todas las novedades encontradas
  buscarNovedadesServer;
  //obtengo el numero de lote que voy a subir
  nserie_server:= nro_lote_actual();
  //establezco en nombre del archivo a subir al servidor FTP
  archivo:= archivo_server+'_'+FormatFloat('00000', nserie_server)+'.xml';
  //si el archivo existe lo borro para crearlo nuevamente
  if FileExists(dirLocal+archivo) then
    DeleteFile(dirLocal+archivo);
  memoLog.Lines.Add(getFechayHoraString+' - Creando Archivo Novedades ('+archivo+')');
  //creo el archivo para subir
  CD_NovedadesServer.SaveToFile(dirLocal+archivo, dfXMLUTF8);
  memoLog.Lines.Add(getFechayHoraString+' - Enviando Archivo Novedades ('+archivo+') al Servidor FTP');
  //inicio subida del archivo al directorio asignado a los clientes en el servidor FTP
  if FTP_SubirArchivo(dirFTP_Server, archivo) then //si el archivo se subio correctamente
  begin
    memoLog.Lines.Add(getFechayHoraString+' - Fin Envio Archivo Novedades ('+archivo+') al Servidor FTP');
    memoLog.Lines.Add(getFechayHoraString+' - Guardando Lote Sincronizacion '+IntToStr(nserie_server));
    //comienzo el guardado del lote de sincronizacion
    if guardar_lote then //si el lote se guardo correctamente
      memoLog.Lines.Add(getFechayHoraString+' - Fin Guardar Lote Sincronizacion '+IntToStr(nserie_server))
    else //si no pude guardar el lote entonces borro el archivo que subi al servidor
    begin
      memoLog.Lines.Add(getFechayHoraString+' - Error en Guardar Lote Sincronizacion '+IntToStr(nserie_server));
      memoLog.Lines.Add(getFechayHoraString+' - Borrando Archivo Novedades ('+archivo+') del Servidor FTP');
      if FTP_BorrarArchivo(dirFTP_Server,archivo) then
        memoLog.Lines.Add(getFechayHoraString+' - Fin Borrar Archivo Novedades ('+archivo+') del Servidor FTP')
      else
        memoLog.Lines.Add(getFechayHoraString+' - No se pudo Borrar Archivo Novedades ('+archivo+') del Servidor FTP');
    end;
  end
  else //si el archivo no se pudo subir al servidor
  begin
    memoLog.Lines.Add(getFechayHoraString+' - Error en el Envio Archivo Novedades ('+archivo+') al Servidor FTP');
  end;
  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('        FIN SUBIR NOVEDADES CLIENTE                           ');
  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('');
  GrupoEditando.Enabled:= true;
end;

end.



