unit UReporteMovProveedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, Grids, DBGrids, ExtCtrls, dxBar,
  dxBarExtItems, EKVistaPreviaQR, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, EKBusquedaAvanzada, DBCtrls, StdCtrls, EKDbSuma;

type
  TFReporteMovProveedor = class(TForm)
    Panel1: TPanel;
    DBGridMercaderiaVendida: TDBGrid;
    RepMovProveedores: TQuickRep;
    QRBand12: TQRBand;
    QRLabel11: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText14: TQRDBText;
    QRBand16: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr4: TQRExpr;
    QRBand17: TQRBand;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    ChildBand5: TQRChildBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QRBand19: TQRBand;
    QRLabel39: TQRLabel;
    QRExpr2: TQRExpr;
    QRBand18: TQRBand;
    EKVistaPreviaQR1: TEKVistaPreviaQR;
    ZQ_MovimientoProveedores: TZQuery;
    ZQ_MovimientoProveedoresFECHA_MDC: TDateField;
    ZQ_MovimientoProveedoresCODIGO_CORTO: TStringField;
    ZQ_MovimientoProveedoresNOMBRE_MEDIO_COBRO_PAGO: TStringField;
    ZQ_MovimientoProveedoresIMPORTE: TFloatField;
    ZQ_MovimientoProveedoresAPELLIDO_Y_NOMBRE: TStringField;
    ZQ_MovimientoProveedoresNOMBRE_CONCEPTO: TStringField;
    ZQ_MovimientoProveedoresDESCRIPCION: TStringField;
    DS_MovimientoProveedores: TDataSource;
    ZQ_MovimientoProveedoresNRO_PROVEEDOR: TIntegerField;
    dxBarABM: TdxBarManager;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnBuscar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    ZQ_MovimientoProveedoresie_Cuenta: TStringField;
    ZQ_MovimientoProveedoresFECHA: TDateField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    EKBusquedaAvanzada: TEKBusquedaAvanzada;
    RepMovProveedores_Reporte_Titulo_2: TQRLabel;
    RepMovProveedores_Reporte_Titulo_1: TQRLabel;
    ZQ_MovimientoProveedoresID_CUENTA_INGRESO: TIntegerField;
    ZQ_MovimientoProveedoresID_CUENTA_EGRESO: TIntegerField;
    ZQ_Cuentas: TZQuery;
    ZQ_CuentasID_CUENTA: TIntegerField;
    ZQ_CuentasNOMBRE_CUENTA: TStringField;
    ZQ_CuentasMEDIO_DE_PAGO: TStringField;
    ZQ_CuentasNRO_CUENTA_BANCARIA: TStringField;
    ZQ_CuentasULTIMO_NRO: TIntegerField;
    ZQ_CuentasAUTONUMERAR: TStringField;
    ZQ_CuentasMEDIO_POR_DEFECTO: TIntegerField;
    QRDBText4: TQRDBText;
    QRLabel10: TQRLabel;
    ZQ_Objeto_Movimiento: TZQuery;
    ZQ_Objeto_MovimientoID_OBJETO_MOVIMIENTO: TIntegerField;
    ZQ_Objeto_MovimientoDESCRIPCION: TStringField;
    ZQ_Objeto_MovimientoCODIGO_CORTO: TStringField;
    ZQ_Medio: TZQuery;
    ZQ_MedioID_MEDIO: TIntegerField;
    ZQ_MedioCODIGO_CORTO: TStringField;
    ZQ_MedioNOMBRE_MEDIO_COBRO_PAGO: TStringField;
    ZQ_Concepto: TZQuery;
    ZQ_ConceptoID_CONCEPTO: TIntegerField;
    ZQ_ConceptoCOD_CORTO: TStringField;
    ZQ_ConceptoNOMBRE_CONCEPTO: TStringField;
    ZQ_ConceptoBAJA: TStringField;
    ZQ_ConceptoIMPORTE: TFloatField;
    ZQ_MovimientoProveedores_debe: TFloatField;
    ZQ_MovimientoProveedores_haber: TFloatField;
    ZQ_MovimientoProveedoresID_MEDIO: TIntegerField;
    ZQ_MovimientoProveedoresID_CONCEPTO: TIntegerField;
    ZQ_Proveedor: TZQuery;
    ZQ_ProveedorNRO_PROVEEDOR: TIntegerField;
    ZQ_ProveedorAPELLIDO_Y_NOMBRE: TStringField;
    ZQ_ProveedorNOMBRE_FANTASIA: TStringField;
    ZQ_ProveedorDIRECCION: TStringField;
    ZQ_ProveedorTIPO_DOCUMENTO: TStringField;
    ZQ_ProveedorNRO_DOCUMENTO: TStringField;
    ZQ_ProveedorTELEFONOS: TStringField;
    ZQ_ProveedorEMAIL: TStringField;
    ZQ_ProveedorBAJA: TStringField;
    ZQ_ProveedorDESCRIPCION: TStringField;
    ZQ_ProveedorEDITABLE: TStringField;
    ZQ_ProveedorID_CUENTA: TIntegerField;
    PanelDatosProveedor: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    DBTxtRazonSocial: TDBText;
    DBTxtNomFan: TDBText;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Panel2: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Label4: TLabel;
    Label8: TLabel;
    DS_Proveedor: TDataSource;
    ZQ_BuscarProveedor: TZQuery;
    ZQ_BuscarProveedorNRO_PROVEEDOR: TIntegerField;
    ZQ_BuscarProveedorAPELLIDO_Y_NOMBRE: TStringField;
    ZQ_BuscarProveedorNOMBRE_FANTASIA: TStringField;
    ZQ_BuscarProveedorDIRECCION: TStringField;
    ZQ_BuscarProveedorTIPO_DOCUMENTO: TStringField;
    ZQ_BuscarProveedorNRO_DOCUMENTO: TStringField;
    ZQ_BuscarProveedorTELEFONOS: TStringField;
    ZQ_BuscarProveedorEMAIL: TStringField;
    ZQ_BuscarProveedorBAJA: TStringField;
    ZQ_BuscarProveedorDESCRIPCION: TStringField;
    ZQ_BuscarProveedorEDITABLE: TStringField;
    ZQ_BuscarProveedorID_CUENTA: TIntegerField;
    ZQ_MovimientoProveedoresNRO_ORDEN_STRING: TStringField;
    ZQ_MovimientoProveedoresANULADO: TStringField;
    pResumen: TPanel;
    lblDebe: TLabel;
    ZQ_MovimientoProveedoresCONCILIADO: TStringField;
    PanelFiltrosBusqueda: TPanel;
    GroupBox1: TGroupBox;
    lblFiltroMedio: TLabel;
    lblFiltroConcepto: TLabel;
    lblFiltroTipoMov: TLabel;
    lblFiltroEmiDesde: TLabel;
    lblFiltroEmiHasta: TLabel;
    lblFiltroPDDesde: TLabel;
    lblFiltroPDHasta: TLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel14: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    ZQ_MovimientoProveedoresNRO_CHEQUE_TRANSF: TStringField;
    ZQ_TipoProveedor: TZQuery;
    ZQ_TipoProveedorID_TIPO: TIntegerField;
    ZQ_TipoProveedorDESCRIPCION: TStringField;
    ZQ_MovimientoProveedoresID_TIPO: TIntegerField;
    ZQ_Tipo_Denominacion: TZQuery;
    ZQ_Tipo_DenominacionID_TIPO: TIntegerField;
    ZQ_Tipo_DenominacionDESCRIPCION: TStringField;
    ZQ_MovimientoProveedorestipo_denominacion: TStringField;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    EKDbSuma: TEKDbSuma;
    procedure btnBuscarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure ZQ_MovimientoProveedoresCalcFields(DataSet: TDataSet);
    procedure EKDbSumaSumListChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReporteMovProveedor: TFReporteMovProveedor;

