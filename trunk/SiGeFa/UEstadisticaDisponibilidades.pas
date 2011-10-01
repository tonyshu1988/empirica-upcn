unit UEstadisticaDisponibilidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZStoredProcedure,
  EKBusquedaAvanzada, StdCtrls, EKDbSuma, QRCtrls, QuickRpt,
  EKVistaPreviaQR, DBCtrls, EKOrdenarGrilla, ActnList, XPStyleActnCtrls,
  ActnMan;

type
  TFEstadisticaDisponibilidades = class(TForm)
    PanelContenedor: TPanel;
    PageControl: TPageControl;
    TabSaldosCuentas: TTabSheet;
    TabDetalleMov: TTabSheet;
    TabSheet3: TTabSheet;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    ZP_SaldosCuentas: TZStoredProc;
    DS_SaldosCuentas: TDataSource;
    DBGridSaldoCuentas: TDBGrid;
    ZP_SaldosCuentasID_CUENTA: TIntegerField;
    ZP_SaldosCuentasCODIGO: TStringField;
    ZP_SaldosCuentasNOMBRE_CUENTA: TStringField;
    ZP_SaldosCuentasNRO_CTA_BANCO: TStringField;
    ZP_SaldosCuentasIMPORTE: TFloatField;
    EKBuscarSaldo: TEKBusquedaAvanzada;
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
    Panel1: TPanel;
    Panel2: TPanel;
    lblSaldo_Total: TLabel;
    lblSaldo_Encabezado2: TLabel;
    lblSaldo_Encabezado1: TLabel;
    Panel4: TPanel;
    DBGridEstadisticaDetMov: TDBGrid;
    Panel5: TPanel;
    Label4: TLabel;
    Panel6: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid2: TDBGrid;
    EKDbSuma_Saldo: TEKDbSuma;
    RepSaldo: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepSaldo_Subtitulo: TQRLabel;
    RepSaldo_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand11: TQRBand;
    QRlblRepSaldo_PieDePagina: TQRLabel;
    QRLabel43: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand12: TQRBand;
    QRExpr18: TQRExpr;
    TitleBand2: TQRBand;
    QRlblRepSaldo_CritBusqueda: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel48: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRlblRepSaldo_SaldoTotal: TQRLabel;
    EKVista_RepSaldo: TEKVistaPreviaQR;
    TabParteDiario: TTabSheet;
    panel_cerrar: TPanel;
    EKBuscarParteDiario: TEKBusquedaAvanzada;
    ZP_estadistica_Parte_Diario: TZStoredProc;
    ZP_Estadistica_IE_Medios: TZStoredProc;
    ZP_estadistica_Parte_DiarioSALDO_INICIAL: TFloatField;
    ZP_estadistica_Parte_DiarioSALDO: TFloatField;
    ZP_estadistica_Parte_DiarioTOTAL_INGRESO: TFloatField;
    ZP_estadistica_Parte_DiarioTOTAL_EGRESO: TFloatField;
    ZP_Estadistica_IE_MediosTOTAL_EGRESO: TFloatField;
    ZP_Estadistica_IE_MediosTOTAL_INGRESO: TFloatField;
    ZP_Estadistica_IE_MediosDESCRIPCION: TStringField;
    DS_estadistica_Parte_Diario: TDataSource;
    DS_Estadistica_IE_Medios: TDataSource;
    EKDbSuma_ParteDiario: TEKDbSuma;
    ZP_Estadistica_Det_Mov: TZStoredProc;
    DS_Estadistica_Det_Mov: TDataSource;
    ZP_Estadistica_Det_MovIMPORTE_VENTA: TFloatField;
    ZP_Estadistica_Det_MovNUMERO_CPB: TIntegerField;
    ZP_Estadistica_Det_MovPUNTO_VENTA: TIntegerField;
    ZP_Estadistica_Det_MovCODIGO: TStringField;
    ZP_Estadistica_Det_MovFECHA: TDateTimeField;
    ZP_Estadistica_Det_MovOBSERVACION: TStringField;
    ZP_Estadistica_Det_MovTIPO_COMPROBANTE: TStringField;
    ZP_Estadistica_Det_MovTIPO_MOVIMIENTO: TStringField;
    ZP_Estadistica_Det_MovNOMBRE_ENTIDAD: TStringField;
    EKBuscarDetMov: TEKBusquedaAvanzada;
    EKOrdenarGrillaDetMov: TEKOrdenarGrilla;
    RepParteDiario: TQuickRep;
    QRBand14: TQRBand;
    RepParteDiario_Titulo: TQRLabel;
    RepParteDiario_Subtitulo: TQRLabel;
    QRLabel68: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText33: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRLblPD_TotalIngreso: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel3: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRSubDetail4: TQRSubDetail;
    QRLabelImporteSaldo: TQRLabel;
    ChildBand2: TQRChildBand;
    ChildBand3: TQRChildBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    EKVista_RepParteDiario: TEKVistaPreviaQR;
    QRLabelEncabezadoParteDiario: TQRLabel;
    QRLabelSucursalParteDiario: TQRLabel;
    RepDetalleMov: TQuickRep;
    QRBand2: TQRBand;
    QRDBLogo3: TQRDBImage;
    QRLabel8: TQRLabel;
    RepDetalleMov_Subtitulo: TQRLabel;
    RepDetalleMov_Titulo: TQRLabel;
    QRBand3: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRBand6: TQRBand;
    QRlblRepDetMov_CritBusqueda: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    EKVista_RepDetMov: TEKVistaPreviaQR;
    PageFooterBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRSysData3: TQRSysData;
    QRGroup1: TQRGroup;
    QRDBText22: TQRDBText;
    QRGroupFooter: TQRBand;
    PageFooterBand2: TQRBand;
    ChildBand4: TQRChildBand;
    QRLabel31: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRlblRepDetalleMov_PieDePagina: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBLogo2: TQRDBImage;
    QRlblRepParteDiario_PieDePagina: TQRLabel;
    lblEncabezadoDetMov: TLabel;
    lblSucursalDetMov: TLabel;
    panelPD_Resumen: TPanel;
    lblSaldo_TotalParteDiario: TLabel;
    panelPD_InfoBusqueda: TPanel;
    lblSucursal: TLabel;
    lblEncabezadoParteDiario: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    DBText9: TDBText;
    Label7: TLabel;
    DBText10: TDBText;
    Label8: TLabel;
    DBText11: TDBText;
    DBText19: TDBText;
    Label16: TLabel;
    DBGridPD_MediosDePago: TDBGrid;
    Label17: TLabel;
    DBGridPD_SaldoCuentas: TDBGrid;
    Panel12: TPanel;
    Label18: TLabel;
    Label1: TLabel;
    Shape1: TShape;
    lblPD_totalTransfer: TLabel;
    Panel3: TPanel;
    lblResumenDetalleMovimiento: TLabel;
    lblPD_totalEgreso: TLabel;
    QRLblPD_TotalEgreso: TQRLabel;
    ZP_PD_SaldoCuentas: TZStoredProc;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    DS_ZP_PD_SaldoCuentas: TDataSource;
    EKSumaPD_SaldoCta: TEKDbSuma;
    EKOrdenarGrillaSaldos: TEKOrdenarGrilla;
    EKOrdenarGrillaPD_Saldo: TEKOrdenarGrilla;
    ZP_Estadistica_IE_MediosTOTAL_TRANSFERENCIA: TFloatField;
    ZP_estadistica_Parte_DiarioTOTAL_TRANSFERENCIA: TFloatField;
    lblPD_totalIngreso: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    QRLabel16: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRLblPD_TotalTransfer: TQRLabel;
    QRLabel19: TQRLabel;
    ZP_estadistica_Parte_DiarioTOTAL_NOTA_CREDITO: TFloatField;
    ZP_estadistica_Parte_DiarioTOTAL_CTA_CTE_CLIENTE: TFloatField;
    ZP_estadistica_Parte_DiarioTOTAL_CTA_CTE_PROVEEDOR: TFloatField;
    Label3: TLabel;
    DBText2: TDBText;
    Label9: TLabel;
    DBText3: TDBText;
    Label10: TLabel;
    DBText4: TDBText;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    QRLabel20: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText27: TQRDBText;
    QRShape1: TQRShape;
    Shape2: TShape;
    DBGridMovFPago: TDBGrid;
    Splitter1: TSplitter;
    ZQ_MovFormaPago: TZQuery;
    DS_MovFormaPago: TDataSource;
    ZP_Estadistica_Det_MovID_COMPROBANTE: TIntegerField;
    ZQ_MovFormaPagoTIPOFORMAPAGO: TStringField;
    ZQ_MovFormaPagoIMPORTE_REAL: TFloatField;
    ZQ_MovFormaPagoCUENTA: TStringField;
    EKOrdenarMovFPago: TEKOrdenarGrilla;
    btnExcel: TdxBarLargeButton;
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ABuscarExecute(Sender: TObject);
    procedure ZP_Estadistica_Det_MovAfterScroll(DataSet: TDataSet);
    procedure btnExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEstadisticaDisponibilidades: TFEstadisticaDisponibilidades;

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFEstadisticaDisponibilidades.FormCreate(Sender: TObject);
begin
  QRDBLogo.DataSet:= dm.ZQ_Sucursal;
  QRDBLogo2.DataSet:= dm.ZQ_Sucursal;
  QRDBLogo3.DataSet:= dm.ZQ_Sucursal;

  EKOrdenarGrillaDetMov.CargarConfigColumnas;
  EKOrdenarGrillaSaldos.CargarConfigColumnas;
  EKOrdenarGrillaPD_Saldo.CargarConfigColumnas;
  EKOrdenarMovFPago.CargarConfigColumnas;  

  TabSheet3.TabVisible:= false;

  PageControl.ActivePageIndex:= 0;
  dm.EKModelo.abrir(ZQ_Sucursal);

  lblSaldo_Total.Caption:= '';
  lblSaldo_Encabezado1.Caption:= '';
  lblSaldo_Encabezado2.Caption:= '';
  lblEncabezadoParteDiario.Caption := '';
  lblSaldo_TotalParteDiario.Caption := '';
  lblSucursal.Caption := '';
  lblPD_totalIngreso.Caption := '';
  lblPD_totalEgreso.Caption := '';
  lblPD_totalTransfer.Caption := '';  
  lblEncabezadoDetMov.Caption := '';
  lblSucursalDetMov.Caption := '';
  lblResumenDetalleMovimiento.Caption := '';

  TEKCriterioBA(EKBuscarSaldo.CriteriosBusqueda.Items[0]).Valor := DateToStr(dm.EKModelo.FechayHora);

  TEKCriterioBA(EKBuscarParteDiario.CriteriosBusqueda.Items[0]).Valor := DateToStr(dm.EKModelo.Fecha);
  TEKCriterioBA(EKBuscarParteDiario.CriteriosBusqueda.Items[1]).Valor := DateToStr(dm.EKModelo.Fecha);

  TEKCriterioBA(EKBuscarDetMov.CriteriosBusqueda.Items[0]).Valor := DateToStr(dm.EKModelo.Fecha);
  TEKCriterioBA(EKBuscarDetMov.CriteriosBusqueda.Items[1]).Valor := DateToStr(dm.EKModelo.Fecha);
