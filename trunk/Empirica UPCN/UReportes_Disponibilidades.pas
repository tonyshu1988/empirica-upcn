unit UReportes_Disponibilidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, ExtCtrls, EKBusquedaAvanzada, StdCtrls,
  QRCtrls, QuickRpt, EKVistaPreviaQR, EKOrdenarGrilla, EKIni,
  mxNativeExcel, mxExport;

type
  TFReportes_Disponibilidades = class(TForm)
    dxBarABM: TdxBarManager;
    btImprimir: TdxBarLargeButton;
    btnLibroBanco: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    pFondo: TPanel;
    DBGridLibroBanco: TDBGrid;
    LIBRO_BANCO: TZQuery;
    DS_LIBRO_BANCO: TDataSource;
    ZQ_Cuentas: TZQuery;
    DS_Cuentas: TDataSource;
    ZQ_CuentasID_CUENTA: TIntegerField;
    ZQ_CuentasNOMBRE_CUENTA: TStringField;
    ZQ_CuentasMEDIO_DE_PAGO: TStringField;
    ZQ_CuentasNRO_CUENTA_BANCARIA: TStringField;
    ZQ_CuentasULTIMO_NRO: TIntegerField;
    ZQ_CuentasAUTONUMERAR: TStringField;
    ZQ_CuentasMEDIO_POR_DEFECTO: TIntegerField;
    ZQ_CuentasBUSQUEDA: TStringField;
    EKBAvanzadaLibroBco: TEKBusquedaAvanzada;
    pLibroBanco: TPanel;
    Panel1: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Label2: TLabel;
    RepLibroB: TQuickRep;
    QRBand5: TQRBand;
    QRLabel41: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel11: TQRLabel;
    RepLibroB_Reporte_Titulo_2: TQRLabel;
    RepLibroB_Reporte_Titulo_1: TQRLabel;
    QRBand6: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRChildBand2: TQRChildBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel16: TQRLabel;
    QRBand7: TQRBand;
    QRBand8: TQRBand;
    QRExpr15: TQRExpr;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    EKVistaPrevia_LibroBco: TEKVistaPreviaQR;
    lblLibBco_FDesde: TQRLabel;
    lblLibBco_FHasta: TQRLabel;
    lblLibBco_Oden: TQRLabel;
    lblLibBco_Cuenta: TQRLabel;
    QRLabel24: TQRLabel;
    QRSysData2: TQRSysData;
    EKOrdenarGrillaLB: TEKOrdenarGrilla;
    LIBRO_BANCOID_MOVIMIENTO: TIntegerField;
    LIBRO_BANCOORDEN: TIntegerField;
    LIBRO_BANCOFECHA: TDateField;
    LIBRO_BANCOMOVIMIENTO: TStringField;
    LIBRO_BANCONRO_PAGO_REC: TIntegerField;
    LIBRO_BANCOMEDIO: TStringField;
    LIBRO_BANCODEBE: TFloatField;
    LIBRO_BANCOHABER: TFloatField;
    LIBRO_BANCOSALDO: TFloatField;
    LIBRO_BANCOCONCILIADO: TStringField;
    LIBRO_BANCONOMBRE_CONCEPTO: TStringField;
    LIBRO_BANCOFECHA_PD: TDateField;
    LIBRO_BANCOOTROS: TStringField;
    LIBRO_BANCOFECHA_CONCILIADO: TDateField;
    LIBRO_BANCOID_MEDIO: TIntegerField;
    LIBRO_BANCOMOV_ANULADO: TStringField;
    LIBRO_BANCOCTA_MOV_ANULADO: TStringField;
    LIBRO_BANCONRO_FACTURA: TStringField;
    LIBRO_BANCONRO_RECIBO: TStringField;
    LIBRO_BANCONRO_ORDEN: TIntegerField;
    LIBRO_BANCONRO_ORDEN_STRING: TStringField;
    QRLabel4: TQRLabel;
    QRDBTxtConciliado: TQRDBText;
    QRShape11: TQRShape;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLblProveedor: TQRLabel;
    LIBRO_BANCOPROVEEDOR: TStringField;
    Panel3: TPanel;
    StaticTextConciliado: TStaticText;
    ZQ_CuentasCOLOR_CONSILIADO: TStringField;
    PFiltrosColumnas: TPanel;
    BtAplicarFiltrosColumnas: TButton;
    CBFechaEmi: TCheckBox;
    CBFechaPD: TCheckBox;
    CBNroMov: TCheckBox;
    CBMedio: TCheckBox;
    CBNroMedio: TCheckBox;
    CBProveedor: TCheckBox;
    CBConcepto: TCheckBox;
    CBNroOrden: TCheckBox;
    CBRecibo: TCheckBox;
    CBNroFactura: TCheckBox;
    CBFechaConciliado: TCheckBox;
    verAnulados: TCheckBox;
    EKIniGuardarFiltros: TEKIni;
    btnFiltrat: TdxBarLargeButton;
    mxDBGridExport: TmxDBGridExport;
    mxNativeExcel1: TmxNativeExcel;
    btnExel: TdxBarLargeButton;
    LIBRO_BANCONRO_MEDIO: TStringField;
    LIBRO_BANCOORDEN_SALDO_ANTERIOR: TIntegerField;
    LIBRO_BANCOTIPO_PROVEEDOR: TStringField;
    procedure btnLibroBancoClick(Sender: TObject);
    function  validarDatos():boolean;
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure DBGridLibroBancoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LIBRO_BANCOAfterScroll(DataSet: TDataSet);
    procedure BtAplicarFiltrosColumnasClick(Sender: TObject);
    procedure GuardarOpcionesFiltrado();
    procedure LeerOpcionesFiltrado();
    procedure btnFiltratClick(Sender: TObject);
    procedure btnExelClick(Sender: TObject);
  private
    { Private declarations }
  public
    reporte: integer;
  end;

