program Sincronizador;

uses
  Forms,
  SYSUTILS,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UUtil_Procesos in 'UUtil_Procesos.pas',
  UDM in 'UDM.pas' {DM: TDataModule},
  UConfiguracion in 'UConfiguracion.pas' {FConfiguracion};

{$R *.res}

begin
  Application.Initialize;
  DecimalSeparator := '.';
  ThousandSeparator := ',';
  Application.Title := 'Sincronizador SiGeFa';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