end;


procedure TFEstadisticaDisponibilidades.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFEstadisticaDisponibilidades.btnBuscarClick(Sender: TObject);
begin
  if PageControl.ActivePage.Name = 'TabSaldosCuentas' then
  begin
    lblSaldo_Total.Caption := '';
    lblSaldo_Encabezado2.Caption := '';
    lblSaldo_Encabezado1.Caption := '';

    if  EKBuscarSaldo.BuscarSinEjecutar then
      if EKBuscarSaldo.ParametrosSeleccionados1[0] = '' then
      begin
        Application.MessageBox('No se ha cargado la fecha', 'Verifique', MB_OK + MB_ICONINFORMATION);
        btnBuscar.Click;
      end
      else
      begin
        ZP_SaldosCuentas.Close;
        if EKBuscarSaldo.ParametrosSeleccionados1[1] = '' then
          ZP_SaldosCuentas.ParamByName('id_sucursal').AsInteger:= -1
        else
          ZP_SaldosCuentas.ParamByName('id_sucursal').AsInteger:= StrToInt(EKBuscarSaldo.ParametrosSeleccionados1[1]);
        ZP_SaldosCuentas.ParamByName('fecha_hasta').AsDate := StrToDate(EKBuscarSaldo.ParametrosSeleccionados1[0]);
        ZP_SaldosCuentas.Open;

        lblSaldo_Encabezado1.Caption:= 'Saldo Cuentas al '+EKBuscarSaldo.ParametrosSeleccionados1[0];
        lblSaldo_Encabezado2.Caption:= 'Sucursal: '+EKBuscarSaldo.ParametrosSelecReales1[1];
        lblSaldo_Total.Caption:= 'Saldo Total: '+FormatFloat('$ ###,###,##0.00', EKDbSuma_Saldo.SumCollection.Items[0].SumValue);
      end;
  end;

  if PageControl.ActivePage.Name = 'TabParteDiario' then
  begin
    lblEncabezadoParteDiario.Caption := '';
    lblSaldo_TotalParteDiario.Caption := '';
    lblSucursal.Caption := '';
    lblPD_totalIngreso.Caption := '';
    lblPD_totalTransfer.Caption := '';    
    lblPD_totalEgreso.Caption := '';

    if  EKBuscarParteDiario.BuscarSinEjecutar then
      if (EKBuscarParteDiario.ParametrosSeleccionados1[0] = '') or (EKBuscarParteDiario.ParametrosSeleccionados1[1] = '') then
      begin
        Application.MessageBox('No se ha cargado la fecha', 'Verifique', MB_OK + MB_ICONINFORMATION);
        btnBuscar.Click;
      end
      else
      begin
        ZP_PD_SaldoCuentas.Close;
        ZP_estadistica_Parte_Diario.Close;
        ZP_Estadistica_IE_Medios.Close;

        if EKBuscarParteDiario.ParametrosSeleccionados1[2] = '' then
        begin
          ZP_PD_SaldoCuentas.ParamByName('id_sucursal').AsInteger:= -1;
          ZP_estadistica_Parte_Diario.ParamByName('id_sucursal').AsInteger:= -1;
          ZP_Estadistica_IE_Medios.ParamByName('id_sucursal').AsInteger:= -1;
        end
        else
        begin
          lblSucursal.Caption:= 'Sucursal: '+EKBuscarParteDiario.ParametrosSelecReales1[2];
          ZP_PD_SaldoCuentas.ParamByName('id_sucursal').AsInteger:= StrToInt(EKBuscarParteDiario.ParametrosSeleccionados1[2]);
          ZP_estadistica_Parte_Diario.ParamByName('id_sucursal').AsInteger:= StrToInt(EKBuscarParteDiario.ParametrosSeleccionados1[2]);
          ZP_Estadistica_IE_Medios.ParamByName('id_sucursal').AsInteger:= StrToInt(EKBuscarParteDiario.ParametrosSeleccionados1[2]);
        end;

        ZP_PD_SaldoCuentas.ParamByName('fecha_hasta').AsDate := StrToDate(EKBuscarParteDiario.ParametrosSeleccionados1[1]);
        ZP_PD_SaldoCuentas.Open;

        ZP_estadistica_Parte_Diario.ParamByName('fechadesde').AsDate :=StrToDate(EKBuscarParteDiario.ParametrosSeleccionados1[0]);
        ZP_estadistica_Parte_Diario.ParamByName('fechahasta').AsDate :=StrToDate(EKBuscarParteDiario.ParametrosSeleccionados1[1]);
        ZP_estadistica_Parte_Diario.Open;

        ZP_Estadistica_IE_Medios.ParamByName('fechadesde').AsDate :=StrToDate(EKBuscarParteDiario.ParametrosSeleccionados1[0]);
        ZP_Estadistica_IE_Medios.ParamByName('fechahasta').AsDate :=StrToDate(EKBuscarParteDiario.ParametrosSeleccionados1[1]);
        ZP_Estadistica_IE_Medios.Open;

        lblEncabezadoParteDiario.Caption:= 'Parte Diario desde el '+EKBuscarParteDiario.ParametrosSeleccionados1[0]+' al '+EKBuscarParteDiario.ParametrosSeleccionados1[1];
        lblSaldo_TotalParteDiario.Caption:= 'Saldo Total: '+FormatFloat('$ ###,###,##0.00', EKSumaPD_SaldoCta.SumCollection.Items[0].SumValue);
        lblPD_totalIngreso.Caption:= 'Total Ingresos: '+FormatFloat('$ ###,###,##0.00', EKDbSuma_ParteDiario.SumCollection.Items[0].SumValue);
        lblPD_totalEgreso.Caption:= 'Total Egresos: '+FormatFloat('$ ###,###,##0.00', EKDbSuma_ParteDiario.SumCollection.Items[1].SumValue);
        lblPD_totalTransfer.Caption:= 'Total Transferencias: '+FormatFloat('$ ###,###,##0.00', EKDbSuma_ParteDiario.SumCollection.Items[2].SumValue);        
      end;
  end;

  if PageControl.ActivePage.Name = 'TabDetalleMov' then
  begin
    lblEncabezadoDetMov.Caption := '';
    lblSucursalDetMov.Caption := '';
    lblResumenDetalleMovimiento.Caption := '';

    if  EKBuscarDetMov.BuscarSinEjecutar then
      if (EKBuscarDetMov.ParametrosSeleccionados1[0] = '') or (EKBuscarDetMov.ParametrosSeleccionados1[1] = '') then
      begin
        Application.MessageBox('No se ha cargado la fecha', 'Verifique', MB_OK + MB_ICONINFORMATION);
        btnBuscar.Click;
      end
      else
      begin
        ZP_Estadistica_Det_Mov.Close;

        if EKBuscarDetMov.ParametrosSeleccionados1[2] = '' then
        begin
          ZP_Estadistica_Det_Mov.ParamByName('ID_SUCURSAL_INGRESO').AsInteger:= -1;
        end
        else
        begin
          lblSucursalDetMov.Caption:= 'Sucursal: '+EKBuscarDetMov.ParametrosSelecReales1[2];
          ZP_Estadistica_Det_Mov.ParamByName('ID_SUCURSAL_INGRESO').AsInteger:= StrToInt(EKBuscarDetMov.ParametrosSeleccionados1[2]);
        end;

        ZP_Estadistica_Det_Mov.ParamByName('fechadesde').AsDate :=StrToDate(EKBuscarDetMov.ParametrosSeleccionados1[0]);
        ZP_Estadistica_Det_Mov.ParamByName('fechahasta').AsDate :=StrToDate(EKBuscarDetMov.ParametrosSeleccionados1[1]);
        ZP_Estadistica_Det_Mov.Open;

        lblEncabezadoDetMov.Caption:= 'Detalles Movimientos desde el '+EKBuscarDetMov.ParametrosSeleccionados1[0]+' al '+EKBuscarDetMov.ParametrosSeleccionados1[1];
      end;
  end;
