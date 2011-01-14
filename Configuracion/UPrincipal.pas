unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, IBDatabase, dbcDBComparer, dbcDBStructure,
  dbcIBDatabaseExtract, dbcClasses, dbcIBScriptExtract, dbcSQL_Exec, dbcIBSQLExec, ComCtrls,
  dbcDBEngine, dbcConnection_IBX, dbcCustomScriptExtract, dbcTableDataComparer, DB, dbcTypes,
  IBServices, ZConnection, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKIni, MidasLib, WinSkinData;

type
  TFPrincipal = class(TForm)                   
    IBDBExtractOrigen: TIBDBExtract;
    DBStructureOrigen: TDBStructure;
    DBStructureDestino: TDBStructure;
    IBDBExtractDestino: TIBDBExtract;
    OpenDialog1: TOpenDialog;
    GBoxLog: TGroupBox;
    MemoLog: TRichEdit;
    DBComparer1: TDBComparer;
    Splitter1: TSplitter;
    GBoxScript: TGroupBox;
    MemoResultado: TMemo;
    IBSQLExec: TIBSQLExec;
    PanelBases: TPanel;
    GBoxBDNueva: TGroupBox;
    GBoxBDVieja: TGroupBox;
    urlBDOrigen: TEdit;
    BtnSelecBDOrigen: TSpeedButton;
    urlBDDestino: TEdit;
    BtnSelecBDDestino: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    LabelMUser: TLabel;
    editBDOrigenUser: TEdit;
    editBDOrigenPassword: TEdit;
    LabelMPswd: TLabel;
    LabelTUser: TLabel;
    editBDDestinoUser: TEdit;
    LabelTPswd: TLabel;
    editBDDestinoPassword: TEdit;
    PanelComparar: TPanel;
    GBoxCompare: TGroupBox;
    BtnComparar: TBitBtn;
    BtnUpdate: TBitBtn;
    GaugeUpdate: TProgressBar;
    GaugeCompare: TProgressBar;
    DBCConnectionDestino: TDBCConnectionIBX;
    DBCConnectionOrigen: TDBCConnectionIBX;
    IBDatabaseOrigen: TIBDatabase;
    IBDatabaseDestino: TIBDatabase;
    GBoxObjetosComparar: TGroupBox;
    CheckTabla: TCheckBox;
    CheckVista: TCheckBox;
    CheckProcedure: TCheckBox;
    CheckTrigger: TCheckBox;
    CheckIndices: TCheckBox;
    CheckGenerador: TCheckBox;
    CheckPKey: TCheckBox;
    CheckFKey: TCheckBox;
    CheckUKey: TCheckBox;
    CheckFunction: TCheckBox;
    CheckDominio: TCheckBox;
    CheckExcepcion: TCheckBox;
    CheckRol: TCheckBox;
    CheckGrant: TCheckBox;
    CheckPaquete: TCheckBox;
    CheckDescripcion: TCheckBox;
    update_aplica: TZQuery;
    conexion: TZConnection;
    IBSecurityService: TIBSecurityService;
    PanelConfigGeneral: TPanel;
    GBoxConfigGral: TGroupBox;
    sBtnConfig: TSpeedButton;
    sBtnUsuarioLogin: TSpeedButton;
    PanelActualizar: TPanel;
    GBoxActualizar: TGroupBox;
    EKIni1: TEKIni;
    LabelAplicacion: TLabel;
    LabelServidor: TLabel;
    LabelDBAplica: TLabel;
    LabelDBUser: TLabel;
    Shape1: TShape;
    SkinData1: TSkinData;
    procedure FormCreate(Sender: TObject);
    procedure BtnSeleccionarBDClick(Sender: TObject);
    procedure LogNextLine(Sender: TObject; LogLine: String);
    procedure BtnCompararClick(Sender: TObject);
    procedure ProgressUpdate(Sender: TObject; Value, MaxValue: Integer);
    procedure ProgressCompare(Sender: TObject; Value, MaxValue: Integer);
    procedure BtnUpdateClick(Sender: TObject);
    procedure DBCConnectionOrigenBeforeConnect(Sender: TObject);
    procedure DBCConnectionDestinoBeforeConnect(Sender: TObject);
    procedure SeleccionarObjetosComparar();
    procedure crearLogin();
    procedure leerDatos();
    procedure setearAplicaBD();
    procedure sBtnUsuarioLoginClick(Sender: TObject);
    procedure sBtnConfigClick(Sender: TObject);
    procedure habilitar(flag: boolean);
  private
    { Private declarations }
    servidor,
    usuario,
    pass,
    db_usuario,
    aplicacion,
    db_aplicacion: String;
  public
    { Public declarations }
    procedure ExtraerBDOrigen();
    procedure ExtraerBDDestino();
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

