unit UOP_Reportes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, ComCtrls, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset,
   QuickRpt, QRCtrls, ActnList, XPStyleActnCtrls,
  ActnMan,  StdCtrls, cxClasses, ISVistaPreviaQR,
  ISDbSuma, ISOrdenarGrilla, ISBusquedaAvanzada, ISLlenarCombo;

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
    DS_Orden: TDataSource;
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
    POrden: TPanel;
    POrdenDetalle: TPanel;
    Label7: TLabel;
    Label1: TLabel;
    POrdenTotales: TPanel;
    lblTotalOrden: TLabel;
    POrdenDetalleTotales: TPanel;
    lblTotalOrdenDetalle: TLabel;
    ISBusquedaReporteMedicos: TISBusquedaAvanzada;
    ISOrdenarGrillaOrden: TISOrdenarGrilla;
    ISOrdenarGrillaOrdenDetalle: TISOrdenarGrilla;
    ISDbSumaOrden: TISDbSuma;
    ISDbSumaOrdenDetalle: TISDbSuma;
    ISVistaPreviaReporteMedicos: TISVistaPreviaQR;
    TabSheet1: TTabSheet;
    grillaAfiliados: TDBGrid;
    ZQ_PersonaOss: TZQuery;
    ZQ_PersonaOssID_PERSONA: TIntegerField;
    ZQ_PersonaOssID_PROVINCIA: TIntegerField;
    ZQ_PersonaOssID_TIPO_DOC: TIntegerField;
    ZQ_PersonaOssID_TIPO_IVA: TIntegerField;
    ZQ_PersonaOssNOMBRE: TStringField;
    ZQ_PersonaOssDIRECCION: TStringField;
    ZQ_PersonaOssLOCALIDAD: TStringField;
    ZQ_PersonaOssCODIGO_POSTAL: TStringField;
    ZQ_PersonaOssTELEFONO: TStringField;
    ZQ_PersonaOssEMAIL: TStringField;
    ZQ_PersonaOssFECHA_NACIMIENTO: TDateField;
    ZQ_PersonaOssNUMERO_DOC: TStringField;
    ZQ_PersonaOssSEXO: TStringField;
    ZQ_PersonaOssBAJA: TStringField;
    ZQ_PersonaOssDESCRIPCION: TStringField;
    ZQ_PersonaOssCUIT_CUIL: TStringField;
    ZQ_PersonaOssDESCUENTO_ESPECIAL: TFloatField;
    ZQ_PersonaOssCODIGO_CORTO: TStringField;
    ZQ_PersonaOssCODIGO_BARRA: TStringField;
    ZQ_PersonaOssCLAVE: TStringField;
    ZQ_PersonaOssIMPORTADO: TStringField;
    ZQ_PersonaOssNRO_AFILIADO: TStringField;
    ZQ_PersonaOssNOMBRE_TIPO_DOC: TStringField;
    ZQ_PersonaOssNOMBRE_TIPO_IVA: TStringField;
    ZQ_PersonaOssNOMBRE_PROVINCIA: TStringField;
    DS_PersonaOss: TDataSource;
    PBusqueda: TPanel;
    Label2: TLabel;
    lblCantidadRegistros: TLabel;
    cmbPlan: TComboBox;
    ISLlenarCombo1: TISLlenarCombo;
    ZQ_Planes: TZQuery;
    ZQ_PlanesID_OS: TIntegerField;
    ZQ_PlanesCODIGO: TStringField;
    ZQ_PlanesNOMBREPLAN: TStringField;
    ZQ_PlanesNOMBREOSS: TStringField;
    ZQ_PlanesDETALLE: TStringField;
    ISOrdenarGrillaAfiliados: TISOrdenarGrilla;
    ZQ_PersonaOssNOMBRE_1: TStringField;
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
    procedure ISLlenarCombo1Cambio(valor: String);
    procedure btnExcelClick(Sender: TObject);
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
        ISBusquedaReporteMedicos.Buscar;
        ISDbSumaOrden.RecalcAll;
        ISDbSumaOrdenDetalle.RecalcAll;
        lblTotalOrden.Caption:= 'Total Importe: ' + FormatFloat('$ ##,###,##0.00 ', ISDbSumaOrden.SumCollection[0].SumValue) + ' - Total OS: ' + FormatFloat('$ ##,###,##0.00 ', ISDbSumaOrden.SumCollection[1].SumValue);
        lblTotalOrdenDetalle.Caption:= 'Total Importe: ' + FormatFloat('$ ##,###,##0.00 ', ISDbSumaOrdenDetalle.SumCollection[0].SumValue) + ' - Total OS: ' + FormatFloat('$ ##,###,##0.00 ', ISDbSumaOrdenDetalle.SumCollection[1].SumValue);
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
        ISVistaPreviaReporteMedicos.VistaPrevia;
      end;

  end;
end;

procedure TFOP_Reportes.ZQ_OrdenAfterScroll(DataSet: TDataSet);
begin

  ZQ_OrdenDetalle.Close;
  ZQ_OrdenDetalle.ParamByName('ID_ORDEN').AsInteger := ZQ_OrdenID_ORDEN.AsInteger;
  ZQ_OrdenDetalle.Open;

  ISDbSumaOrdenDetalle.RecalcAll;
  lblTotalOrdenDetalle.Caption:= 'Total Importe: ' + FormatFloat('$ ##,###,##0.00 ', ISDbSumaOrdenDetalle.SumCollection[0].SumValue) + ' - Total OS: ' + FormatFloat('$ ##,###,##0.00 ', ISDbSumaOrdenDetalle.SumCollection[1].SumValue);
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
  ISOrdenarGrillaOrden.CargarConfigColunmas;
  ISOrdenarGrillaOrdenDetalle.CargarConfigColunmas;
  dm.ISModelo.abrir(ZQ_Planes);

  ISLlenarCombo1.CargarCombo;
end;

procedure TFOP_Reportes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ISOrdenarGrillaOrden.GuardarConfigColumnas;
  ISOrdenarGrillaOrdenDetalle.GuardarConfigColumnas;
end;

procedure TFOP_Reportes.ISLlenarCombo1Cambio(valor: String);
begin
  if ZQ_Planes.IsEmpty then exit;

  ZQ_PersonaOss.Close;

  if (cmbPlan.Text='TODOS') then
     ZQ_PersonaOss.SQL[7]:=''
  else
    begin
     ZQ_PersonaOss.SQL[7]:='where (opo.id_os=:id)';
     ZQ_PersonaOss.ParamByName('id').AsInteger:= ZQ_PlanesID_OS.AsInteger;
    end;
  dm.ISModelo.abrir(ZQ_PersonaOss);

  dm.mostrarCantidadRegistro(ZQ_PersonaOss, lblCantidadRegistros);
end;

procedure TFOP_Reportes.btnExcelClick(Sender: TObject);
begin


   case PageControlReportes.ActivePageIndex of
    0: //Reporte Medicos
      begin
        if ZQ_Orden.IsEmpty then exit;
        DM.ExportarEXCEL(DBGridOrden);
      end;
    1: //Reporte Medicos
      begin
        if ZQ_PersonaOss.IsEmpty then exit;
        DM.ExportarEXCEL(grillaAfiliados);
      end;

   end;



end;

end.
