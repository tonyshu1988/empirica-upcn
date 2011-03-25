{$I EmpiriKa.inc}
unit EKUsrLogin;

interface

uses
  SysUtils, Classes, Forms, Dialogs, EKCopyright, Menus, ComCtrls,
  EKEncriptado, EKControlerror,
  ZConnection, ZAbstractRODataset, ZDataset, ZSqlMonitor, zdbcintfs, Controls, ExtCtrls,
  ZSqlProcessor, ZAbstractDataset, ZStoredProcedure, IniFiles, Variants, DB, ImgList, Graphics;

type
  TOnConectarEvent = procedure(status : tstatusbar) of object;
  TEKUsrLoginModo = (EKLoginAutomatico, EKLoginSistema_ini);
  TEKUsrLoginModoPermiso = (EKPermisoCaption, EKPermisoAction);
  TEKPermisoValores = record
    usuario : string;
    valor : string;
  end;
  TEKArrayPermisos = array of TEKPermisoValores;

type
  TEKUsrLogin = class(TComponent)
  private
    { Private declarations }
    FOnLogin : TNotifyEvent;
    FOnActivar : TNotifyEvent;
    FOnConectar : TOnConectarEvent;
    FConeccion : TZConnection;
    FMenu : TMainMenu;
    FAplicacion : string;
    FEstado : string;
    FVersion : integer;
    FControlVersion : boolean;
    FImagen : TImageList;
    FLoadImagen : String;
    FCaption : string;
    FModo : TEKUsrLoginModo;
    FModoPermiso : TEKUsrLoginModoPermiso;
    //FMainForm : TForm;
  protected
    { Protected declarations }
  public
    { Public declarations }
    Timer : TTimer;
    ip, ipl, db, dbu : string;
    usuariodb, passworddb, usuariolog, passwordlog, usuariosis, nusuariosis, passwordsis, oldpasswd : string;
    constructor create(AOwner: TComponent); override;
    destructor destroy; override;
    procedure OnTimer(Sender: TObject);
    procedure chequear_permisos;
    procedure ActivarLoginForm(Sender: TObject);
    procedure CambiarClave();
    function PermisoAccion(Clave : String) : boolean ;
    function PermisoCaptionValor(Clave : String) : String ;
    function PermisoAccionValor(Clave : String) : String ;
    function PermisoAccionValores(Clave : String) : TEKArrayPermisos ;
    function PermisoCaption(Clave : String) : boolean ;
    function conectar: boolean;
    function configurar_conexion(conexion : TZConnection; aplicacion : string) : boolean; overload;
    function configurar_conexion(conexion : TZConnection; aplicacion, ip, alias, usuario, password  : String): boolean; overload;
  published
    { Published declarations }
    Property OnLogin : TNotifyEvent read FOnLogin write FOnLogin;
    Property OnActivar : TNotifyEvent read FOnActivar write FOnActivar;
    Property OnConectar : TOnConectarEvent read FOnConectar write FOnConectar;
    //Property MainForm : TForm read FMainForm write FMainForm;
    Property Coneccion : TZConnection read FConeccion write FConeccion;
    Property Menu : TMainMenu read FMenu write FMenu;
    Property Aplicacion : string read FAplicacion write FAplicacion;
    Property Estado : string read FEstado write FEstado;
    Property Version : integer read  FVersion write FVersion;
    Property ControlVersion : boolean read FControlVersion write FControlVersion;
    Property Imagen : TImageList read FImagen write FImagen;
    Property LoadImagen : string read  FLoadImagen write FLoadImagen;
    Property Caption : string read FCaption write FCaption;
    Property Modo : TEKUsrLoginModo read FModo write FModo;
    Property ModoPermiso : TEKUsrLoginModoPermiso read FModoPermiso write FModoPermiso;
  end;

var EKUsrLogin1 : TEKUsrLogin;

procedure Register;

implementation

Uses EKloginform, EKCambioClave, EKVersion, EKInformacion, md5;


{$IFDEF MUNISF}
var
  st : TMemoryStream;
  md51 : TMD5Digest;
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
  EKLoginForm1.StatusBar1.SimpleText := FEstado;
  if FCaption > '' then
    EKLoginForm1.Caption := fcaption;
end;


procedure TEKUsrLogin.CambiarClave;
begin
  cambioclave:=Tcambioclave.Create(nil);
  cambioclave.ShowModal;
  cambioclave.Release;
end;


procedure TEKUsrLogin.chequear_permisos;
var
  i, j : integer;
  menuvacio : boolean;