end;


procedure TFEstadisticaDisponibilidades.btnImprimirClick(Sender: TObject);
begin
  if PageControl.ActivePage.Name = 'TabSaldosCuentas' then
  begin
    if ZP_SaldosCuentas.IsEmpty then
      exit;

    DM.VariablesReportes(RepSaldo);
    QRlblRepSaldo_PieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
    QRlblRepSaldo_SaldoTotal.Caption:= lblSaldo_Total.Caption;
    QRlblRepSaldo_CritBusqueda.Caption := EKBuscarSaldo.ParametrosBuscados;

    EKVista_RepSaldo.VistaPrevia;
  end;

  if PageControl.ActivePage.Name = 'TabParteDiario' then
  begin
    if ZP_PD_SaldoCuentas.IsEmpty or ZP_estadistica_Parte_Diario.IsEmpty or ZP_Estadistica_IE_Medios.IsEmpty then
      exit;

    DM.VariablesReportes(RepParteDiario);

    if EKBuscarParteDiario.ParametrosSelecReales1[2] <> '' then
      QRLabelSucursalParteDiario.Caption:= 'Sucursal: '+EKBuscarParteDiario.ParametrosSelecReales1[2]
    else
      QRLabelSucursalParteDiario.Caption:= '';

    QRLabelEncabezadoParteDiario.Caption:= 'Parte Diario desde el '+EKBuscarParteDiario.ParametrosSeleccionados1[0]+' al '+EKBuscarParteDiario.ParametrosSeleccionados1[1];
    QRLabelImporteSaldo.Caption:= 'Saldo Total: '+FormatFloat('$ ###,###,##0.00', EKSumaPD_SaldoCta.SumCollection.Items[0].SumValue);
    QRLblPD_TotalIngreso.Caption:= FormatFloat('$ ###,###,##0.00', EKDbSuma_ParteDiario.SumCollection.Items[0].SumValue);
    QRLblPD_TotalEgreso.Caption:= FormatFloat('$ ###,###,##0.00', EKDbSuma_ParteDiario.SumCollection.Items[1].SumValue);
    QRLblPD_TotalTransfer.Caption:= FormatFloat('$ ###,###,##0.00', EKDbSuma_ParteDiario.SumCollection.Items[2].SumValue);
    QRlblRepParteDiario_PieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);

    EKVista_RepParteDiario.VistaPrevia;
  end;

  if PageControl.ActivePage.Name = 'TabDetalleMov' then
  begin
    if ZP_Estadistica_Det_Mov.IsEmpty then
      exit;

    ZP_Estadistica_Det_Mov.SortedFields:= 'TIPO_MOVIMIENTO, FECHA';

    DM.VariablesReportes(RepDetalleMov);
    QRlblRepDetMov_CritBusqueda.Caption := EKBuscarDetMov.ParametrosBuscados;
    QRlblRepDetalleMov_PieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);

    EKVista_RepDetMov.VistaPrevia;

    ZP_Estadistica_Det_Mov.SortedFields:= 'FECHA';
  end;
