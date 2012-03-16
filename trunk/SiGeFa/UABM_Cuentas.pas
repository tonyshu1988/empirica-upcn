unit UABM_Cuentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,
  ZStoredProcedure, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  QRCtrls, QuickRpt, EKVistaPreviaQR, EKOrdenarGrilla, Menus, EKListadoSQL,
  ZSqlUpdate, DBClient;

type
  TFABM_Cuentas = class(TForm)
    PanelFondo: TPanel;
    PanelGrilla: TPanel;
    DBGridCuentas: TDBGrid;
    PanelEdicion: TPanel;
    Label1: TLabel;
    DBENombre: TDBEdit;
    PBusqueda: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
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
    Label2: TLabel;
    ZQ_Cuentas: TZQuery;
    DS_Cuentas: TDataSource;
    Label3: TLabel;
    DBECodigo: TDBEdit;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    EKBuscar: TEKBusquedaAvanzada;
    EKVistaPrevia: TEKVistaPreviaQR;
    RepCuentas: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepCuentas_Subtitulo: TQRLabel;
    RepCuentas_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText1: TQRDBText;
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
    QRLabel30: TQRLabel;
    QRLabel1: TQRLabel;
    Label4: TLabel;
    DBENro_Cuenta: TDBEdit;
    ZQ_MedioPago: TZQuery;
    ZQ_Cuentas_medio: TStringField;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    DS_MedioPago: TDataSource;
    ZQ_CuentasID_CUENTA: TIntegerField;
    ZQ_CuentasCODIGO: TStringField;
    ZQ_CuentasNOMBRE_CUENTA: TStringField;
    ZQ_CuentasNRO_CTA_BANCARIA: TStringField;
    ZQ_CuentasMEDIO_DEFECTO: TIntegerField;
    ZQ_CuentasBAJA: TStringField;
    ZQ_UltimoNro: TZQuery;
    ZQ_UltimoNroCODIGO: TStringField;
    ZQ_CuentasID_SUCURSAL: TIntegerField;
    ZQ_CuentasA_CTA_CORRIENTE: TStringField;
    ZQ_CuentasA_NOTA_CREDITO: TStringField;
    ZQ_CuentasMODIFICABLE: TStringField;
    btnExcel: TdxBarLargeButton;
    DBGridFPago: TDBGrid;
    EKOrdenarGrilla_FPago: TEKOrdenarGrilla;
    EKListadoMedio: TEKListadoSQL;
    PopupMenu_FPago: TPopupMenu;
    popUpItem_AgregarMedioCobroPago: TMenuItem;
    popUpItem_QuitarMedioCobroPago: TMenuItem;
    ZQ_MedioPagoID_CUENTA_TIPO_FORMAPAGO: TIntegerField;
    ZQ_MedioPagoID_CUENTA: TIntegerField;
    ZQ_MedioPagoID_TIPO_FORMAPAGO: TIntegerField;
    ZQ_MedioPagoDESCRIPCION: TStringField;
    DSMedioPago: TClientDataSet;
    DSMedioPagodescripcion: TStringField;
    DSMedioPagoid_cuenta: TIntegerField;
    DSMedioPagoid_tipo_formapago: TIntegerField;
    ZUpdateZQ_MedioPago: TZUpdateSQL;
    Control_MedioPago: TZQuery;
    Control_MedioPagoID_CUENTA_TIPO_FORMAPAGO: TIntegerField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridCuentasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
    procedure ZQ_CuentasAfterScroll(DataSet: TDataSet);
    procedure popUpItem_AgregarMedioCobroPagoClick(Sender: TObject);
    procedure popUpItem_QuitarMedioCobroPagoClick(Sender: TObject);
  Private
  Public
  end;

var
  FABM_Cuentas: TFABM_Cuentas;

const
  transaccion_ABM = 'ABM CUENTA';
implementation

uses UDM, UPrincipal, UUtilidades;

{$R *.dfm}

procedure TFABM_Cuentas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
  EKOrdenarGrilla1.GuardarConfigColumnas;
  EKOrdenarGrilla_FPago.GuardarConfigColumnas;
end;


procedure TFABM_Cuentas.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_Cuentas.btnModificarClick(Sender: TObject);
begin
  if ZQ_Cuentas.IsEmpty or (ZQ_CuentasMODIFICABLE.AsString = 'N') then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Cuentas, ZQ_MedioPago]) then
  begin
    DBGridCuentas.Enabled:= false;
    PanelEdicion.Visible:= true;

    ZQ_Cuentas.Edit;
    if ZQ_CuentasCODIGO.IsNull then
    begin
      ZQ_UltimoNro.Close;
      ZQ_UltimoNro.Open;
      if ZQ_UltimoNro.IsEmpty or (ZQ_UltimoNroCODIGO.AsString = '') then
        ZQ_CuentasCODIGO.AsInteger:= 1
      else
        ZQ_CuentasCODIGO.AsInteger:= ZQ_UltimoNroCODIGO.AsInteger + 1;
    end;

    DBENombre.SetFocus;
    GrupoEditando.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= true;

    EKOrdenarGrilla_FPago.PopUpGrilla:= PopupMenu_FPago;
  end;