Uses dbcCompObj;


procedure AddToExtrlog(s: String);
begin
  FPrincipal.MemoLog.Lines.Add(s);
end;


procedure TFPrincipal.habilitar(flag: boolean);
begin
  GBoxConfigGral.Enabled:= flag;
  GBoxBDNueva.Enabled:= flag;
  GBoxBDVieja.Enabled:= flag;
  GBoxCompare.Enabled:= flag;
  GBoxObjetosComparar.Enabled:= flag;
end;


//CREAR EL USUARIO LOGIN
procedure TFPrincipal.crearLogin();
begin
  with IBSecurityService do
  begin
    ServerName := servidor;
    LoginPrompt := False;
    Params.Add('user_name='+usuario);
    Params.Add('password='+pass);
    Active := True;
    try
      UserName := 'login';
      FirstName := 'Usuario de logeo';

      Password := '354875642';
      AddUser;
    except
    begin
      Active := False;
      ShowMessage('LOGIN REPETIDO');
      exit;
    end
    end;
    Active := False;
    ShowMessage('LOGIN CREADO');
  end;
end;


//LEER DATOS DE config.ini
procedure TFPrincipal.leerDatos();
var
  seccion: string;
begin
  EKIni1.abrir;
  seccion:= EKIni1.Ini.ReadString('leer', 'seccion', 'Servidor');

  servidor:= EKIni1.Ini.ReadString(seccion, 'ip', '');
  usuario:= EKIni1.Ini.ReadString(seccion, 'usuario', '');
  pass:= EKIni1.Ini.ReadString(seccion, 'password', '');

  db_usuario:= EKIni1.Ini.ReadString(seccion, 'db_usuarios', '');
  db_aplicacion:= EKIni1.Ini.ReadString(seccion, 'db_aplicacion', '');
  aplicacion:= EKIni1.Ini.ReadString(seccion, 'aplicacion', '');
end;


//SETEAR LA BASE DE USUARIO CON LA APLICACION
procedure TFPrincipal.setearAplicaBD();
begin
  conexion.Database:= db_usuario;
  conexion.HostName:= servidor;
  conexion.Password:= pass;
  conexion.User:= usuario;

  update_aplica.Close;
  update_aplica.ParamByName('base').AsString:= db_usuario;
  update_aplica.ParamByName('ip').AsString:= servidor;
  update_aplica.ParamByName('aplicacion').AsString:= 'USUARIOS';
  update_aplica.ExecSQL;

  update_aplica.Close;
  update_aplica.ParamByName('base').AsString:= db_aplicacion;
  update_aplica.ParamByName('ip').AsString:= servidor;
  update_aplica.ParamByName('aplicacion').AsString:= aplicacion;
  update_aplica.ExecSQL;
end;


procedure TFPrincipal.sBtnUsuarioLoginClick(Sender: TObject);
begin
  crearLogin;
end;


procedure TFPrincipal.sBtnConfigClick(Sender: TObject);
begin
  setearAplicaBD;
end;


procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  leerDatos;

  LabelAplicacion.Caption:= aplicacion;
  LabelServidor.Caption:= servidor;
  LabelDBAplica.Caption:= db_aplicacion;
  LabelDBUser.Caption:= db_usuario;

  FPrincipal.Caption:= 'Configuración Inicial ('+aplicacion+')';
  urlBDOrigen.Text := '';
  urlBDDestino.Text := '';
  MemoLog.Clear;
  MemoResultado.Clear;
end;


