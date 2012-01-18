unit UPrincipal;

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
    DS_NovedadesServer: TDataSource;
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
    DS_Tablas_Actualizar: TDataSource;
    PanelTablas: TPanel;
    DBGridDownload: TDBGrid;
    DBGridTablasActualizar: TDBGrid;
    CD_Tablas_Actualizar_Id: TStringField;
    CD_NovedadesClienteID: TIntegerField;
    CD_NovedadesServerID: TIntegerField;
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
    procedure PintarFilasGrillas(grilla: TDBGrid; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridTablasActualizarDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridListaNovedadesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridDownloadDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridUploadDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerTimer(Sender: TObject);
    procedure cargarIni();
    function  get_FechayHora: string ;
    procedure guardarArchivoLog();
    procedure conectarDB();
    procedure conectarLogin;
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
    procedure btnConectarClick(Sender: TObject);
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
    //MODO CLIENTE
    //procedimientos para subir novedades del cliente al servidor FTP
    procedure buscarNovedadesCliente();
    procedure subirNovedadesCliente();
    procedure ZQ_NovedadesClienteAfterScroll(DataSet: TDataSet);
    //procedimientos bajar novedades del servidor FTP al cliente
    procedure bajarNovedadesServer();
    //procedimientos para procesar los archivos de novedades descargados desde el servidor FTP
    procedure procesarNovedadesServer();
    procedure obtener_tablas_actualizar();
    function  actualizar_base_local(archivo: string):boolean;
    //MODO SERVIDOR
    //procedimientos para subir novedades del cliente al servidor FTP
//    procedure buscarNovedadesServer();
    procedure subirNovedadesServer();
//    procedure ZQ_NovedadesClienteAfterScroll(DataSet: TDataSet);
    //procedimientos bajar novedades del servidor FTP al cliente
    function  buscarNovedadesClientes(): boolean;
    procedure bajarNovedadesClientes();
    //procedimientos para procesar los archivos de novedades descargados desde el servidor FTP
    procedure procesarNovedadesClientes();
//    procedure obtener_tablas_actualizar();
//    function  actualizar_base_local(archivo: string):boolean;
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
  transaccion_actualizar_base_local = 'ACTUALIZANDO BASE LOCAL';
  modo_cliente = 'CLIENTE';
  modo_servidor = 'SERVIDOR';  

implementation

uses UUtil_Procesos, UDM, UConfiguracion, IniFiles, DateUtils, StrUtils;

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
  dm.ConexionDB.Disconnect;
  dm.ConexionLogin.Disconnect;
  DM.IdFTP.Disconnect;
  CD_NovedadesCliente.CreateDataSet;
  CD_NovedadesServer.CreateDataSet;
  CD_Tablas_Actualizar.CreateDataSet;
  CD_ListaNovedades.CreateDataSet;

  memoLog.Lines.Clear;
  memoLog.Lines.Add('...### Sincronización SiGeFa ###...');
end;


procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  configGrillas(1); //guardo la config de las grillas
  dm.ConexionDB.Disconnect;
  dm.ConexionLogin.Disconnect;
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
  DM.ConexionDB.HostName:= db_host;
  DM.ConexionDB.Database:= db_name;
  DM.ConexionDB.User:= db_user;
  DM.ConexionDB.Password:= db_pass;

  //configuro base para guardar las novedades bajadas del servidor
  DM.ConexionLogin.HostName:= db_host;
  DM.ConexionLogin.Database:= db_name;
  DM.ConexionLogin.User:= 'sincro';
  DM.ConexionLogin.Password:= 'sincro';

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
  dia_hoy:= DayOfTheWeek(dm.ModeloDB.FechayHora);

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


function TFPrincipal.get_FechayHora: string;
begin
  result:= DateTimeToStr(dm.ModeloDB.FechayHora)
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
begin
  Application.CreateForm(TFConfiguracion,FConfiguracion);
  FConfiguracion.ShowModal;
  FConfiguracion.Release;
  cargarIni;
end;

//guara el log en un archivo
procedure TFPrincipal.guardarArchivoLog();
var
  archivoLog: String;
begin
  try
    archivoLog:= Format('LOG_%s.TXT',[FormatDateTime('dd-mm-yyyy(hh.nn.ss)', dm.ModeloDB.FechayHora)]);
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
  CD_ListaNovedades.EmptyDataSet;
  CD_Tablas_Actualizar.EmptyDataSet;
  CD_NovedadesServer.EmptyDataSet;
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
procedure TFPrincipal.btnConectarClick(Sender: TObject);
begin
  conectarDB();
end;

//Conectarse en modo lectura, para buscar novedades
procedure TFPrincipal.conectarDB;
begin
  try
   begin
      DM.ConexionDB.Disconnect;
      memoLog.Lines.Add(get_FechayHora+' - Conectando DB Local: '+db_host+':'+db_name+' modo lectura');
      DM.ConexionDB.Connect;
      memoLog.Lines.Add(get_FechayHora+' - Conectado.');
   end
  except
    on E: Exception do
    begin
      DM.ConexionDB.Disconnect;
      memoLog.Lines.Add(get_FechayHora+' - '+E.Message);
      memoLog.Lines.Add(get_FechayHora+' - ERROR Conexión DB Local'+db_host+':'+db_name+' modo lectura');
    end;
  end;
end;

//Conectarse en modo escritura, para guardar las novedades
procedure TFPrincipal.conectarLogin;
begin
  try
   begin
      DM.ConexionLogin.Disconnect;
      memoLog.Lines.Add(get_FechayHora+' - Conectando DB Local: '+db_host+':'+db_name+' modo escritura');
      DM.ConexionLogin.Connect;
      memoLog.Lines.Add(get_FechayHora+' - Conectado.');
   end
  except
    on E: Exception do
    begin
      DM.ConexionLogin.Disconnect;
      memoLog.Lines.Add(get_FechayHora+' - '+E.Message);
      memoLog.Lines.Add(get_FechayHora+' - ERROR Conexión DB Local'+db_host+':'+db_name+' modo escritura');
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

  if dm.ModeloDB.iniciar_transaccion(transaccion, []) then
  begin
    ZQ_CrearLote.Close;
    ZQ_CrearLote.ExecSQL;

    if dm.ModeloDB.finalizar_transaccion(transaccion) then
      Result:= true
    else
      dm.ModeloDB.cancelar_transaccion(transaccion);
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
  dm.ConexionDB.Disconnect;
  dm.ConexionLogin.Disconnect;
  conectarDB;
  conectarLogin;
  memoLog.Lines.Add(get_FechayHora+' - Buscando Novedades');
  DBGridUpload.BringToFront;
  posicion_PBar:= 0;
  //obtengo la cantidad del novedades encontradas (todas las modif. mias, <> SINCRO, q no tiene lote asignado)
  ZQ_NovedadesClienteCant.Close;
  ZQ_NovedadesClienteCant.Open;
  //si no se encontraron novedades no hago nada y salgo
  if ZQ_NovedadesClienteCantCOUNT.AsInteger = 0 then
  begin
    memoLog.Lines.Add(get_FechayHora+' - No hay Novedades para Subir');
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
  memoLog.Lines.Add(get_FechayHora+' - Creando Archivo Novedades ('+archivo+')');
  //creo el archivo para subir
  CD_NovedadesCliente.SaveToFile(dirLocal+archivo, dfXMLUTF8);
  memoLog.Lines.Add(get_FechayHora+' - Enviando Archivo Novedades ('+archivo+') al Servidor FTP');
  //inicio subida del archivo al directorio asignado a los clientes en el servidor FTP
  if FTP_SubirArchivo(dirFTP_Cliente, archivo) then //si el archivo se subio correctamente
  begin
    memoLog.Lines.Add(get_FechayHora+' - Fin Envio Archivo Novedades ('+archivo+') al Servidor FTP');
    memoLog.Lines.Add(get_FechayHora+' - Guardando Lote Sincronizacion '+IntToStr(nserie_cliente));
    //comienzo el guardado del lote de sincronizacion
    if guardar_lote then //si el lote se guardo correctamente
      memoLog.Lines.Add(get_FechayHora+' - Fin Guardar Lote Sincronizacion '+IntToStr(nserie_cliente))
    else //si no pude guardar el lote entonces borro el archivo que subi al servidor
    begin
      memoLog.Lines.Add(get_FechayHora+' - Error en Guardar Lote Sincronizacion '+IntToStr(nserie_cliente));
      memoLog.Lines.Add(get_FechayHora+' - Borrando Archivo Novedades ('+archivo+') del Servidor FTP');
      if FTP_BorrarArchivo(dirFTP_Cliente,archivo) then
        memoLog.Lines.Add(get_FechayHora+' - Fin Borrar Archivo Novedades ('+archivo+') del Servidor FTP')
      else
        memoLog.Lines.Add(get_FechayHora+' - No se pudo Borrar Archivo Novedades ('+archivo+') del Servidor FTP');
    end;
  end
  else //si el archivo no se pudo subir al servidor
  begin
    memoLog.Lines.Add(get_FechayHora+' - Error en el Envio Archivo Novedades ('+archivo+') al Servidor FTP');
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
  dm.ConexionDB.Disconnect;
  dm.ConexionLogin.Disconnect;
  conectarDB;
  conectarLogin;
  //obtengo el id generador de mi base para luego descartar las modificaciones del archivo del server hechas localmente
  ZQ_Configuracion.Close;
  ZQ_Configuracion.Open;
  id_base_local:= ZQ_ConfiguracionID_SUCURSAL.AsString;
  ZQ_Configuracion.Close;
  //busco el ultimo archivo que se bajo del servidor
  memoLog.Lines.Add(get_FechayHora+' - Buscando Novedades del Servidor en el Servidor FTP');
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
    memoLog.Lines.Add(get_FechayHora+' - No se pudo conectar al servidor FTP')
  else //si me puedo conectar
  begin
    if cantidad_archivos_encontrados > 0 then
      memoLog.Lines.Add(get_FechayHora+' - Se encontraron '+IntToStr(cantidad_archivos_encontrados)+' archivos de novedades en el Servidor FTP')
    else
      memoLog.Lines.Add(get_FechayHora+' - No se encontraron archivos de novedades en el Servidor FTP');
    Application.ProcessMessages;
    CD_ListaNovedades.First;
    while not CD_ListaNovedades.Eof do //por cada una de las novedades encontradas, las bajo una por una
    begin
      memoLog.Lines.Add(get_FechayHora+' - Descargando el archivo '+CD_ListaNovedades_NombreArchivo.AsString+' del Servidor FTP');
      pBar_Ftp.Position:= 0;
      Application.ProcessMessages;
      //bajo el archivo de novedades
      if FTP_BajarArchivo(dirFTP_Server, CD_ListaNovedades_NombreArchivo.AsString) then
        memoLog.Lines.Add(get_FechayHora+' - Archivo '+CD_ListaNovedades_NombreArchivo.AsString+' descargado con exito')
      else
        memoLog.Lines.Add(get_FechayHora+' - Error al descargar el archivo '+CD_ListaNovedades_NombreArchivo.AsString+' del Servidor FTP');
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
  CD_NovedadesServer.EmptyDataSet;

  memoLog.Lines.Add('--------------------------------------------------------------');
  memoLog.Lines.Add('        INICIO PROCESAR NOVEDADES SERVIDOR                    ');
  memoLog.Lines.Add('--------------------------------------------------------------');
  //si no estoy conectado a la base me conecto como modo escritura
  if dm.ConexionLogin.Connected = false then
    conectarLogin;
  CD_ListaNovedades.First;
  while not CD_ListaNovedades.eof do //por cada uno de los archivos obtenidos del servidor
  begin
    if CD_ListaNovedades_Estado.AsString = ESTADO_SIN_PROCESAR then //si todavia no se proceso el archivo
    begin
      memoLog.Lines.Add(get_FechayHora+' - Cargando el archivo de novedades '+CD_ListaNovedades_NombreArchivo.AsString);
      //cargo el archivo en el client dataset
      CD_NovedadesServer.LoadFromFile(dirLocal+CD_ListaNovedades_NombreArchivo.AsString);
      pBar_Novedades.Position:= 0;
      //obtengo el listado de todas las tablas a actualizar
      obtener_tablas_actualizar();
      pBar_Novedades.Max:= CD_Tablas_Actualizar.RecordCount;
      memoLog.Lines.Add(get_FechayHora+' - Procesando el archivo de novedades '+CD_ListaNovedades_NombreArchivo.AsString);
      //actualizo la base de datos local con el contenido del archivo
      if not actualizar_base_local(CD_ListaNovedades_NombreArchivo.AsString) then //si se produjo un error mientras actualizaba salgo
      begin
        if CD_Tablas_Actualizar.IsEmpty then
        begin
          memoLog.Lines.Add(get_FechayHora+' - El archivo de de novedades '+CD_ListaNovedades_NombreArchivo.AsString+' no tiene datos de otras sucursales para actualizar');
          CD_ListaNovedades.edit;
          CD_ListaNovedades_Estado.AsString:= ESTADO_PROCESADO;
          CD_ListaNovedades.Post;
        end
        else
        begin
          memoLog.Lines.Add(get_FechayHora+' - Se produjo un error mientras se procesaba el archivo de novedades '+CD_ListaNovedades_NombreArchivo.AsString);
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
        memoLog.Lines.Add(get_FechayHora+' - El archivo de de novedades '+CD_ListaNovedades_NombreArchivo.AsString+' se proceso correctamente');
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
end;


//obtengo el listados de las tablas que se van a insertar/actualizar/eliminar
procedure TFPrincipal.obtener_tablas_actualizar();
var
  id_anterior: integer;
  auxId: string;
begin
  if CD_NovedadesServer.eof then
    exit;

  CD_NovedadesServer.DisableControls;
  CD_Tablas_Actualizar.EmptyDataSet;

  id_anterior:= -1;
  CD_NovedadesServer.First;
  while not CD_NovedadesServer.Eof do //recorro el clientDataset que contiene los datos del archivo de novedades
  begin
    //guardo todas las tablas que se tienen que tocar y la accion que se va a realizar, descarto los repetidos
    if CD_NovedadesServerID.AsInteger <> id_anterior then
    begin                                             
      //obtengo los primeros 2 digitos del id de la tabla para saber si es de mi sucursal o de otra
      auxId:= LeftStr(CD_NovedadesServerID.AsString, 2);
      if (auxId <> id_base_local) then //descarto las modificaciones que realizo mi sucursal para no repetirlas
      begin
        id_anterior:= CD_NovedadesServerID.AsInteger;
        CD_Tablas_Actualizar.Append;
        CD_Tablas_Actualizar_Id.AsString:= IntToStr(CD_NovedadesServerID.AsInteger);
        CD_Tablas_Actualizar_Tabla.AsString:= CD_NovedadesServerTABLE_NAME.AsString;
        CD_Tablas_Actualizar_Clave.AsString:= CD_NovedadesServerKEY_FIELD.AsString;
        CD_Tablas_Actualizar_CampoClave.AsString:= CD_NovedadesServerKEY_VALUE.AsString;
        CD_Tablas_Actualizar_Operacion.AsString:= CD_NovedadesServerOPERATION.AsString;
        CD_Tablas_Actualizar_Fecha.AsDateTime:= CD_NovedadesServerDATE_TIME.AsDateTime;
        CD_Tablas_Actualizar.Post;
      end
    end;
    CD_NovedadesServer.Next;
  end;
  CD_NovedadesServer.EnableControls;  
end;


//Actualizo la base local con el archivo descargado del servidor FTP y que se pasa como parametro
function TFPrincipal.actualizar_base_local(archivo: string):boolean;
begin
  Result:= false;

  if CD_Tablas_Actualizar.Eof then
    exit;

  try
    //inicio transaccion
    if dm.ModeloLogin.iniciar_transaccion(transaccion_actualizar_base_local, [ZQ_GrabarUltimoArchivoServer]) then
    begin
      CD_Tablas_Actualizar.First;
      while not CD_Tablas_Actualizar.Eof do //por cada una de las tablas que se tienen que tocar
      begin
        //filtro las acciones a realizar para la tabla que estoy recorriendo en este momento
        CD_NovedadesServer.Filter:= format('ID = %s', [QuotedStr(CD_Tablas_Actualizar_Id.AsString)]);
        CD_NovedadesServer.Filtered:= true;

        //creo la query correspondiente y la ejecuto
        ZQ_ActualizarBase.SQL.Clear;
        ZQ_ActualizarBase.SQL.Add('select * from '+CD_NovedadesServerTABLE_NAME.AsString+
                                 ' where '+CD_NovedadesServerKEY_FIELD.AsString+'='+CD_NovedadesServerKEY_VALUE.AsString);
        ZQ_ActualizarBase.Open;

        if CD_NovedadesServerOPERATION.AsString = 'D' then //si la operacion es un delete
        begin
          if ZQ_ActualizarBase.RecordCount = 1 then //si existe el registro lo borro
            ZQ_ActualizarBase.Delete;
        end
        else
        begin
          if (CD_NovedadesServerOPERATION.AsString = 'I') then //si la operacion es un insert, pongo en modo insercion la query
            ZQ_ActualizarBase.Append
          else
            if (CD_NovedadesServerOPERATION.AsString = 'U') then //si la operacion es un update, pongo en modo edicion la query
              ZQ_ActualizarBase.Edit;

          CD_NovedadesServer.First;
          while not CD_NovedadesServer.Eof do //recorro todos los campos que cambian y actualizo la query
          begin
            //si el campo no es null o vacio entonces le seteo su valor
            if not ((CD_NovedadesServerFIELD_NAME.IsNull) or (CD_NovedadesServerFIELD_NAME.AsString = '')) then
              ZQ_ActualizarBase.FieldByName(CD_NovedadesServerFIELD_NAME.AsString).value:= CD_NovedadesServerNEW_VALUE.value;
            CD_NovedadesServer.Next;
          end;
        end;
        pBar_Novedades.Position:= pBar_Novedades.Position + 1;

        //aplico los cambios
        ZQ_ActualizarBase.ApplyUpdates;
        //paso a la tabla siguiente
        CD_Tablas_Actualizar.next;
      end;
      //saco el filro
      CD_NovedadesServer.Filtered:= false;

      //grabo en la base de datos local el nombre del archivo procesado con fecha y hora actual
      ZQ_GrabarUltimoArchivoServer.Close;
      ZQ_GrabarUltimoArchivoServer.Open;
      ZQ_GrabarUltimoArchivoServer.Append;
      ZQ_GrabarUltimoArchivoServerFECHA_Y_HORA.AsDateTime:= dm.ModeloDB.FechayHora;
      ZQ_GrabarUltimoArchivoServerULTIMO_ARCHIVO.AsString:= archivo;
      ZQ_GrabarUltimoArchivoServer.Post;

      //finalizo transaccion
      if dm.ModeloLogin.finalizar_transaccion(transaccion_actualizar_base_local) then
        Result:= true
      else
        dm.ModeloLogin.cancelar_transaccion(transaccion_actualizar_base_local);
    end;
  except //si se produce una excepcion en el proceso cancelo el mismo
    begin
      CD_NovedadesServer.Filtered:= false;
      dm.ModeloLogin.cancelar_transaccion(transaccion_actualizar_base_local);
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
        memoLog.Lines.Add(get_FechayHora+' - Se encontraron '+IntToStr(cantidad_archivos_encontrados)+' archivos de novedades del cliente '+ZQ_ListadoClientesNOMBRE_CLIENTE.AsString+' en el Servidor FTP')
      else
        memoLog.Lines.Add(get_FechayHora+' - No se encontraron archivos de novedades del cliente '+ZQ_ListadoClientesNOMBRE_CLIENTE.AsString+' en el Servidor FTP');
    end;

    ZQ_ListadoClientes.Next;
  end;
end;


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
  dm.ConexionDB.Disconnect;
  dm.ConexionLogin.Disconnect;
  conectarDB;
  conectarLogin;

  //busco el ultimo archivo que se bajo del servidor
  memoLog.Lines.Add(get_FechayHora+' - Buscando Novedades de los Clientes en el Servidor FTP');
  if not buscarNovedadesClientes then  //si devuelve falso es porque no me puedo conectar
    memoLog.Lines.Add(get_FechayHora+' - No se pudo conectar al servidor FTP')
  else //si me puedo conectar
  begin
    cantidad_archivos_encontrados:= CD_ListaNovedades.RecordCount;
    if cantidad_archivos_encontrados > 0 then
      memoLog.Lines.Add(get_FechayHora+' - Se encontraron en total '+IntToStr(cantidad_archivos_encontrados)+' archivos de novedades en el Servidor FTP')
    else
      memoLog.Lines.Add(get_FechayHora+' - No se encontraron archivos de novedades en el Servidor FTP');
    Application.ProcessMessages;
    CD_ListaNovedades.First;
    while not CD_ListaNovedades.Eof do //por cada una de las novedades encontradas, las bajo una por una
    begin
      memoLog.Lines.Add(get_FechayHora+' - Descargando el archivo '+CD_ListaNovedades_NombreArchivo.AsString+' del Servidor FTP');
      pBar_Ftp.Position:= 0;
      Application.ProcessMessages;
      //bajo el archivo de novedades
      if FTP_BajarArchivo(dirFTP_Cliente, CD_ListaNovedades_NombreArchivo.AsString) then
        memoLog.Lines.Add(get_FechayHora+' - Archivo '+CD_ListaNovedades_NombreArchivo.AsString+' descargado con exito')
      else
        memoLog.Lines.Add(get_FechayHora+' - Error al descargar el archivo '+CD_ListaNovedades_NombreArchivo.AsString+' del Servidor FTP');
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



procedure TFPrincipal.procesarNovedadesClientes;
begin
//
end;

procedure TFPrincipal.subirNovedadesServer;
begin
//
end;

end.



