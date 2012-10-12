program ImpresoraFiscal;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UUtilidades in 'UUtilidades.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Modulo Impresión Fiscal';
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
