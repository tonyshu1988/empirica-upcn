unit UPreventa_Historico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EKBusquedaAvanzada, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Buttons, ExtCtrls, Grids, DBGrids, StdCtrls, dxBar,
  dxBarExtItems, EKDbSuma, EKOrdenarGrilla, ComCtrls, IniFiles, ShellAPI,
  ZStoredProcedure, ActnList, XPStyleActnCtrls, ActnMan, Menus,
  EKListadoSQL, EKMensajeMasDato;

type
  TFPreventa_Historico = class(TForm)
    PanelContenedor: TPanel;
    Panel5: TPanel;
    Panel1: TPanel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PanelComprobante: TPanel;
    lblTotalComprobantes: TLabel;
    DBGridComprobantes: TDBGrid;
    PanelFPagoYProd: TPanel;
    Splitter2: TSplitter;
    PanelProducto: TPanel;
    lblTotalProducto: TLabel;
    DBGridListadoProductos: TDBGrid;
    PanelFpago: TPanel;
    lblTotalFPago: TLabel;
    DBGridFormaPago: TDBGrid;
    ZQ_Comprobante: TZQuery;
    DS_Comprobante: TDataSource;
    ZQ_Comprobante_FormaPago: TZQuery;
    ZQ_Comprobante_FormaPagoID_COMPROB_FP: TIntegerField;
    ZQ_Comprobante_FormaPagoID_COMPROBANTE: TIntegerField;
    ZQ_Comprobante_FormaPagoID_TIPO_FORMAPAG: TIntegerField;
    ZQ_Comprobante_FormaPagoMDCP_FECHA: TDateField;
    ZQ_Comprobante_FormaPagoMDCP_BANCO: TStringField;
    ZQ_Comprobante_FormaPagoMDCP_CHEQUE: TStringField;
    ZQ_Comprobante_FormaPagoIMPORTE: TFloatField;
    ZQ_Comprobante_FormaPagoCONCILIADO: TDateField;
    ZQ_Comprobante_FormaPagoCUENTA_INGRESO: TIntegerField;
    ZQ_Comprobante_FormaPagoCUENTA_EGRESO: TIntegerField;
    ZQ_Comprobante_FormaPagoFECHA_FP: TDateTimeField;
    ZQ_Comprobante_FormaPagoIMPORTE_REAL: TFloatField;
    ZQ_Comprobante_FormaPagoTFORMAPAGO_: TStringField;
    ZQ_Comprobante_FormaPagoIF: TStringField;
    DS_Comprobante_FormaPago: TDataSource;
    ZQ_ComprobanteDetalle: TZQuery;
    ZQ_ComprobanteDetalleID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_ComprobanteDetalleID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteDetalleID_PRODUCTO: TIntegerField;
    ZQ_ComprobanteDetalleID_STOCK_PRODUCTO: TIntegerField;
    ZQ_ComprobanteDetalleDETALLE: TStringField;
    ZQ_ComprobanteDetalleCANTIDAD: TFloatField;
    ZQ_ComprobanteDetalleCANTIDAD_RECIBIDA: TFloatField;
    ZQ_ComprobanteDetalleCANTIDAD_ALMACENADA: TFloatField;
    ZQ_ComprobanteDetalleDETALLE_PROD: TStringField;
    ZQ_ComprobanteDetalleCODIGO_BARRA: TStringField;
    ZQ_ComprobanteDetalleCOLOR: TStringField;
    ZQ_ComprobanteDetalleMEDIDA: TStringField;
    ZQ_ComprobanteDetalleBASE_IMPONIBLE: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_UNITARIO: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_FINAL: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_IVA: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_IF: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_VENTA: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_NOFISCAL: TFloatField;
    ZQ_ComprobanteDetallePORC_IVA: TFloatField;
    ZQ_ComprobanteDetallePORC_DESCUENTO: TFloatField;
    ZQ_ComprobanteDetalleIMPUESTO_INTERNO: TFloatField;
    DS_ComprobanteDetalle: TDataSource;
    EKBuscarComprobantes: TEKBusquedaAvanzada;
    EKDbSumaComprobante: TEKDbSuma;
    EKDbSumaFpago: TEKDbSuma;
    EKDbSumaProducto: TEKDbSuma;
    EKOrdenarFacturas: TEKOrdenarGrilla;
    EKOrdenarFPago: TEKOrdenarGrilla;
    EKOrdenarProducto: TEKOrdenarGrilla;
    Splitter1: TSplitter;
    ZQ_Sucursal: TZQuery;
    ZQ_SucursalID_SUCURSAL: TIntegerField;
    ZQ_SucursalNOMBRE: TStringField;
    ZQ_SucursalDIRECCION: TStringField;
    ZQ_SucursalLOCALIDAD: TStringField;
    ZQ_SucursalCODIGO_POSTAL: TStringField;
    ZQ_SucursalTELEFONO: TStringField;
    ZQ_SucursalEMAIL: TStringField;
    ZQ_SucursalBAJA: TStringField;
    ZQ_SucursalLOGO: TBlobField;
    ZQ_SucursalREPORTE_TITULO: TStringField;
    ZQ_SucursalREPORTE_SUBTITULO: TStringField;
    ZQ_SucursalCOMPROBANTE_TITULO: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON1: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON2: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON3: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON4: TStringField;
    btVer: TdxBarLargeButton;
    btnEliminarComprob: TdxBarLargeButton;
    ZSP_EliminarPreventa: TZStoredProc;
    ZQ_Comprobante_FormaPagoNOMBRE_CUENTA: TStringField;
    ZQ_Comprobante_FormaPagoCODIGO: TStringField;
    ZQ_Comprobante_FormaPagoNRO_CTA_BANCARIA: TStringField;
    ZQ_ComprobanteDetalleNOMBRE_MARCA: TStringField;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    AEliminar: TAction;
    AVerDetalle: TAction;
    PopupMenuFacturas: TPopupMenu;
    PopUpItemCambiarCliente1: TMenuItem;
    PopupMenuFPago: TPopupMenu;
    PopUpItemCambiarCuenta: TMenuItem;
    ZQ_CambiarCliente: TZQuery;
    EKListadoCliente: TEKListadoSQL;
    ZQ_CambiarCuenta: TZQuery;
    EKListadoCuenta: TEKListadoSQL;
    PopUpItemCambiarFPago: TMenuItem;
    EKListadoFPago: TEKListadoSQL;
    ZQ_CambiarFPago: TZQuery;
    ZQ_ComprobanteCODIGO: TStringField;
    ZQ_ComprobanteID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteFECHA_CARGA: TDateTimeField;
    ZQ_ComprobanteFECHA_USADO: TDateField;
    ZQ_ComprobanteFECHA_VENC: TDateField;
    ZQ_ComprobanteIMPORTEVENTA_: TFloatField;
    ZQ_ComprobanteSUC_: TStringField;
    ZQ_ComprobanteVENDEDOR_: TStringField;
    ZQ_ComprobanteTIPOCOMPR_: TStringField;
    ZQ_ComprobanteCLIENTE_: TStringField;
    PanelInfo: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtVencida: TStaticText;
    StaticTxtUtilizada: TStaticText;
    ZQ_Comprobante_idFacturaAsociada: TIntegerField;
    ZQ_CpbVenta: TZQuery;
    ZQ_CpbVentaID_COMPROBANTE: TIntegerField;
    ZQ_CpbVentaCODIGO: TStringField;
    ZQ_CpbVentaFECHA: TDateTimeField;
    ZQ_Comprobante_fechaFacturaAsociada: TDateTimeField;
    ZQ_Comprobante_codigoFacturaAsociada: TStringField;
    PopUpItemCambiarFechaVencimiento1: TMenuItem;
    EKMensajeMasDato1: TEKMensajeMasDato;
    ZQ_CambiarVencim: TZQuery;
    ZQ_ComprobanteOBSERVACION: TStringField;
    procedure EKDbSumaComprobanteSumListChanged(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cargarConfigPanel();
    procedure btnSalirClick(Sender: TObject);
    procedure ZQ_ComprobanteAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure guardarConfigPanel();
    procedure btnImprimirClick(Sender: TObject);
    procedure DBGridComprobantesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btVerClick(Sender: TObject);
    procedure DBGridComprobantesDblClick(Sender: TObject);
    procedure btnEliminarComprobClick(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure AEliminarExecute(Sender: TObject);
    procedure AVerDetalleExecute(Sender: TObject);
    procedure PopUpItemCambiarCliente1Click(Sender: TObject);
    procedure PopUpItemCambiarCuentaClick(Sender: TObject);
    procedure PopUpItemCambiarFPagoClick(Sender: TObject);
    procedure DBGridFormaPagoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridListadoProductosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ZQ_ComprobanteCalcFields(DataSet: TDataSet);
    procedure PopUpItemCambiarFechaVencimiento1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  Private
    { Private declarations }
  Public
    { Public declarations }
  end;

var
  FPreventa_Historico: TFPreventa_Historico;

implementation

uses UDM, UPrincipal, strutils, EKModelo, Math, UUtilidades, DateUtils;

{$R *.dfm}

procedure TFPreventa_Historico.EKDbSumaComprobanteSumListChanged(Sender: TObject);
begin
  lblTotalComprobantes.Caption:= FormatFloat('Total Preventa: $ ##,###,##0.00 ', EKDbSumaComprobante.SumCollection[0].SumValue);
end;


procedure TFPreventa_Historico.btnBuscarClick(Sender: TObject);
begin
  if PanelFPagoYProd.Visible then
    btVer.Click;

  if EKBuscarComprobantes.Buscar then
  begin
    dm.mostrarCantidadRegistro(ZQ_Comprobante, lblCantidadRegistros);
    ZQ_Comprobante.First;
  end;
end;


procedure TFPreventa_Historico.FormCreate(Sender: TObject);
var
  anio, mes: integer;
begin
  EKOrdenarFacturas.CargarConfigColumnas;
  EKOrdenarFPago.CargarConfigColumnas;
  EKOrdenarProducto.CargarConfigColumnas;
  cargarConfigPanel;

  PanelFPagoYProd.Visible:= False;
  mes:= MonthOf(dm.EKModelo.Fecha);
  anio:= YearOf(dm.EKModelo.Fecha);
  ZQ_Sucursal.Open;

  TEKCriterioBA(EKBuscarComprobantes.CriteriosBusqueda.Items[0]).TipoComboSQL:= dm.ZQ_SucursalesVisibles;
  TEKCriterioBA(EKBuscarComprobantes.CriteriosBusqueda.Items[1]).Valor:= DateToStr(dm.EKModelo.Fecha);
  //busqueda por comprobante
  if dm.ZQ_SucursalesVisibles.Locate('id_sucursal', VarArrayOf([SUCURSAL_LOGUEO]), []) then
    TEKCriterioBA(EKBuscarComprobantes.CriteriosBusqueda.Items[0]).ItemIndex:= dm.ZQ_SucursalesVisibles.RecNo - 1;

  btnEliminarComprob.Visible:= ivNever;
  if dm.EKUsrLogin.PermisoAccion('ELIMINAR_PREVENTA') then
    btnEliminarComprob.Visible:= ivAlways;
end;


procedure TFPreventa_Historico.cargarConfigPanel();
var
  aux: Integer;
begin
  aux:= dm.EKIni.LeerRegnumero('UEstadisticaFacturacion\PanelComprobante.height');
  if aux > 0 then
    PanelComprobante.height:= aux;

  aux:= dm.EKIni.LeerRegnumero('UEstadisticaFacturacion\PanelFPagoYProd.height');
  if aux > 0 then
    PanelFPagoYProd.height:= aux;

  aux:= dm.EKIni.LeerRegnumero('UEstadisticaFacturacion\PanelFpago.width');
  if aux > 0 then
    PanelFpago.Width:= aux;

  aux:= dm.EKIni.LeerRegnumero('UEstadisticaFacturacion\PanelProducto.width');
  if aux > 0 then
    PanelProducto.Width:= aux;
end;


procedure TFPreventa_Historico.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFPreventa_Historico.ZQ_ComprobanteAfterScroll(DataSet: TDataSet);
begin
  if PanelFPagoYProd.Visible then
  begin
    ZQ_Comprobante_FormaPago.Close;
    ZQ_Comprobante_FormaPago.ParamByName('id_comprobante').AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
    ZQ_Comprobante_FormaPago.Open;

    ZQ_ComprobanteDetalle.Close;
    ZQ_ComprobanteDetalle.ParamByName('id_comprobante').AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
    ZQ_ComprobanteDetalle.Open;

    EKDbSumaFpago.RecalcAll;
    EKDbSumaProducto.RecalcAll;
    lblTotalFPago.Caption:= FormatFloat('Total Seña: $ ##,###,##0.00 ', EKDbSumaFpago.SumCollection[0].SumValue);
    lblTotalProducto.Caption:= FormatFloat('Total Producto: $ ##,###,##0.00 ', EKDbSumaProducto.SumCollection[0].SumValue);
  end;
//  Application.ProcessMessages;
end;


procedure TFPreventa_Historico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenarFacturas.GuardarConfigColumnas;
  EKOrdenarProducto.GuardarConfigColumnas;
  EKOrdenarFPago.GuardarConfigColumnas;
  guardarConfigPanel;
end;


procedure TFPreventa_Historico.guardarConfigPanel();
begin
  dm.EKIni.EsribirRegEntero('UEstadisticaFacturacion\PanelComprobante.height', PanelComprobante.height);
  dm.EKIni.EsribirRegEntero('UEstadisticaFacturacion\PanelFPagoYProd.height', PanelFPagoYProd.height);
  dm.EKIni.EsribirRegEntero('UEstadisticaFacturacion\PanelFpago.width', PanelFpago.Width);
  dm.EKIni.EsribirRegEntero('UEstadisticaFacturacion\PanelProducto.width', PanelProducto.Width);
end;


procedure TFPreventa_Historico.btnImprimirClick(Sender: TObject);
begin
//
end;


procedure TFPreventa_Historico.DBGridComprobantesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not (ZQ_ComprobanteFECHA_USADO.IsNull) then   //si esta usada
    DBGridComprobantes.Canvas.Brush.Color:= StaticTxtUtilizada.Color
  else
    if (ZQ_ComprobanteFECHA_VENC.AsDateTime < dm.EKModelo.Fecha) then //si esta vencida
      DBGridComprobantes.Canvas.Brush.Color:= StaticTxtVencida.Color;

  if (gdFocused in State) or (gdSelected in State) then
    DBGridComprobantes.Canvas.Font.Style:= DBGridComprobantes.Canvas.Font.Style + [fsBold];
  DBGridComprobantes.Canvas.Font.Color:= clBlack;
  DBGridComprobantes.DefaultDrawColumnCell(rect, datacol, column, state);

  FPrincipal.PintarFilasGrillas(DBGridComprobantes, Rect, DataCol, Column, State);
end;


procedure TFPreventa_Historico.btVerClick(Sender: TObject);
begin
  PanelFPagoYProd.Visible:= not (PanelFPagoYProd.Visible);
  ZQ_ComprobanteAfterScroll(nil);
end;


procedure TFPreventa_Historico.DBGridComprobantesDblClick(Sender: TObject);
begin
  btVer.Click;
end;


procedure TFPreventa_Historico.btnEliminarComprobClick(
  Sender: TObject);
begin
  if ZQ_Comprobante.IsEmpty then
    exit;

  if not ZQ_Comprobante_idFacturaAsociada.IsNull then
  begin
    Application.MessageBox(PChar('No se puede realizar la acción porque tiene un comprobante de venta asociado (Código CPB: '+ZQ_Comprobante_codigoFacturaAsociada.AsString+')'), 'Cambiar Cuenta', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  if (application.MessageBox(pchar('¿Desea eliminar la Preventa Nº: ' + ZQ_ComprobanteCODIGO.AsString + '?'), 'Eliminar Preventa', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.iniciar_transaccion('ELIMINAR PREVENTA', []) then
    begin
      try
        begin
          ZSP_EliminarPreventa.Close;
          ZSP_EliminarPreventa.ParamByName('ID_PREVENTA').AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
          ZSP_EliminarPreventa.ExecProc;
          if dm.EKModelo.finalizar_transaccion('ELIMINAR PREVENTA') then
            Application.MessageBox(PChar('Se eliminó la Preventa Nº: ' + ZQ_ComprobanteCODIGO.AsString), 'Eliminar Preventa', MB_OK + MB_ICONINFORMATION)
          else
            dm.EKModelo.cancelar_transaccion('ELIMINAR PREVENTA');

          ZQ_Comprobante.Refresh;
        end
      except
        begin
          Application.MessageBox(PChar('No se pudo eliminar la Preventa Nº:' + ZQ_ComprobanteCODIGO.AsString), 'Eliminar Preventa', MB_OK + MB_ICONINFORMATION);
          dm.EKModelo.cancelar_transaccion('ELIMINAR PREVENTA');
          Exit;
        end
      end;
    end;
end;


procedure TFPreventa_Historico.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;


procedure TFPreventa_Historico.AEliminarExecute(Sender: TObject);
begin
  if (btnEliminarComprob.Enabled) and (btnEliminarComprob.Visible = ivAlways) then
    btnEliminarComprob.Click;
end;


procedure TFPreventa_Historico.AVerDetalleExecute(Sender: TObject);
begin
  if btVer.Enabled then
    btVer.Click;
end;


procedure TFPreventa_Historico.PopUpItemCambiarCliente1Click(Sender: TObject);
var
  transaccion_temp: string;
  id_comprobante: integer;
begin
  if (ZQ_Comprobante.IsEmpty) then
    exit;

  if not dm.EKUsrLogin.PermisoAccion('HISTPREV_CAMB_CLIENT') then
  begin
    Application.MessageBox(PChar('No tiene permisos para realizar esta acción'), 'Cambiar Cliente', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  if not ZQ_Comprobante_idFacturaAsociada.IsNull then
  begin
    Application.MessageBox(PChar('No se puede realizar la acción porque tiene un comprobante de venta asociado (Código CPB: '+ZQ_Comprobante_codigoFacturaAsociada.AsString+')'), 'Cambiar Cliente', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  transaccion_temp:= 'CAMBIAR CLIENTE PREVENTA';
  if (application.MessageBox(pchar('¿Desea cambiar el Cliente de la Preventa Nº: ' + ZQ_ComprobanteCODIGO.AsString + '?'), 'Cambiar Cliente', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.iniciar_transaccion(transaccion_temp, []) then
    begin
      try
        begin
          if EKListadoCliente.Buscar then
          begin
            if EKListadoCliente.Resultado <> '' then
            begin
              id_comprobante:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
              ZQ_CambiarCliente.Close;
              ZQ_CambiarCliente.ParamByName('id_cliente').AsInteger:= StrToInt(EKListadoCliente.Resultado);
              ZQ_CambiarCliente.ParamByName('id_comprobante').AsInteger:= id_comprobante;
              ZQ_CambiarCliente.ExecSQL;
            end
            else
            begin
              Application.MessageBox(PChar('No se seleccionó ningún cliente'), 'Cambiar Cliente', MB_OK + MB_ICONINFORMATION);
              dm.EKModelo.cancelar_transaccion(transaccion_temp);
              Exit;
            end
          end;

          if dm.EKModelo.finalizar_transaccion(transaccion_temp) then
            Application.MessageBox(PChar('Se cambio el Cliente de la Preventa Nº: ' + ZQ_ComprobanteCODIGO.AsString), 'Cambiar Cliente', MB_OK + MB_ICONINFORMATION)
          else
            dm.EKModelo.cancelar_transaccion(transaccion_temp);

          ZQ_Comprobante.Refresh;
          ZQ_Comprobante.Locate('id_comprobante', id_comprobante, [])
        end
      except
        begin
          Application.MessageBox(PChar('No se pudo cambiar el Cliente de la Preventa Nº:' + ZQ_ComprobanteCODIGO.AsString), 'Cambiar Cliente', MB_OK + MB_ICONINFORMATION);
          dm.EKModelo.cancelar_transaccion(transaccion_temp);
          Exit;
        end
      end;
    end;
end;


procedure TFPreventa_Historico.PopUpItemCambiarCuentaClick(Sender: TObject);
var
  transaccion_temp: string;
  id_comp_fpago: integer;
begin
  if ZQ_Comprobante_FormaPago.IsEmpty then
    exit;

  if not dm.EKUsrLogin.PermisoAccion('HISTPREV_CAMB_CUENTA') then
  begin
    Application.MessageBox(PChar('No tiene permisos para realizar esta acción'), 'Cambiar Cuenta', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  if not ZQ_Comprobante_idFacturaAsociada.IsNull then
  begin
    Application.MessageBox(PChar('No se puede realizar la acción porque tiene un comprobante de venta asociado (Código CPB: '+ZQ_Comprobante_codigoFacturaAsociada.AsString+')'), 'Cambiar Cuenta', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  transaccion_temp:= 'CAMBIAR CUENTA PREVENTA';
  if (application.MessageBox(pchar('¿Desea cambiar la Cuenta de la Preventa Nº: ' + ZQ_ComprobanteCODIGO.AsString + '?'), 'Cambiar Cuenta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.iniciar_transaccion(transaccion_temp, []) then
    begin
      try
        begin
          if EKListadoCuenta.Buscar then
          begin
            if EKListadoCuenta.Resultado <> '' then
            begin
              id_comp_fpago:= ZQ_Comprobante_FormaPagoID_COMPROB_FP.AsInteger;
              ZQ_CambiarCuenta.Close;
              ZQ_CambiarCuenta.ParamByName('id_cuenta').AsInteger:= StrToInt(EKListadoCuenta.Resultado);
              ZQ_CambiarCuenta.ParamByName('id_comp_fpago').AsInteger:= id_comp_fpago;
              ZQ_CambiarCuenta.ExecSQL;
            end
            else
            begin
              Application.MessageBox(PChar('No se seleccionó ningúna Cuenta'), 'Cambiar Cuenta', MB_OK + MB_ICONINFORMATION);
              dm.EKModelo.cancelar_transaccion(transaccion_temp);
              Exit;
            end
          end;

          if dm.EKModelo.finalizar_transaccion(transaccion_temp) then
            Application.MessageBox(PChar('Se cambio la Cuenta de la Preventa Nº: ' + ZQ_ComprobanteCODIGO.AsString), 'Cambiar Clienta', MB_OK + MB_ICONINFORMATION)
          else
            dm.EKModelo.cancelar_transaccion(transaccion_temp);

          ZQ_Comprobante_FormaPago.Refresh;
          ZQ_Comprobante_FormaPago.Locate('id_comprobante', id_comp_fpago, [])
        end
      except
        begin
          Application.MessageBox(PChar('No se pudo cambiar la Cuenta de la Preventa Nº:' + ZQ_ComprobanteCODIGO.AsString), 'Cambiar Cuenta', MB_OK + MB_ICONINFORMATION);
          dm.EKModelo.cancelar_transaccion(transaccion_temp);
          Exit;
        end
      end;
    end;
end;


procedure TFPreventa_Historico.PopUpItemCambiarFPagoClick(Sender: TObject);
var
  transaccion_temp: string;
  id_comp_fpago: integer;
begin
  if ZQ_Comprobante_FormaPago.IsEmpty then
    exit;

  if not dm.EKUsrLogin.PermisoAccion('HISTPREV_CAMB_FPAGO') then
  begin
    Application.MessageBox(PChar('No tiene permisos para realizar esta acción'), 'Cambiar Forma Pago', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  if not ZQ_Comprobante_idFacturaAsociada.IsNull then
  begin
    Application.MessageBox(PChar('No se puede realizar la acción porque tiene un comprobante de venta asociado (Código CPB: '+ZQ_Comprobante_codigoFacturaAsociada.AsString+')'), 'Cambiar Forma Pago', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  transaccion_temp:= 'CAMBIAR FPAGO PREVENTA';
  if (application.MessageBox(pchar('¿Desea cambiar la Forma de Pago de la Preventa Nº: ' + ZQ_ComprobanteCODIGO.AsString + '?'), 'Cambiar Forma Pago', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.iniciar_transaccion(transaccion_temp, []) then
    begin
      try
        begin
          EKListadoFPago.SQL[3]:= '';
          if ZQ_Comprobante_FormaPagoIF.AsString = 'S' then
            EKListadoFPago.SQL[3]:= format('and f."IF" = %s', [QuotedStr('S')]);

          if EKListadoFPago.Buscar then
          begin
            if EKListadoFPago.Resultado <> '' then
            begin
              id_comp_fpago:= ZQ_Comprobante_FormaPagoID_COMPROB_FP.AsInteger;
              ZQ_CambiarFPago.Close;
              ZQ_CambiarFPago.ParamByName('id_tipo_fpago').AsInteger:= StrToInt(EKListadoFPago.Resultado);
              ZQ_CambiarFPago.ParamByName('id_comp_fpago').AsInteger:= id_comp_fpago;
              ZQ_CambiarFPago.ExecSQL;
            end
            else
            begin
              Application.MessageBox(PChar('No se seleccionó ningúna Forma de Pago'), 'Cambiar Forma Pago', MB_OK + MB_ICONINFORMATION);
              dm.EKModelo.cancelar_transaccion(transaccion_temp);
              Exit;
            end
          end;

          if dm.EKModelo.finalizar_transaccion(transaccion_temp) then
            Application.MessageBox(PChar('Se cambio la Forma de Pago de la Preventa Nº: ' + ZQ_ComprobanteCODIGO.AsString), 'Cambiar Forma Pago', MB_OK + MB_ICONINFORMATION)
          else
            dm.EKModelo.cancelar_transaccion(transaccion_temp);

          ZQ_Comprobante_FormaPago.Refresh;
          ZQ_Comprobante_FormaPago.Locate('id_comprobante', id_comp_fpago, [])
        end
      except
        begin
          Application.MessageBox(PChar('No se pudo cambiar la Forma de Pago de la Preventa Nº:' + ZQ_ComprobanteCODIGO.AsString), 'Cambiar Forma Pago', MB_OK + MB_ICONINFORMATION);
          dm.EKModelo.cancelar_transaccion(transaccion_temp);
          Exit;
        end
      end;
    end;
end;


procedure TFPreventa_Historico.DBGridFormaPagoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridFormaPago, Rect, DataCol, Column, State);
end;


procedure TFPreventa_Historico.DBGridListadoProductosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridListadoProductos, Rect, DataCol, Column, State);
end;


procedure TFPreventa_Historico.ZQ_ComprobanteCalcFields(DataSet: TDataSet);
begin
  ZQ_CpbVenta.Close;
  ZQ_CpbVenta.ParamByName('id_preventa').AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
  ZQ_CpbVenta.Open;

  ZQ_Comprobante_idFacturaAsociada.Clear;
  ZQ_Comprobante_fechaFacturaAsociada.Clear;
  ZQ_Comprobante_codigoFacturaAsociada.Clear;
  if not ZQ_CpbVenta.IsEmpty then
  begin
    ZQ_Comprobante_idFacturaAsociada.AsInteger:= ZQ_CpbVentaID_COMPROBANTE.AsInteger;
    ZQ_Comprobante_fechaFacturaAsociada.AsDateTime:= ZQ_CpbVentaFECHA.AsDateTime;
    ZQ_Comprobante_codigoFacturaAsociada.AsString:= ZQ_CpbVentaCODIGO.AsString;
  end;
end;


procedure TFPreventa_Historico.PopUpItemCambiarFechaVencimiento1Click(Sender: TObject);
var
  transaccion_temp: string;
  id_comprobante: integer;
  fechaVen: TDate;
begin
  if (ZQ_Comprobante.IsEmpty) then
    exit;

  if not dm.EKUsrLogin.PermisoAccion('HISTPREV_CAMB_VENCIM') then
  begin
    Application.MessageBox(PChar('No tiene permisos para realizar esta acción'), 'Cambiar Fecha Vencimiento', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  if not ZQ_Comprobante_idFacturaAsociada.IsNull then
  begin
    Application.MessageBox(PChar('No se puede realizar la acción porque tiene un comprobante de venta asociado (Código CPB: '+ZQ_Comprobante_codigoFacturaAsociada.AsString+')'), 'Cambiar Cliente', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  transaccion_temp:= 'CAMBIAR VENCIMIENTO PREVENTA';
  if (application.MessageBox(pchar('¿Desea cambiar el Vencimiento de la Preventa Nº: ' + ZQ_ComprobanteCODIGO.AsString + '?'), 'Cambiar Fecha Vencimiento', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.iniciar_transaccion(transaccion_temp, []) then
    begin
      try
        begin
          EKMensajeMasDato1.setFecha(dm.EKModelo.Fecha);
          if EKMensajeMasDato1.mostrarFormulario then
          begin
            fechaVen:= EncodeDate(YearOf(EKMensajeMasDato1.DatoFecha),MonthOf(EKMensajeMasDato1.DatoFecha),DayOf(EKMensajeMasDato1.DatoFecha));
            id_comprobante:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
            ZQ_CambiarVencim.Close;
            ZQ_CambiarVencim.ParamByName('fecha_vencim').AsDate:= fechaVen;
            ZQ_CambiarVencim.ParamByName('id_comprobante').AsInteger:= id_comprobante;
            ZQ_CambiarVencim.ExecSQL;
          end
          else
          begin
            Application.MessageBox(PChar('No se seleccionó ninguna Fecha'), 'Cambiar Fecha Vencimiento', MB_OK + MB_ICONINFORMATION);
            dm.EKModelo.cancelar_transaccion(transaccion_temp);
            Exit;
          end;

          if dm.EKModelo.finalizar_transaccion(transaccion_temp) then
            Application.MessageBox(PChar('Se cambio el Vencimiento de la Preventa Nº: ' + ZQ_ComprobanteCODIGO.AsString), 'Cambiar Fecha Vencimiento', MB_OK + MB_ICONINFORMATION)
          else
            dm.EKModelo.cancelar_transaccion(transaccion_temp);

          ZQ_Comprobante.Refresh;
          ZQ_Comprobante.Locate('id_comprobante', id_comprobante, [])
        end
      except
        begin
          Application.MessageBox(PChar('No se pudo cambiar el Vencimiento de la Preventa Nº:' + ZQ_ComprobanteCODIGO.AsString), 'Cambiar Fecha Vencimiento', MB_OK + MB_ICONINFORMATION);
          dm.EKModelo.cancelar_transaccion(transaccion_temp);
          Exit;
        end
      end;
    end;
end;

procedure TFPreventa_Historico.FormActivate(Sender: TObject);
begin
  if not ZQ_Comprobante.IsEmpty then
    ZQ_Comprobante.Refresh;
end;

end.

