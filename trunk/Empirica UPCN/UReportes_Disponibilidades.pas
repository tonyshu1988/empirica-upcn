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
    EKVistaPrevia_LibroBco: TEKVistaPreviaQR;
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
    LIBRO_BANCONRO_RECIBO: TStringField;
    LIBRO_BANCONRO_ORDEN: TIntegerField;
    LIBRO_BANCONRO_ORDEN_STRING: TStringField;
    LIBRO_BANCOPROVEEDOR: TStringField;
    Panel3: TPanel;
    StaticTextConciliado: TStaticText;
    ZQ_CuentasCOLOR_CONSILIADO: TStringField;
    EKIniGuardarFiltros: TEKIni;
    btnFiltrar: TdxBarLargeButton;
    btnExel: TdxBarLargeButton;
    LIBRO_BANCONRO_MEDIO: TStringField;
    LIBRO_BANCOORDEN_SALDO_ANTERIOR: TIntegerField;
    LIBRO_BANCOTIPO_PROVEEDOR: TStringField;
    RepLibroB: TQuickRep;
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRDBImage1: TQRDBImage;
    RepLibroB_TITULO_LB: TQRLabel;
    RepLibroB_Reporte_Titulo_2: TQRLabel;
    RepLibroB_Reporte_Titulo_1: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    lblLibBco_FDesde: TQRLabel;
    lblLibBco_FHasta: TQRLabel;
    lblLibBco_Oden: TQRLabel;
    lblLibBco_Cuenta: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBTxtConciliado: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLblProveedor: TQRDBText;
    QRChildBand1: TQRChildBand;
    QRLabel17: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel36: TQRLabel;
    QRBand3: TQRBand;
    QRLabel37: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    LIBRO_BANCONRO_FACTURA: TStringField;
    procedure btnLibroBancoClick(Sender: TObject);
    function  validarDatos():boolean;
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure DBGridLibroBancoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LIBRO_BANCOAfterScroll(DataSet: TDataSet);
    procedure VerAnulados(valor: boolean);
    procedure GuardarOpcionesFiltrado();
    procedure LeerOpcionesFiltrado();
    procedure btnFiltrarClick(Sender: TObject);
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

uses UDM, DateUtils, UUtilidades;

{$R *.dfm}

procedure TFReportes_Disponibilidades.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFReportes_Disponibilidades.FormCreate(Sender: TObject);
var
  fecha: tdate;
begin
  EKOrdenarGrillaLB.CargarConfigColumnas;
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

    dm.TitulosReportes(RepLibroB,CuentaNro);

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
      if (LIBRO_BANCOCONCILIADO.Value='S')and (LIBRO_BANCOFECHA_CONCILIADO.Value <= StrToDate(EKBAvanzadaLibroBco.ParametrosSelecReales1[2]))  then
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


procedure TFReportes_Disponibilidades.btnFiltrarClick(Sender: TObject);
begin
  if LIBRO_BANCO.Filtered then  //si esta filtrado es porque no veo los anulados
    VerAnulados(true)
  else //si no esta filtrado es porque estoy viendo todoscf
    VerAnulados(false);
end;


procedure TFReportes_Disponibilidades.VerAnulados(valor: Boolean);
begin
  //filtro los anulados para que se vean o no
  if valor then //si es true veo los anulados
    begin
      LIBRO_BANCO.Filtered:=False;
      LIBRO_BANCO.Filter:='';

      DBGridLibroBanco.Columns[GetIndex(DBGridLibroBanco, 'Anulado')].Visible:= true;
    end
  else //si es false oculto los anulados
    begin
      LIBRO_BANCO.Filtered:=False;
      LIBRO_BANCO.Filter:= Format('CTA_MOV_ANULADO<>%s',[quotedStr('A')]);
      LIBRO_BANCO.Filtered:=True;

      DBGridLibroBanco.Columns[GetIndex(DBGridLibroBanco, 'Anulado')].Visible:= false;
    end;
end;


procedure TFReportes_Disponibilidades.GuardarOpcionesFiltrado();
begin
  if not LIBRO_BANCO.Filtered then //si no esta filtrado ver anulados es TRUE, los veo
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\verAnulados', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UReporteLibroBanco\Filtro\verAnulados', 'FALSE');
end;


procedure TFReportes_Disponibilidades.LeerOpcionesFiltrado();
begin
  if EKIniGuardarFiltros.LeerRegString('\UReporteLibroBanco\Filtro\verAnulados') = 'TRUE' then
    VerAnulados(true)
  else
    VerAnulados(false);
end;


procedure TFReportes_Disponibilidades.btnExelClick(Sender: TObject);
begin
  if LIBRO_BANCO.IsEmpty then
    exit;

  dm.prepararParaExportar(LIBRO_BANCO, false); //desactivo el currency y seteo los parametros para exportar
  dm.ExcelExport.DBGrid:= DBGridLibroBanco;
  dm.ExcelExport.Select;
  dm.prepararParaExportar(LIBRO_BANCO, true); //activo el currency y vuelvo a los parametros anteriores
end;

end.
