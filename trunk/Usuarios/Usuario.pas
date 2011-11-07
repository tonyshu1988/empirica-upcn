unit Usuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, StdCtrls, Mask, DBCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Math, ComCtrls, Grids,
  DBGrids, IBServices, ZConnection, dxBar, dxBarExtItems, EKUsrPermisos,
  EKLlenarCombo;

type
  TFUsuario = class(TForm)
    Usuario: TZQuery;
    UsuarioUSUARIO: TStringField;
    UsuarioNOMBRE: TStringField;
    UsuarioCLAVE: TStringField;
    UsuarioDIR: TStringField;
    UsuarioNUM_DIR: TIntegerField;
    UsuarioTELEFONO: TIntegerField;
    UsuarioCOD_ORIGEN: TStringField;
    UsuarioDB_USR: TStringField;
    UsuarioDB_CLV: TStringField;
    UsuarioCAMBIARCLAVE: TStringField;
    UsuarioGRUPO: TStringField;
    UsuarioHABILITADO: TStringField;
    Label1: TLabel;
    DBEditUsuario: TDBEdit;
    DS_Usuario: TDataSource;
    Label2: TLabel;
    DBEditNombreUsuario: TDBEdit;
    DBEditContrasenia: TDBEdit;
    PageControl1: TPageControl;
    TabSheetDatosUsuarios: TTabSheet;
    lee_role: TZReadOnlyQuery;
    lee_roleRDBUSER: TStringField;
    lee_roleRDBGRANTOR: TWideStringField;
    lee_roleRDBPRIVILEGE: TStringField;
    lee_roleRDBGRANT_OPTION: TSmallintField;
    lee_roleRDBRELATION_NAME: TWideStringField;
    lee_roleRDBFIELD_NAME: TWideStringField;
    lee_roleRDBUSER_TYPE: TSmallintField;
    lee_roleRDBOBJECT_TYPE: TSmallintField;
    DSRole: TDataSource;
    borrar_role: TZReadOnlyQuery;
    agregar_role: TZReadOnlyQuery;
    ConfirmarContrasenia: TEdit;
    Label3: TLabel;
    Label7: TLabel;
    SQLCopiarPermisos: TZQuery;
    DBCheckBoxForzarClave: TDBCheckBox;
    DBCheckBoxHabilitado: TDBCheckBox;
    DBCheckBoxEsGrupo: TDBCheckBox;
    TabSheetPermismos: TTabSheet;
    Permisos: TZQuery;
    DSPermisos: TDataSource;
    PermisosUSUARIO: TStringField;
    PermisosCLAVE_AP: TIntegerField;
    PermisosVALOR: TStringField;
    PermisosAPLICACION: TStringField;
    PermisosACCION: TStringField;
    PermisosCAPTION: TStringField;
    SQLCopiarGrupos: TZQuery;
    UsuarioNIVEL: TIntegerField;
    Label5: TLabel;
    DBEditNivel: TDBEdit;
    usr_f: TDBEdit;
    contrasenia_f: TDBEdit;
    Panel1: TPanel;
    Titulo_f: TLabel;
    dxBarABM: TdxBarManager;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PanelCopiar: TPanel;
    CopiarPermisos: TCheckBox;
    CopiarGrupos: TCheckBox;
    EKUsrPermisos1: TEKUsrPermisos;
    PanelContenedor: TPanel;
    PanelDatosUsuario: TPanel;
    PanelRoles: TPanel;
    DBGridRoles: TDBGrid;
    CBoxUsuariosCopia: TComboBox;
    EKLlenarCBoxUsuarios: TEKLlenarCombo;
    ZQ_UsuariosCopia: TZQuery;
    ZQ_UsuariosCopiaUSUARIO: TStringField;
    ZQ_UsuariosCopiaNOMBRE: TStringField;
    ZQ_UsuariosCopiaCLAVE: TStringField;
    ZQ_UsuariosCopiaDIR: TStringField;
    ZQ_UsuariosCopiaNUM_DIR: TIntegerField;
    ZQ_UsuariosCopiaTELEFONO: TIntegerField;
    ZQ_UsuariosCopiaCOD_ORIGEN: TStringField;
    ZQ_UsuariosCopiaDB_USR: TStringField;
    ZQ_UsuariosCopiaDB_CLV: TStringField;
    ZQ_UsuariosCopiaCAMBIARCLAVE: TStringField;
    ZQ_UsuariosCopiaGRUPO: TStringField;
    ZQ_UsuariosCopiaHABILITADO: TStringField;
    ZQ_UsuariosCopiaNIVEL: TIntegerField;
    Panel2: TPanel;
    Label4: TLabel;
    database: TLabel;
    Panel3: TPanel;
    BtnAsignarRol: TButton;
    Panel4: TPanel;
    DBGridPermisosHeredados: TDBGrid;
    Label6: TLabel;
    procedure BtnAsignarRolClick(Sender: TObject);
    procedure UsuarioAfterOpen(DataSet: TDataSet);
    procedure TabSheetPermismosShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
  private
    { Private declarations }
    FIBSecurityService: TIBSecurityService;
  public
    { Public declarations }
    estado: string;
    property SecurityService : TIBSecurityService read FIBSecurityService write FIBSecurityService;
  end;

