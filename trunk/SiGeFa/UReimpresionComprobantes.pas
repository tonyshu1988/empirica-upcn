unit UReimpresionComprobantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EKBusquedaAvanzada, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Buttons, ExtCtrls, Grids, DBGrids, StdCtrls, dxBar,
  dxBarExtItems, EKDbSuma, EKOrdenarGrilla,ComCtrls, IniFiles, ShellAPI;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReimpresionComprobantes: TFReimpresionComprobantes;
  where:String;
  //----Fiscal--------
  Impresora : string;
  Ruta : String;

implementation

uses UDM, UPrincipal,strutils, EKModelo, Math, UUtilidades, DateUtils;

{$R *.dfm}

procedure TFReimpresionComprobantes.leerSistemaIni;
var
  Ini : TIniFile;
begin
  Ini := TIniFile.Create( '.\SISTEMA.INI' );
  Ruta := Ini.ReadString('IMPRESORA', 'RutaImpresora', '');
  Impresora := Ini.ReadString('IMPRESORA', 'TipoImpresora', '');
  Ini.Free;
end;

procedure TFReimpresionComprobantes.EKDbSumaComprobanteSumListChanged(
  Sender: TObject);
begin
  lblTotalComprobantes.Caption := FormatFloat('Total Comprobante: $ ##,###,##0.00 ', EKDbSumaComprobante.SumCollection[0].SumValue);
end;

procedure TFReimpresionComprobantes.btnBuscarClick(Sender: TObject);
begin
 EKBuscarComprobantes.SQL_Where[0]:= Format('where (c.ID_TIPO_CPB = 11) %s', [where]);
    if EKBuscarComprobantes.Buscar then
      ZQ_Comprobante.First;
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
    where:= Format(' and (tfp."IF" = %s)',[QuotedStr('S')]);
    DBGridListadoProductos.Columns[GetIndexTitle(DBGridListadoProductos, 'Importe')].FieldName:= 'IMPORTE_IF';
  end;

  if TSpeedButton(Sender).Name = 'BtnFiltro_NoFiscal' then
  begin
    where:= Format(' and (tfp."IF" = %s)',[QuotedStr('N')]);
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

  mes:= MonthOf(dm.EKModelo.Fecha);
  anio:= YearOf(dm.EKModelo.Fecha);
  ZQ_TipoIVA.Open;
  ZQ_Sucursal.Open;

//Permiso para ver o no los filtros de Fiscal
  PanelFiltro.Visible:= dm.EKUsrLogin.PermisoAccion('NO_FISCAL');
  BtnFiltro_Fiscal.Click;
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
  fiscal: String;
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

  ZQ_Comprobante_FormaPago.Close;
  ZQ_Comprobante_FormaPago.ParamByName('id_comprobante').AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
  ZQ_Comprobante_FormaPago.ParamByName('fiscal').AsString:= fiscal;
  ZQ_Comprobante_FormaPago.Open;

  ZQ_ComprobanteDetalle.Close;
  ZQ_ComprobanteDetalle.ParamByName('id_comprobante').AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
  ZQ_ComprobanteDetalle.Open;

  EKDbSumaFpago.RecalcAll;
  EKDbSumaProducto.RecalcAll;
  lblTotalFPago.Caption := FormatFloat('Total Forma Pago: $ ##,###,##0.00 ', EKDbSumaFpago.SumCollection[0].SumValue);
  lblTotalProducto.Caption := FormatFloat('Total Producto: $ ##,###,##0.00 ', EKDbSumaProducto.SumCollection[indice].SumValue);
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
leerSistemaIni();
if (application.MessageBox(pchar('Desea Reimprimir el Comprobante Nro:'+ZQ_ComprobanteCODIGO.AsString+' ?'), 'Reimpresión de Comprobantes', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
    ShellExecute(FPrincipal.Handle, nil, pchar(Ruta), pchar(' -l '+IntToStr(ZQ_ComprobanteID_COMPROBANTE.AsInteger)+' -i '+Impresora+' -c '+'F'), nil, SW_SHOWNORMAL)
end;

procedure TFReimpresionComprobantes.DBGridComprobantesDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
 var
  vencida:String;
  begin
 if ZQ_ComprobantePUNTO_VENTA.IsNull then vencida:='N' else vencida:='S';
 FPrincipal.PintarFilasGrillasConBajas(DBGridComprobantes,vencida,Rect,DataCol,Column,State)
end;

end.
