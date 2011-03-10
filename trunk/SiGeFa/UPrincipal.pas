unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ActnMan, ActnCtrls, Menus, XPStyleActnCtrls, ActnList,
  ComCtrls, ImgList, ExtCtrls, ISVentanas, jpeg, QPrinters,
  Grids, DBGrids, EKImageList32, EKVentanas;

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
    TDXBar_Imagenes_Grandes: TImageList;
    Acciones_Menu: TImageList;
    Acciones_Barra: TImageList;
    TDXBar_Imagenes_Chicas: TImageList;
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
    procedure CambiarContraseniaClick(Sender: TObject);
    procedure SalirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure AConfiguracionExecute(Sender: TObject);
    procedure AConfigImpresoraExecute(Sender: TObject);
    procedure AAcerca_deExecute(Sender: TObject);
    procedure AABMProductosExecute(Sender: TObject);
    procedure AABMClientesExecute(Sender: TObject);
    procedure AABMEmpresasExecute(Sender: TObject);
  private
    { Private declarations }
  public
    procedure PintarFilasGrillas(grilla: TDBGrid; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

Uses UDM, UAcerca_De, UABMClientes, UABMEmpresas, UABMProductos;

  
function salir_de_programa:boolean;
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


procedure TFPrincipal.CambiarContraseniaClick(Sender: TObject);
begin
  dm.EKUsrLogin.CambiarClave;
end;


procedure TFPrincipal.SalirClick(Sender: TObject);
begin
  salir_de_programa;
end;


procedure TFPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if not salir_de_programa then
    CanClose := false;
end;


procedure TFPrincipal.AConfiguracionExecute(Sender: TObject);
begin
//   Application.CreateForm(TFConfiguracionGeneral,FConfiguracionGeneral);
//   FConfiguracionGeneral.ShowModal;
//   FConfiguracionGeneral.Release;
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


//procedure TFPrincipal.AProveedoresExecute(Sender: TObject);
//begin
//  ISVentanas1.Abrir(Sender,TFABM_Proveedores,FABM_Proveedores);
//end;


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

end.
