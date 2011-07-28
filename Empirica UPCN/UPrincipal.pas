unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ActnMan, ActnCtrls, Menus, XPStyleActnCtrls, ActnList,
  ComCtrls, ImgList, ExtCtrls, EKVentanas, EKImageList32;

type
  TFPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    ActionManager1: TActionManager;
    MainMenu1: TMainMenu;
    ActionToolBar1: TActionToolBar;
    Sistema: TMenuItem;
    PanelTapa: TPanel;
    PlandeCuentas: TMenuItem;
    CambiarContrasea1: TMenuItem;
    Salir2: TMenuItem;
    Disponibilidades: TMenuItem;
    Movimientos: TMenuItem;
    EKVentanas1: TEKVentanas;
    ABMConceptos1: TMenuItem;
    SaldosIniciales1: TMenuItem;
    CuentasBancariasyCajas1: TMenuItem;
    Conciliacion1: TMenuItem;
    ABMProveedores1: TMenuItem;
    ABMMovimientos1: TMenuItem;
    Reportes1: TMenuItem;
    Disponibilidades1: TMenuItem;
    AConfiguracion: TAction;
    Configuracion1: TMenuItem;
    Iconos_Menu_16: TEKImageList32;
    Iconos_Menu_32: TEKImageList32;
    AABMProveedores: TAction;
    AABM_Cuentas: TAction;
    Iconos_Barra_32: TImageList;
    AConceptos: TAction;
    AMovimientos: TAction;
    ASaldoInicial: TAction;
    ARep_LibroBanco: TAction;
    ListadoErogaciones1: TMenuItem;
    ARepList_Erogacion: TAction;
    ARep_Conciliacion: TAction;
    ARep_SaldoInicial: TAction;
    AABM_Autoridad: TAction;
    ABMAutoridad1: TMenuItem;
    AABM_Medio: TAction;
    ABMMedioCobroPago1: TMenuItem;
    AAuditoria: TAction;
    AAuditoria1: TMenuItem;
    ARepMovProveedor: TAction;
    MovimientoProveedor1: TMenuItem;
    AImprimirCheque: TAction;
    ImprimirCheque1: TMenuItem;
    AABM_TipoDenom: TAction;
    ABMTipoDenominacin1: TMenuItem;
    procedure ALiquidacionExecute(Sender: TObject);
    procedure CambiarContrasea1Click(Sender: TObject);
    procedure Salir2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure AConfiguracionExecute(Sender: TObject);
    procedure AABMProveedoresExecute(Sender: TObject);
    procedure AABM_CuentasExecute(Sender: TObject);
    procedure AConceptosExecute(Sender: TObject);
    procedure AMovimientosExecute(Sender: TObject);
    procedure ASaldoInicialExecute(Sender: TObject);
    procedure ARep_LibroBancoExecute(Sender: TObject);
    procedure ARepList_ErogacionExecute(Sender: TObject);
    procedure ARep_ConciliacionExecute(Sender: TObject);
    procedure AABM_AutoridadExecute(Sender: TObject);
    procedure AABM_MedioExecute(Sender: TObject);
    procedure AAuditoriaExecute(Sender: TObject);
    procedure ARepMovProveedorExecute(Sender: TObject);
    procedure AImprimirChequeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AABM_TipoDenomExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

Uses UDM, UConfiguracion, UABMProveedores, UABM_Cuentas,
  UConceptos, UUtilidades, UMovimientos, USaldoInicial,
  UReportes_Disponibilidades, UListadoErogaciones, UConciliacion,
  UABM_Autoridad, UABM_MedioCobroPago, UAuditoria, UReporteMovProveedor,
  UImpresionCheques, UABM_Tipo_Denominacion;

function salir_de_programa:boolean;
begin
  result := true;
  if dm.EKModelo.hay_transaccion then
  begin
    if Application.MessageBox('Hay transacciones abiertas, Desea cerrar igualmente la aplicaci�n', 'Atenci�n', MB_YESNO ) = IDYES then
      ExitProcess(0)
    else
      result := false;
  end
  else
    ExitProcess(0);
end;

procedure TFPrincipal.ALiquidacionExecute(Sender: TObject);
begin
//  ISVentanas1.Abrir(Sender, TFLiquidacion, FLiquidacion);
end;

procedure TFPrincipal.CambiarContrasea1Click(Sender: TObject);
begin
  dm.EKUsrLogin1.CambiarClave;   
end;

procedure TFPrincipal.Salir2Click(Sender: TObject);
begin
  salir_de_programa;
end;

procedure TFPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 { if not salir_de_programa then
    CanClose := false;       }
end;

procedure TFPrincipal.AConfiguracionExecute(Sender: TObject);
begin
  Application.CreateForm(TFConfiguracion, FConfiguracion);
  FConfiguracion.ShowModal;
  FConfiguracion.Release;
end;

procedure TFPrincipal.AABMProveedoresExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABMProveedores, FABMProveedores);
end;

procedure TFPrincipal.AABM_CuentasExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_Cuentas, FABM_Cuentas);
end;

procedure TFPrincipal.AConceptosExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFConceptos, FConceptos);
end;

procedure TFPrincipal.AMovimientosExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFMovimientos, FMovimientos);
end;

procedure TFPrincipal.ASaldoInicialExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFSaldoInicial, FSaldoInicial);
end;

procedure TFPrincipal.ARep_LibroBancoExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFReportes_Disponibilidades, FReportes_Disponibilidades);
end;

procedure TFPrincipal.ARepList_ErogacionExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFListadoErogaciones, FListadoErogaciones);
end;

procedure TFPrincipal.ARep_ConciliacionExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFConciliacion, FConciliacion);
end;

procedure TFPrincipal.AABM_AutoridadExecute(Sender: TObject);
begin
  EKVentanas1.Abrir(Sender, TFABM_Autoridad, FABM_Autoridad);
end;

procedure TFPrincipal.AABM_MedioExecute(Sender: TObject);
begin
 EKVentanas1.Abrir(Sender, TFABM_MedioCobroPago, FABM_MedioCobroPago);
end;

procedure TFPrincipal.AAuditoriaExecute(Sender: TObject);
begin
 EKVentanas1.Abrir(Sender, TFAuditoria, FAuditoria);
end;

procedure TFPrincipal.ARepMovProveedorExecute(Sender: TObject);
begin
 EKVentanas1.Abrir(Sender, TFReporteMovProveedor, FReporteMovProveedor);
end;

procedure TFPrincipal.AImprimirChequeExecute(Sender: TObject);
begin
 EKVentanas1.Abrir(Sender, TFImpresionCheques, FImpresionCheques);
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
Caption:=Application.Title;
end;

procedure TFPrincipal.AABM_TipoDenomExecute(Sender: TObject);
begin
 EKVentanas1.Abrir(Sender, TFABM_Tipo_Denominacion, FABM_Tipo_Denominacion);
end;

end.