unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ActnMan, ActnCtrls, Menus, XPStyleActnCtrls, ActnList,
  ComCtrls, ImgList, ExtCtrls, jpeg, QPrinters,
  Grids, DBGrids, EKImageList32, EKVentanas, EKInformacion;

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
    ABMClientes1: TMenuItem;
    Empresas1: TMenuItem;
    ABMEmpresas1: TMenuItem;
    AABMProductos: TAction;
    AABMClientes: TAction;
    AABMEmpresas: TAction;
    Iconos_Barra_32: TImageList;
    AABM_Articulo: TAction;
    AABM_TipoArticulo: TAction;
    AABM_Marcas: TAction;
    AABM_ArticuloMedida: TAction;
    AABM_TipoEmpresa: TAction;
    AABM_Sucursal: TAction;
    AABM_SucursalPosicion: TAction;
    AABM_ProductoStock: TAction;
    AABM_ProductoPosicion: TAction;
    AABM_Personas: TAction;
    ABM_Articulos: TMenuItem;
    ABMMarcas1: TMenuItem;
    ABMTipoArticulo1: TMenuItem;
    ABMArticulosMedida1: TMenuItem;
    ABMProductoStock1: TMenuItem;
    ABMProductoPosicion1: TMenuItem;
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
    procedure CambiarContraseniaClick(Sender: TObject);
    procedure SalirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure AConfigImpresoraExecute(Sender: TObject);
    procedure AAcerca_deExecute(Sender: TObject);
    procedure AABMProductosExecute(Sender: TObject);
    procedure AABMClientesExecute(Sender: TObject);
    procedure AABMEmpresasExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AABM_ArticuloExecute(Sender: TObject);
    procedure AABM_TipoArticuloExecute(Sender: TObject);
    procedure AABM_MarcasExecute(Sender: TObject);
    procedure AABM_ArticuloMedidaExecute(Sender: TObject);
    procedure AABM_TipoEmpresaExecute(Sender: TObject);
    procedure AABM_SucursalExecute(Sender: TObject);
    procedure AABM_SucursalPosicionExecute(Sender: TObject);
    procedure AABM_ProductoStockExecute(Sender: TObject);
    procedure AABM_ProductoPosicionExecute(Sender: TObject);
    procedure AABM_PersonasExecute(Sender: TObject);
    procedure AImprimirEtiquetaExecute(Sender: TObject);
    procedure ABandejaMailExecute(Sender: TObject);
    procedure AConfigMailExecute(Sender: TObject);
    procedure AEnviarMailExecute(Sender: TObject);
  private
    { Private declarations }
  public
    baja, activo: Tcolor;
    procedure PintarFilasGrillas(grilla: TDBGrid; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PintarFilasGrillasConBajas(grilla: TDBGrid; valor: string; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    function  cerrar_ventana(transaccion: string): boolean;
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

Uses UDM, UAcerca_De, UABMClientes, UABMEmpresas, UABMProductos,
  UABM_Articulo, UABM_TipoArticulo, UABM_Marcas, UABM_ArticuloMedida,
  UABM_TipoEmpresa, UABM_Sucursal, UABM_SucursalPosicion,
  UABM_ProductoStock, UABM_ProductoPosicion, UABM_Personas,
  UImprimirEtiquetas, UMailBandeja, USeleccionarSucursal, UMailConfigurar,
  UMailEnviar;


procedure TFPrincipal.FormCreate(Sender: TObject);
var
  i: integer;
begin
  SUCURSAL_LOGUEO:= -1;

  if DM.EKUsrLogin.PermisoAccionValorGrupo('ACCESO') <> nil then
  begin
    sucursales:= DM.EKUsrLogin.PermisoAccionValorGrupo('ACCESO'); //obtengo todas las sucursales
  end;                                                         //a las q tiene acceso el usuario

  if Length(sucursales) = 1 then //si hay una sola sucursal
  begin
    SUCURSAL_LOGUEO:= strtoint(sucursales[0].valor);
  end
  else  //si hay mas de una sucursal abro la pantalla para q seleccione una
  begin
    FSeleccionarSucursal:= TFSeleccionarSucursal.Create(nil);
    FSeleccionarSucursal.ShowModal;
  end;

  if SUCURSAL_LOGUEO = -1 then  //si no selecciono ninguna sucursal o el
    Application.Terminate;      //usuario no tiene asignada ninguna salgo del sistema

  dm.configMailSucursal(SUCURSAL_LOGUEO);

  baja:= $006A6AFF;    //ROJO = color de los registros dados de baja
  activo:= $00FB952F;  //AZUL = color de los registro comunes
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
begin
  if (gdFocused in State) or (gdSelected in State) then
   begin
     grilla.Canvas.Font.Color := clwhite;
     grilla.Canvas.Brush.Color:= $00FB952F; //ver de poner el color en la configuracion
     grilla.Canvas.Font.Style := grilla.Canvas.Font.Style + [fsBold];
   end;
  grilla.DefaultDrawColumnCell(rect,datacol,column,state);
end;


//PROCEDURE PARA PINTAR LAS FILAS DE LA GRILLA QUE SE PASA POR PARAMETROS.
//Y SI EL PARAMETRO VALOR ES 'S' SE PINTA LA FILA EN ROJO
procedure TFPrincipal.PintarFilasGrillasConBajas(grilla: TDBGrid; valor:string; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (valor = 'S') then //si el registro esta dado de baja
  begin
    grilla.Canvas.Font.Color := clBlack;
    grilla.Canvas.Font.Style := grilla.Canvas.Font.Style + [fsBold];
    grilla.Canvas.Brush.Color:= baja;
    if (gdFocused in State) or (gdSelected in State) then
      grilla.Canvas.Font.Color := clwhite;
  end
  else  //si el registro es comun
  begin
    if (gdFocused in State) or (gdSelected in State) then
    begin
      grilla.Canvas.Font.Color := clwhite;
      grilla.Canvas.Font.Style := grilla.Canvas.Font.Style + [fsBold];
      grilla.Canvas.Brush.Color:= activo;
    end;
  end;
  grilla.DefaultDrawColumnCell(rect,datacol,column,state);
end;


procedure TFPrincipal.CambiarContraseniaClick(Sender: TObject);
var i:integer;
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
  EKVentanas1.Abrir(Sender, TFABMClientes, FABMClientes);
end;


procedure TFPrincipal.AABMEmpresasExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABMEmpresas, FABMEmpresas);
end;

procedure TFPrincipal.AABM_ArticuloExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_Articulo, FABM_Articulo);
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

procedure TFPrincipal.AABM_SucursalPosicionExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_SucursalPosicion, FABM_SucursalPosicion);
end;

procedure TFPrincipal.AABM_ProductoStockExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_ProductoStock, FABM_ProductoStock);
end;

procedure TFPrincipal.AABM_ProductoPosicionExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_ProductoPosicion, FABM_ProductoPosicion);
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

end.