var
  FReportes_Disponibilidades: TFReportes_Disponibilidades;

const
  SALDO_CTA = 1;
  LIBRO_BCO = 2;

implementation

uses UDM, DateUtils;

{$R *.dfm}

procedure TFReportes_Disponibilidades.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFReportes_Disponibilidades.FormCreate(Sender: TObject);
var
  fecha: tdate;
begin
  EKOrdenarGrillaLB.CargarConfigColunmas;
  pLibroBanco.BringToFront;

  fecha:= StartOfAMonth(YearOf(DM.EKModelo.Fecha),MonthOf(DM.EKModelo.Fecha));
  TEKCriterioBA(EKBAvanzadaLibroBco.CriteriosBusqueda.Items[1]).Valor := DateToStr(fecha);
  TEKCriterioBA(EKBAvanzadaLibroBco.CriteriosBusqueda.Items[2]).Valor := DateToStr(dm.EKModelo.Fecha);

  if CuentaNro <> 0 then //si me logueo como un usuario que tiene asignada una cuenta
  begin
    ZQ_Cuentas.Filter:= 'ID_CUENTA = '+IntToStr(CuentaNro);
    ZQ_Cuentas.Filtered:= true;
  end
  else  //si me logueo como administrador
  begin
    ZQ_Cuentas.Filter:= '';
    ZQ_Cuentas.Filtered:= false;
  end;

  LeerOpcionesFiltrado;
  BtAplicarFiltrosColumnas.Click;
end;

