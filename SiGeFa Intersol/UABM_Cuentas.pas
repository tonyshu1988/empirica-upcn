unit UABM_Cuentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,
  ZStoredProcedure, ActnList, XPStyleActnCtrls, ActnMan,
  QRCtrls, QuickRpt, Menus,
   ISListadoSQL, ISBusquedaAvanzada, ISVistaPreviaQR,
  ISOrdenarGrilla, cxClasses;

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
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    DBLookupCBoxMedio: TDBLookupComboBox;
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
    PopupMenu_FPago: TPopupMenu;
    popUpItem_AgregarMedioCobroPago: TMenuItem;
    popUpItem_QuitarMedioCobroPago: TMenuItem;
    ZQ_MedioPagoID_CUENTA_TIPO_FORMAPAGO: TIntegerField;
    ZQ_MedioPagoID_CUENTA: TIntegerField;
    ZQ_MedioPagoID_TIPO_FORMAPAGO: TIntegerField;
    ZQ_TipoFPago: TZQuery;
    ZQ_TipoFPagoID_TIPO_FORMAPAGO: TIntegerField;
    ZQ_TipoFPagoDESCRIPCION: TStringField;
    ZQ_TipoFPagoBAJA: TStringField;
    ZQ_TipoFPagoIF: TStringField;
    ZQ_TipoFPagoDESC_REC: TFloatField;
    ZQ_TipoFPagoCOD_CORTO: TIntegerField;
    ZQ_TipoFPagoGENERA_VUELTO: TStringField;
    ZQ_TipoFPagoCOLUMNA_PRECIO: TIntegerField;
    ZQ_TipoFPagoMODIFICABLE: TStringField;
    ZQ_MedioPagodescripcion: TStringField;
    Label5: TLabel;
    ZQ_Sucursales: TZQuery;
    ZQ_SucursalesID_SUCURSAL: TIntegerField;
    ZQ_SucursalesNOMBRE: TStringField;
    ZQ_SucursalesDIRECCION: TStringField;
    ZQ_SucursalesLOCALIDAD: TStringField;
    ZQ_SucursalesCODIGO_POSTAL: TStringField;
    ZQ_SucursalesTELEFONO: TStringField;
    ZQ_SucursalesEMAIL: TStringField;
    ZQ_SucursalesBAJA: TStringField;
    ZQ_SucursalesLOGO: TBlobField;
    ZQ_SucursalesREPORTE_TITULO: TStringField;
    ZQ_SucursalesREPORTE_SUBTITULO: TStringField;
    ZQ_SucursalesCOMPROBANTE_TITULO: TStringField;
    ZQ_SucursalesCOMPROBANTE_RENGLON1: TStringField;
    ZQ_SucursalesCOMPROBANTE_RENGLON2: TStringField;
    ZQ_SucursalesCOMPROBANTE_RENGLON3: TStringField;
    ZQ_SucursalesCOMPROBANTE_RENGLON4: TStringField;
    DBLookupCBoxSucursal: TDBLookupComboBox;
    DS_Sucursales: TDataSource;
    ZQ_Cuentas_sucursal: TStringField;
    ISOrdenarGrilla1: TISOrdenarGrilla;
    ISOrdenarGrilla_FPago: TISOrdenarGrilla;
    ISVistaPrevia: TISVistaPreviaQR;
    ISBuscar: TISBusquedaAvanzada;
    ISListadoMedio: TISListadoSQL;
    ZQ_TipoMedioPago: TZQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
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
    procedure popUpItem_QuitarMedioCobroPagoClick(Sender: TObject);
    procedure popUpItem_AgregarMedioCobroPagoClick(Sender: TObject);
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
  ISOrdenarGrilla1.GuardarConfigColumnas;
  ISOrdenarGrilla_FPago.GuardarConfigColumnas;
end;


procedure TFABM_Cuentas.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_Cuentas.btnModificarClick(Sender: TObject);
begin
  if ZQ_Cuentas.IsEmpty or (ZQ_CuentasMODIFICABLE.AsString = 'N') then
    exit;

  if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Cuentas, ZQ_MedioPago]) then
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

    DBGridFPago.PopupMenu:= PopupMenu_FPago;
  end;
end;