var
  FUsuario: TFUsuario;

const
  transaccion_usuario: string = 'ABM USUARIOS';

implementation

{$R *.dfm}

Uses UDM, UPrincipal;

procedure TFUsuario.UsuarioAfterOpen(DataSet: TDataSet);
begin
  ConfirmarContrasenia.Text:=UsuarioCLAVE.AsString;
end;


procedure TFUsuario.TabSheetPermismosShow(Sender: TObject);
begin
  permisos.Close;
  Permisos.ParamByName('usu').AsString:= DBEditUsuario.Text;
  permisos.Open
end;


procedure TFUsuario.PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
begin
  if DM.EKModelo.verificar_transaccion(transaccion_usuario) then
    AllowChange:= false
  else
    AllowChange:= true;
end;


procedure TFUsuario.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFUsuario.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_usuario) then
  begin
    if not (application.MessageBox(pchar('Si continua con el cierre se perderan los cambios realizados.'+#13+#13+'¿Salir de todos modos?'),'Atención', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      canClose := False
    else
    begin
      dm.EKModelo.cancelar_transaccion(transaccion_usuario);
      FPrincipal.Usuarios.Refresh;
      Release;
    end;
  end;

  FPrincipal.Usuarios.Refresh;
  Release;
end;


procedure TFUsuario.FormCreate(Sender: TObject);
begin
  GrupoEditando.Enabled:= True;
  GrupoGuardarCancelar.Enabled:= False;
  PageControl1.ActivePageIndex:= 0;
  PanelDatosUsuario.Enabled:= false;
  PanelRoles.Enabled:= false;

  EKUsrPermisos1.Validar;

  if not dm.EKUsrLogin.PermisoAccion('ALTAUSUARIOS') then
    btnNuevo.Enabled:= false;

  if not dm.EKUsrLogin.PermisoAccion('MODIFICARUSUARIOS') then
    btnModificar.Enabled:= false;

  if not dm.EKUsrLogin.PermisoAccion('BORRARUSUARIOS') then
    btnEliminar.Enabled:= false;

  if not dm.EKUsrLogin.PermisoAccion('AGREGARPERMISOS') then
    BtnAsignarRol.Visible:=false;

  if FPrincipal.Usuarios.ParamByName('nivel').AsInteger = 0 then
    DBEditNivel.ReadOnly:= false;
end;


procedure TFUsuario.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_usuario, [Usuario]) then
  begin
    EKLlenarCBoxUsuarios.CargarCombo;

    PageControl1.ActivePageIndex:= 0;
    PanelDatosUsuario.Enabled:= true;
    PanelRoles.Enabled:= true;

    estado:= 'Alta';
    GrupoEditando.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= true;
    PanelCopiar.Visible:=true;
    Usuario.Append;
    Randomize;
    UsuarioDB_CLV.AsString:= IntToStr(RandomRange(100000, 999999));
    UsuarioCAMBIARCLAVE.AsString:= 'N';
    UsuarioHABILITADO.AsString:= 'S';
    UsuarioGRUPO.AsString:= 'N';
    ConfirmarContrasenia.Text:= '';
    DBEditUsuario.ReadOnly:= false;
    DBEditUsuario.SetFocus;
  end;
end;


procedure TFUsuario.btnModificarClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_usuario, [Usuario]) then
  begin
    EKLlenarCBoxUsuarios.CargarCombo;

    PageControl1.ActivePageIndex:= 0;
    PanelDatosUsuario.Enabled:= true;
    PanelRoles.Enabled:= true;

    estado:= 'Modificar';
    GrupoEditando.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= true;
    PanelCopiar.Visible:=true;
    Usuario.Edit;
    DBEditUsuario.ReadOnly:= false;
    DBEditUsuario.SetFocus;
  end;
end;


procedure TFUsuario.btnEliminarClick(Sender: TObject);
var
  auxUser: string;
begin
  auxUser:= UpperCase(lee_role.ParamByName('usr').AsString);

  if dm.EKUsrLogin.usuariodb = auxUser then
    exit;

  if (application.MessageBox(pchar('¿Esta seguro que desea Eliminar el Usuario '+UsuarioNOMBRE.AsString+'?'+#13+#13), 'Eliminar Permiso', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_usuario, [Usuario]) then
    begin
      estado:= 'Baja';
      SecurityService:= FPrincipal.IBSecurityService;
      with SecurityService do
      begin
        Active := false;
        ServerName:= dm.Conexion.HostName;
        LoginPrompt:= False;
        Params.Clear;
        Params.Add('user_name=SYSDBA');
        Params.Add('password=masterkey');
        Active:= True;
        try
          UserName:= UsuarioDB_USR.AsString;
          DeleteUser;
        finally
          Active:= False;
        end;
      end;

      borrar_role.ParamByName('usr').AsString:= auxUser;
      borrar_role.ParamByName('role').AsString:= 'BASE';
      borrar_role.ExecSQL;

      ConfirmarContrasenia.Text:='';
      Usuario.Delete;
    end
    else
      exit;

    try
      if dm.EKModelo.finalizar_transaccion(transaccion_usuario) then
        close
      else
        dm.EKModelo.cancelar_transaccion(transaccion_usuario);
    except
      begin
        Application.MessageBox('El usuario seleccionado no se puede borrar porque está siendo utilizado.','Atención',MB_OK+MB_ICONINFORMATION);
        dm.EKModelo.cancelar_transaccion(transaccion_usuario);
      end
    end;
  end;
end;


procedure TFUsuario.BtnAsignarRolClick(Sender: TObject);
var
  auxUser: string;
begin
  auxUser:= UpperCase(lee_role.ParamByName('usr').AsString);

  borrar_role.ParamByName('usr').AsString:= auxUser;
  borrar_role.ParamByName('role').AsString:= 'BASE';
  borrar_role.ExecSQL;

  agregar_role.ParamByName('usr').AsString:= auxUser;
  agregar_role.ParamByName('role').AsString:= 'BASE';
  agregar_role.ExecSQL;

  dm.ConexionDB.Commit;

  lee_role.Close;
  lee_role.Open;
end;


procedure TFUsuario.btnCancelarClick(Sender: TObject);
begin
  if DM.EKModelo.cancelar_transaccion(transaccion_usuario) then
  begin
    PanelDatosUsuario.Enabled:= false;
    PanelRoles.Enabled:= false;
    estado:= '';
    GrupoEditando.Enabled:= true;
    GrupoGuardarCancelar.Enabled:= false;
    PanelCopiar.Visible:=false;
  end;
end;


procedure TFUsuario.btnGuardarClick(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if UsuarioUSUARIO.IsNull then
  begin
    Application.MessageBox('El campo Usuario se encuentra vacio.', 'Verifique', MB_OK);
    exit;
  end;

  if UsuarioCLAVE.AsString <> ConfirmarContrasenia.Text then
  begin
    Application.MessageBox('La contraseña y su verificación no coinciden.', 'Verifique', MB_OK);
    exit;
  end;

  if estado = 'Alta' then
  begin
    if UsuarioDB_USR.AsString = '' then
    begin
      Usuario.Edit;
      UsuarioDB_USR.AsString := UpperCase(UsuarioUSUARIO.AsString);
    end;
  end;

  if estado <> 'Baja' then
  begin
    SecurityService:= FPrincipal.IBSecurityService;
    with SecurityService do
    begin
      Active := false;
      ServerName:= dm.Conexion.HostName;
      LoginPrompt:= False;
      Params.Clear;
      Params.Add('user_name=SYSDBA');
      Params.Add('password=masterkey');
      Active := True;
      UserName:= UsuarioDB_USR.AsString;
      FirstName:= UsuarioNOMBRE.AsString;
      Password := UsuarioDB_CLV.AsString;;

      DisplayUser(UsuarioDB_USR.AsString);
      if UserInfoCount = -1 then
        AddUser
      else
        ModifyUser;
      Active := false;

      lee_role.ParamByName('usr').AsString:= UsuarioDB_USR.AsString;
      BtnAsignarRol.Click;
    end;
  end;
  Usuario.ApplyUpdates;

  if (estado <> 'Baja') and (EKLlenarCBoxUsuarios.SelectClave <> '') then
  begin
    if CopiarPermisos.Checked then
    begin
      SQLCopiarPermisos.ParamByName('usr_origen').AsString:= EKLlenarCBoxUsuarios.SelectClave;
      SQLCopiarPermisos.ParamByName('usr_destino').AsString:= UsuarioUSUARIO.AsString;
      SQLCopiarPermisos.ExecSQL;
    end;

    if CopiarGrupos.Checked then
    begin
      SQLCopiarGrupos.ParamByName('usr_origen').AsString:= EKLlenarCBoxUsuarios.SelectClave;
      SQLCopiarGrupos.ParamByName('usr_destino').AsString:= UsuarioUSUARIO.AsString;
      SQLCopiarGrupos.ExecSQL;
    end;
  end;

  try
    if dm.EKModelo.finalizar_transaccion(transaccion_usuario) then
    begin
      PanelDatosUsuario.Enabled:= false;
      PanelRoles.Enabled:= false;
      estado:= '';
      GrupoEditando.Enabled:= true;
      GrupoGuardarCancelar.Enabled:= false;
      PanelCopiar.Visible:=false;
    end
    else
      dm.EKModelo.cancelar_transaccion(transaccion_usuario);
  except
    begin
      Application.MessageBox('El usuario no se puedo dar de alta/modificar.','Atención',MB_OK+MB_ICONINFORMATION);
      dm.EKModelo.cancelar_transaccion(transaccion_usuario);
    end
  end;
end;

end.



