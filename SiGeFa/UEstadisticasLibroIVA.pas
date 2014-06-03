unit UEstadisticasLibroIVA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, cxClasses, StdCtrls, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls,UDM,
  EKBusquedaAvanzada, EKOrdenarGrilla, EKDbSuma;

type
  TFEstadisticasLibroIVA = class(TForm)
    grillaVentas: TDBGrid;
    lblTotalComprobantes: TLabel;
    dxBarABM: TdxBarManager;
    dxBarABMBar1: TdxBar;
    btnBuscar: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btImprimir: TdxBarLargeButton;
    btVer: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    tabs: TPageControl;
    tabLibroVentas: TTabSheet;
    ZQ_Libro_IVA_Ventas: TZQuery;
    DS_Libro_IVA_Ventas: TDataSource;
    ZQ_Libro_IVA_VentasFECHA_COBRADA: TDateTimeField;
    ZQ_Libro_IVA_VentasNOMBRE_TIPO_CPB: TStringField;
    ZQ_Libro_IVA_VentasNUMERO_CPB: TIntegerField;
    ZQ_Libro_IVA_VentasNOMBRE: TStringField;
    ZQ_Libro_IVA_VentasCUIT_CUIL: TStringField;
    ZQ_Libro_IVA_VentasABREVIATURA: TStringField;
    ZQ_Libro_IVA_VentasLETRA: TStringField;
    ZQ_Libro_IVA_VentasIMP_INT: TFloatField;
    ZQ_Libro_IVA_VentasIF_SIVA: TFloatField;
    ZQ_Libro_IVA_VentasPORC_IVA: TFloatField;
    ZQ_Libro_IVA_VentasIF_IVA: TFloatField;
    ZQ_Libro_IVA_VentasIF_TOT: TFloatField;
    EKBuscarComprobantes: TEKBusquedaAvanzada;
    ZQ_TipoIVA: TZQuery;
    ZQ_TipoIVAID_TIPO_IVA: TIntegerField;
    ZQ_TipoIVANOMBRE_TIPO_IVA: TStringField;
    ZQ_TipoIVAABREVIATURA: TStringField;
    ZQ_TipoIVADISCRIMINAR: TStringField;
    ZQ_TipoIVALETRA: TStringField;
    ZQ_TipoIVAFISCAL: TStringField;
    ZQ_TipoIVACOEFICIENTE: TFloatField;
    ZQ_Libro_IVA_VentasCODIGO: TStringField;
    EKDbSuma1: TEKDbSuma;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    procedure btnBuscarClick(Sender: TObject);
    procedure EKDbSuma1SumListChanged(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEstadisticasLibroIVA: TFEstadisticasLibroIVA;

implementation


{$R *.dfm}

procedure TFEstadisticasLibroIVA.btnBuscarClick(Sender: TObject);
begin
 if tabs.ActivePage = tabLibroVentas then
  begin
    if EKBuscarComprobantes.Buscar then
      ZQ_Libro_IVA_Ventas.First;
  end;

end;

procedure TFEstadisticasLibroIVA.EKDbSuma1SumListChanged(Sender: TObject);
begin
   lblTotalComprobantes.Caption := Format('%s Comprobantes | Total Neto s/IVA: $ %f | Total IVA: $ %f | Total: $ %f',[CurrToStr(EKDbSuma1.SumCollection[0].SumValue),EKDbSuma1.SumCollection[1].SumValue,EKDbSuma1.SumCollection[2].SumValue,EKDbSuma1.SumCollection[3].SumValue]);
end;

procedure TFEstadisticasLibroIVA.btnExcelClick(Sender: TObject);
begin
//FACTURACION
  if tabs.ActivePage = tabLibroVentas then
  begin
    if not ZQ_Libro_IVA_Ventas.IsEmpty then
      dm.ExportarEXCEL(grillaVentas);
  end;
end;

procedure TFEstadisticasLibroIVA.btnSalirClick(Sender: TObject);
begin
close;
end;

end.
