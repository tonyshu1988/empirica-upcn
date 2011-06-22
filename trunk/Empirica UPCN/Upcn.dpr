program Upcn;

uses
  Forms,
  SYSUTILS,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDM in 'UDM.pas' {DM: TDataModule},
  UUtilidades in 'UUtilidades.pas',
  UConfiguracion in 'UConfiguracion.pas' {FConfiguracion},
  UABMProveedores in 'UABMProveedores.pas' {FABMProveedores},
  UABM_Cuentas in 'UABM_Cuentas.pas' {FABM_Cuentas},
  UConceptos in 'UConceptos.pas' {FConceptos},
  UMovimientos in 'UMovimientos.pas' {FMovimientos},
  USaldoInicial in 'USaldoInicial.pas' {FSaldoInicial},
  UReportes_Disponibilidades in 'UReportes_Disponibilidades.pas' {FReportes_Disponibilidades},
  UListadoErogaciones in 'UListadoErogaciones.pas' {FListadoErogaciones},
  UConciliacion in 'UConciliacion.pas' {FConciliacion},
  UABM_Autoridad in 'UABM_Autoridad.pas' {FABM_Autoridad},
  UAlta_OrdenPago in 'UAlta_OrdenPago.pas' {FAlta_OrdenPago},
  UABM_MedioCobroPago in 'UABM_MedioCobroPago.pas' {FABM_MedioCobroPago},
  UAuditoria in 'UAuditoria.pas' {FAuditoria},
  UReporteMovProveedor in 'UReporteMovProveedor.pas' {FReporteMovProveedor},
  UImpresionCheques in 'UImpresionCheques.pas' {FImpresionCheques},
  UABM_Tipo_Denominacion in 'UABM_Tipo_Denominacion.pas' {FABM_Tipo_Denominacion};

{$R *.res}

begin
  Application.Initialize;
  CurrencyDecimals := 2;
  CurrencyString := '$';
  DecimalSeparator := '.';
  ThousandSeparator := ',';
  DateSeparator := '/';
  ShortDateFormat := 'dd/MM/yyyy';
  Application.Title := 'Sistema de Libro Banco';
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
