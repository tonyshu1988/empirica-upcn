unit UReportes_Disponibilidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, ExtCtrls, EKBusquedaAvanzada, StdCtrls,
  QRCtrls, QuickRpt, EKVistaPreviaQR, EKOrdenarGrilla;

type
  TFReportes_Disponibilidades = class(TForm)
    dxBarABM: TdxBarManager;
    btnSaldoCuenta: TdxBarLargeButton;
    btImprimir: TdxBarLargeButton;
    btnLibroBanco: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btn2: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    pFondo: TPanel;
    DBGridSaldoCtas: TDBGrid;
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
    pSaldoCta: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label12: TLabel;
    Label9: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Label2: TLabel;
    pTapa: TPanel;
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
    LIBRO_BANCONRO_MEDIO: TStringField;
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
    procedure btnLibroBancoClick(Sender: TObject);
    function  validarDatos():boolean;
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSaldoCuentaClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure DBGridLibroBancoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LIBRO_BANCOAfterScroll(DataSet: TDataSet);
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
  reporte:= -1;
  pLibroBanco.BringToFront;

  fecha:= StartOfAMonth(YearOf(DM.EKModelo.Fecha),MonthOf(DM.EKModelo.Fecha));
  TEKCriterioBA(EKBAvanzadaLibroBco.CriteriosBusqueda.Items[1]).Valor := DateToStr(fecha);
  TEKCriterioBA(EKBAvanzadaLibroBco.CriteriosBusqueda.Items[2]).Valor := DateToStr(dm.EKModelo.Fecha);
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

{
  //MINUTA
  if (PageControl.ActivePage = TabSheetMinuta) then
  begin
      if (cBoxTipoMinuta.Text = '') then
      begin
        Application.MessageBox('No se ha seleccionado ningún TIPO DE MINUTA, por favor Verifique','Atención',MB_OK+MB_ICONINFORMATION);
        cBoxTipoMinuta.SetFocus;
        cBoxTipoMinuta.Perform(CB_SHOWDROPDOWN, 1,0);
        result := false;
        exit;
      end;

      if (DTPMinutaDesdeFecha.Date > DTPMinutaHastaFecha.Date) then
      begin
        Application.MessageBox('La FECHA DESDE es mayor a la FECHA HASTA, por favor Verifique','Atención',MB_OK+MB_ICONINFORMATION);
        DTPMinutaDesdeFecha.SetFocus;
        result := false;
        exit;
      end;
  end;
}
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
    end;
  end;
end;


procedure TFReportes_Disponibilidades.btnSaldoCuentaClick(Sender: TObject);
begin
  pSaldoCta.BringToFront;
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
begin
  if not LIBRO_BANCO.IsEmpty then
  begin
     if LIBRO_BANCOMEDIO.AsString = 'CHEQUE' then
     begin
       if (LIBRO_BANCOCONCILIADO.Value = 'S') and (LIBRO_BANCOFECHA_CONCILIADO.AsDateTime < StrToDate(EKBAvanzadaLibroBco.ParametrosSeleccionados1[2])) then
          begin
           DBGridLibroBanco.Canvas.Brush.Color :=StaticTextConciliado.Brush.Color;
           DBGridLibroBanco.Canvas.Font.Color := clBlack;
           if (gdFocused in State) or (gdSelected in State) then
             begin
             DBGridLibroBanco.Canvas.Font.Color := clBlack;
             DBGridLibroBanco.Canvas.Font.Style := DBGridLibroBanco.Canvas.Font.Style + [fsBold];
             end
          end
       else
          begin
            if (gdFocused in State) or (gdSelected in State) then
             begin
               DBGridLibroBanco.Canvas.Font.Color := clwhite;
               DBGridLibroBanco.Canvas.Brush.Color:=clBlue;
               DBGridLibroBanco.Canvas.Font.Style := DBGridLibroBanco.Canvas.Font.Style + [fsBold];
             end;
          end;
//
//       if ((LIBRO_BANCODEBE.IsNull) and (LIBRO_BANCOHABER.Value = 0)) or ((LIBRO_BANCOHABER.IsNull) and (LIBRO_BANCODEBE.Value = 0)) then
//       begin
//         DBGridLibroBanco.Canvas.Brush.Color :=StaticTextAnulado.Brush.Color;
//         DBGridLibroBanco.Canvas.Font.Color := clBlack;
//         if (gdFocused in State) or (gdSelected in State) then
//         begin
//           DBGridLibroBanco.Canvas.Font.Color := clBlack;
//           DBGridLibroBanco.Canvas.Font.Style := DBGridLibroBanco.Canvas.Font.Style + [fsBold];
//         end
//       end;

       DBGridLibroBanco.DefaultDrawColumnCell(rect,datacol,column,state);
     end
//     else  // if LIBRO_BANCOMEDIO.AsString <> 'CHEQUE' then
//     begin
//       if ((LIBRO_BANCODEBE.IsNull) and (LIBRO_BANCOHABER.Value = 0)) or ((LIBRO_BANCOHABER.IsNull) and (LIBRO_BANCODEBE.Value = 0)) then
//       begin
//         DBGridLibroBanco.Canvas.Brush.Color :=StaticTextAnulado.Brush.Color;
//         DBGridLibroBanco.Canvas.Font.Color := clBlack;
//         if (gdFocused in State) or (gdSelected in State) then
//         begin
//           DBGridLibroBanco.Canvas.Font.Color := clBlack;
//           DBGridLibroBanco.Canvas.Font.Style := DBGridLibroBanco.Canvas.Font.Style + [fsBold];
//         end;
//         DBGridLibroBanco.DefaultDrawColumnCell(rect,datacol,column,state);
//       end
//       else
//       begin
//         if (gdFocused in State) or (gdSelected in State) then
//         begin
//           DBGridLibroBanco.Canvas.Font.Color := clwhite;
//           DBGridLibroBanco.Canvas.Brush.Color:=clBlue;
//           DBGridLibroBanco.Canvas.Font.Style := DBGridLibroBanco.Canvas.Font.Style + [fsBold];
//         end;
//       end;
//     end;
  end;
end;

procedure TFReportes_Disponibilidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EKOrdenarGrillaLB.GuardarConfigColumnas;
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

end.