begin
  if Assigned(FMenu) then
    for i := menu.Items.Count-1 downto 0 do
    begin
      menuvacio := true;
      for j := menu.items[i].Count-1 downto 0 do
      begin
        if menu.Items[i].Items[j].Tag <> 1 then
        begin
          if menu.Items[i].Items[j].Tag <> 2 then

            if (ModoPermiso=EKPermisoAction) and Assigned(Menu.items[i].Items[j].Action) then
              if not PermisoAccion(Menu.items[i].Items[j].Action.Name) then
                if not PermisoCaption(Menu.items[i].Items[j].Caption) then
                  Menu.Items[i].Items[j].visible := false
                else
                  menuvacio := false
              else
                menuvacio := false;
        end
        else
            menuvacio := false;
      end;
      if menuvacio then
        menu.Items[i].Enabled := false;
    end;
end;


function TEKUsrLogin.conectar: boolean;
var
  i : integer;
  Ini : TIniFile;
  leer : string;
  encriptado : string;
  protocolo  : string;

  procedure final_correcto;
  begin
    usuariodb := EKLoginForm1.EKSQLUsuarios.fieldbyname('db_usr').AsString;
    passworddb := EKLoginForm1.EKSQLUsuarios.fieldbyname('db_clv').AsString;

    // CAMBIA EL USUARIO DE BASE DE DATOS //
    error_clave := 'Error al intentar conectar a la Base de Datos con el usuario "'+usuariodb+'"';
    if usuariodb <> '' then
    begin
      EKUsrLogin1.coneccion.Disconnect;
      EKUsrLogin1.coneccion.HostName := ip;
      EKUsrLogin1.coneccion.User := usuariodb;
      EKUsrLogin1.coneccion.Password := passworddb;
      EKUsrLogin1.Coneccion.Database := db;
      EKUsrLogin1.coneccion.Connect;
      if not EKUsrLogin1.coneccion.Connected then
        Application.Terminate;
    end;
    error_clave := '';
    conectar := true;
  end;

Begin
  EKLoginForm1.StatusBar1.SimpleText := 'Validando Usuario...';
  conectar := false;

  if not Assigned(EKUsrLogin1.coneccion) then
  begin
    ShowMessage('TEKUsrLogin: Error, No se definió Conección.');
    exit;
  end;

