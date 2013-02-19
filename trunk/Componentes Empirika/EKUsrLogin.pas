{$I EmpiriKa.inc}
unit EKUsrLogin;

interface

uses
  SysUtils, Classes, Forms, Dialogs, EKCopyright, Menus, ComCtrls,
  EKEncriptado, EKControlerror,
  ZConnection, ZAbstractRODataset, ZDataset, ZSqlMonitor, zdbcintfs, Controls, ExtCtrls,
  ZSqlProcessor, ZAbstractDataset, ZStoredProcedure, IniFiles, Variants, DB, ImgList, Graphics;

type
  TOnConectarEvent = procedure(status: tstatusbar) of object;
  TEKUsrLoginModo = (EKLoginAutomatico, EKLoginSistema_ini);
  TEKUsrLoginModoPermiso = (EKPermisoCaption, EKPermisoAction);
  TEKPermisoValores = record
    usuario: string;
    valor: string;
  end;
  TEKArrayPermisos = array of TEKPermisoValores;

type
  TEKUsrLogin = class(TComponent)
  Private
    { Private declarations }
    FOnLogin: TNotifyEvent;
    FOnActivar: TNotifyEvent;
    FOnConectar: TOnConectarEvent;
    FConeccion: TZConnection;
    FConeccionUsuario: TZConnection;
    FMenu: TMainMenu;
    FAplicacion: string;
    FEstado: string;
    FVersion: integer;
    FControlVersion: boolean;
    FImagen: TImageList;
    FLoadImagen: string;
    FCaption: string;
    FModo: TEKUsrLoginModo;
    FModoPermiso: TEKUsrLoginModoPermiso;
    FTitulo_DBAplicacion: string;
    FTitulo_DBUsuario: string;
    //FMainForm : TForm;
  Protected
    { Protected declarations }
  Public
    { Public declarations }
    ZQ_Usuarios: TZQuery;
    Timer: TTimer;
    ip, ipl, db, dbu, protocolo: string;
    usuariodb, passworddb, usuariolog, passwordlog, usuariosis, nusuariosis, passwordsis, oldpasswd: string;
    constructor create(AOwner: TComponent); Override;
    destructor destroy; Override;
    procedure OnTimer(Sender: TObject);
    procedure chequear_permisos;
    procedure ActivarLoginForm(Sender: TObject);
    procedure CambiarClave();
    function PermisoAccion(Clave: string): boolean;
    function PermisoCaptionValor(Clave: string): string;
    function PermisoAccionValor(Clave: string): string;
    function PermisoAccionValorGrupo(Clave: string): TEKArrayPermisos;
    function PermisoCaption(Clave: string): boolean;
    function conectar: boolean;
    function configurar_conexion(conexion: TZConnection; aplicacion: string): boolean; Overload;
    function configurar_conexion(conexion: TZConnection; aplicacion, ip, alias, usuario, password: string): boolean; Overload;
    function existeUsuario(nombre, password: string): boolean;
    //function habilitarMenu(menu: TMenuItem): boolean;
  Published
    { Published declarations }
    property OnLogin: TNotifyEvent Read FOnLogin Write FOnLogin;
    property OnActivar: TNotifyEvent Read FOnActivar Write FOnActivar;
    property OnConectar: TOnConectarEvent Read FOnConectar Write FOnConectar;
    //Property MainForm : TForm read FMainForm write FMainForm;
    property Coneccion: TZConnection Read FConeccion Write FConeccion;
    property ConeccionUsuario: TZConnection Read FConeccionUsuario Write FConeccionUsuario;    
    property Menu: TMainMenu Read FMenu Write FMenu;
    property Aplicacion: string Read FAplicacion Write FAplicacion;
    property Estado: string Read FEstado Write FEstado;
    property Version: integer Read FVersion Write FVersion;
    property ControlVersion: boolean Read FControlVersion Write FControlVersion;
    property Imagen: TImageList Read FImagen Write FImagen;
    property LoadImagen: string Read FLoadImagen Write FLoadImagen;
    property Caption: string Read FCaption Write FCaption;
    property Modo: TEKUsrLoginModo Read FModo Write FModo;
    property ModoPermiso: TEKUsrLoginModoPermiso Read FModoPermiso Write FModoPermiso;
    property Titulo_DBAplicacion: string Read FTitulo_DBAplicacion Write FTitulo_DBAplicacion;
    property Titulo_DBUsuario: string Read FTitulo_DBUsuario Write FTitulo_DBUsuario;
  end;

