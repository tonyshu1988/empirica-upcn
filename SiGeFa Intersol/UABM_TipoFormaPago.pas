unit UABM_TipoFormaPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, XPStyleActnCtrls, ActnMan,
  QRCtrls, QuickRpt, cxClasses, ISVistaPreviaQR,
  ISBusquedaAvanzada, ISOrdenarGrilla;

type
  TFABM_TipoFormaPago = class(TForm)
    PanelFondo: TPanel;
    PanelGrilla: TPanel;
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
    ZQ_TipoFPago: TZQuery;
    DS_TipoFPago: TDataSource;
    DBGridTipoFPago: TDBGrid;
    PBusqueda: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    RepTipoFPago: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepTipoFPago_Subtitulo: TQRLabel;
    RepTipoFPago_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand11: TQRBand;
    QRlblPieDePagina: TQRLabel;
    QRLabel43: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand12: TQRBand;
    QRExpr18: TQRExpr;
    TitleBand2: TQRBand;
    QRLabelCritBusqueda: TQRLabel;
    QRLabel48: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel1: TQRLabel;
    ZQ_TipoFPagoID_TIPO_FORMAPAGO: TIntegerField;
    ZQ_TipoFPagoDESCRIPCION: TStringField;
    ZQ_TipoFPagoBAJA: TStringField;
    ZQ_TipoFPagoIF: TStringField;
    ZQ_TipoFPagoDESC_REC: TFloatField;
    ZQ_TipoFPagoCOD_CORTO: TIntegerField;
    ZQ_UltimoNro: TZQuery;
    ZQ_UltimoNroCOD_CORTO: TIntegerField;
    ZQ_TipoFPagoGENERA_VUELTO: TStringField;
    ZQ_TipoFPagoCOLUMNA_PRECIO: TIntegerField;
    ZQ_TipoFPagoMODIFICABLE: TStringField;
    btnExcel: TdxBarLargeButton;
    ZQ_TipoFPagoDESCUENTO: TIntegerField;
    ZQ_TipoFPagoRETENCIONES: TIntegerField;
    ZQ_TipoFPagoIVA_21: TIntegerField;
    ZQ_TipoFPagoIVA_10: TIntegerField;
    ZQ_TipoFPagoGANANCIAS: TIntegerField;
    ZQ_TipoFPagoIIBB: TIntegerField;
    ZQ_TipoFPagoA_POS: TIntegerField;
    ZQ_TipoFPagoA_NEG: TIntegerField;
    ZQ_TipoFPagoOTROS_DESCUENTOS: TIntegerField;
    ZQ_TipoFPagoINTR: TIntegerField;
    ISVistaPrevia: TISVistaPreviaQR;
    ISOrdenarGrilla1: TISOrdenarGrilla;
    ISBuscar: TISBusquedaAvanzada;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure DBGridTipoFPagoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    //------TECLAS RAPIDAS
    procedure ANuevoExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure ABajaExecute(Sender: TObject);
    procedure AReactivarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_TipoFormaPago: TFABM_TipoFormaPago;

const
  transaccion_ABM = 'ABM TIPO MEDIO PAGO';

implementation

uses UPrincipal, UDM;

{$R *.dfm}

procedure TFABM_TipoFormaPago.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  ISOrdenarGrilla1.GuardarConfigColumnas;
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFABM_TipoFormaPago.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_TipoFormaPago.btnBuscarClick(Sender: TObject);
begin
  if ISBuscar.Buscar then
    dm.mostrarCantidadRegistro(ZQ_TipoFPago, lblCantidadRegistros);
end;


