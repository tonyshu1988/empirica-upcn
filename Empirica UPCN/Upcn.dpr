program Upcn;

uses
  Forms,
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
  UAlta_Ingreso in 'UAlta_Ingreso.pas' {FAlta_Ingreso},
  UAlta_Egreso in 'UAlta_Egreso.pas' {FAlta_Egreso};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