var
  EKUsrLogin1: TEKUsrLogin;

procedure Register;

implementation

uses EKloginform, EKCambioClave, EKVersion, EKInformacion, md5;


{$IFDEF MUNISF}
var
  st: TMemoryStream;
  md51: TMD5Digest;
{$ENDIF}


procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKUsrLogin]);
end;

{ TEKUsrLogin }

procedure TEKUsrLogin.ActivarLoginForm(Sender: TObject);
begin
{$IFNDEF MUNISF}
  if Assigned(EKUsrLogin1.FImagen) then
    EKUsrLogin1.FImagen.GetBitmap(0, EKLoginForm1.image1.Picture.Bitmap);

  if EKUsrLogin1.FLoadImagen > '' then
    EKLoginForm1.Image1.Picture.LoadFromFile(EKUsrLogin1.FLoadImagen);
{$ENDIF}
  EKLoginForm1.StatusBar1.SimpleText:= FEstado;
  if FCaption > '' then
    EKLoginForm1.Caption:= fcaption;
end;


procedure TEKUsrLogin.CambiarClave;
begin
  cambioclave:= Tcambioclave.Create(nil);
  cambioclave.ShowModal;
  cambioclave.Release;
end;


procedure TEKUsrLogin.chequear_permisos;
var
  n1, n2, n3: integer;
  long_n1, long_n2, long_n3: integer;
  hab_n1, hab_n2: boolean;

  function habilitarOpcion(opcion: TMenuItem): boolean;
  begin
    Result:= false; //por defecto no se muestra la opcion
    if opcion.Caption <> '-' then
      if opcion.Tag = 1 then //si el tag de la opcion es = 1
        Result:= true //la opcion se tiene q mostrar
      else //si el tag es distinto de 1 tengo que preguntar por los permisos
      begin
        if (ModoPermiso = EKPermisoAction) and Assigned(opcion.Action) then //si estoy en modo action y tiene una accion asignada
          if PermisoAccion(opcion.Action.Name) then //si tengo permiso para la accion
            Result:= true //la opcion se tiene q mostrar
          else
            opcion.Visible:= false //la opcion no se muestra
      end;
  end;

  function habilitarNivel(menu: TMenuItem): boolean;
  var
    long, indice: integer;
  begin
    Result:= false; //por defecto no se muestran las opciones
    long:= menu.Count;
    for indice:= 0 to (long - 1) do //recorro una por una las opciones del menu
    begin
      if habilitarOpcion(menu.Items[indice]) then
        Result:= true; //si hay una opcion en true, entonces devuelvo true
    end
  end;

begin
  if Assigned(FMenu) then //si esta asignado el menu
  begin
    long_n1:= menu.Items.Count - 1; //tamanio del menu principal (nivel 1)
    for n1:= 0 to long_n1 do //recorro una por una las opciones del menu principal (nivel 1)
    begin
      hab_n1:= false; //por defecto el nivel 1 esta desactivado
      long_n2:= menu.Items[n1].Count - 1; //tamanio del nivel 2
      if long_n2 = -1 then //si el nivel 1 no tiene subniveles
      begin
        if habilitarOpcion(menu.Items[n1]) then //si tengo permiso para la accion
          hab_n1:= true; //habilito la opcion del nivel 1
      end
      else //si el nivel 1 tiene subniveles
      begin
        for n2:= 0 to long_n2 do //recorro una por una las opciones (nivel 2)
        begin
          hab_n2:= false; //por defecto el nivel 2 esta desactivado
          long_n3:= menu.Items[n1].Items[n2].Count - 1; //tamanio del nivel 3
          if long_n3 = -1 then //si el nivel 2 no tiene subniveles
          begin
            if habilitarOpcion(menu.Items[n1].Items[n2]) then //si tengo permiso para la accion
              hab_n1:= true; //habilito la opcion del nivel 1
          end
          else //si el nivel 3 tiene subniveles
          begin
            if habilitarNivel(menu.Items[n1].Items[n2]) then //habilito las opciones del nivel 3
              hab_n2:= true;

            if not hab_n2 then
              menu.Items[n1].Items[n2].Enabled:= false;
          end;
        end
      end;

      if not hab_n1 then
        menu.Items[n1].Enabled:= false;
    end
  end;
end;