//  if EKUsrLogin1.coneccion.Connected then
//  begin
//    ShowMessage('TEKUsrLogin: Atención, La Conección estaba activa.');
//    EKUsrLogin1.coneccion.Disconnect;
//  end;

  if Modo = EKLoginSistema_ini then
  begin
    Ini := TIniFile.Create( '.\SISTEMA.INI' );
    //application.OnException:= AppException;       // manejador generico
    //Modificado:= 0;
    try
      leer := Ini.ReadString( 'Leer', 'Seccion', 'Servidor' );

      encriptado  := Ini.ReadString( leer, 'encriptado', 'S' );
      ip  := Ini.ReadString( leer, 'ip', 'automatico' );
      ipl := Ini.ReadString( leer, 'iplogin', '' );
      if ipl = '' then
        ipl := ip;
      Usuariolog  := Ini.ReadString( leer, 'usuario', '');
      passwordlog  := Ini.ReadString( leer, 'password', '' );
      db   := Ini.ReadString( leer, 'db_aplicacion', 'automatico');
      dbu  := Ini.ReadString( leer, 'db_usuarios', '' );
      protocolo  := Ini.ReadString( leer, 'protocolo', 'firebird-1.5' );
    finally
      Ini.Free;
    end;
  end;

  if Modo = EKLoginAutomatico then
  begin
    Ini := TIniFile.Create( '.\SISTEMA.INI' );
    try
      leer := Ini.ReadString( 'Leer', 'Seccion', 'Servidor' );
      ip  := Ini.ReadString( leer, 'ip', 'automatico' );
      ipl := Ini.ReadString( leer, 'iplogin', '' );
      if ipl = '' then
        ipl := ip;
      db   := Ini.ReadString( leer, 'db_aplicacion', 'automatico' );
      dbu  := Ini.ReadString( leer, 'db_usuarios', 'dbusuarios' );
	  protocolo  := Ini.ReadString( leer, 'protocolo', 'firebird-1.5' );
    finally
      Ini.Free;
    end;

    encriptado := 'N';
    usuariolog  := Desencriptar('e#%22q', 'idiipeglhc', 10); //LOGIN
    passwordlog := Desencriptar('e#%22q', 'pmaabpibifnklkllgk', 18); //354875642
  end;

  if ipl = 'automatico' then
  begin
    ShowMessage('No se encotro configuración de Servidores. Verifique "sistema.ini"');
    Application.Terminate;
  end;

  error_clave := 'Verifique el archivo "sistema.ini"'+chr(13)+
                 'El error no esta en el usuario de sistema sino en el de base datos';

  if encriptado = 'S' then
  begin
    usuariolog := Desencriptar('momiamun', pchar(usuariolog), length(usuariolog));
    passwordlog := Desencriptar('momiamun', pchar(passwordlog), length(passwordlog));
  end;

  EKUsrLogin1.coneccion.HostName := ipl;
  EKUsrLogin1.coneccion.Database := dbu;
  EKUsrLogin1.coneccion.User := usuariolog;
  EKUsrLogin1.coneccion.Password := passwordlog;
  EKUsrLogin1.Coneccion.Protocol := protocolo;
  EKUsrLogin1.coneccion.connect;

  error_clave := '';

  if Assigned(EKUsrLogin1.Coneccion) then
  with EKLoginForm1 do
  begin
    if (ip = 'automatico') or (db = 'automatico')  then
    begin
       EKSQLAplicacion.Connection:=EKUsrLogin1.Coneccion;
       EKSQLAplicacion.ParamByName('aplicacion').AsString := FAplicacion;

       EKSQLAplicacion.Open;

       if (ip = 'automatico') then
         ip := EKSQLAplicacion.fieldbyname('IP_DB').AsString;
       if (db = 'automatico')  then
         db := EKSQLAplicacion.fieldbyname('ALIAS_DB').AsString;

       EKSQLAplicacion.Close;
    end;

    EKSQLUsuarios.Connection:=EKUsrLogin1.Coneccion;
    EKSQLpermisos.Connection:=EKUsrLogin1.Coneccion;

    EKSQLpermisos.ParamByName('usu').AsString := EKLoginForm1.usuario.Text;

    EKSQLpermisos.ParamByName('aplica').AsString := FAplicacion;

    EKSQLUsuarios.Open;
    EKSQLpermisos.Open;

    if EKSQLpermisos.RecordCount = 0 then
      if EKSQLUsuarios.Locate('usuario', VarArrayOf([usuario.Text]), [loCaseInsensitive]) then
        if EKSQLUsuarios.FieldByName('habilitado').AsString <> 'S' then
          showmessage('El Usuario esta deshabilitado')
        else
          showmessage('El Usuario ingresado no tiene permisos')
      else
        showmessage('El Usuario ingresado no existe')
    else
    begin
      //-- GUARDA PERMISOS EN ARRAY --
      i:=0;
      SetLength(EKpermisos1, EKSQLpermisos.RecordCount);
      while not EKSQLpermisos.Eof do
      begin
        EKPermisos1[i].usuario:= EKSQLpermisosUSUARIO.AsString;
        EKPermisos1[i].accion := EKSQLpermisosACCION.AsString;
        EKPermisos1[i].caption:= EKSQLpermisosCAPTION.AsString;
        EKPermisos1[i].valor  := EKSQLpermisosVALOR.AsString;
        inc(i);
        EKSQLpermisos.Next;
      end;

      if EKSQLUsuarios.Locate('usuario', VarArrayOf([usuario.Text]), [loCaseInsensitive]) then
      begin
        if EKSQLUsuarios.FieldByName('clave').AsString = password.Text then
        begin
          if EKSQLUsuarios.FieldByName('habilitado').AsString <> 'S' then
            showmessage('El Usuario ingresado esta deshabilitado')
          else
          begin
            usuariosis := usuario.Text;
            nusuariosis := EKSQLUsuarios.fieldbyname('nombre').asstring;
            passwordsis := EKSQLUsuarios.fieldbyname('clave').asstring;
            oldpasswd := passwordsis;

            //--- CAMBIO DE CONTRASEÑA FORZADO ---
            if EKSQLUsuarios.FieldByName('cambiarclave').AsString = 'S' then
            begin
              cambioclave := Tcambioclave.Create(nil);
              cambioclave.usuario.Caption := EKSQLUsuarios.fieldbyname('usuario').asstring;
              cambioclave.nusuario.Caption := EKSQLUsuarios.fieldbyname('nombre').asstring;
              cambioclave.ShowModal;
              cambioclave.Release;
              //-- CONTROLA SI MODIFICO LA PASSWORD --
              if passwordsis <> oldpasswd then
              begin
                //-- FINAL CORRECTO --
                final_correcto;
              end
              else
                showmessage('El Usuario Ingresado esta obligado a modificar su contraseña')
            end
            else
            begin
              //-- FINAL CORRECTO --
              final_correcto;
            end;
          end;
        end
        else
          showmessage('La Contraseña ingresada es Incorrecta')
      end
      else
          showmessage('El Usuario ingresado no existe');
    end;
  end
  else
    ShowMessage('TEKUsrLogin: Error, No se definió Conección');