implementation

uses UDM;

{$R *.dfm}

procedure TFReporteMovProveedor.btnBuscarClick(Sender: TObject);
begin
  if EKBusquedaAvanzada.Buscar then
  begin

    ZQ_Proveedor.Close;
    if EKBusquedaAvanzada.ParametrosSeleccionados1[0] <> ''  then
    begin
      ZQ_Proveedor.ParamByName('id_prov').AsInteger:= StrToInt(EKBusquedaAvanzada.ParametrosSeleccionados1[0]);
      ZQ_Proveedor.Open;

      PanelDatosProveedor.visible := true;
   end
   else
      PanelDatosProveedor.visible := false;

    lblFiltroMedio.Caption:= 'Medio: '+EKBusquedaAvanzada.ParametrosSelecReales1[1];
    lblFiltroConcepto.Caption:= 'Concepto: '+EKBusquedaAvanzada.ParametrosSelecReales1[2];
    lblFiltroTipoMov.Caption:= 'Tipo  Movimiento: '+EKBusquedaAvanzada.ParametrosSelecReales1[3];
    lblFiltroEmiDesde.Caption:= 'F. Emisión Desde: '+EKBusquedaAvanzada.ParametrosSelecReales1[4];
    lblFiltroEmiHasta.Caption:= 'F. Emisión Hasta: '+EKBusquedaAvanzada.ParametrosSelecReales1[5];
    lblFiltroPDDesde.Caption:= 'F. PD Desde: '+EKBusquedaAvanzada.ParametrosSelecReales1[6];
    lblFiltroPDHasta.Caption:= 'F. PD Hasta: '+EKBusquedaAvanzada.ParametrosSelecReales1[7];
  end
