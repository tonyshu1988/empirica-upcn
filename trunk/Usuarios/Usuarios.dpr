program Usuarios;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDM in 'UDM.pas' {DM: TDataModule},
  Aplicaciones in 'Aplicaciones.pas' {FAplicaciones},
  Usuario in 'Usuario.pas' {FUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Usuarios';
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
