program ShootDown;

uses
  Forms,
  UConfigurar in 'UConfigurar.pas' {FConfiguracion};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFConfiguracion, FConfiguracion);
  Application.Run;
end.
