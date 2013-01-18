program SiGeFa;

uses
  Forms,
  SYSUTILS,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDM in 'UDM.pas' {DM: TDataModule},
  UUtilidades in 'UUtilidades.pas',
  UAcerca_De in 'UAcerca_De.pas' {FAcerca_De},
  UABMProductos in 'UABMProductos.pas' {FABMProductos},
  UABMEmpresas in 'UABMEmpresas.pas' {FABMEmpresas},
  UBuscarPersona in 'UBuscarPersona.pas' {FBuscarPersona},
  UABM_ArticuloMedida in 'UABM_ArticuloMedida.pas' {FABM_ArticuloMedida},
  UABM_Marcas in 'UABM_Marcas.pas' {FABM_Marcas},
  UABM_TipoArticulo in 'UABM_TipoArticulo.pas' {FABM_TipoArticulo},
  UABM_TipoEmpresa in 'UABM_TipoEmpresa.pas' {FABM_TipoEmpresa},
  UABM_Sucursal in 'UABM_Sucursal.pas' {FABM_Sucursal},
  UABM_SucursalPosicion in 'UABM_SucursalPosicion.pas' {FABM_SucursalPosicion},
  UABM_ProductoStock in 'UABM_ProductoStock.pas' {FABM_ProductoStock},
  UABM_Personas in 'UABM_Personas.pas' {FABM_Personas},
  UABM_Articulo in 'UABM_Articulo.pas' {FABM_Articulo},
  UImprimirEtiquetas in 'UImprimirEtiquetas.pas' {FImprimirEtiquetas},
  UMailBandeja in 'UMailBandeja.pas' {FMailBandeja},
  UMailConfigurar in 'UMailConfigurar.pas' {FMailConfigurar},
  UMailEnviar in 'UMailEnviar.pas' {FMailEnviar},
  USeleccionarSucursal in 'USeleccionarSucursal.pas' {FSeleccionarSucursal},
  UPanelNotificacion in 'UPanelNotificacion.pas' {FPanelNotificacion},
  UABM_Colores in 'UABM_Colores.pas' {FABM_Colores},
  UABM_TipoIVA in 'UABM_TipoIVA.pas' {FABM_TipoIVA},
  UABM_TipoFormaPago in 'UABM_TipoFormaPago.pas' {FABM_TipoFormaPago},
  UABM_TipoComprobante in 'UABM_TipoComprobante.pas' {FABM_TipoComprobante},
  UABM_Cuentas in 'UABM_Cuentas.pas' {FABM_Cuentas},
  UABM_Precios in 'UABM_Precios.pas' {FABM_Precios},
  UCajero in 'UCajero.pas' {FCajero},
  UBuscarProducto in 'UBuscarProducto.pas' {FBuscarProducto},
  UImpresion_Comprobantes in 'UImpresion_Comprobantes.pas' {FImpresion_Comprobantes},
  UMovimientosInternos in 'UMovimientosInternos.pas' {FMovimientosInternos},
  UABM_TipoMovimiento in 'UABM_TipoMovimiento.pas' {FABM_TipoMovimiento},
  UTransferirStock in 'UTransferirStock.pas' {FTransferirStock},
  UBuscarProductoStock in 'UBuscarProductoStock.pas' {FBuscarProductoStock},
  UEstadisticaMovInternos in 'UEstadisticaMovInternos.pas' {FEstadisticaMovInternos},
  UCuentaCorriente in 'UCuentaCorriente.pas' {FCuentaCorriente},
  UEstadisticaDisponibilidades in 'UEstadisticaDisponibilidades.pas' {FEstadisticaDisponibilidades},
  UArqueo_Caja in 'UArqueo_Caja.pas' {FArqueo_Caja},
  UCargarPreventa in 'UCargarPreventa.pas' {FPreventa},
  UEstadisticaStock in 'UEstadisticaStock.pas' {FEstadisticaStock},
  UABM_CPB_Recibo in 'UABM_CPB_Recibo.pas' {FABM_CPB_Recibo},
  UABM_CPB_OrdenPago in 'UABM_CPB_OrdenPago.pas' {FABM_CPB_OrdenPago},
  UABM_CPB_Remito in 'UABM_CPB_Remito.pas' {FABM_CPB_Remito},
  UABM_CPB_Presupuesto in 'UABM_CPB_Presupuesto.pas' {FABM_CPB_Presupuesto},
  UABM_CPB_NotaPedido in 'UABM_CPB_NotaPedido.pas' {FABM_CPB_NotaPedido},
  UABM_Preventa in 'UABM_Preventa.pas' {FABM_Preventa},
  UCuentaCorriente_Proveedor in 'UCuentaCorriente_Proveedor.pas' {FCuentaCorriente_Proveedor},
  UABM_CPB_FacturaCompra in 'UABM_CPB_FacturaCompra.pas' {FABM_CPB_FacturaCompra},
  UAuditoria in 'UAuditoria.pas' {FAuditoria},
  UConfiguracion in 'UConfiguracion.pas' {FConfiguracion},
  UABM_CPB_Transferencia in 'UABM_CPB_Transferencia.pas' {FABM_CPB_Transferencia},
  UVerImagen in 'UVerImagen.pas' {FVerImagen},
  UABM_CPB_Devolucion in 'UABM_CPB_Devolucion.pas' {FABM_CPB_Devolucion},
  UDebugging in 'UDebugging.pas' {FDebugging},
  UEstadisticaVentas in 'UEstadisticaVentas.pas' {FEstadisticaVentas},
  RegExpr in 'RegExpr.pas',
  UReimpresionComprobantes in 'UReimpresionComprobantes.pas' {FReimpresionComprobantes},
  UBuscarComprobante in 'UBuscarComprobante.pas' {FBuscarComprobante},
  UABM_PersonasPuntos in 'UABM_PersonasPuntos.pas' {FABM_PersonasPuntos},
  UConsulta_Precios in 'UConsulta_Precios.pas' {FConsulta_Precios},
  UCompararStock in 'UCompararStock.pas' {FCompararStock},
  UOP_ABMMedico in 'UOP_ABMMedico.pas' {FOP_ABMMedico},
  UOP_ABMObraSocial in 'UOP_ABMObraSocial.pas' {FOP_ABMObraSocial},
  UPreventa_Historico in 'UPreventa_Historico.pas' {FPreventa_Historico},
  UFichaEmpleado in 'UFichaEmpleado.pas' {FFichaEmpleado},
  UOP_CargarOrden in 'UOP_CargarOrden.pas' {FOP_CargarOrden},
  UOP_ABMOrden_Tecnica in 'UOP_ABMOrden_Tecnica.pas' {FOP_ABM_OrdenTecnica},
  UOP_ABMLaboratorio in 'UOP_ABMLaboratorio.pas' {FOP_ABMLaboratorio},
  UCuentaCorrienteProveedor in 'UCuentaCorrienteProveedor.pas' {FCuentaCorrienteProveedor},
  UABM_CPB_FacturaObraSocial in 'UABM_CPB_FacturaObraSocial.pas' {FABM_CPB_FacturaObraSocial},
  UOP_BuscarProductosOS in 'UOP_BuscarProductosOS.pas' {FOP_BuscarProductosOS};

{$R *.res}

begin
  Application.Initialize;
  CurrencyDecimals := 2;
  CurrencyString := '$';
  CurrencyFormat := 2;
  DecimalSeparator := '.';
  ThousandSeparator := ',';
  DateSeparator := '/';
  ShortDateFormat := 'dd/MM/yyyy';
  Application.Title := 'SiGeFa - Sistema de Gestión y Facturación';
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
