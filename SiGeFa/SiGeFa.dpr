program SiGeFa;

uses
  Forms,
  SYSUTILS,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDM in 'UDM.pas' {DM: TDataModule},
  UUtilidades in 'UUtilidades.pas',
  UAcerca_De in 'UAcerca_De.pas' {FAcerca_De},
  UABMProductos in 'UABMProductos.pas' {FABMProductos},
  UABMClientes in 'UABMClientes.pas' {FABMClientes},
  UABMEmpresas in 'UABMEmpresas.pas' {FABMEmpresas},
  UBuscarPersona in 'UBuscarPersona.pas' {FBuscarPersona};

{$R *.res}

begin
  Application.Initialize;
  CurrencyDecimals := 2;
  DecimalSeparator := '.';
  ThousandSeparator := ',';
  DateSeparator := '/';
  ShortDateFormat := 'dd/MM/yyyy';
  Application.Title := 'SiGeFa';
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
