unit UEstadisticaFacturacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, EKBusquedaAvanzada,
  StdCtrls, EKDbSuma, EKOrdenarGrilla, Buttons, mxNativeExcel, mxExport;

type
  TFEstadisticasFacturacion = class(TForm)
    PanelContenedor: TPanel;
    DS_Comprobante: TDataSource;
    Panel1: TPanel;
    DBGridComprobantes: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    ZQ_Comprobante_FormaPago: TZQuery;
    ZQ_ComprobanteDetalle: TZQuery;
    ZQ_Comprobante: TZQuery;
    DS_Comprobante_FormaPago: TDataSource;
    DS_ComprobanteDetalle: TDataSource;
    ZQ_ComprobanteDetalleID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_ComprobanteDetalleID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteDetalleID_PRODUCTO: TIntegerField;
    ZQ_ComprobanteDetalleDETALLE: TStringField;
    ZQ_ComprobanteDetalleCANTIDAD: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_FINAL: TFloatField;
    ZQ_ComprobanteDetallePORC_DESCUENTO: TFloatField;
    ZQ_ComprobanteDetalleBASE_IMPONIBLE: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_UNITARIO: TFloatField;
    ZQ_ComprobanteDetalleIMPUESTO_INTERNO: TFloatField;
    ZQ_ComprobanteDetallePORC_IVA: TFloatField;
    ZQ_ComprobanteDetalleCANTIDAD_RECIBIDA: TFloatField;
    ZQ_ComprobanteDetalleCANTIDAD_ALMACENADA: TFloatField;
    ZQ_ComprobanteDetalleID_STOCK_PRODUCTO: TIntegerField;
    ZQ_ComprobanteDetalleIMPORTE_VENTA: TFloatField;
    lblComprobantes: TLabel;
    EKDbSuma1: TEKDbSuma;
    EKBuscarComprobantes: TEKBusquedaAvanzada;
    DBGridListadoProductos: TDBGrid;
    DBGridFormaPago: TDBGrid;
    ZQ_TipoIVA: TZQuery;
    ZQ_TipoIVAID_TIPO_IVA: TIntegerField;
    ZQ_TipoIVANOMBRE_TIPO_IVA: TStringField;
    ZQ_TipoIVAABREVIATURA: TStringField;
    ZQ_TipoIVADISCRIMINAR: TStringField;
    ZQ_TipoIVALETRA: TStringField;
    ZQ_TipoIVAFISCAL: TStringField;
    ZQ_TipoIVACOEFICIENTE: TFloatField;
    Panel5: TPanel;
    ZQ_ComprobanteDetalleIMPORTE_IVA: TFloatField;
    ZQ_ComprobanteDetalleDETALLE_PROD: TStringField;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    EKOrdenarGrilla2: TEKOrdenarGrilla;
    EKOrdenarGrilla3: TEKOrdenarGrilla;
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
    ZQ_Comprobante_FormaPagoIF: TStringField;
    PanelFiltro: TPanel;
    BtnFiltro_Todos: TSpeedButton;
    BtnFiltro_Fiscal: TSpeedButton;
    BtnFiltro_NoFiscal: TSpeedButton;
    Label39: TLabel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnExportarXLS: TdxBarLargeButton;
    btnEditarGrilla: TdxBarLargeButton;
    btnProcesarImportes: TdxBarLargeButton;
    btnSeleccionar: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btBuscarGoogle: TdxBarLargeButton;
    btImprimirEtiquetas: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    mxDBGridExport: TmxDBGridExport;
    mxNativeExcel1: TmxNativeExcel;
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure ZQ_ComprobanteAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure EKDbSuma1SumListChanged(Sender: TObject);
    procedure btnExportarXLSClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure AplicarFiltro(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEstadisticasFacturacion: TFEstadisticasFacturacion;
  where:String;

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFEstadisticasFacturacion.btnSalirClick(Sender: TObject);
begin
  close;
end;

procedure TFEstadisticasFacturacion.btnBuscarClick(Sender: TObject);
begin
  EKBuscarComprobantes.SQL_Where[0]:= Format('where (c.ID_TIPO_CPB=11) %s',[where]);
  EKBuscarComprobantes.Buscar;
end;


procedure TFEstadisticasFacturacion.ZQ_ComprobanteAfterScroll(DataSet: TDataSet);
var
  filtro: String;
begin
  if where <> '' then
  begin
    if BtnFiltro_NoFiscal.Down then
      filtro:= Format('(id_comprobante = %d) and ("IF" = %s)', [ZQ_ComprobanteID_COMPROBANTE.AsInteger,QuotedStr('N')])
    else
      if BtnFiltro_Fiscal.Down then
        filtro:= Format('(id_comprobante = %d) and ("IF" = %s)', [ZQ_ComprobanteID_COMPROBANTE.AsInteger,QuotedStr('S')]);
  end
  else
   filtro:= Format('(id_comprobante = %d)',[ZQ_ComprobanteID_COMPROBANTE.AsInteger]);

  ZQ_Comprobante_FormaPago.Filtered:=False;
  ZQ_Comprobante_FormaPago.Filter:=filtro;
  ZQ_Comprobante_FormaPago.Filtered:=True;

  ZQ_ComprobanteDetalle.Filtered:=False;
  ZQ_ComprobanteDetalle.Filter:=Format('(id_comprobante = %d)',[ZQ_ComprobanteID_COMPROBANTE.AsInteger]);
  ZQ_ComprobanteDetalle.Filtered:=True;
end;


procedure TFEstadisticasFacturacion.FormCreate(Sender: TObject);
begin
  EKOrdenarGrilla1.CargarConfigColumnas;
  EKOrdenarGrilla2.CargarConfigColumnas;
  EKOrdenarGrilla3.CargarConfigColumnas;

  ZQ_Comprobante_FormaPago.Open;
  ZQ_ComprobanteDetalle.Open;

  //Permiso para ver o no los filtros de Fiscal
//  PanelFiltro.Visible:= dm.EKUsrLogin.PermisoAccion('NO_FISCAL');
//  BtnFiltro_Fiscal.Click;
end;


procedure TFEstadisticasFacturacion.EKDbSuma1SumListChanged(Sender: TObject);
begin
  lblComprobantes.Caption := FormatFloat('Total Comprobantes: $ ##,###,##0.00 ', EKDbSuma1.SumCollection[0].SumValue);
end;


procedure TFEstadisticasFacturacion.AplicarFiltro(Sender: TObject);
begin
  if TSpeedButton (Sender).Name = 'BtnFiltro_Todos' then
  begin
    where:='';
  end;

  if TSpeedButton (Sender).Name = 'BtnFiltro_Fiscal' then
  begin
    where:=Format(' and (tfp."IF" = %s)',[QuotedStr('S')]);
  end;

  if TSpeedButton (Sender).Name = 'BtnFiltro_NoFiscal' then
  begin
    where:=Format(' and (tfp."IF" = %s)',[QuotedStr('N')]);
  end;

  EKBuscarComprobantes.SQL_Where[0]:= Format('where (c.ID_TIPO_CPB=11) %s', [where]);
  EKBuscarComprobantes.Buscar;
end;

procedure TFEstadisticasFacturacion.btnExportarXLSClick(Sender: TObject);
begin
  if not ZQ_Comprobante.IsEmpty then
  begin
    //dm.prepararParaExportar(true);
    mxDBGridExport.Select;
    //dm.prepararParaExportar(false);
  end
end;


procedure TFEstadisticasFacturacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EKOrdenarGrilla1.GuardarConfigColumnas;
  EKOrdenarGrilla2.GuardarConfigColumnas;
  EKOrdenarGrilla3.GuardarConfigColumnas;
end;


procedure TFEstadisticasFacturacion.DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(TDBGrid(Sender), Rect, DataCol, Column, State);
end;

end.