//CUANDO PRESIONO PARA BUSCAR UNA BASE DE DATOS SEGUN QUE BOTON PRESIONE REALIZO UNA ACCION (ORIGEN ó DESTION)
procedure TFPrincipal.BtnSeleccionarBDClick(Sender: TObject);
begin
  if (Sender = BtnSelecBDOrigen) or (Sender = BtnSelecBDDestino) then
  begin
    OpenDialog1.Filter := 'Base de Datos Firebird (*.FDB)|*.fdb|All Files (*.*)|*.*';
  end;

  if OpenDialog1.Execute then
  begin
    if Sender = BtnSelecBDOrigen then
      urlBDOrigen.Text := OpenDialog1.FileName;
    if Sender = BtnSelecBDDestino then
      urlBDDestino.Text := OpenDialog1.FileName;
  end;
end;


//EXTRAIGO EL METADATO DE LA BASE DE ORIGEN
procedure TFPrincipal.ExtraerBDOrigen();
var
  ErrFlg: Boolean;
begin
  ErrFlg := False;
  try
    DBCConnectionOrigen.Connected := True;
  except on E: Exception do
  begin
    ShowMessage(E.Message);
    MemoLog.Lines.Add('Error: '+E.Message);
    ErrFlg := True;
    IBDatabaseOrigen.Connected := false;
  end
  end;

  if ErrFlg then
    exit;

  MemoLog.Lines.Add('Base de Datos: '+IBDatabaseOrigen.DatabaseName+' abierta.');
  DBStructureOrigen.Clear;
  IBDBExtractOrigen.ExtractDatabase;
  DBCConnectionOrigen.Connected := False;
end;


//EXTRAIGO EL METADATO DE LA BASE DE DESTINO
procedure TFPrincipal.ExtraerBDDestino();
var
  ErrFlg: Boolean;
begin
  ErrFlg := False;
  try
    DBCConnectionDestino.Connected := True;
  except on E: Exception do
  begin
    ShowMessage(E.Message);
    MemoLog.Lines.Add('Error: '+E.Message);
    ErrFlg := True;
    IBDatabaseDestino.Connected := false;
  end
  end;

  if ErrFlg then
    exit;

  MemoLog.Lines.Add('Base de Datos: '+IBDatabaseDestino.DatabaseName+' abierta.');
  DBStructureDestino.Clear;
  IBDBExtractDestino.ExtractDatabase;
  DBCConnectionDestino.Connected := False;
end;


//CONFIGURO LA COMPARACION CON LOS OBJETOS SELECCIONADOS
procedure TFPrincipal.SeleccionarObjetosComparar();
begin
  DBComparer1.CompareObjects:= [coCheck,coRule,coDefault,coCtrDefault];

  if CheckTabla.Checked then
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects + [coTable]
  else
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects - [coTable];

  if CheckVista.Checked then
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects + [coView]
  else
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects - [coView];

  if CheckProcedure.Checked then
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects + [coProcedure]
  else
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects - [coProcedure];

  if CheckTrigger.Checked then
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects + [coTrigger]
  else
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects - [coTrigger];

  if CheckIndices.Checked then
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects + [coIndex]
  else
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects - [coIndex];

  if CheckPKey.Checked then
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects + [coPrimaryKey]
  else
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects - [coPrimaryKey];

  if CheckFKey.Checked then
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects + [coForeignKey]
  else
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects - [coForeignKey];

  if CheckUKey.Checked then
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects + [coUnique]
  else
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects - [coUnique];

  if CheckGenerador.Checked then
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects + [coGenerator]
  else
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects - [coGenerator];

  if CheckFunction.Checked then
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects + [coFunction]
  else
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects - [coFunction];

  if CheckDominio.Checked then
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects + [coDomain]
  else
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects - [coDomain];

  if CheckExcepcion.Checked then
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects + [coException]
  else
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects - [coException];

  if CheckRol.Checked then
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects + [coRole] + [coRoleGrant]
  else
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects - [coRole] - [coRoleGrant];

  if CheckGrant.Checked then
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects + [coGrant] + [coUserGrant] + [coObjGrant]
  else
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects - [coGrant] - [coUserGrant] - [coObjGrant];

  if CheckPaquete.Checked then
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects + [coPackage]
  else
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects - [coPackage];

  if CheckDescripcion.Checked then
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects + [coDescription]
  else
    DBComparer1.CompareObjects:= DBComparer1.CompareObjects - [coDescription];
