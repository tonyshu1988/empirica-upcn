unit UEstadisticaDisponibilidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZStoredProcedure,
  EKBusquedaAvanzada, StdCtrls, EKDbSuma, QRCtrls, QuickRpt,
  EKVistaPreviaQR, DBCtrls, EKOrdenarGrilla;

type
  TFEstadisticaDisponibilidades = class(TForm)
    PanelContenedor: TPanel;
    PageControl: TPageControl;
    TabSaldosCuentas: TTabSheet;
    TabDetalleMov: TTabSheet;
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
    lblEncabezadoParteDiario: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    DBText9: TDBText;
    Label7: TLabel;
    DBText10: TDBText;
    Label8: TLabel;
    DBText11: TDBText;
    DBText19: TDBText;
    Label16: TLabel;
    DBGrid4: TDBGrid;
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
    DBGrid3: TDBGrid;
    lblSaldo_TotalParteDiario: TLabel;
    lblSucursal: TLabel;
    EKDbSuma_ParteDiario: TEKDbSuma;
    lbltotalIngresoEgreso: TLabel;
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
    lblEncabezadoDetMov: TLabel;
    lblSucursalDetMov: TLabel;
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
    QRLabeltotalIngresoEgreso: TQRLabel;
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
    QRDBImage1: TQRDBImage;
    QRLabel8: TQRLabel;
    RepDetalleMov_Subtitulo: TQRLabel;
    RepDetalleMov_Titulo: TQRLabel;
    QRBand3: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRBand4: TQRBand;
    QRLabel19: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand5: TQRBand;
    QRExpr1: TQRExpr;
    QRBand6: TQRBand;
    QRlblRepDetMov_CritBusqueda: TQRLabel;
    QRLabel22: TQRLabel;
    QRBand7: TQRBand;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel32: TQRLabel;
    EKVista_RepDetMov: TEKVistaPreviaQR;
    PageFooterBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRSysData3: TQRSysData;
    ChildBand4: TQRChildBand;
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure DBGridSaldoCuentasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
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
  TabSheet3.TabVisible:= false;

  PageControl.ActivePageIndex:= 0;
  dm.EKModelo.abrir(ZQ_Sucursal);

  lblSaldo_Total.Caption:= '';
  lblSaldo_Encabezado1.Caption:= '';
  lblSaldo_Encabezado2.Caption:= '';

  TEKCriterioBA(EKBuscarSaldo.CriteriosBusqueda.Items[1]).Valor := DateToStr(dm.EKModelo.FechayHora);

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
  lblSaldo_Total.Caption := '';
  lblSaldo_Encabezado2.Caption := '';
  lblSaldo_Encabezado1.Caption := '';
  lblEncabezadoParteDiario.Caption := '';
  lblSaldo_TotalParteDiario.Caption := '';
  lblSucursal.Caption := '';
  lbltotalIngresoEgreso.Caption := '';
  lblEncabezadoDetMov.Caption := '';
  lblSucursalDetMov.Caption := '';

  if PageControl.ActivePage.Name = 'TabSaldosCuentas' then
  begin
    if  EKBuscarSaldo.BuscarSinEjecutar then
      if EKBuscarSaldo.ParametrosSeleccionados1[1] = '' then
      begin
        Application.MessageBox('No se ha cargado la fecha', 'Verifique', MB_OK + MB_ICONINFORMATION);
        btnBuscar.Click;
      end
      else
      begin
        ZP_SaldosCuentas.Close;
        if EKBuscarSaldo.ParametrosSeleccionados1[0] = '' then
          ZP_SaldosCuentas.ParamByName('id_sucursal').AsInteger:= -1
        else
          ZP_SaldosCuentas.ParamByName('id_sucursal').AsInteger:= StrToInt(EKBuscarSaldo.ParametrosSeleccionados1[0]);
        ZP_SaldosCuentas.ParamByName('fecha_hasta').AsDate := StrToDate(EKBuscarSaldo.ParametrosSeleccionados1[1]);
        ZP_SaldosCuentas.Open;

        lblSaldo_Encabezado1.Caption:= 'Saldo Cuentas al '+EKBuscarSaldo.ParametrosSeleccionados1[1];
        lblSaldo_Encabezado2.Caption:= 'Sucursal: '+EKBuscarSaldo.ParametrosSelecReales1[0];
        lblSaldo_Total.Caption:= 'Saldo Total: '+FormatFloat('$ ###,###,##0.00', EKDbSuma_Saldo.SumCollection.Items[0].SumValue);
      end;
  end;


  if PageControl.ActivePage.Name = 'TabParteDiario' then
  begin
    if  EKBuscarParteDiario.BuscarSinEjecutar then
      if (EKBuscarParteDiario.ParametrosSeleccionados1[0] = '') or (EKBuscarParteDiario.ParametrosSeleccionados1[1] = '') then
      begin
        Application.MessageBox('No se ha cargado la fecha', 'Verifique', MB_OK + MB_ICONINFORMATION);
        btnBuscar.Click;
      end
      else
      begin
        ZP_SaldosCuentas.Close;
        ZP_estadistica_Parte_Diario.Close;
        ZP_Estadistica_IE_Medios.Close;

        if EKBuscarParteDiario.ParametrosSeleccionados1[2] = '' then
        begin
          ZP_SaldosCuentas.ParamByName('id_sucursal').AsInteger:= -1;
          ZP_estadistica_Parte_Diario.ParamByName('id_sucursal').AsInteger:= -1;
          ZP_Estadistica_IE_Medios.ParamByName('id_sucursal').AsInteger:= -1;
        end
        else
        begin
          lblSucursal.Caption:= 'Sucursal: '+EKBuscarParteDiario.ParametrosSelecReales1[2];
          ZP_SaldosCuentas.ParamByName('id_sucursal').AsInteger:= StrToInt(EKBuscarParteDiario.ParametrosSeleccionados1[2]);
          ZP_estadistica_Parte_Diario.ParamByName('id_sucursal').AsInteger:= StrToInt(EKBuscarParteDiario.ParametrosSeleccionados1[2]);
          ZP_Estadistica_IE_Medios.ParamByName('id_sucursal').AsInteger:= StrToInt(EKBuscarParteDiario.ParametrosSeleccionados1[2]);
        end;


        ZP_SaldosCuentas.ParamByName('fecha_hasta').AsDate := StrToDate(EKBuscarParteDiario.ParametrosSeleccionados1[1]);
        ZP_SaldosCuentas.Open;


        ZP_estadistica_Parte_Diario.ParamByName('fechadesde').AsDate :=StrToDate(EKBuscarParteDiario.ParametrosSeleccionados1[0]);
        ZP_estadistica_Parte_Diario.ParamByName('fechahasta').AsDate :=StrToDate(EKBuscarParteDiario.ParametrosSeleccionados1[1]);
        ZP_estadistica_Parte_Diario.Open;



        ZP_Estadistica_IE_Medios.ParamByName('fechadesde').AsDate :=StrToDate(EKBuscarParteDiario.ParametrosSeleccionados1[0]);
        ZP_Estadistica_IE_Medios.ParamByName('fechahasta').AsDate :=StrToDate(EKBuscarParteDiario.ParametrosSeleccionados1[1]);
        ZP_Estadistica_IE_Medios.Open;

        lblEncabezadoParteDiario.Caption:= 'Parte Diario: Desde el '+EKBuscarParteDiario.ParametrosSeleccionados1[0]+' al '+EKBuscarParteDiario.ParametrosSeleccionados1[1];
        lblSaldo_TotalParteDiario.Caption:= 'Saldo Total: '+FormatFloat('$ ###,###,##0.00', EKDbSuma_Saldo.SumCollection.Items[0].SumValue);
        lbltotalIngresoEgreso.Caption:= 'Total Ingresos:  '+FormatFloat('$ ###,###,##0.00', EKDbSuma_ParteDiario.SumCollection.Items[0].SumValue)+'                     Total Egresos:  '+FormatFloat('$ ###,###,##0.00', EKDbSuma_ParteDiario.SumCollection.Items[1].SumValue);
      end;
  end;

  if PageControl.ActivePage.Name = 'TabDetalleMov' then
  begin
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

        lblEncabezadoDetMov.Caption:= 'Detalles Movimientos: Desde el '+EKBuscarDetMov.ParametrosSeleccionados1[0]+' al '+EKBuscarDetMov.ParametrosSeleccionados1[1];
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
    if ZP_SaldosCuentas.IsEmpty or ZP_estadistica_Parte_Diario.IsEmpty or ZP_Estadistica_IE_Medios.IsEmpty then
      exit;

    DM.VariablesReportes(RepParteDiario);

    if EKBuscarParteDiario.ParametrosSelecReales1[2] <> '' then
      QRLabelSucursalParteDiario.Caption:= 'Sucursal: '+EKBuscarParteDiario.ParametrosSelecReales1[2]
    else
      QRLabelSucursalParteDiario.Caption:= '';

    QRLabelEncabezadoParteDiario.Caption:= 'Parte Diario: Desde el '+EKBuscarParteDiario.ParametrosSeleccionados1[0]+' al '+EKBuscarParteDiario.ParametrosSeleccionados1[1];
    QRLabelImporteSaldo.Caption:= 'Saldo Total: '+FormatFloat('$ ###,###,##0.00', EKDbSuma_Saldo.SumCollection.Items[0].SumValue);
    QRLabeltotalIngresoEgreso.Caption:= 'Total Ingresos:  '+FormatFloat('$ ###,###,##0.00', EKDbSuma_ParteDiario.SumCollection.Items[0].SumValue)+'                     Total Egresos:  '+FormatFloat('$ ###,###,##0.00', EKDbSuma_ParteDiario.SumCollection.Items[1].SumValue);

    EKVista_RepParteDiario.VistaPrevia;
  end;


  if PageControl.ActivePage.Name = 'TabDetalleMov' then
  begin
    if ZP_Estadistica_Det_Mov.IsEmpty then
      exit;

    DM.VariablesReportes(RepDetalleMov);
    QRlblRepDetMov_CritBusqueda.Caption := EKBuscarDetMov.ParametrosBuscados;

    EKVista_RepDetMov.VistaPrevia;
  end;

end;

procedure TFEstadisticaDisponibilidades.DBGridSaldoCuentasDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas (DBGridSaldoCuentas, Rect, DataCol, Column, State);
end;

end.