unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls, EKLlenarCombo, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids, Provider,
  DBClient, EKUsrPermisos, IBServices, StrUtils, EKOrdenarGrilla;

type
  TFPrincipal = class(TForm)
    PanelFondo: TPanel;
    dxBarABM: TdxBarManager;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnAbmUsuarios: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnEditar: TdxBarLargeButton;
    btnAbmGrupos: TdxBarLargeButton;
    btnVerGrupoUsuario: TdxBarLargeButton;
    btnAbmPermisos: TdxBarLargeButton;
    btnTodos: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    btnNinguno: TdxBarLargeButton;
    bntValor: TdxBarLargeButton;
    GrupoAsignacion: TdxBarGroup;
    GrupoABM: TdxBarGroup;
    panelArriba: TPanel;
    panelMedio: TPanel;
    panelAbajo: TPanel;
    Label1: TLabel;
    cBoxAplicacion: TComboBox;
    Aplicacion: TZQuery;
    AplicacionAPLICACION: TStringField;
    AplicacionCLAVE: TIntegerField;
    AplicacionALIAS_DB: TStringField;
    AplicacionIP_DB: TStringField;
    AplicacionIP_ACTUALIZACION: TStringField;
    EKLlenarAplicacion: TEKLlenarCombo;
    DBGridUsuarios: TDBGrid;
    DBGridGrupos: TDBGrid;
    Usuarios: TZQuery;
    DSUsuarios: TDataSource;
    UsuariosUSUARIO: TStringField;
    UsuariosNOMBRE: TStringField;
    UsuariosCLAVE: TStringField;
    UsuariosDIR: TStringField;
    UsuariosNUM_DIR: TIntegerField;
    UsuariosTELEFONO: TIntegerField;
    UsuariosCOD_ORIGEN: TStringField;
    UsuariosDB_USR: TStringField;
    UsuariosDB_CLV: TStringField;
    UsuariosCAMBIARCLAVE: TStringField;
    UsuariosGRUPO: TStringField;
    UsuariosHABILITADO: TStringField;
    UsuariosNIVEL: TIntegerField;
    GruposP: TZQuery;
    DSGurposP: TDataSource;
    GruposPGRUPO: TStringField;
    GruposPNOMBRE: TStringField;
    panelMedioDerecha: TPanel;
    panelMedioIzquierda: TPanel;
    panelMedioIzquierdaTop: TPanel;
    panelMedioDerechaTop: TPanel;
    RadioGrupo: TRadioGroup;
    RadioGroupUsuarios: TRadioGroup;
    Nivel: TZQuery;
    NivelNIVEL: TIntegerField;
    ZPermisos: TZQuery;
    ZPermisosAPLICACION: TStringField;
    ZPermisosACCION: TStringField;
    ZPermisosCAPTION: TStringField;
    ZPermisosCLAVE: TIntegerField;
    ZPermisosVALOR: TStringField;
    ZPermisosUSUARIO: TStringField;
    ZPermisosDESCRIPCION: TBlobField;
    ZPermisos_desc: TStringField;
    DSPermisos: TDataSource;
    Permisos: TClientDataSet;
    StringField6: TStringField;
    DataSetProvider: TDataSetProvider;
    DBGridPermisos: TDBGrid;
    EKUsrPermisos: TEKUsrPermisos;
    Grupos: TZQuery;
    EKLlenarGrupo: TEKLlenarCombo;
    cBoxGrupos: TComboBox;
    IBSecurityService: TIBSecurityService;
    Cambiar_Valor: TZQuery;
    Borrar_Permiso: TZQuery;
    ZQ_Permisos: TZQuery;
    ZQ_PermisosUSUARIO: TStringField;
    ZQ_PermisosCLAVE_AP: TIntegerField;
    Alta_Grupo: TZQuery;
    Baja_Grupo: TZQuery;
    RadioBtnTodos: TRadioButton;
    RadioBtnGrupo: TRadioButton;
    PermisosAPLICACION: TStringField;
    PermisosACCION: TStringField;
    PermisosCAPTION: TStringField;
    PermisosCLAVE: TIntegerField;
    PermisosVALOR: TStringField;
    PermisosUSUARIO: TStringField;
    PermisosDESCRIPCION: TBlobField;
    Button1: TButton;
    GruposPUSUARIO: TStringField;
    EKOrdenarPermisos: TEKOrdenarGrilla;
    EKOrdenarUsuarios: TEKOrdenarGrilla;
    EKOrdenarGrupos: TEKOrdenarGrilla;
    procedure EKLlenarAplicacionCambio(valor: String);
    procedure FormCreate(Sender: TObject);
    procedure DBGridUsuariosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnSalirClick(Sender: TObject);
    procedure DBGridGruposDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure RadioGrupoClick(Sender: TObject);
    procedure ZPermisosCalcFields(DataSet: TDataSet);
    procedure PermisosBeforeClose(DataSet: TDataSet);
    procedure EKLlenarGrupoCambio(valor: String);
    procedure actualizar_permisos;
    procedure UsuariosAfterScroll(DataSet: TDataSet);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure CambioVerUsuario;
    procedure DBGridPermisosDblClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure DBGridPermisosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure bntValorClick(Sender: TObject);
    procedure UsuariosBeforeScroll(DataSet: TDataSet);
    procedure aceptar_cancelar;
    procedure UsuariosAfterClose(DataSet: TDataSet);
    procedure DBGridGruposDblClick(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure btnNingunoClick(Sender: TObject);
    procedure btnAbmPermisosClick(Sender: TObject);
    procedure btnAbmUsuariosClick(Sender: TObject);
    procedure RadioBtnTodosClick(Sender: TObject);
    procedure RadioBtnGrupoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UDM, EKUsrLogin, Aplicaciones, Usuario;

{$R *.dfm}

procedure TFPrincipal.EKLlenarAplicacionCambio(valor: String);
begin
  actualizar_permisos;
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  try
      nivel.ParamByName('usu').AsString:=dm.EKUsrLogin.usuariosis;
      nivel.Open;
      Usuarios.ParamByName('nivel').AsInteger:= NivelNIVEL.AsInteger;
      GruposP.ParamByName('nivel').AsInteger:= NivelNIVEL.AsInteger;
      nivel.close;

      dm.EKModelo.abrir(Usuarios);
      EKLlenarAplicacion.CargarCombo;
      EKLlenarGrupo.CargarCombo;
      EKUsrPermisos.Validar;

      DBGridPermisos.OnDblClick:= nil; //le saco el doble click a la grilla de permisos

      GrupoEditando.Enabled:= true;
      GrupoGuardarCancelar.Enabled:= false;
      GrupoAsignacion.Enabled:= false;

      RadioBtnTodos.Checked:= true;
      RadioGrupo.ItemIndex:=1;

      EKLlenarAplicacion.SetItem(0);

      EKOrdenarPermisos.CargarConfigColunmas;
      EKOrdenarUsuarios.CargarConfigColunmas;
      EKOrdenarGrupos.CargarConfigColunmas;
  Finally
    begin
      ShowMessage('El usuario no tiene permisos para ingresar al sistema');
      Application.Terminate;
    end;
  end;

end;


procedure TFPrincipal.DBGridUsuariosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if usuarios.FieldByName('HABILITADO').AsString = 'N' then
  begin
    DBGridUsuarios.Canvas.Brush.Color := clred;
    //DBGridUsuarios.Canvas.Font.Color := clblue;
    DBGridUsuarios.Canvas.Font.Style := DBGridUsuarios.Canvas.Font.Style + [fsBold];
  end;

  DBGridUsuarios.DefaultDrawColumnCell(rect,datacol,column,state);
end;


procedure TFPrincipal.DBGridPermisosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not ((Permisos.FieldByName('USUARIO').IsNull) or (Permisos.FieldByName('USUARIO').AsString= 'BORRADO')) then
  begin
    DBGridPermisos.Canvas.Brush.Color := clMoneyGreen;
    //DBGridPermisos.Canvas.Font.Color := clBlack;
    DBGridPermisos.Canvas.Font.Style := DBGridPermisos.Canvas.Font.Style + [fsBold];
  end;

  DBGridPermisos.DefaultDrawColumnCell(Rect,datacol,column,state);
end;


procedure TFPrincipal.btnSalirClick(Sender: TObject);
begin
  Application.Terminate;
end;


procedure TFPrincipal.DBGridGruposDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not ((GruposP.FieldByName('USUARIO').IsNull) or (GruposP.FieldByName('USUARIO').AsString='BORRADO')) then
  begin
    DBGridGrupos.Canvas.Brush.Color := clMoneyGreen;
    DBGridGrupos.Canvas.Font.Color := clblue;
    DBGridGrupos.Canvas.Font.Style := DBGridGrupos.Canvas.Font.Style + [fsBold];
  end;

  DBGridGrupos.DefaultDrawColumnCell(rect,datacol,column,state);
end;


procedure TFPrincipal.RadioGrupoClick(Sender: TObject);
begin
  if RadioGrupo.ItemIndex = 1 then //muestro todos los grupos del sistema
    GruposP.SQL[4]:=''
  else //muestro solo los grupos del usuario seleccionado
    GruposP.SQL[4]:='and ug.usuario is not null';

  GruposP.Open;
end;


procedure TFPrincipal.ZPermisosCalcFields(DataSet: TDataSet);
begin
  ZPermisos_desc.AsString:= LeftStr(ZPermisosDESCRIPCION.AsString, 100) ;
end;


procedure TFPrincipal.PermisosBeforeClose(DataSet: TDataSet);
begin
  if dm.EKModelo.verificar_transaccion('PERMISOS') then
    btnCancelar.Click;
end;


procedure TFPrincipal.EKLlenarGrupoCambio(valor: String);
begin
  if RadioBtnGrupo.Checked then
  begin
    Usuarios.Close;
    Usuarios.ParamByName('grupo').AsString:=EKLlenarGrupo.SelectClave;
    Usuarios.Open;
  end;
end;


procedure TFPrincipal.actualizar_permisos;
begin
  if usuarios.State = dsBrowse then
  begin
    Permisos.Active := false;
    ZPermisos.Active := false;
    ZPermisos.ParamByName('usuario').AsString := usuarios.fieldbyname('usuario').AsString;
    ZPermisos.ParamByName('aplica').AsString := EKLlenarAplicacion.SelectClave;
    ZPermisos.Active := true;
    Permisos.Active := true;

    gruposp.Active := false;
    gruposp.ParamByName('usu').AsString := usuarios.fieldbyname('usuario').AsString;
    gruposp.open;
  end;
end;


procedure TFPrincipal.UsuariosAfterScroll(DataSet: TDataSet);
begin
  actualizar_permisos;
end;


procedure TFPrincipal.btnGuardarClick(Sender: TObject);
begin
  if dm.EKModelo.finalizar_transaccion('PERMISOS') then
  begin
    DBGridPermisos.OnDblClick:= nil;

    GrupoGuardarCancelar.Enabled:= false;
    GrupoAsignacion.Enabled:= false;
    GrupoABM.Enabled:= true;
    GrupoEditando.Enabled:= true;

    actualizar_permisos;
  end;
end;


procedure TFPrincipal.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion('PERMISOS') then
  begin
    DBGridPermisos.OnDblClick:= nil;

    GrupoGuardarCancelar.Enabled:= false;
    GrupoAsignacion.Enabled:= false;
    GrupoABM.Enabled:= true;
    GrupoEditando.Enabled:= true;

    actualizar_permisos;
  end;
end;


procedure TFPrincipal.CambioVerUsuario;
begin
  if RadioBtnTodos.Checked then
  begin
    Usuarios.Close;
    Usuarios.ParamByName('grupo').AsString:='VER  TODOS';
    Usuarios.Open;
    RadioBtnGrupo.Checked:= False;
    cBoxGrupos.Visible:=False;
  end
  else
  begin
    Usuarios.Close;
    Usuarios.ParamByName('grupo').AsString:= EKLlenarGrupo.SelectClave;
    Usuarios.Open;
    cBoxGrupos.Visible:= True;
    RadioBtnTodos.Checked:= False;
  end;
end;


procedure TFPrincipal.DBGridPermisosDblClick(Sender: TObject);
begin
  if PermisosUSUARIO.IsNull then
  begin
    Permisos.Edit;
    Permisos.FieldByName('usuario').AsString := UsuariosUSUARIO.AsString;
    Permisos.Post;

    ZQ_Permisos.open;
    ZQ_Permisos.InsertRecord([Usuarios.FieldByName('usuario').AsString, Permisos.FieldByName('clave').AsInteger]);
    ZQ_Permisos.Close;
  end
  else
  begin
    Permisos.Edit;
    Permisos.FieldByName('usuario').AsString:='BORRADO';
    Permisos.Post;

    Borrar_permiso.ParamByName('usuario').AsString:=Usuarios.FieldByName('usuario').AsString;
    Borrar_permiso.ParamByName('clave_ap').AsInteger:=Permisos.FieldByName('clave').AsInteger;
    Borrar_permiso.ExecSQL;
  end;
end;



procedure TFPrincipal.btnEditarClick(Sender: TObject);
begin
  if PermisosUSUARIO.IsNull then //Si no tiene persimos el usuario
  begin
    if not dm.EKUsrLogin.PermisoAccion('AGREGARPERMISOS') then //si no esta habilitado para agregar permisos
    begin                                                      //no lo dejo editar
      Application.MessageBox('No esta autorizado a agregar Permisos', 'Error', MB_OK);
      exit;
    end;
  end
  else
  begin
    if not dm.EKUsrLogin.PermisoAccion('BORRARPERMISOS') then //si no esta habilitado para borrar permisos
    begin                                                      //no lo dejo editar
      Application.MessageBox('No esta autorizado a borrar Permisos', 'Error', MB_OK);
      exit;
    end;
  end;

  if not dm.EKModelo.verificar_transaccion('PERMISOS') then
    dm.EKModelo.iniciar_transaccion('PERMISOS', []);

  if dm.EKModelo.verificar_transaccion('PERMISOS') then
  begin
    GrupoEditando.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= true;
    GrupoAsignacion.Enabled:= true;

    DBGridPermisos.OnDblClick:= DBGridPermisosDblClick;
    DBGridPermisos.SetFocus;
  end;
end;


procedure TFPrincipal.bntValorClick(Sender: TObject);
var
  valor : string;
begin
  Cambiar_valor.ParamByName('usuario').AsString:=Usuarios.FieldByName('usuario').AsString;
  Cambiar_valor.ParamByName('clave_ap').AsInteger:=Permisos.FieldByName('clave').AsInteger;
  Cambiar_valor.ParamByName('valor').AsString:= inputbox('Ingrese el valor',valor,'');
  Cambiar_valor.ExecSQL;
end;


procedure TFPrincipal.UsuariosBeforeScroll(DataSet: TDataSet);
begin
  aceptar_cancelar;
end;


procedure TFPrincipal.aceptar_cancelar;
begin
  if dm.EKModelo.verificar_transaccion('PERMISOS') then
  begin
    if Application.MessageBox('Desea Guardar las modificaciones realizadas', 'Confirme', MB_YESNO) = IDYES then
      btnGuardar.Click
    else
      btnCancelar.Click;
  end;
end;


procedure TFPrincipal.UsuariosAfterClose(DataSet: TDataSet);
begin
  aceptar_cancelar;
  Permisos.Close;
  GruposP.Close;
end;


procedure TFPrincipal.DBGridGruposDblClick(Sender: TObject);
begin
  if not dm.EKUsrLogin.PermisoAccion('GRUPOS') then
  begin
    Application.MessageBox('No esta autorizado a modificar pertenencia a Grupos', 'Error', MB_OK);
    exit;
  end;

  if not dm.EKModelo.verificar_transaccion('PERMISOS') then
    dm.EKModelo.iniciar_transaccion('PERMISOS', []);

  if dm.EKModelo.verificar_transaccion('PERMISOS') then
  begin
    GrupoEditando.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= true;
    GrupoAsignacion.Enabled:= false;

    if GruposPUSUARIO.IsNull then
    begin
      alta_grupo.ParamByName('usuario').AsString:=UsuariosUSUARIO.AsString;
      alta_grupo.ParamByName('grupo').AsString:=GruposPGRUPO.AsString;
      alta_grupo.ExecSQL;
    end
    else
    begin
      baja_grupo.ParamByName('usuario').AsString:=UsuariosUSUARIO.AsString;
      baja_grupo.ParamByName('grupo').AsString:=GruposPGRUPO.AsString;
      baja_grupo.ExecSQL;
    end;

    GruposP.Refresh;
  end;
end;


procedure TFPrincipal.btnTodosClick(Sender: TObject);
begin
  Permisos.First;
  while not Permisos.Eof do
  begin
    if (PermisosUSUARIO.IsNull) or (PermisosUSUARIO.AsString = 'BORRADO') then
    begin
      Permisos.Edit;
      Permisos.FieldByName('usuario').AsString := UsuariosUSUARIO.AsString;
      Permisos.Post;

      ZQ_Permisos.open;
      ZQ_Permisos.InsertRecord([Usuarios.FieldByName('usuario').AsString, Permisos.FieldByName('clave').AsInteger]);
      ZQ_Permisos.Close;
    end;

    Permisos.Next;
  end;
  Permisos.First;
end;


procedure TFPrincipal.btnNingunoClick(Sender: TObject);
begin
  Permisos.First;
  while not Permisos.Eof do
  begin
    if PermisosUSUARIO.AsString <> 'BORRADO' then
    begin
      Permisos.Edit;
      Permisos.FieldByName('usuario').AsString:='BORRADO';
      Permisos.Post;

      Borrar_permiso.ParamByName('usuario').AsString:=Usuarios.FieldByName('usuario').AsString;
      Borrar_permiso.ParamByName('clave_ap').AsInteger:=Permisos.FieldByName('clave').AsInteger;
      Borrar_permiso.ExecSQL;
    end;

    Permisos.Next;
  end;
  Permisos.First;
end;


procedure TFPrincipal.btnAbmPermisosClick(Sender: TObject);
begin
  if cBoxAplicacion.Text = '' then
  begin
    Application.MessageBox('No se definio aplicación', 'Atención', MB_OK);
    exit;
  end;

  FAplicaciones := TFAplicaciones.Create(nil);
  FAplicaciones.NAplicacion.Caption:= EKLlenarAplicacion.SelectClave;
  FAplicaciones.Aplicaciones.Close;
  FAplicaciones.Aplicaciones.ParamByName('aplica').AsString:= EKLlenarAplicacion.SelectClave;
  dm.EKModelo.abrir(FAplicaciones.Aplicaciones);
  FAplicaciones.ShowModal;
end;


procedure TFPrincipal.btnAbmUsuariosClick(Sender: TObject);
begin
  if cBoxAplicacion.Text = '' then
  begin
    Application.MessageBox('No se definio aplicación', 'Atención', MB_OK);
    exit;
  end;

  FUsuario := TFUsuario.Create(nil);

//  if BtnVerGrupos.Caption='Ver Permisos de Usuarios' then
//    FUsuario.DBEditUsuario.CharCase:= ecNormal;

  if dm.EKModelo.verificar_transaccion(transaccion_usuario) then
  begin
    Application.MessageBox('Existe una Alta o Modificacion de Usuario activa', 'Atención', MB_OK);
    FUsuario.Visible:= true;
    FUsuario.BringToFront;
    exit;
  end;

  Aplicacion.First;
  Aplicacion.MoveBy(cBoxAplicacion.ItemIndex);
  DM.ConexionDB.User:= dm.EKUsrLogin.usuariodb;
  DM.ConexionDB.Password:= dm.EKUsrLogin.passworddb;
  DM.ConexionDB.HostName:= dm.EKUsrLogin.ip;
  DM.ConexionDB.Database:= AplicacionALIAS_DB.AsString;
  DM.ConexionDB.Disconnect;
  DM.ConexionDB.Connect;

  FUsuario.Usuario.Close;
  FUsuario.Usuario.ParamByName('usr').AsString:= UsuariosUSUARIO.AsString;
  dm.EKModelo.abrir(FUsuario.Usuario);

  FUsuario.database.Caption:= AplicacionALIAS_DB.AsString;
  FUsuario.lee_role.Close;
  FUsuario.lee_role.ParamByName('usr').AsString:=UsuariosDB_USR.AsString;
  FUsuario.lee_role.Open;

  FUsuario.ShowModal;
end;


procedure TFPrincipal.RadioBtnTodosClick(Sender: TObject);
begin
  Usuarios.Close;
  Usuarios.ParamByName('grupo').AsString:='VER  TODOS';
  Usuarios.Open;

  cBoxGrupos.Text:= '';
  EKLlenarGrupo.SelectClave:= '';
end;


procedure TFPrincipal.RadioBtnGrupoClick(Sender: TObject);
begin
  Usuarios.Close;
  Usuarios.ParamByName('grupo').AsString:=EKLlenarGrupo.SelectClave;
  Usuarios.Open;

  cBoxGrupos.ItemIndex:= 0;
  EKLlenarGrupo.SetItem(0);
end;


procedure TFPrincipal.Button1Click(Sender: TObject);
begin
  Usuarios.close;
  if Usuarios.ParamByName('esgrupo').AsString='N' then
  begin
    Usuarios.ParamByName('esgrupo').AsString:='S';
    panelMedioDerecha.Enabled:=false;
    DBGridUsuarios.Columns[0].Title.Caption:='Grupo';
    DBGridGrupos.DataSource:= nil;
    RadioBtnTodos.Checked:= true;
    RadioBtnTodos.OnClick(Sender);

    RadioBtnTodos.Enabled:= false;
    RadioBtnGrupo.Enabled:= false;
    cBoxGrupos.Enabled:= false;
    RadioGrupo.Enabled:= false;
  end
  else
  begin
    Usuarios.ParamByName('esgrupo').AsString:='N';
    panelMedioDerecha.Enabled:=true;
    DBGridUsuarios.Columns[0].Title.Caption:='Usuario';
    DBGridGrupos.DataSource:= DSGurposP;

    RadioBtnTodos.Enabled:= true;
    RadioBtnGrupo.Enabled:= true;
    cBoxGrupos.Enabled:= true;
    RadioGrupo.Enabled:= true;
  end;
  Usuarios.Open;
end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenarPermisos.GuardarConfigColumnas;
  EKOrdenarUsuarios.GuardarConfigColumnas;
  EKOrdenarGrupos.GuardarConfigColumnas;
end;

end.