function TFReportes_Disponibilidades.validarDatos():boolean;
begin
  result := true;

  //DEUDA MESUAL
  if (reporte = LIBRO_BCO) then
  begin
      if trim(EKBAvanzadaLibroBco.ParametrosSeleccionados1[0]) = '' then
      begin
        Application.MessageBox('No se ha seleccionado ninguna CUENTA, por favor Verifique','Atención',MB_OK+MB_ICONINFORMATION);
        result := false;
        exit;
      end;

      if EKBAvanzadaLibroBco.ParametrosSeleccionados1[1] = '' then
      begin
        Application.MessageBox('El campo FECHA DESDE se encuentra vacío, por favor Verifique','Atención',MB_OK+MB_ICONINFORMATION);
        result := false;
        exit;
      end;

      if EKBAvanzadaLibroBco.ParametrosSeleccionados1[2] = '' then
      begin
        Application.MessageBox('El campo FECHA HASTA se encuentra vacío, por favor Verifique','Atención',MB_OK+MB_ICONINFORMATION);
        result := false;
        exit;
      end;

      if (StrToDate(EKBAvanzadaLibroBco.ParametrosSeleccionados1[1])  > StrToDate(EKBAvanzadaLibroBco.ParametrosSeleccionados1[2])) then
      begin
        Application.MessageBox('El campo FECHA DESDE es mayor al campo FECHA HASTA, por favor Verifique','Atención',MB_OK+MB_ICONINFORMATION);
        result := false;
        exit;
      end;

      if trim(EKBAvanzadaLibroBco.ParametrosSeleccionados1[3]) = '' then
      begin
        Application.MessageBox('El campo ORDENAMIENTO se encuentra vacío, por favor Verifique','Atención',MB_OK+MB_ICONINFORMATION);
        result := false;
        exit;
      end;
  end;
end;


procedure TFReportes_Disponibilidades.btnLibroBancoClick(Sender: TObject);
begin
  reporte:= LIBRO_BCO;
  pLibroBanco.BringToFront;

  if EKBAvanzadaLibroBco.BuscarSinEjecutar then
  begin
    if not validarDatos then
    begin
       btnLibroBanco.Click;
    end
    else
    begin
      LIBRO_BANCO.Close;
      LIBRO_BANCO.ParamByName('cuenta').AsInteger := StrToInt(EKBAvanzadaLibroBco.ParametrosSeleccionados1[0]);
      LIBRO_BANCO.ParamByName('desde').AsDate := StrToDate(EKBAvanzadaLibroBco.ParametrosSeleccionados1[1]);
      LIBRO_BANCO.ParamByName('hasta').AsDate := StrToDate(EKBAvanzadaLibroBco.ParametrosSeleccionados1[2]);
      LIBRO_BANCO.ParamByName('ordenamiento').AsInteger := StrToInt(EKBAvanzadaLibroBco.ParametrosSeleccionados1[3]);
      LIBRO_BANCO.Open;

      if ZQ_CuentasCOLOR_CONSILIADO.AsString = '' then
        StaticTextConciliado.Color:= $009DFFFF
      else
        StaticTextConciliado.Color:= StringToColor(ZQ_CuentasCOLOR_CONSILIADO.AsString);
    end;
  end;
end;


procedure TFReportes_Disponibilidades.btImprimirClick(Sender: TObject);
begin
  if reporte = LIBRO_BCO then
  begin
    if LIBRO_BANCO.IsEmpty then
      exit;

    lblLibBco_Cuenta.Caption:= EKBAvanzadaLibroBco.ParametrosSelecReales1[0];
    lblLibBco_FDesde.Caption:= EKBAvanzadaLibroBco.ParametrosSelecReales1[1];
    lblLibBco_FHasta.Caption:= EKBAvanzadaLibroBco.ParametrosSelecReales1[2];
    lblLibBco_Oden.Caption:=   EKBAvanzadaLibroBco.ParametrosSelecReales1[3];

    dm.VariablesReportes(RepLibroB);

    EKVistaPrevia_LibroBco.VistaPrevia;
  end;
end;