function TEKUsrLogin.conectar: boolean;
var
  i: integer;
  Ini: TIniFile;
  leer: string;
  encriptado: string;
  protocolo: string;

  //si el usuario esta habilitado para entrar al sistema entonces realizo la conexion con la base de datos
  procedure final_correcto;
  begin
    //obtengo el usuario real y el password de la base de datos
    usuariodb:= EKLoginForm1.EKSQLUsuarios.fieldbyname('db_usr').AsString;
    passworddb:= EKLoginForm1.EKSQLUsuarios.fieldbyname('db_clv').AsString;

    // CAMBIA EL USUARIO DE BASE DE DATOS //
    error_clave:= 'Error al intentar conectar a la Base de Datos con el usuario "' + usuariodb + '"';
    if usuariodb <> '' then
    begin
      EKUsrLogin1.coneccion.Disconnect;
      EKUsrLogin1.coneccion.HostName:= ip;
      EKUsrLogin1.coneccion.User:= usuariodb;
      EKUsrLogin1.coneccion.Password:= passworddb;
      EKUsrLogin1.Coneccion.Database:= db;
      EKUsrLogin1.coneccion.Connect;
      if not EKUsrLogin1.coneccion.Connected then
        Application.Terminate;
    end;

    error_clave:= '';
    conectar:= true;
  end;

