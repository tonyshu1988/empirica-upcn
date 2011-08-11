unit UEstadisticaFacturacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFEstadisticasFacturacion = class(TForm)
    PanelContenedor: TPanel;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnVerDetalle: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBaja: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    DBGridProducto: TDBGrid;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    ZQuery1ID_PRODUCTO: TIntegerField;
    ZQuery1CANTIDAD: TFloatField;
    ZQuery1IMPORTE_FINAL: TFloatField;
    ZQuery1IMPORTE_UNITARIO: TFloatField;
    ZQuery1FECHA_COBRADA: TDateField;
    ZQuery1COD_CORTO: TStringField;
    ZQuery1NOMBRE_MARCA: TStringField;
    ZQuery1ARTICULO: TStringField;
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEstadisticasFacturacion: TFEstadisticasFacturacion;

implementation

uses UDM;

{$R *.dfm}

procedure TFEstadisticasFacturacion.btnSalirClick(Sender: TObject);
begin
close;
end;

procedure TFEstadisticasFacturacion.btnBuscarClick(Sender: TObject);
begin
ZQuery1.Close;
ZQuery1.ParamByName('FechaDesde').AsDate := StrToDate('01/01/2011');
ZQuery1.ParamByName('FechaHasta').AsDate := StrToDate('01/10/2011');
ZQuery1.Open;
end;

end.