procedure TFABM_Cuentas.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Cuentas.IsEmpty) or (ZQ_CuentasBAJA.AsString <> 'N') or (ZQ_CuentasMODIFICABLE.AsString = 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja la Cuenta seleccionada?'), 'ABM Cuenta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Cuentas]) then
    begin
      ZQ_Cuentas.Edit;
      ZQ_CuentasBAJA.AsString:= 'S';
    end
    else
      exit;

    if not (dm.ISModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.ISModelo.cancelar_transaccion(transaccion_ABM);

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
    Application.MessageBox('El campo "Código" se encuentra vacío, por favor Verifique', 'Validar Datos', MB_OK + MB_ICONINFORMATION);
    DBECodigo.SetFocus;
    exit;
  end;

  if (trim(DBENombre.Text) = '') then
  begin
    Application.MessageBox('El campo "Nombre" se encuentra vacío, por favor Verifique', 'Validar Datos', MB_OK + MB_ICONINFORMATION);
    DBENombre.SetFocus;
    exit;
  end;

//  if (trim(DBLookupComboBox1.Text) = '') then
//  begin
//    Application.MessageBox('El campo "Medio Cobro/Pago" se encuentra vacío, por favor Verifique', 'Validar Datos', MB_OK + MB_ICONINFORMATION);
//    DBLookupComboBox1.SetFocus;
//    exit;
//  end;

  try
    if DM.ISModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      DBGridCuentas.Enabled:= true;
      DBGridCuentas.SetFocus;
      GrupoEditando.Enabled:= true;
      GrupoGuardarCancelar.Enabled:= false;
      PanelEdicion.Visible:= false;
      recNo:= ZQ_Cuentas.RecNo;
      ZQ_Cuentas.Refresh;
      ZQ_Cuentas.RecNo:= recNo;

      DBGridFPago.PopupMenu:= nil;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención', MB_OK + MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_Cuentas, lblCantidadRegistros);
end;


procedure TFABM_Cuentas.btnCancelarClick(Sender: TObject);
begin
  if dm.ISModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    DBGridCuentas.Enabled:= true;
    DBGridCuentas.SetFocus;
    GrupoEditando.Enabled:= true;
    GrupoGuardarCancelar.Enabled:= false;
    PanelEdicion.Visible:= false;

    DBGridFPago.PopupMenu:= nil;
  end;
end;


procedure TFABM_Cuentas.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Cuentas.IsEmpty) or (ZQ_CuentasBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar la Cuenta seleccionada?'), 'ABM Cuenta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Cuentas]) then
    begin
      ZQ_Cuentas.Edit;
      ZQ_CuentasBAJA.AsString:= 'N';
    end
    else
      exit;

    if not (dm.ISModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.ISModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_Cuentas.RecNo;
    ZQ_Cuentas.Refresh;
    ZQ_Cuentas.RecNo:= recNo;
  end;
end;


procedure TFABM_Cuentas.btnBuscarClick(Sender: TObject);
begin
  if ISBuscar.Buscar then
    dm.mostrarCantidadRegistro(ZQ_Cuentas, lblCantidadRegistros);
end;


procedure TFABM_Cuentas.btnNuevoClick(Sender: TObject);
begin
  if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Cuentas]) then
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
    ZQ_CuentasID_SUCURSAL.AsInteger:= 0;

    DBENombre.SetFocus;
    GrupoEditando.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= true;

    DBGridFPago.PopupMenu:= PopupMenu_FPago;
  end;
end;


procedure TFABM_Cuentas.FormCreate(Sender: TObject);
begin
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
  ISOrdenarGrilla1.CargarConfigColunmas;
  ISOrdenarGrilla_FPago.CargarConfigColunmas;
  dm.ISModelo.abrir(ZQ_TipoMedioPago);
  ISBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_Cuentas, lblCantidadRegistros);
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
  QRlblPieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ', dm.ISModelo.Fecha);
  QRLabelCritBusqueda.Caption:= ISBuscar.ParametrosBuscados;
  ISVistaPrevia.VistaPrevia;
end;

procedure TFABM_Cuentas.btnExcelClick(Sender: TObject);
begin
  if not ZQ_Cuentas.IsEmpty then
    dm.ExportarEXCEL(DBGridCuentas);
end;


procedure TFABM_Cuentas.ZQ_CuentasAfterScroll(DataSet: TDataSet);
begin
  ZQ_MedioPago.Close;

  if ZQ_Cuentas.IsEmpty then
    exit;

  ZQ_MedioPago.ParamByName('id_cuenta').AsInteger:= ZQ_CuentasID_CUENTA.AsInteger;
  ZQ_MedioPago.open;
end;


procedure TFABM_Cuentas.popUpItem_QuitarMedioCobroPagoClick(Sender: TObject);
begin
  if not ZQ_MedioPago.IsEmpty then
    ZQ_MedioPago.Delete;
end;


procedure TFABM_Cuentas.popUpItem_AgregarMedioCobroPagoClick(Sender: TObject);
begin
  if ISListadoMedio.Buscar then
  begin
    ZQ_MedioPago.Filter:= format('(id_tipo_formapago = %s) ', [ISListadoMedio.Resultado]);
    ZQ_MedioPago.Filtered:= true;
    if not ZQ_MedioPago.IsEmpty then
    begin
      ZQ_MedioPago.Filtered:= false;
      Application.MessageBox('Este Medio ya fue cargado', 'ABM Cuentas', MB_OK + MB_ICONINFORMATION);
      exit;
    end;

    ZQ_MedioPago.Filtered:= false;

    ZQ_MedioPago.Append;
    ZQ_MedioPagoID_CUENTA.AsInteger:= ZQ_CuentasID_CUENTA.AsInteger;
    ZQ_MedioPagoID_TIPO_FORMAPAGO.AsInteger:= StrToInt(ISListadoMedio.Resultado);
    ZQ_MedioPago.post;
  end;
end;

end.