end;


function TEKUsrLogin.configurar_conexion(conexion: TZConnection;
  aplicacion: string): boolean;
begin
  result := configurar_conexion(conexion, aplicacion, '', '', '', '');
end;


function TEKUsrLogin.configurar_conexion(conexion: TZConnection; aplicacion, ip, alias,
  usuario, password: String): boolean;
var
  sqla : TZQuery;
  ini : TIniFile;
  encrip, ipa, usu, pass, dba : string;
  conex : TZConnection;
begin
  try
    conex := TZConnection.create(nil);
    conex.Protocol := conexion.Protocol;
    conex.HostName := ipl;
    conex.Database := dbu;
    conex.User := usuariolog;
    conex.Password := passwordlog;
    conex.Connect;

    sqla := TZQuery.Create(nil);
    sqla.Connection := conex;
    sqla.SQL.Add('select * from aplica where aplicacion = '''+aplicacion+'''');
    sqla.Open;

    ini := TIniFile.Create( '.\SISTEMA.INI' );
    try
      encrip  := Ini.ReadString( aplicacion, 'encriptado', 'S' );
      ipa  := Ini.ReadString( aplicacion, 'ip', ip );
      dba   := Ini.ReadString( aplicacion, 'db_aplicacion', alias );
      usu  := Ini.ReadString( aplicacion, 'usuario', usuario );
      pass  := Ini.ReadString( aplicacion, 'password', password );
      if encrip = 'S' then
      begin
        usu := Desencriptar('momiamun', pchar(usu), length(usu));
        pass := Desencriptar('momiamun', pchar(pass), length(pass));
      end;
    finally
      Ini.Free;
    end;

    if ipa = '' then
      ipa := sqla.fieldbyname('ip_db').AsString;
    if dba = '' then
      dba := sqla.fieldbyname('alias_db').AsString;

    sqla.Close;
    sqla.Free;
    conex.Disconnect;
    conex.Free;

    conexion.Disconnect;
    conexion.HostName := ipa;
    conexion.Database := dba;
    conexion.User := usu;
    conexion.Password := pass;

    result:=true;
  except;
    result:=false;
  end;
end;


constructor TEKUsrLogin.create(AOwner: TComponent);
var
  error : integer;
begin

  Modo := EKLoginAutomatico;
  ModoPermiso := EKPermisoCaption;

  error := 0;
  if AOwner.ClassParent.ClassName <> 'TDataModule' then
  begin
    error := 1;
    ShowMessage('EKUsrLogin: Error, Este objeto solo se puede insertar en un TDataModule');
  end;
  if Assigned(EKUsrLogin1) then
  begin
    error := 2;
    ShowMessage('EKUsrLogin: Error, Solo se puede crear una Instancia del Objeto');
  end;

  if error = 0 then
  begin
    inherited;
    EKUsrLogin1 := self;
    if not ((csDesigning in ComponentState) or (csLoading in ComponentState)) then
    begin
      timer := TTimer.Create(AOwner);
      timer.Enabled := false;
      timer.Interval := 100;
      timer.OnTimer := OnTimer;
    end;
    EKLoginForm1.OnActivate := ActivarLoginForm;
  end;
end;


destructor TEKUsrLogin.destroy;
begin
  EKUsrLogin1 := nil;
  inherited;
end;


procedure TEKUsrLogin.OnTimer(Sender: TObject);
var
  sec : integer;
begin
  if not Assigned(EKLoginForm1) then
  begin
    Timer.Enabled := false;
    //sleep(3000);

    EKUsrLogin1.OnLogin(Sender);

    if Assigned(EKInformacion1) then
      if Assigned(EKInformacion1.StatusBar) then
        if EKInformacion1.IndiceUsuario > -1 then
          EKInformacion1.StatusBar.Panels.Items[EKInformacion1.IndiceUsuario].Text := 'Usuario: '+usuariosis;

    EKUsrLogin1.chequear_permisos;

    //--- CONTROL DE VERSION ---
    if FControlVersion then
    begin
      Application.CreateForm(TControl_version, Control_version);

      sec := FVersion;

      with Control_version do
      begin
        version.Connection := FConeccion;
        version_db.Connection := FConeccion;
        version.ParamByName('programa').AsString := FAplicacion;
        version.Open;
        Version_db.Open;

        if versionversion.AsString = inttostr(sec) then
          label5.Caption := 'Su programa es la última versión'
        else
          label5.Caption := 'Hay una nueva versión del sistema';

        if version.Locate('version', sec, []) then
        begin
          ver.Caption := 'Su Versión : '+versionFECHA.AsString+' - '+versionVERSIOND.AsString;
          if Assigned(EKInformacion1) then
            if Assigned(EKInformacion1.StatusBar) then
              if EKInformacion1.IndiceVersion > -1 then
                EKInformacion1.StatusBar.Panels.Items[EKInformacion1.IndiceVersion].Text := 'Version: '+versionVERSIOND.AsString;
        end
        else
          ver.Caption := 'Su Versión es desconocida, Nro. de secuencia : '+inttostr(sec);

        //principal.Caption := 'Apremios      Versión : '+versionFECHA.AsString+' - '+versionVERSIOND.AsString;

        version.first;
        uver.Caption := 'Ultima Versión : '+versionFECHA.AsString+' - '+versionVERSIOND.AsString;

        bfin.Caption := 'Continuar';

        if sec < versionCOMPATIBILIDAD.AsInteger then
        begin
          panel2.Visible := true;
          txtincompatible.Visible := true;
          txtincompatible.Caption := 'La versión  que intenta ejecutar es incompatible';
          bfin.Caption := 'Cerrar';
        end;

        if versionVERSION_DB.asinteger <> version_dbVERSION_DB.asinteger then
        begin
          panel2.Visible := true;
          dbincompatible.Visible := true;
          dbincompatible.Caption:='La Base se Datos versión: '+version_dbVERSION_DB.AsString+' es incompatible';
          bfin.Caption := 'Cerrar';
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

  Application.MainForm.Visible := true;
  Application.MainForm.BringToFront;
end;


function TEKUsrLogin.PermisoAccion(Clave: String): boolean;
var
  i : integer;
begin
  result := false;
  for i := 0 to length(EKPermisos1)-1 do
    if EKPermisos1[i].accion = clave then
      result := true;
end;


function TEKUsrLogin.PermisoAccionValor(Clave: String): String;
var
  i : integer;
begin
  result := '';
  for i := 0 to length(EKPermisos1)-1 do
    if EKPermisos1[i].accion = clave then
      result := EKPermisos1[i].valor;
end;


//devuelve un array con el dato del campo valor del usuarios
//y de los grupos al que pertenece el usuario
function TEKUsrLogin.PermisoAccionValores(Clave: String): TEKArrayPermisos;
var
  i : integer;
  indiceArray: integer;
  auxArray: TEKArrayPermisos;
  tamanio: integer;
begin
  tamanio:= 0;
  for i := 0 to length(EKPermisos1)-1 do   //obtengo el tamanio del array
    if EKPermisos1[i].accion = clave then  //contando todos los permisoso
      if EKPermisos1[i].valor <> '' then   //que tienen valor asignado
        tamanio:= tamanio + 1;

  SetLength(auxArray, tamanio); //creo el array del tamanio obtenido anteriormente

  indiceArray:= 0;
  for i := 0 to length(EKPermisos1)-1 do
    if EKPermisos1[i].accion = clave then
      if EKPermisos1[i].valor <> '' then
      begin
        auxArray[indiceArray].usuario:= EKPermisos1[i].usuario; //asigno los valores
        auxArray[indiceArray].valor:= EKPermisos1[i].valor;     //al array
        indiceArray:= indiceArray + 1;
      end;

  Result:= auxArray;
end;


function TEKUsrLogin.PermisoCaption(Clave: String): boolean;
var
  i : integer;
begin
  result := false;
  for i := 0 to length(EKPermisos1)-1 do
    if EKPermisos1[i].caption = clave then
      result := true;
end;


function TEKUsrLogin.PermisoCaptionValor(Clave: String): String;
var
  i : integer;
begin
  result := '';
  for i := 0 to length(EKPermisos1)-1 do
    if EKPermisos1[i].caption = clave then
      result := EKPermisos1[i].valor;
end;

initialization

  Application.CreateForm(TEKLoginForm, EKLoginForm1);
{$IFDEF MUNISF}
  st := TMemoryStream.Create;
  EKLoginForm1.image1.Picture.Graphic.SaveToStream(st);
  md51 := MD5Stream(st);
  ST.Free;
  if   (md51.A <> -1336285321)
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
