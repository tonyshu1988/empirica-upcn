program ImpresoraFiscal;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UUtilidades in 'UUtilidades.pas',
  PrecedimientosHasar in 'PrecedimientosHasar.pas',
  UDM in 'UDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Modulo Impresión Fiscal';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