end;


procedure TFABM_Cuentas.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Cuentas.IsEmpty) or (ZQ_CuentasBAJA.AsString <> 'N') or (ZQ_CuentasMODIFICABLE.AsString = 'N') then
    exit;

  if (application.MessageBox(pchar('�Desea dar de baja la Cuenta seleccionada?'), 'ABM Cuenta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Cuentas]) then
    begin
      ZQ_Cuentas.Edit;
      ZQ_CuentasBAJA.AsString:= 'S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_Cuentas.RecNo;
    ZQ_Cuentas.Refresh;
    ZQ_Cuentas.RecNo:= recNo;
  end;
end;


procedure TFABM_Cuentas.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  DBECodigo.SetFocus;

  if (trim(DBECodigo.Text) = '') then
  begin
    Application.MessageBox('El campo "C�digo" se encuentra vac�o, por favor Verifique', 'Validar Datos', MB_OK + MB_ICONINFORMATION);
    DBECodigo.SetFocus;
    exit;
  end;

  if (trim(DBENombre.Text) = '') then
  begin
    Application.MessageBox('El campo "Nombre" se encuentra vac�o, por favor Verifique', 'Validar Datos', MB_OK + MB_ICONINFORMATION);
    DBENombre.SetFocus;
    exit;
  end;

  if (trim(DBLookupComboBox1.Text) = '') then
  begin
    Application.MessageBox('El campo "Medio Cobro/Pago por Defecto" se encuentra vac�o, por favor Verifique', 'Validar Datos', MB_OK + MB_ICONINFORMATION);
    DBLookupComboBox1.SetFocus;
    exit;
  end;

  DSMedioPago.First;
  while not DSMedioPago.Eof do
  begin
    Control_MedioPago.Close;
    Control_MedioPago.ParamByName('id_cuenta').AsInteger := DSMedioPagoid_cuenta.AsInteger;
    Control_MedioPago.ParamByName('id_tipo_formapaago').AsInteger := DSMedioPagoid_tipo_formapago.AsInteger;
    Control_MedioPago.Open;

    if Control_MedioPagoID_CUENTA_TIPO_FORMAPAGO.IsNull then
    begin
      ZQ_MedioPago.Append;
      ZQ_MedioPagoID_CUENTA.AsInteger := DSMedioPagoid_cuenta.AsInteger;
      ZQ_MedioPagoID_TIPO_FORMAPAGO.AsInteger := DSMedioPagoid_tipo_formapago.AsInteger;
      ZQ_MedioPago.Post;
    end;

    DSMedioPago.Next;
  end;


  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      DBGridCuentas.Enabled:= true;
      DBGridCuentas.SetFocus;
      GrupoEditando.Enabled:= true;
      GrupoGuardarCancelar.Enabled:= false;
      PanelEdicion.Visible:= false;
      recNo:= ZQ_Cuentas.RecNo;
      ZQ_Cuentas.Refresh;
      ZQ_Cuentas.RecNo:= recNo;

      EKOrdenarGrilla_FPago.PopUpGrilla:= nil;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos est�n cargados correctamente.', 'Atenci�n', MB_OK + MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_Cuentas, lblCantidadRegistros);
end;


procedure TFABM_Cuentas.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    DBGridCuentas.Enabled:= true;
    DBGridCuentas.SetFocus;
    GrupoEditando.Enabled:= true;
    GrupoGuardarCancelar.Enabled:= false;
    PanelEdicion.Visible:= false;

    EKOrdenarGrilla_FPago.PopUpGrilla:= nil;
  end;
end;


procedure TFABM_Cuentas.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Cuentas.IsEmpty) or (ZQ_CuentasBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('�Desea reactivar la Cuenta seleccionada?'), 'ABM Cuenta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Cuentas]) then
    begin
      ZQ_Cuentas.Edit;
      ZQ_CuentasBAJA.AsString:= 'N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_Cuentas.RecNo;
    ZQ_Cuentas.Refresh;
    ZQ_Cuentas.RecNo:= recNo;
  end;
end;


procedure TFABM_Cuentas.btnBuscarClick(Sender: TObject);
begin
  if EKBuscar.Buscar then
    dm.mostrarCantidadRegistro(ZQ_Cuentas, lblCantidadRegistros);
end;


procedure TFABM_Cuentas.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Cuentas, ZQ_MedioPago]) then
  begin
    DBGridCuentas.Enabled:= false;
    PanelEdicion.Visible:= true;

    ZQ_UltimoNro.Close;
    ZQ_UltimoNro.Open;

    ZQ_Cuentas.Append;
    if ZQ_UltimoNro.IsEmpty or ZQ_UltimoNroCODIGO.IsNull then
      ZQ_CuentasCODIGO.AsInteger:= 1
    else
      ZQ_CuentasCODIGO.AsInteger:= ZQ_UltimoNroCODIGO.AsInteger + 1;

    ZQ_CuentasBAJA.AsString:= 'N';
    ZQ_CuentasMODIFICABLE.AsString:= 'S';
    ZQ_CuentasA_CTA_CORRIENTE.AsString:= 'N';
    ZQ_CuentasA_NOTA_CREDITO.AsString:= 'N';

    DBENombre.SetFocus;
    GrupoEditando.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= true;

    EKOrdenarGrilla_FPago.PopUpGrilla:= PopupMenu_FPago;
  end;