procedure TFReportes_Disponibilidades.DBGridLibroBancoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  a: TRect;
begin
  a.Left := rect.Left;
  a.Right := rect.Right;
  a.Top := rect.Top;
  a.Bottom := rect.Bottom;

  if not LIBRO_BANCO.IsEmpty then
  begin
    if LIBRO_BANCOID_MOVIMIENTO.AsInteger <> -1 then
    begin
      if (LIBRO_BANCOCONCILIADO.Value='S') or (LIBRO_BANCOID_MEDIO.AsInteger = 5) then
      begin
        DBGridLibroBanco.Canvas.Brush.Color :=StaticTextConciliado.Brush.Color;
        DBGridLibroBanco.Canvas.Font.Color := clBlack;
        if (gdFocused in State) or (gdSelected in State) then
        begin
          a.Top := rect.Top+1;
          a.Bottom := rect.Bottom -1;
          DBGridLibroBanco.Canvas.Font.Color := clBlack;
          DBGridLibroBanco.Canvas.Font.Style := DBGridLibroBanco.Canvas.Font.Style + [fsBold];
        end;
      end
      else
      begin
        if (gdFocused in State) or (gdSelected in State) then
        begin
          a.Top := rect.Top+1;
          a.Bottom := rect.Bottom -1;
          DBGridLibroBanco.Canvas.Font.Color := clwhite;
          DBGridLibroBanco.Canvas.Brush.Color:=clBlue;
          DBGridLibroBanco.Canvas.Font.Style := DBGridLibroBanco.Canvas.Font.Style + [fsBold];
        end;
      end;
    end
    else
    begin
      DBGridLibroBanco.Canvas.Brush.Color := clBlack;
      DBGridLibroBanco.Canvas.Font.Color := clWhite;
      DBGridLibroBanco.Canvas.Font.Style := DBGridLibroBanco.Canvas.Font.Style + [fsBold];
      if (gdFocused in State) or (gdSelected in State) then
      begin
        a.Top := rect.Top+1;
        a.Bottom := rect.Bottom -1;
      end;
    end;

    DBGridLibroBanco.DefaultDrawColumnCell(a,datacol,column,state);
  end;
end;


procedure TFReportes_Disponibilidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EKOrdenarGrillaLB.GuardarConfigColumnas;
  GuardarOpcionesFiltrado;
end;


procedure TFReportes_Disponibilidades.LIBRO_BANCOAfterScroll(
  DataSet: TDataSet);
begin
  if LIBRO_BANCOCONCILIADO.AsString = 'S'  then
    QRDBTxtConciliado.Enabled:= true
  else
    QRDBTxtConciliado.Enabled:= false;

  if LIBRO_BANCOCTA_MOV_ANULADO.AsString = 'A' then
    QRLblProveedor.Caption:= 'ANULADO - '+LIBRO_BANCOPROVEEDOR.AsString
  else
    QRLblProveedor.Caption:= LIBRO_BANCOPROVEEDOR.AsString;

end;


procedure TFReportes_Disponibilidades.BtAplicarFiltrosColumnasClick(
  Sender: TObject);
begin
  if not CBFechaEmi.Checked then  //fecha emision
    DBGridLibroBanco.Columns[0].Visible := false
  else
    DBGridLibroBanco.Columns[0].Visible := true;

  if not CBFechaPD.Checked then  //fecha postdata
    DBGridLibroBanco.Columns[1].Visible := false
  else
    DBGridLibroBanco.Columns[1].Visible := true;

  if not CBNroMov.Checked then //nro movimiento
    DBGridLibroBanco.Columns[2].Visible := false
  else
    DBGridLibroBanco.Columns[2].Visible := true;

  if not CBNroOrden.Checked then //Nro Orden
    DBGridLibroBanco.Columns[3].Visible := false
  else
    DBGridLibroBanco.Columns[3].Visible := true;

  if not CBMedio.Checked then  //medio
    DBGridLibroBanco.Columns[4].Visible := false
  else
    DBGridLibroBanco.Columns[4].Visible := true;

  if not CBNroMedio.Checked then  //nro cheque/transf
    DBGridLibroBanco.Columns[5].Visible := false
  else
    DBGridLibroBanco.Columns[5].Visible := true;

  if not CBProveedor.Checked then  //proveedor
  begin
    DBGridLibroBanco.Columns[6].Visible := false;
    DBGridLibroBanco.Columns[7].Visible := false;
  end
  else
  begin
    DBGridLibroBanco.Columns[6].Visible := true;
    DBGridLibroBanco.Columns[7].Visible := true;
  end;

  if not CBConcepto.Checked then  //concepto
    DBGridLibroBanco.Columns[9].Visible := false
  else
    DBGridLibroBanco.Columns[9].Visible := true;

  if not CBNroFactura.Checked then //factura
    DBGridLibroBanco.Columns[10].Visible := false
  else
    DBGridLibroBanco.Columns[10].Visible := true;

  if not CBrecibo.Checked then //Recibo
    DBGridLibroBanco.Columns[11].Visible := false
  else
    DBGridLibroBanco.Columns[11].Visible := true;

  if not CBFechaConciliado.Checked then //conciliado
    DBGridLibroBanco.Columns[16].Visible := false
  else
    DBGridLibroBanco.Columns[16].Visible := true;

  //filtro los anulados para que se vean o no
  if verAnulados.Checked then
    begin
      LIBRO_BANCO.Filtered:=False;
      LIBRO_BANCO.Filter:='';
      DBGridLibroBanco.Columns[8].Visible := true;
    end
  else
    begin
      LIBRO_BANCO.Filtered:=False;
      LIBRO_BANCO.Filter:= Format('CTA_MOV_ANULADO<>%s',[quotedStr('A')]);
      LIBRO_BANCO.Filtered:=True;
      DBGridLibroBanco.Columns[8].Visible := false;
    end;

  PFiltrosColumnas.Visible:=false;