end;


procedure TFEstadisticaDisponibilidades.DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(TDBGrid(Sender), Rect, DataCol, Column, State);
end;


procedure TFEstadisticaDisponibilidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenarGrillaDetMov.GuardarConfigColumnas;
  EKOrdenarGrillaSaldos.GuardarConfigColumnas;
  EKOrdenarGrillaPD_Saldo.GuardarConfigColumnas;
  EKOrdenarMovFPago.GuardarConfigColumnas;  
end;


procedure TFEstadisticaDisponibilidades.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFEstadisticaDisponibilidades.ZP_Estadistica_Det_MovAfterScroll(DataSet: TDataSet);
begin
  ZQ_MovFormaPago.Close;
  ZQ_MovFormaPago.ParamByName('id_comprobante').AsInteger:= ZP_Estadistica_Det_MovID_COMPROBANTE.AsInteger;
  ZQ_MovFormaPago.open;
end;

procedure TFEstadisticaDisponibilidades.btnExcelClick(Sender: TObject);
begin
  if PageControl.ActivePage.Name = 'TabSaldosCuentas' then
  begin
    if not ZP_SaldosCuentas.IsEmpty then
      dm.ExportarEXCEL(DBGridSaldoCuentas);
  end;

  if PageControl.ActivePage.Name = 'TabDetalleMov' then
  begin
    if not ZP_Estadistica_Det_Mov.IsEmpty then
      dm.ExportarEXCEL(DBGridEstadisticaDetMov);
  end;
end;

end.
