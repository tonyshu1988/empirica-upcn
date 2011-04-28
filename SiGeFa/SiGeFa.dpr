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
  UBuscarPersona in 'UBuscarPersona.pas' {FBuscarPersona},
  UABM_ArticuloMedida in 'UABM_ArticuloMedida.pas' {FABM_ArticuloMedida},
  UABM_Marcas in 'UABM_Marcas.pas' {FABM_Marcas},
  UABM_TipoArticulo in 'UABM_TipoArticulo.pas' {FABM_TipoArticulo},
  UABM_TipoEmpresa in 'UABM_TipoEmpresa.pas' {FABM_TipoEmpresa},
  UABM_Sucursal in 'UABM_Sucursal.pas' {FABM_Sucursal},
  UABM_SucursalPosicion in 'UABM_SucursalPosicion.pas' {FABM_SucursalPosicion},
  UABM_ProductoStock in 'UABM_ProductoStock.pas' {FABM_ProductoStock},
  UABM_ProductoPosicion in 'UABM_ProductoPosicion.pas' {FABM_ProductoPosicion},
  UABM_Personas in 'UABM_Personas.pas' {FABM_Personas},
  UABM_Articulo in 'UABM_Articulo.pas' {FABM_Articulo},
  UImprimirEtiquetas in 'UImprimirEtiquetas.pas' {FImprimirEtiquetas},
  UMailBandeja in 'UMailBandeja.pas' {FMailBandeja},
  UMailConfigurar in 'UMailConfigurar.pas' {FMailConfigurar},
  UMailEnviar in 'UMailEnviar.pas' {FMailEnviar},
  USeleccionarSucursal in 'USeleccionarSucursal.pas' {FSeleccionarSucursal};

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
