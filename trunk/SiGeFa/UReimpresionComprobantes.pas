unit UReimpresionComprobantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EKBusquedaAvanzada, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Buttons, ExtCtrls, Grids, DBGrids, StdCtrls, dxBar,
  dxBarExtItems, EKDbSuma, EKOrdenarGrilla, ComCtrls, IniFiles, ShellAPI,
  ZStoredProcedure, ActnList, XPStyleActnCtrls, ActnMan, Menus,
  EKListadoSQL;

type
  TFReimpresionComprobantes = class(TForm)
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
    PanelFiltro: TPanel;
    BtnFiltro_Todos: TSpeedButton;
    BtnFiltro_Fiscal: TSpeedButton;
    BtnFiltro_NoFiscal: TSpeedButton;
    Label39: TLabel;
    ZQ_Comprobante: TZQuery;
    ZQ_ComprobanteCODIGO: TStringField;
    ZQ_ComprobanteID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteFECHA: TDateTimeField;
    ZQ_ComprobantePORC_IVA: TFloatField;
    ZQ_ComprobanteIMPORTEVENTA_: TFloatField;
    ZQ_ComprobanteSUC_: TStringField;
    ZQ_ComprobanteVENDEDOR_: TStringField;
    ZQ_ComprobanteTIVA_: TStringField;
    ZQ_ComprobanteTIPOCOMPR_: TStringField;
    ZQ_ComprobanteCLIENTE_: TStringField;
    ZQ_ComprobanteNOMBRE_TIPO_IVA: TStringField;
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
    ZQ_TipoIVA: TZQuery;
    ZQ_TipoIVAID_TIPO_IVA: TIntegerField;
    ZQ_TipoIVANOMBRE_TIPO_IVA: TStringField;
    ZQ_TipoIVAABREVIATURA: TStringField;
    ZQ_TipoIVADISCRIMINAR: TStringField;
    ZQ_TipoIVALETRA: TStringField;
    ZQ_TipoIVAFISCAL: TStringField;
    ZQ_TipoIVACOEFICIENTE: TFloatField;
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
    ZQ_ComprobantePUNTO_VENTA: TIntegerField;
    ZQ_ComprobanteNUMERO_CPB: TIntegerField;
    btVer: TdxBarLargeButton;
    ZQ_Fiscal: TZQuery;
    ZQ_FiscalIMPORTE_FISCAL: TFloatField;
    btnEliminarComprob: TdxBarLargeButton;
    ZSP_EliminarComprob: TZStoredProc;
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
    ZQ_ComprobanteFECHA_HORA: TDateTimeField;
    procedure EKDbSumaComprobanteSumListChanged(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure BtnFiltro_TodosClick(Sender: TObject);
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
    procedure leerSistemaIni;
    procedure btVerClick(Sender: TObject);
    procedure DBGridComprobantesDblClick(Sender: TObject);
    procedure btnEliminarComprobClick(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure AEliminarExecute(Sender: TObject);
    procedure AVerDetalleExecute(Sender: TObject);
    procedure PopUpItemCambiarCliente1Click(Sender: TObject);
    procedure PopUpItemCambiarCuentaClick(Sender: TObject);
  Private
    { Private declarations }
  Public
    { Public declarations }
  end;

var
  FReimpresionComprobantes: TFReimpresionComprobantes;
  where: string;
  //----Fiscal--------
  Impresora: string;
  Ruta: string;
  puede: Boolean;
implementation

uses UDM, UPrincipal, strutils, EKModelo, Math, UUtilidades, DateUtils;

{$R *.dfm}

procedure TFReimpresionComprobantes.leerSistemaIni;
var
  Ini: TIniFile;
begin
  Ini:= TIniFile.Create('.\SISTEMA.INI');
  Ruta:= Ini.ReadString('IMPRESORA', 'RutaImpresora', '');
  Impresora:= Ini.ReadString('IMPRESORA', 'TipoImpresora', '');
  Ini.Free;
end;


procedure TFReimpresionComprobantes.EKDbSumaComprobanteSumListChanged(
  Sender: TObject);
begin
  lblTotalComprobantes.Caption:= FormatFloat('Total Comprobante: $ ##,###,##0.00 ', EKDbSumaComprobante.SumCollection[0].SumValue);
end;


procedure TFReimpresionComprobantes.btnBuscarClick(Sender: TObject);
begin
  if FReimpresionComprobantes.Active then
  begin
    EKBuscarComprobantes.SQL_Where[0]:= Format('where (c.ID_TIPO_CPB = 11) %s', [where]);

    if PanelFPagoYProd.Visible then
      btVer.Click;

    if EKBuscarComprobantes.Buscar then
      ZQ_Comprobante.First;
  end
end;


procedure TFReimpresionComprobantes.BtnFiltro_TodosClick(Sender: TObject);
begin
  if TSpeedButton(Sender).Name = 'BtnFiltro_Todos' then
  begin
    where:= '';
    DBGridListadoProductos.Columns[GetIndexTitle(DBGridListadoProductos, 'Importe')].FieldName:= 'IMPORTE_VENTA';
  end;

  if TSpeedButton(Sender).Name = 'BtnFiltro_Fiscal' then
  begin
    where:= Format(' and (tfp."IF" = %s)', [QuotedStr('S')]);
    DBGridListadoProductos.Columns[GetIndexTitle(DBGridListadoProductos, 'Importe')].FieldName:= 'IMPORTE_IF';
  end;

  if TSpeedButton(Sender).Name = 'BtnFiltro_NoFiscal' then
  begin
    where:= Format(' and (tfp."IF" = %s)', [QuotedStr('N')]);
    DBGridListadoProductos.Columns[GetIndexTitle(DBGridListadoProductos, 'Importe')].FieldName:= 'IMPORTE_NOFISCAL';
  end;

  btnBuscar.Click;
end;


procedure TFReimpresionComprobantes.FormCreate(Sender: TObject);
var
  anio, mes: integer;
begin
  EKOrdenarFacturas.CargarConfigColumnas;
  EKOrdenarFPago.CargarConfigColumnas;
  EKOrdenarProducto.CargarConfigColumnas;
  cargarConfigPanel;

  where:= '';
  PanelFPagoYProd.Visible:= False;
  mes:= MonthOf(dm.EKModelo.Fecha);
  anio:= YearOf(dm.EKModelo.Fecha);
  ZQ_TipoIVA.Open;
  ZQ_Sucursal.Open;

  TEKCriterioBA(EKBuscarComprobantes.CriteriosBusqueda.Items[0]).TipoComboSQL:= dm.ZQ_SucursalesVisibles;
  TEKCriterioBA(EKBuscarComprobantes.CriteriosBusqueda.Items[1]).Valor:= DateToStr(dm.EKModelo.Fecha);
  //busqueda por comprobante
  if dm.ZQ_SucursalesVisibles.Locate('id_sucursal', VarArrayOf([SUCURSAL_LOGUEO]), []) then
    TEKCriterioBA(EKBuscarComprobantes.CriteriosBusqueda.Items[0]).ItemIndex:= dm.ZQ_SucursalesVisibles.RecNo - 1;

  //Permiso para ver o no los filtros de Fiscal
  PanelFiltro.Visible:= dm.EKUsrLogin.PermisoAccion('NO_FISCAL');
  BtnFiltro_Fiscal.Click;

  btnEliminarComprob.Visible:= ivNever;
  if dm.EKUsrLogin.PermisoAccion('ELIMINAR_FACTURA') then
    btnEliminarComprob.Visible:= ivAlways;

  //Caption en los filtros
  dm.ZQ_Configuracion_Variables.Open;
  dm.ZQ_Configuracion_Variables.Locate('CLAVE', 'etiquetaNF', []);
  BtnFiltro_NoFiscal.Caption:= dm.ZQ_Configuracion_VariablesTEXTO.AsString;
  dm.ZQ_Configuracion_Variables.Locate('CLAVE', 'etiquetaF', []);
  BtnFiltro_Fiscal.Caption:= dm.ZQ_Configuracion_VariablesTEXTO.AsString;
end;


procedure TFReimpresionComprobantes.cargarConfigPanel();
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


procedure TFReimpresionComprobantes.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFReimpresionComprobantes.ZQ_ComprobanteAfterScroll(
  DataSet: TDataSet);
var
  fiscal: string;
  indice: integer;
begin
  if BtnFiltro_Todos.Down then //TODOS
  begin
    fiscal:= 'T';
    indice:= 0;
  end
  else
    if BtnFiltro_Fiscal.Down then //FISCAL
    begin
      fiscal:= 'S';
      indice:= 1;
    end
    else
      if BtnFiltro_NoFiscal.Down then //NO FISCAL
      begin
        fiscal:= 'N';
        indice:= 2;
      end;

  if PanelFPagoYProd.Visible then
  begin
    ZQ_Comprobante_FormaPago.Close;
    ZQ_Comprobante_FormaPago.ParamByName('id_comprobante').AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
    ZQ_Comprobante_FormaPago.ParamByName('fiscal').AsString:= fiscal;
    ZQ_Comprobante_FormaPago.Open;

    ZQ_ComprobanteDetalle.Close;
    ZQ_ComprobanteDetalle.ParamByName('id_comprobante').AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
    ZQ_ComprobanteDetalle.Open;

    EKDbSumaFpago.RecalcAll;
    EKDbSumaProducto.RecalcAll;
    lblTotalFPago.Caption:= FormatFloat('Total Forma Pago: $ ##,###,##0.00 ', EKDbSumaFpago.SumCollection[0].SumValue);
    lblTotalProducto.Caption:= FormatFloat('Total Producto: $ ##,###,##0.00 ', EKDbSumaProducto.SumCollection[indice].SumValue);
  end;
  Application.ProcessMessages;
end;


procedure TFReimpresionComprobantes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EKOrdenarFacturas.GuardarConfigColumnas;
  EKOrdenarProducto.GuardarConfigColumnas;
  EKOrdenarFPago.GuardarConfigColumnas;
  guardarConfigPanel;
end;


procedure TFReimpresionComprobantes.guardarConfigPanel();
begin
  dm.EKIni.EsribirRegEntero('UEstadisticaFacturacion\PanelComprobante.height', PanelComprobante.height);
  dm.EKIni.EsribirRegEntero('UEstadisticaFacturacion\PanelFPagoYProd.height', PanelFPagoYProd.height);
  dm.EKIni.EsribirRegEntero('UEstadisticaFacturacion\PanelFpago.width', PanelFpago.Width);
  dm.EKIni.EsribirRegEntero('UEstadisticaFacturacion\PanelProducto.width', PanelProducto.Width);
end;


procedure TFReimpresionComprobantes.btnImprimirClick(Sender: TObject);
begin
  ZQ_Fiscal.Close;
  ZQ_Fiscal.ParamByName('id').AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
  ZQ_Fiscal.open;

  if (ZQ_ComprobantePUNTO_VENTA.IsNull) and (ZQ_FiscalIMPORTE_FISCAL.AsFloat <= 0) then
  begin
    Application.MessageBox(PChar('No puede reimprimir un Comprobante no fiscal.'), 'Reimpresión de Comprobantes', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  leerSistemaIni();

  if (application.MessageBox(pchar('Desea Reimprimir el Comprobante Nro:' + ZQ_ComprobanteCODIGO.AsString + ' ?'), 'Reimpresión de Comprobantes', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
  begin
    ShellExecute(FPrincipal.Handle, nil, pchar(Ruta), pchar('-l'+IntToStr(ZQ_ComprobanteID_COMPROBANTE.AsInteger)+' -cF'), nil, SW_SHOWNORMAL);
    ZQ_Comprobante.Refresh;
  end
end;


procedure TFReimpresionComprobantes.DBGridComprobantesDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  vencida: string;
begin
  if ZQ_ComprobantePUNTO_VENTA.IsNull then vencida:= 'N' else vencida:= 'S';
  FPrincipal.PintarFilasGrillasConBajas(DBGridComprobantes, vencida, Rect, DataCol, Column, State)
end;


procedure TFReimpresionComprobantes.btVerClick(Sender: TObject);
begin
  PanelFPagoYProd.Visible:= not (PanelFPagoYProd.Visible);
  ZQ_ComprobanteAfterScroll(nil);
end;


procedure TFReimpresionComprobantes.DBGridComprobantesDblClick(Sender: TObject);
begin
  btVer.Click;
end;


procedure TFReimpresionComprobantes.btnEliminarComprobClick(
  Sender: TObject);
begin
  if ZQ_Comprobante.IsEmpty then
    exit;

  if (application.MessageBox(pchar('¿Desea eliminar el comprobante de venta Nº: ' + ZQ_ComprobanteCODIGO.AsString + '?'), 'Eliminación de Comprobante', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.iniciar_transaccion('ELIMINAR COMPROBANTE', []) then
    begin
      try
        begin
          ZSP_EliminarComprob.Close;
          ZSP_EliminarComprob.ParamByName('ID_COMPROBANTE').AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
          ZSP_EliminarComprob.ExecProc;
          if dm.EKModelo.finalizar_transaccion('ELIMINAR COMPROBANTE') then
            Application.MessageBox(PChar('Se eliminó el comprobante Nº: ' + ZQ_ComprobanteCODIGO.AsString), 'Eliminación de Comprobantes', MB_OK + MB_ICONINFORMATION)
          else
            dm.EKModelo.cancelar_transaccion('ELIMINAR COMPROBANTE');

          ZQ_Comprobante.Refresh;
        end
      except
        begin
          Application.MessageBox(PChar('No se pudo eliminar el comprobante Nº:' + ZQ_ComprobanteCODIGO.AsString), 'Eliminación de Comprobantes', MB_OK + MB_ICONINFORMATION);
          dm.EKModelo.cancelar_transaccion('ELIMINAR COMPROBANTE');
          Exit;
        end
      end;
    end;
end;


procedure TFReimpresionComprobantes.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFReimpresionComprobantes.AEliminarExecute(Sender: TObject);
begin
  if (btnEliminarComprob.Enabled) and (btnEliminarComprob.Visible = ivAlways) then
    btnEliminarComprob.Click;
end;

procedure TFReimpresionComprobantes.AVerDetalleExecute(Sender: TObject);
begin
  if btVer.Enabled then
    btVer.Click;
end;


procedure TFReimpresionComprobantes.PopUpItemCambiarCliente1Click(Sender: TObject);
var
  id_comprobante: integer;
begin
  if not dm.EKUsrLogin.PermisoAccion('REIMPCPB_CAMB_CLIENT') then
    exit;

  if ZQ_Comprobante.IsEmpty then
    exit;

  if (application.MessageBox(pchar('¿Desea cambiar el Cliente del comprobante de venta Nº: ' + ZQ_ComprobanteCODIGO.AsString + '?'), 'Cambiar Clienta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.iniciar_transaccion('CAMBIAR CLIENTE COMPROBANTE', []) then
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
              Application.MessageBox(PChar('No se seleccionó ningún cliente'), 'Cambiar Clienta', MB_OK + MB_ICONINFORMATION);
              dm.EKModelo.cancelar_transaccion('CAMBIAR CLIENTE COMPROBANTE');
              Exit;
            end
          end;

          if dm.EKModelo.finalizar_transaccion('CAMBIAR CLIENTE COMPROBANTE') then
            Application.MessageBox(PChar('Se cambio el Cliente del comprobante Nº: ' + ZQ_ComprobanteCODIGO.AsString), 'Cambiar Clienta', MB_OK + MB_ICONINFORMATION)
          else
            dm.EKModelo.cancelar_transaccion('CAMBIAR CLIENTE COMPROBANTE');

          ZQ_Comprobante.Refresh;
          ZQ_Comprobante.Locate('id_comprobante', id_comprobante, [])
        end
      except
        begin
          Application.MessageBox(PChar('No se pudo cambiar el Cliente del comprobante Nº:' + ZQ_ComprobanteCODIGO.AsString), 'Cambiar Clienta', MB_OK + MB_ICONINFORMATION);
          dm.EKModelo.cancelar_transaccion('CAMBIAR CLIENTE COMPROBANTE');
          Exit;
        end
      end;
    end;
end;


procedure TFReimpresionComprobantes.PopUpItemCambiarCuentaClick(Sender: TObject);
var
  id_comp_fpago: integer;
begin
  if not dm.EKUsrLogin.PermisoAccion('REIMPCPB_CAMB_CUENTA') then
    exit;

  if ZQ_Comprobante_FormaPago.IsEmpty then
    exit;

  if (application.MessageBox(pchar('¿Desea cambiar la Cuenta del comprobante de venta Nº: ' + ZQ_ComprobanteCODIGO.AsString + '?'), 'Cambiar Cuenta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.iniciar_transaccion('CAMBIAR CUENTA COMPROBANTE', []) then
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
              dm.EKModelo.cancelar_transaccion('CAMBIAR CUENTA COMPROBANTE');
              Exit;
            end
          end;

          if dm.EKModelo.finalizar_transaccion('CAMBIAR CUENTA COMPROBANTE') then
            Application.MessageBox(PChar('Se cambio la Cuenta del comprobante Nº: ' + ZQ_ComprobanteCODIGO.AsString), 'Cambiar Clienta', MB_OK + MB_ICONINFORMATION)
          else
            dm.EKModelo.cancelar_transaccion('CAMBIAR CUENTA COMPROBANTE');

          ZQ_Comprobante_FormaPago.Refresh;
          ZQ_Comprobante_FormaPago.Locate('id_comprobante', id_comp_fpago, [])
        end
      except
        begin
          Application.MessageBox(PChar('No se pudo cambiar la Cuenta del comprobante Nº:' + ZQ_ComprobanteCODIGO.AsString), 'Cambiar Cuenta', MB_OK + MB_ICONINFORMATION);
          dm.EKModelo.cancelar_transaccion('CAMBIAR CUENTA COMPROBANTE');
          Exit;
        end
      end;
    end;
end;

end.