begin
  EKLoginForm1.StatusBar1.SimpleText:= 'Validando Usuario...';
  conectar:= false;

  if not Assigned(EKUsrLogin1.coneccion) then
  begin
    ShowMessage('TEKUsrLogin: Error, No se definió Conección.');
    exit;
  end;

  //chequeo el modo. Si esta en "LoginSistema_ini" entonces el usuario de logueo y el password viene del sistema ini
  if Modo = EKLoginSistema_ini then
  begin
    Ini:= TIniFile.Create('.\SISTEMA.INI');
    try
      leer:= Ini.ReadString('Leer', 'Seccion', 'Servidor');

      encriptado:= Ini.ReadString(leer, 'encriptado', 'S');
      ip:= Ini.ReadString(leer, 'ip', 'automatico');
      ipl:= Ini.ReadString(leer, 'iplogin', '');
      if ipl = '' then
        ipl:= ip;
      Usuariolog:= Ini.ReadString(leer, 'usuario', '');
      passwordlog:= Ini.ReadString(leer, 'password', '');

      if encriptado = 'S' then //si el usuario de logueo y la pass estan encriptada la desencripto
      begin
        usuariolog:= Desencriptar('momiamun', pchar(usuariolog), length(usuariolog));
        passwordlog:= Desencriptar('momiamun', pchar(passwordlog), length(passwordlog));
      end;

      db:= Ini.ReadString(leer, Titulo_DBAplicacion, 'automatico');
      dbu:= Ini.ReadString(leer, Titulo_DBUsuario, '');
      protocolo:= Ini.ReadString(leer, 'protocolo', 'firebird-1.5');
    finally
      Ini.Free;
    end;
  end;

  //chequeo el modo. Si esta en "LoginAutomatico" entonces el usuario de logueo y el password lo calculo yo
  if Modo = EKLoginAutomatico then
  begin
    Ini:= TIniFile.Create('.\SISTEMA.INI');
    try
      leer:= Ini.ReadString('Leer', 'Seccion', 'Servidor');
      ip:= Ini.ReadString(leer, 'ip', 'automatico');
      ipl:= Ini.ReadString(leer, 'iplogin', '');
      if ipl = '' then
        ipl:= ip;
      db:= Ini.ReadString(leer, Titulo_DBAplicacion, 'automatico');
      dbu:= Ini.ReadString(leer, Titulo_DBUsuario, 'dbusuarios');
      protocolo:= Ini.ReadString(leer, 'protocolo', 'firebird-1.5');
    finally
      Ini.Free;
    end;

    encriptado:= 'N';
    usuariolog:= Desencriptar('e#%22q', 'idiipeglhc', 10); //LOGIN
    passwordlog:= Desencriptar('e#%22q', 'pmaabpibifnklkllgk', 18); //354875642
  end;

  if ipl = 'automatico' then
  begin
    ShowMessage('No se encotro configuración de Servidores. Verifique "sistema.ini"');
    Application.Terminate;
  end;

  error_clave:= 'Verifique el archivo "sistema.ini"' + chr(13) +
    'El error no esta en el usuario de sistema sino en el de base datos';

  //se conecta a la base de usuario con el usuario de logueo
  //si esta en modo "LoginAutomatico" se conecta con LOGIN y pass 354875642
  EKLoginForm1.ConexionUsuario.HostName:= ipl;
  EKLoginForm1.ConexionUsuario.Database:= dbu;
  EKLoginForm1.ConexionUsuario.User:= usuariolog;
  EKLoginForm1.ConexionUsuario.Password:= passwordlog;
  EKLoginForm1.ConexionUsuario.Protocol:= protocolo; //firebird-1.5
  EKLoginForm1.ConexionUsuario.connect;

  error_clave:= '';

  if Assigned(EKUsrLogin1.Coneccion) then
  begin
    with EKLoginForm1 do
    begin
      if (ip = 'automatico') or (db = 'automatico') then
      begin
        EKSQLAplicacion.ParamByName('aplicacion').AsString:= FAplicacion;
        EKSQLAplicacion.Open;

        if (ip = 'automatico') then
          ip:= EKSQLAplicacion.fieldbyname('IP_DB').AsString;
        if (db = 'automatico') then
          db:= EKSQLAplicacion.fieldbyname('ALIAS_DB').AsString;

        EKSQLAplicacion.Close;
      end;

      //cargo todos los usuarios en memoria
      ConeccionUsuario:= TZConnection.Create(nil);
      ZQ_Usuarios:= TZQuery.Create(nil);

      EKSQLpermisos.ParamByName('usu').AsString:= EKLoginForm1.usuario.Text;
      EKSQLpermisos.ParamByName('aplica').AsString:= FAplicacion;

      EKSQLUsuarios.Open;
      EKSQLpermisos.Open;

      //si el usuario no tiene ningun permiso asignado
      if EKSQLpermisos.RecordCount = 0 then
        //verifico si el usuario existe
        if EKSQLUsuarios.Locate('usuario', VarArrayOf([usuario.Text]), [loCaseInsensitive]) then
          //si existe verifico que este habilitado
          if EKSQLUsuarios.FieldByName('habilitado').AsString <> 'S' then
            showmessage('El Usuario "'+usuario.Text+'"  esta deshabilitado.')
          else //si esta habilitado el problema es que no tiene permisos
            showmessage('El Usuario "'+usuario.Text+'" no tiene permisos.')
        else //si el usuario no existe
          showmessage('El Usuario "'+usuario.Text+'" no existe.')
      else //si el usuario tiene algun permiso asignado
      begin
        //-- GUARDO LOS PERMISOS ASIGNADOS AL USUARIO EN EL ARRAY EKPermisos[] --
        i:= 0;
        SetLength(EKpermisos1, EKSQLpermisos.RecordCount);
        while not EKSQLpermisos.Eof do
        begin
          EKPermisos1[i].usuario:= EKSQLpermisosUSUARIO.AsString;
          EKPermisos1[i].accion:= EKSQLpermisosACCION.AsString;
          EKPermisos1[i].caption:= EKSQLpermisosCAPTION.AsString;
          EKPermisos1[i].valor:= EKSQLpermisosVALOR.AsString;

          //chequeo si el usuario es un grupo
          EKSQLGrupo.Close;
          EKSQLGrupo.ParamByName('usr').AsString:= EKSQLpermisosUSUARIO.AsString;
          EKSQLGrupo.Open;
          if (EKSQLGrupoGRUPO.IsNull) or (EKSQLGrupoGRUPO.AsString = 'N') then
            EKPermisos1[i].esGrupo:= 'N'
          else
            EKPermisos1[i].esGrupo:= 'S';

          inc(i);
          EKSQLpermisos.Next;
        end;
        EKSQLGrupo.Close;

        //verifico si el usuario existe
        if EKSQLUsuarios.Locate('usuario', VarArrayOf([usuario.Text]), [loCaseInsensitive]) then
        begin
          //chequeo que la contraseña ingresada sea la misma que figura en la base de datos de usuarios
          if EKSQLUsuarios.FieldByName('clave').AsString = password.Text then
          begin
            //verifico que este habilitado
            if EKSQLUsuarios.FieldByName('habilitado').AsString <> 'S' then
              showmessage('El Usuario "'+usuario.Text+'"  esta deshabilitado.')
            else //Si el usuario esta habilitado
            begin
              usuariosis:= usuario.Text;
              nusuariosis:= EKSQLUsuarios.fieldbyname('nombre').asstring;
              passwordsis:= EKSQLUsuarios.fieldbyname('clave').asstring;
              oldpasswd:= passwordsis;

              //--- CAMBIO DE CONTRASEÑA FORZADO ---
              if EKSQLUsuarios.FieldByName('cambiarclave').AsString = 'S' then
              begin
                cambioclave:= Tcambioclave.Create(nil);
                cambioclave.usuario.Caption:= EKSQLUsuarios.fieldbyname('usuario').asstring;
                cambioclave.nusuario.Caption:= EKSQLUsuarios.fieldbyname('nombre').asstring;
                cambioclave.ShowModal;
                cambioclave.Release;

                //verifico que el cambio de contraseña fue exitoso
                if passwordsis <> oldpasswd then
                  final_correcto
                else //si no se cambio la contraseña
                  showmessage('El Usuario "'+usuario.Text+'" esta obligado a modificar su contraseña.')
              end
              else
                final_correcto;
            end;
          end
          else //si la contraseña es distinta
            showmessage('La Contraseña ingresada para el Usuario "'+usuario.Text+'" es Incorrecta.')
        end
        else  //si el usuario no existe
          showmessage('El Usuario "'+usuario.Text+'" no existe.')
      end;
    end
  end
  else
    ShowMessage('TEKUsrLogin: Error, No se definió Conección');