end;


procedure TFReporteMovProveedor.btnImprimirClick(Sender: TObject);
begin
  if ZQ_MovimientoProveedores.IsEmpty then
    exit;

  dm.TitulosReportes(RepMovProveedores, CuentaNro);
  EKVistaPreviaQR1.VistaPrevia;
end;


procedure TFReporteMovProveedor.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFReporteMovProveedor.ZQ_MovimientoProveedoresCalcFields(
  DataSet: TDataSet);
begin
  if ZQ_MovimientoProveedoresID_CUENTA_INGRESO.IsNull then
  begin
    ZQ_Cuentas.Close;
    ZQ_Cuentas.ParamByName('ID_CUENTA').AsInteger:= ZQ_MovimientoProveedoresID_CUENTA_EGRESO.AsInteger;
    ZQ_Cuentas.Open;

    ZQ_MovimientoProveedoresie_Cuenta.AsString :=ZQ_CuentasNOMBRE_CUENTA.AsString+' '+ZQ_CuentasNRO_CUENTA_BANCARIA.AsString;
  end
  else
  begin                                   
    ZQ_Cuentas.Close;
    ZQ_Cuentas.ParamByName('ID_CUENTA').AsInteger:= ZQ_MovimientoProveedoresID_CUENTA_INGRESO.AsInteger;
    ZQ_Cuentas.Open;

    ZQ_MovimientoProveedoresie_Cuenta.AsString :=ZQ_CuentasNOMBRE_CUENTA.AsString+' '+ZQ_CuentasNRO_CUENTA_BANCARIA.AsString;
  end;

  case ZQ_MovimientoProveedoresID_MEDIO.AsInteger of
  1: begin  //ORDEN DE PAGO
      ZQ_MovimientoProveedores_haber.AsFloat:= ZQ_MovimientoProveedoresIMPORTE.AsFloat;
      ZQ_MovimientoProveedores_debe.Clear;
     end;
  2: begin //INGRESO
      ZQ_MovimientoProveedores_haber.Clear;
      ZQ_MovimientoProveedores_debe.AsFloat:= ZQ_MovimientoProveedoresIMPORTE.AsFloat;
     end;
  3: begin //EGRESO
      ZQ_MovimientoProveedores_haber.AsFloat:= ZQ_MovimientoProveedoresIMPORTE.AsFloat;
      ZQ_MovimientoProveedores_debe.Clear;
     end;
  end;
end;

procedure TFReporteMovProveedor.EKDbSumaSumListChanged(Sender: TObject);
begin
lblDebe.Caption:= 'Total Debe: '+FormatFloat('$ ###,###,###,##0.00', EKDbSuma.SumCollection[0].SumValue)+'      Total Haber: '+FormatFloat('$ ###,###,###,##0.00', EKDbSuma.SumCollection[1].SumValue)+'  ';
end;

end.