procedure TFABM_TipoFormaPago.btnNuevoClick(Sender: TObject);
begin
  if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoFPago]) then
  begin
    DBGridTipoFPago.Enabled:=true;
    ZQ_UltimoNro.Close;
    ZQ_UltimoNro.Open;

    ZQ_TipoFPago.Append;
    ZQ_TipoFPagoBAJA.AsString:= 'N';
    ZQ_TipoFPagoMODIFICABLE.AsString:= 'S';
    ZQ_TipoFPagoGENERA_VUELTO.AsString:= 'N';
    ZQ_TipoFPagoIF.AsString:= 'S';    
    ZQ_TipoFPagoCOLUMNA_PRECIO.AsInteger:= 1;    

    if ZQ_UltimoNro.IsEmpty then
      ZQ_TipoFPagoCOD_CORTO.AsInteger:= 1
    else
      ZQ_TipoFPagoCOD_CORTO.AsInteger:= ZQ_UltimoNroCOD_CORTO.AsInteger + 1;

    
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_TipoFormaPago.btnModificarClick(Sender: TObject);
begin
  if (ZQ_TipoFPago.IsEmpty) or (ZQ_TipoFPagoMODIFICABLE.AsString = 'N') then
    exit;

  if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoFPago]) then
  begin

    ZQ_TipoFPago.Edit;
    if ZQ_TipoFPagoCOD_CORTO.IsNull then
    begin
      ZQ_UltimoNro.Close;
      ZQ_UltimoNro.Open;
      if ZQ_UltimoNro.IsEmpty then
        ZQ_TipoFPagoCOD_CORTO.AsInteger:= 1
      else
        ZQ_TipoFPagoCOD_CORTO.AsInteger:= ZQ_UltimoNroCOD_CORTO.AsInteger + 1;
    end;

    DBGridTipoFPago.Enabled:=true;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_TipoFormaPago.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_TipoFPago.IsEmpty) OR (ZQ_TipoFPagoBAJA.AsString <> 'N') or (ZQ_TipoFPagoMODIFICABLE.AsString = 'N') then
    exit;

  if (application.MessageBox(pchar('�Desea dar de baja el "Tipo Medio Pago" seleccionado?'), 'ABM Tipo Medio Pago', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoFPago]) then
    begin
      ZQ_TipoFPago.Edit;
      ZQ_TipoFPagoBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.ISModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.ISModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_TipoFPago.RecNo;
    ZQ_TipoFPago.Refresh;
    ZQ_TipoFPago.RecNo:= recNo;
  end;
end;


procedure TFABM_TipoFormaPago.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_TipoFPago.IsEmpty) OR (ZQ_TipoFPagoBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('�Desea reactivar el "Tipo Medio Pago" seleccionado?'), 'ABM Tipo Medio Pago', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoFPago]) then
    begin
      ZQ_TipoFPago.Edit;
      ZQ_TipoFPagoBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.ISModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.ISModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_TipoFPago.RecNo;
    ZQ_TipoFPago.Refresh;
    ZQ_TipoFPago.RecNo:= recNo;
  end;
end;


procedure TFABM_TipoFormaPago.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if (ZQ_TipoFPagoID_TIPO_FORMAPAGO.IsNull) then
  begin
    Application.MessageBox('El campo "Tipo Medio Pago" se encuentra vac�o, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
    DBGridTipoFPago.SetFocus;
    exit;
  end;

  try
    if DM.ISModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      DBGridTipoFPago.SetFocus;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      recNo:= ZQ_TipoFPago.RecNo;
      ZQ_TipoFPago.Refresh;
      ZQ_TipoFPago.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos est�n cargados correctamente.', 'Atenci�n',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_TipoFPago, lblCantidadRegistros);
end;


procedure TFABM_TipoFormaPago.btnCancelarClick(Sender: TObject);
begin
  if dm.ISModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    DBGridTipoFPago.Enabled:=true;
    DBGridTipoFPago.SetFocus;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;

  end;
end;


procedure TFABM_TipoFormaPago.FormCreate(Sender: TObject);
begin
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
  ISOrdenarGrilla1.CargarConfigColunmas;

  StaticTxtBaja.Color:= FPrincipal.baja;

  ISBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_TipoFPago, lblCantidadRegistros);
end;


procedure TFABM_TipoFormaPago.DBGridTipoFPagoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillasConBajas(DBGridTipoFPago, ZQ_TipoFPagoBAJA.AsString, Rect, DataCol, Column, State);
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFABM_TipoFormaPago.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFABM_TipoFormaPago.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABM_TipoFormaPago.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_TipoFormaPago.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_TipoFormaPago.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFABM_TipoFormaPago.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_TipoFormaPago.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFABM_TipoFormaPago.btnImprimirClick(Sender: TObject);
begin
  if ZQ_TipoFPago.IsEmpty then
    exit;

  DM.VariablesReportes(RepTipoFPago);
  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.ISModelo.Fecha);
  QRLabelCritBusqueda.Caption := ISBuscar.ParametrosBuscados;
  ISVistaPrevia.VistaPrevia;
end;

procedure TFABM_TipoFormaPago.btnExcelClick(Sender: TObject);
begin
  if not ZQ_TipoFPago.IsEmpty then
    dm.ExportarEXCEL(DBGridTipoFPago);
end;

end.