end;


function TEKUsrLogin.configurar_conexion(conexion: TZConnection;
  aplicacion: string): boolean;
begin
  result:= configurar_conexion(conexion, aplicacion, '', '', '', '');
end;


function TEKUsrLogin.configurar_conexion(conexion: TZConnection; aplicacion, ip, alias,
  usuario, password: string): boolean;
var
  sqla: TZQuery;
  ini: TIniFile;
  encrip, ipa, usu, pass, dba: string;
  conex: TZConnection;
begin
  try
    conex:= TZConnection.create(nil);
    conex.Protocol:= conexion.Protocol;
    conex.HostName:= ipl;
    conex.Database:= dbu;
    conex.User:= usuariolog;
    conex.Password:= passwordlog;
    conex.Connect;

    sqla:= TZQuery.Create(nil);
    sqla.Connection:= conex;
    sqla.SQL.Add('select * from aplica where aplicacion = ''' + aplicacion + '''');
    sqla.Open;

    ini:= TIniFile.Create('.\SISTEMA.INI');
    try
      encrip:= Ini.ReadString(aplicacion, 'encriptado', 'S');
      ipa:= Ini.ReadString(aplicacion, 'ip', ip);
      dba:= Ini.ReadString(aplicacion, Titulo_DBAplicacion, alias);
      usu:= Ini.ReadString(aplicacion, 'usuario', usuario);
      pass:= Ini.ReadString(aplicacion, 'password', password);
      if encrip = 'S' then
      begin
        usu:= Desencriptar('momiamun', pchar(usu), length(usu));
        pass:= Desencriptar('momiamun', pchar(pass), length(pass));
      end;
    finally
      Ini.Free;
    end;

    if ipa = '' then
      ipa:= sqla.fieldbyname('ip_db').AsString;
    if dba = '' then
      dba:= sqla.fieldbyname('alias_db').AsString;

    sqla.Close;
    sqla.Free;
    conex.Disconnect;
    conex.Free;

    conexion.Disconnect;
    conexion.HostName:= ipa;
    conexion.Database:= dba;
    conexion.User:= usu;
    conexion.Password:= pass;

    result:= true;
  except;
    result:= false;
  end;
end;


constructor TEKUsrLogin.create(AOwner: TComponent);
var
  error: integer;
begin
  Titulo_DBUsuario:= 'db_usuarios';
  Titulo_DBAplicacion:= 'db_aplicacion';

  Modo:= EKLoginAutomatico;
  ModoPermiso:= EKPermisoCaption;

  error:= 0;
  if AOwner.ClassParent.ClassName <> 'TDataModule' then
  begin
    error:= 1;
    ShowMessage('EKUsrLogin: Error, Este objeto solo se puede insertar en un TDataModule');
  end;
  if Assigned(EKUsrLogin1) then
  begin
    error:= 2;
    ShowMessage('EKUsrLogin: Error, Solo se puede crear una Instancia del Objeto');
  end;

  if error = 0 then
  begin
    inherited;
    EKUsrLogin1:= self;
    if not ((csDesigning in ComponentState) or (csLoading in ComponentState)) then
    begin
      timer:= TTimer.Create(AOwner);
      timer.Enabled:= false;
      timer.Interval:= 100;
      timer.OnTimer:= OnTimer;
    end;
    EKLoginForm1.OnActivate:= ActivarLoginForm;
  end;
end;


destructor TEKUsrLogin.destroy;
begin
  EKUsrLogin1:= nil;
  inherited;
end;


function TEKUsrLogin.existeUsuario(nombre, password: string): boolean;
begin
  //se utiliza para verificar si un usuario esta en la base de datos o no.
  //Esta en la pantalla de ficha de empleado.

  result:= false;

  //si paso un nombre vacio salgo
  if (trim(nombre) = '') then
    exit;

  ConeccionUsuario.HostName:= ipl;
  ConeccionUsuario.Database:= dbu;
  ConeccionUsuario.User:= usuariolog;
  ConeccionUsuario.Password:= passwordlog;
  ConeccionUsuario.Protocol:= protocolo;
  ZQ_Usuarios.Connection:= ConeccionUsuario;
  ZQ_Usuarios.SQL.Text:= 'select * from usuarios;';
  ZQ_Usuarios.close;
  ZQ_Usuarios.Open;

  //si existe el usuario
  if ZQ_Usuarios.Locate('usuario', VarArrayOf([nombre]), [loCaseInsensitive]) then
  begin
    //si el usuario no tiene contraseña
    if ZQ_Usuarios.FieldByName('clave').IsNull then
    begin
      if trim(password) = '' then //si no ingrese contraseña
        result:= true;
    end
    else
    begin  //si el usuario tiene contraseña y es igual a la que ingrese
      if trim(password) = ZQ_Usuarios.FieldByName('clave').AsString then
        result:= true;
    end
  end
end;

procedure TEKUsrLogin.OnTimer(Sender: TObject);
var
  sec: integer;
begin
  if not Assigned(EKLoginForm1) then
  begin
    Timer.Enabled:= false;
    //sleep(3000);

    EKUsrLogin1.OnLogin(Sender);

    if Assigned(EKInformacion1) then
      if Assigned(EKInformacion1.StatusBar) then
        if EKInformacion1.IndiceUsuario > -1 then
          EKInformacion1.StatusBar.Panels.Items[EKInformacion1.IndiceUsuario].Text:= 'Usuario: ' + usuariosis;

    EKUsrLogin1.chequear_permisos;

    //--- CONTROL DE VERSION ---
    if FControlVersion then
    begin
      Application.CreateForm(TControl_version, Control_version);

      sec:= FVersion;

      with Control_version do
      begin
        version.Connection:= FConeccion;
        version_db.Connection:= FConeccion;
        version.ParamByName('programa').AsString:= FAplicacion;
        version.Open;
        Version_db.Open;

        if versionversion.AsString = inttostr(sec) then
          label5.Caption:= 'Su programa es la última versión'
        else
          label5.Caption:= 'Hay una nueva versión del sistema';

        if version.Locate('version', sec, []) then
        begin
          ver.Caption:= 'Su Versión : ' + versionFECHA.AsString + ' - ' + versionVERSIOND.AsString;
          if Assigned(EKInformacion1) then
            if Assigned(EKInformacion1.StatusBar) then
              if EKInformacion1.IndiceVersion > -1 then
                EKInformacion1.StatusBar.Panels.Items[EKInformacion1.IndiceVersion].Text:= 'Version: ' + versionVERSIOND.AsString;
        end
        else
          ver.Caption:= 'Su Versión es desconocida, Nro. de secuencia : ' + inttostr(sec);

        //principal.Caption := 'Apremios      Versión : '+versionFECHA.AsString+' - '+versionVERSIOND.AsString;

        version.first;
        uver.Caption:= 'Ultima Versión : ' + versionFECHA.AsString + ' - ' + versionVERSIOND.AsString;

        bfin.Caption:= 'Continuar';

        if sec < versionCOMPATIBILIDAD.AsInteger then
        begin
          panel2.Visible:= true;
          txtincompatible.Visible:= true;
          txtincompatible.Caption:= 'La versión  que intenta ejecutar es incompatible';
          bfin.Caption:= 'Cerrar';
        end;

        if versionVERSION_DB.asinteger <> version_dbVERSION_DB.asinteger then
        begin
          panel2.Visible:= true;
          dbincompatible.Visible:= true;
          dbincompatible.Caption:= 'La Base se Datos versión: ' + version_dbVERSION_DB.AsString + ' es incompatible';
          bfin.Caption:= 'Cerrar';
        end;

        if ((sec <> versionVERSION.AsInteger) or (versionVERSION_DB.asinteger <> version_dbVERSION_DB.asinteger))
          and (not Control_version.Visible) then
        begin
          showmodal;
        end;

        version.Close;
        if ((txtincompatible.Caption <> '') or (dbincompatible.Caption <> '')) then
          Application.Terminate
      end;

      Control_version.Release;
    end;

    if Assigned(FOnActivar) then
    begin
      FOnActivar(sender);
    end;
  end;

  Application.MainForm.Visible:= true;
  Application.MainForm.BringToFront;
end;


function TEKUsrLogin.PermisoAccion(Clave: string): boolean;
var
  i: integer;
begin
  result:= false;
  for i:= 0 to length(EKPermisos1) - 1 do
    if EKPermisos1[i].accion = clave then
      result:= true;
end;


function TEKUsrLogin.PermisoAccionValor(Clave: string): string;
var
  i: integer;
begin
  result:= '';
  for i:= 0 to length(EKPermisos1) - 1 do
    if EKPermisos1[i].accion = clave then
      result:= EKPermisos1[i].valor;
end;


//devuelve un array con el dato del campo valor del usuarios
//y de los grupos al que pertenece el usuario
function TEKUsrLogin.PermisoAccionValorGrupo(Clave: string): TEKArrayPermisos;
var
  i: integer;
  indiceArray: integer;
  auxArray: TEKArrayPermisos;
  tamanio: integer;
begin
  tamanio:= 0;
  for i:= 0 to length(EKPermisos1) - 1 do //obtengo el tamanio del array
    if EKPermisos1[i].accion = clave then //contando todos los permisos
      if EKPermisos1[i].esGrupo = 'S' then //de los grupos a los q pertenece el usuario
        if EKPermisos1[i].valor <> '' then //que tiene un valor asignado en el campo
          tamanio:= tamanio + 1; //que se pasa como clave

  SetLength(auxArray, tamanio); //creo el array del tamanio obtenido anteriormente

  indiceArray:= 0;
  for i:= 0 to length(EKPermisos1) - 1 do
    if EKPermisos1[i].accion = clave then
      if EKPermisos1[i].esGrupo = 'S' then
        if EKPermisos1[i].valor <> '' then
        begin
          auxArray[indiceArray].usuario:= EKPermisos1[i].usuario; //asigno los valores
          auxArray[indiceArray].valor:= EKPermisos1[i].valor; //al array
          indiceArray:= indiceArray + 1;
        end;

  Result:= auxArray;
end;


function TEKUsrLogin.PermisoCaption(Clave: string): boolean;
var
  i: integer;
begin
  result:= false;
  for i:= 0 to length(EKPermisos1) - 1 do
    if EKPermisos1[i].caption = clave then
      result:= true;
end;


function TEKUsrLogin.PermisoCaptionValor(Clave: string): string;
var
  i: integer;
begin
  result:= '';
  for i:= 0 to length(EKPermisos1) - 1 do
    if EKPermisos1[i].caption = clave then
      result:= EKPermisos1[i].valor;
end;

initialization

  Application.CreateForm(TEKLoginForm, EKLoginForm1);

{$IFDEF MUNISF}
  st:= TMemoryStream.Create;
  EKLoginForm1.image1.Picture.Graphic.SaveToStream(st);
  md51:= MD5Stream(st);
  ST.Free;
  if (md51.A <> -1336285321)
    or (md51.B <> -1805578619)
    or (md51.C <> 1988120279)
    or (md51.D <> 2012005549)
    or (not EKLoginForm1.image1.Visible)
    or (EKLoginForm1.image1.Align <> alClient)
    or (EKLoginForm1.Height < 300)
    or (EKLoginForm1.Width < 500)
    then
  begin
    ShowMessage('Libreria corrupta');
    Application.Terminate;
  end;
{$ENDIF}
  {-- CopyRight --
  CopyRight := TCopyRight.Create(nil);
  CopyRight.Memo1.Lines.Add('Modelo base para manejo de transacciones');
  CopyRight.Memo1.Lines.Add('');

  CopyRight.ShowModal;

  CopyRight.Free;
  CopyRight := nil;
  }

finalization
  if assigned(EKLoginForm1) then
    EKLoginForm1.free;
end.