end;

//AL COMPARAR LAS BASES PRIMERO EXTRAIGO LOS METADATAS Y DESPUES COMPARO
procedure TFPrincipal.BtnCompararClick(Sender: TObject);
begin
  if (Trim(urlBDOrigen.Text) = '') or (Trim(urlBDDestino.Text) = '') then
    exit;

  MemoResultado.Lines.Clear;
  habilitar(false);

  SeleccionarObjetosComparar;  
  ExtraerBDOrigen();
  ExtraerBDDestino();
  MemoLog.Lines.Add('< Extracción finalizada. >');

  try
    DBComparer1.CompareDatabases();
    MemoResultado.Lines.BeginUpdate();
    DBComparer1.SQLExec.GetScript(MemoResultado.Lines);
    MemoResultado.Lines.EndUpdate();
  except on E: Exception do
  begin
    ShowMessage(E.Message);
    MemoResultado.Lines.Add('Error: '+E.Message);
  end
  end;
  MemoLog.Lines.Add('< Comparación finalizada. >');

  habilitar(true);  
  BtnUpdate.Enabled := True;
end;


//BARRA DE PROGRESO DE LA ACTUALIZACION
procedure TFPrincipal.ProgressUpdate(Sender: TObject; Value, MaxValue: Integer);
begin
  GaugeUpdate.Max:= MaxValue;
  GaugeUpdate.Position:= Value;
end;


//BARRA DE PROGRESO DE LA COMPARACION
procedure TFPrincipal.ProgressCompare(Sender: TObject; Value, MaxValue: Integer);
begin
  GaugeCompare.Max:= MaxValue;
  GaugeCompare.Position:= Value;
end;


//AGREGA UNA LINE AL LOG
procedure TFPrincipal.LogNextLine(Sender: TObject; LogLine: String);
begin
  MemoLog.Lines.Add(LogLine);
  MemoLog.Perform(EM_SCROLLCARET, 0, 0);
end;


//ACTUALIZAR LA BASE DE DATOS DE DESTINO
procedure TFPrincipal.BtnUpdateClick(Sender: TObject);
begin
  if (Trim(urlBDOrigen.Text) = '') or (Trim(urlBDDestino.Text) = '') then
    exit;

  habilitar(false);
  BtnUpdate.Enabled := False;

  IBSQLExec.ExecuteScript();

  habilitar(true);
  ShowMessage('La base de datos '+urlBDDestino.Text+' ha sido actualizada.');
end;


//ANTES DE CONECTARME CONFIGURO LA CONEXION A LA BASE DE ORIGEN
procedure TFPrincipal.DBCConnectionOrigenBeforeConnect(Sender: TObject);
begin
  IBDatabaseOrigen.DatabaseName := '127.0.0.1:'+urlBDOrigen.Text;
  IBDatabaseOrigen.Params.Clear;
  IBDatabaseOrigen.Params.Add('user_name='+editBDOrigenUser.Text);
  IBDatabaseOrigen.Params.Add('password='+editBDOrigenPassword.Text);
end;


//ANTES DE CONECTARME CONFIGURO LA CONEXION A LA BASE DE DESTINO
procedure TFPrincipal.DBCConnectionDestinoBeforeConnect(Sender: TObject);
begin
  IBDatabaseDestino.DatabaseName := '127.0.0.1:'+urlBDDestino.Text;
  IBDatabaseDestino.Params.Clear;
  IBDatabaseDestino.Params.Add('user_name='+editBDDestinoUser.Text);
  IBDatabaseDestino.Params.Add('password='+editBDDestinoPassword.Text);
  IBDatabaseDestino.LoginPrompt := (editBDDestinoUser.Text = '') or (editBDDestinoPassword.Text = '');
end;


initialization
  dbcCompObj.AddToLog := AddToExtrLog;
end.
