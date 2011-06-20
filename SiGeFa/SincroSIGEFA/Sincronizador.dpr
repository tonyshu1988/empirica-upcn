program Sincronizador;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FPrincipal},
  Unit2 in 'Unit2.pas',
  UDM in 'UDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
