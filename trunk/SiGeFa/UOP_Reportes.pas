unit UOP_Reportes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, ComCtrls, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, EKVistaPreviaQR,
  EKBusquedaAvanzada;

type
  TFOP_Reportes = class(TForm)
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
    btnExcel: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PContenedor: TPanel;
    PageControlReportes: TPageControl;
    TabReporteMedico: TTabSheet;
    DBGridOrdenDetalle: TDBGrid;
    ZQ_Orden: TZQuery;
    EKVistaPreviaReporteMedicos: TEKVistaPreviaQR;
    DS_Orden: TDataSource;
    EKBusquedaReporteMedicos: TEKBusquedaAvanzada;
    Splitter1: TSplitter;
    DBGridOrden: TDBGrid;
    ZQ_OrdenDetalle: TZQuery;
    DS_OrdenDetalle: TDataSource;
    ZQ_OrdenDetallePRODUCTO: TStringField;
    ZQ_OrdenDetalleCANTIDAD: TFloatField;
    ZQ_OrdenDetalleIMPORTE_TOTAL: TFloatField;
    ZQ_OrdenDetalleIMPORTE_RECONOCIDO: TFloatField;
    ZQ_OrdenID_ORDEN: TIntegerField;
    ZQ_OrdenCODIGO_CLI: TStringField;
    ZQ_OrdenFECHA_ORDEN: TDateField;
    ZQ_OrdenMONTO_TOTAL: TFloatField;
    ZQ_OrdenMONTO_RECONOCIDO: TFloatField;
    ZQ_OrdenMEDICO: TStringField;
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ZQ_OrdenAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOP_Reportes: TFOP_Reportes;

implementation

uses UDM;

{$R *.dfm}

procedure TFOP_Reportes.btnBuscarClick(Sender: TObject);
begin
  case PageControlReportes.ActivePageIndex of
    0: //Reporte Medicos
      begin
        EKBusquedaReporteMedicos.Buscar;
//        btBuscar.Visible := ivAlways;
//        BtNuevo.Visible := ivAlways;
//        BtModificar.Visible := ivAlways;
//        btEliminar.Visible := ivAlways;
//        BtGuardar.Visible := ivAlways;
//        BtCancelar.Visible := ivAlways;
//        btBuscarCuota.Visible := ivNever;
//        BtImprimeContrato.Visible := ivAlways;
//        BtImprimir.Visible := ivAlways;
      end;

  end;
end;

procedure TFOP_Reportes.btnSalirClick(Sender: TObject);
begin
close;
end;

procedure TFOP_Reportes.btnImprimirClick(Sender: TObject);
begin
  case PageControlReportes.ActivePageIndex of
    0: //Reporte Medicos
      begin
        EKVistaPreviaReporteMedicos.VistaPrevia;      
//        btBuscar.Visible := ivAlways;
//        BtNuevo.Visible := ivAlways;
//        BtModificar.Visible := ivAlways;
//        btEliminar.Visible := ivAlways;
//        BtGuardar.Visible := ivAlways;
//        BtCancelar.Visible := ivAlways;
//        btBuscarCuota.Visible := ivNever;
//        BtImprimeContrato.Visible := ivAlways;
//        BtImprimir.Visible := ivAlways;
      end;

  end;
end;

procedure TFOP_Reportes.ZQ_OrdenAfterScroll(DataSet: TDataSet);
begin
  ZQ_OrdenDetalle.Close;
  ZQ_OrdenDetalle.ParamByName('ID_ORDEN').AsInteger := ZQ_OrdenID_ORDEN.AsInteger;
  ZQ_OrdenDetalle.Open;

end;

end.