end;


procedure TFABM_Cuentas.FormCreate(Sender: TObject);
begin
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
  EKOrdenarGrilla1.CargarConfigColumnas;
  EKOrdenarGrilla_FPago.CargarConfigColumnas;

  EKBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_Cuentas, lblCantidadRegistros);

  ZQ_MedioPago.Open;
  DSMedioPago.CreateDataSet;
  ZQ_MedioPago.First;
  while not ZQ_MedioPago.Eof do
  begin
    DSMedioPago.Append;
    DSMedioPagodescripcion.AsString := ZQ_MedioPagoDESCRIPCION.AsString;
    DSMedioPagoid_cuenta.AsInteger := ZQ_MedioPagoID_CUENTA.AsInteger;
    DSMedioPagoid_tipo_formapago.AsInteger := ZQ_MedioPagoID_TIPO_FORMAPAGO.AsInteger;
    DSMedioPago.Post;

    ZQ_MedioPago.Next;
  end;
  ZQ_MedioPago.Close;
end;


procedure TFABM_Cuentas.DBGridCuentasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ZQ_Cuentas.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillasConBajas(DBGridCuentas, ZQ_CuentasBAJA.AsString, Rect, DataCol, Column, State);
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------

procedure TFABM_Cuentas.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABM_Cuentas.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_Cuentas.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_Cuentas.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFABM_Cuentas.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_Cuentas.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;

procedure TFABM_Cuentas.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFABM_Cuentas.btnImprimirClick(Sender: TObject);
begin
  if ZQ_Cuentas.IsEmpty then
    exit;

  DM.VariablesReportes(RepCuentas);
  QRlblPieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ', dm.EKModelo.Fecha);
  QRLabelCritBusqueda.Caption:= EKBuscar.ParametrosBuscados;
  EKVistaPrevia.VistaPrevia;
end;

procedure TFABM_Cuentas.btnExcelClick(Sender: TObject);
begin
  if not ZQ_Cuentas.IsEmpty then
    dm.ExportarEXCEL(DBGridCuentas);
end;


procedure TFABM_Cuentas.ZQ_CuentasAfterScroll(DataSet: TDataSet);
begin
//  ZQ_MedioPago.Close;

  if ZQ_Cuentas.IsEmpty then
    exit;

//  ZQ_MedioPago.ParamByName('id_cuenta').AsInteger:= ZQ_CuentasID_CUENTA.AsInteger;
//  ZQ_MedioPago.open;

    DSMedioPago.Filtered := false;
    DSMedioPago.Filter:= 'id_cuenta = '+IntToStr(ZQ_CuentasID_CUENTA.AsInteger);
    DSMedioPago.Filtered := true;
end;

procedure TFABM_Cuentas.popUpItem_AgregarMedioCobroPagoClick(
  Sender: TObject);
begin

  if EKListadoMedio.Buscar then
  begin
    DSMedioPago.Filter:= 'id_tipo_formapago = '+EKListadoMedio.Resultado;
    DSMedioPago.Filtered := true;
    if not DSMedioPago.IsEmpty then
    begin
      DSMedioPago.Filtered := false;
      Application.MessageBox('Este Medio ya fue cargado','ABM Cuentas',MB_OK+MB_ICONINFORMATION);
      exit;
    end;

    DSMedioPago.Filtered := false;

    DSMedioPago.Append;
    DSMedioPagoid_cuenta.AsInteger := ZQ_CuentasID_CUENTA.AsInteger;
    DSMedioPagoid_tipo_formapago.AsInteger := StrToInt(EKListadoMedio.Resultado);
    DSMedioPagodescripcion.AsString := EKListadoMedio.Seleccion;
    DSMedioPago.post;
  end;

end;

procedure TFABM_Cuentas.popUpItem_QuitarMedioCobroPagoClick(
  Sender: TObject);
begin
  if DSMedioPago.IsEmpty then
  exit;

  if dm.EKModelo.iniciar_transaccion('Transaccion Eliminar', [Control_MedioPago]) then
  begin
    Control_MedioPago.Close;
    Control_MedioPago.ParamByName('id_cuenta').AsInteger := DSMedioPagoid_cuenta.AsInteger;
    Control_MedioPago.ParamByName('id_tipo_formapaago').AsInteger := DSMedioPagoid_tipo_formapago.AsInteger;
    Control_MedioPago.Open;

    if not Control_MedioPagoID_CUENTA_TIPO_FORMAPAGO.IsNull then
      Control_MedioPago.Delete;

    DSMedioPago.Delete;
  end;

  if not dm.EKModelo.finalizar_transaccion('Transaccion Eliminar') then
    dm.EKModelo.cancelar_transaccion('Transaccion Eliminar');

end;

end.

