program Upcn;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDM in 'UDM.pas' {DM: TDataModule},
  UUtilidades in 'UUtilidades.pas',
  UConfiguracion in 'UConfiguracion.pas' {FConfiguracion};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