end;


procedure TFReportes_Disponibilidades.GuardarOpcionesFiltrado();
begin
  if CBFechaEmi.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\FechaEmision', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\FechaEmision', 'FALSE');

  if CBFechaPD.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\FechaPD', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\FechaPD', 'FALSE');

  if CBNroMov.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\NroMov', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\NroMov', 'FALSE');

  if CBMedio.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\Medio', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\Medio', 'FALSE');

  if CBNroMedio.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\NroMedio', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\NroMedio', 'FALSE');

  if CBProveedor.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\Proveedor', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\Proveedor', 'FALSE');

  if CBConcepto.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\Concepto', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\Concepto', 'FALSE');

  if CBNroOrden.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\NroOrden', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\NroOrden', 'FALSE');

  if CBRecibo.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\Otros', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\Otros', 'FALSE');

  if CBNroFactura.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\NroFactura', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\NroFactura', 'FALSE');

  if CBFechaConciliado.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\FechaConciliado', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\FechaConciliado', 'FALSE');

  if verAnulados.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\verAnulados', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\verAnulados', 'FALSE');
end;


procedure TFReportes_Disponibilidades.LeerOpcionesFiltrado();
begin
  if EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\FechaEmision') <> '' then
    CBFechaEmi.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\FechaEmision'));

  if EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\FechaPD') <> '' then
    CBFechaPD.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\FechaPD'));

  if EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\NroMov') <> '' then
    CBNroMov.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\NroMov'));

  if EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\Medio') <> '' then
    CBMedio.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\Medio'));

  if EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\NroMedio') <> '' then
    CBNroMedio.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\NroMedio'));

  if EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\Proveedor') <> '' then
    CBProveedor.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\Proveedor'));

  if EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\Concepto') <> '' then
    CBConcepto.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\Concepto'));

  if EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\NroOrden') <> '' then
    CBNroOrden.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\NroOrden'));

  if EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\Otros') <> '' then
    CBRecibo.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\Otros'));

  if EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\NroFactura') <> '' then
    CBNroFactura.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\NroFactura'));

  if EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\FechaConciliado') <> '' then
    CBFechaConciliado.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\FechaConciliado'));

  if EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\verAnulados') <> '' then
    verAnulados.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\verAnulados'));
end;


procedure TFReportes_Disponibilidades.btnFiltratClick(Sender: TObject);
begin
  if PFiltrosColumnas.Visible = false then
    PFiltrosColumnas.Visible:=true
  else
    PFiltrosColumnas.Visible:=false;
end;


procedure TFReportes_Disponibilidades.btnExelClick(Sender: TObject);
begin
  if not LIBRO_BANCO.IsEmpty then
    mxDBGridExport.Select;
end;

end.
