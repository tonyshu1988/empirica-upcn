unit UOP_Reportes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, ComCtrls, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, EKVistaPreviaQR,
  EKBusquedaAvanzada, QuickRpt, QRCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, EKOrdenarGrilla, StdCtrls, EKDbSuma, cxClasses;

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
    ReporteMedicos: TQuickRep;
    QRBand5: TQRBand;
    QRReporteComprobantes_Titulo: TQRLabel;
    ChildBandlineaOrden: TQRChildBand;
    QRShape3: TQRShape;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText12: TQRDBText;
    ChildBand3: TQRChildBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel10: TQRLabel;
    SummaryBand2: TQRBand;
    QRLabel23: TQRLabel;
    QRExpr6: TQRExpr;
    QRLabel24: TQRLabel;
    QRExpr7: TQRExpr;
    QRDBText13: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    ReporteMedicos_Titulo: TQRLabel;
    ReporteMedicos_Subtitulo: TQRLabel;
    QRDBLogo: TQRDBImage;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    AImprimir: TAction;
    ZQ_OrdenNOMBRE: TStringField;
    QRLabel1: TQRLabel;
    QRDBText7: TQRDBText;
    EKOrdenarGrillaOrden: TEKOrdenarGrilla;
    EKOrdenarGrillaOrdenDetalle: TEKOrdenarGrilla;
    POrden: TPanel;
    POrdenDetalle: TPanel;
    Label7: TLabel;
    Label1: TLabel;
    POrdenTotales: TPanel;
    lblTotalOrden: TLabel;
    POrdenDetalleTotales: TPanel;
    lblTotalOrdenDetalle: TLabel;
    EKDbSumaOrden: TEKDbSuma;
    EKDbSumaOrdenDetalle: TEKDbSuma;
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ZQ_OrdenAfterScroll(DataSet: TDataSet);
    procedure ABuscarExecute(Sender: TObject);
    procedure AImprimirExecute(Sender: TObject);
    procedure DBGridOrdenDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridOrdenDetalleDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOP_Reportes: TFOP_Reportes;

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFOP_Reportes.btnBuscarClick(Sender: TObject);
begin
  case PageControlReportes.ActivePageIndex of
    0: //Reporte Medicos
      begin
        EKBusquedaReporteMedicos.Buscar;
        EKDbSumaOrden.RecalcAll;
        EKDbSumaOrdenDetalle.RecalcAll;
        lblTotalOrden.Caption:= 'Total Importe: ' + FormatFloat('$ ##,###,##0.00 ', EKDbSumaOrden.SumCollection[0].SumValue) + ' - Total OS: ' + FormatFloat('$ ##,###,##0.00 ', EKDbSumaOrden.SumCollection[1].SumValue);
        lblTotalOrdenDetalle.Caption:= 'Total Importe: ' + FormatFloat('$ ##,###,##0.00 ', EKDbSumaOrdenDetalle.SumCollection[0].SumValue) + ' - Total OS: ' + FormatFloat('$ ##,###,##0.00 ', EKDbSumaOrdenDetalle.SumCollection[1].SumValue);
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
        if ZQ_Orden.IsEmpty then
          exit;

        DM.VariablesReportes(ReporteMedicos);
        EKVistaPreviaReporteMedicos.VistaPrevia;
      end;

  end;
end;

procedure TFOP_Reportes.ZQ_OrdenAfterScroll(DataSet: TDataSet);
begin
  ZQ_OrdenDetalle.Close;
  ZQ_OrdenDetalle.ParamByName('ID_ORDEN').AsInteger := ZQ_OrdenID_ORDEN.AsInteger;
  ZQ_OrdenDetalle.Open;

  EKDbSumaOrdenDetalle.RecalcAll;
  lblTotalOrdenDetalle.Caption:= 'Total Importe: ' + FormatFloat('$ ##,###,##0.00 ', EKDbSumaOrdenDetalle.SumCollection[0].SumValue) + ' - Total OS: ' + FormatFloat('$ ##,###,##0.00 ', EKDbSumaOrdenDetalle.SumCollection[1].SumValue);
end;

procedure TFOP_Reportes.ABuscarExecute(Sender: TObject);
begin
btnBuscar.Click;
end;

procedure TFOP_Reportes.AImprimirExecute(Sender: TObject);
begin
btnImprimir.Click;
end;

procedure TFOP_Reportes.DBGridOrdenDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridOrden, Rect, DataCol, Column, State);
end;

procedure TFOP_Reportes.DBGridOrdenDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridOrdenDetalle, Rect, DataCol, Column, State);
end;

procedure TFOP_Reportes.FormCreate(Sender: TObject);
begin
  EKOrdenarGrillaOrden.CargarConfigColumnas;
  EKOrdenarGrillaOrdenDetalle.CargarConfigColumnas;
end;

procedure TFOP_Reportes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EKOrdenarGrillaOrden.GuardarConfigColumnas;
  EKOrdenarGrillaOrdenDetalle.GuardarConfigColumnas;
end;

end.
