program Upcn;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDM in 'UDM.pas' {DM: TDataModule},
  UUtilidades in 'UUtilidades.pas',
  UConfiguracion in 'UConfiguracion.pas' {FConfiguracion},
  UABMProveedores in 'UABMProveedores.pas' {FABMProveedores},
  UABM_Cuentas in 'UABM_Cuentas.pas' {FABM_Cuentas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
