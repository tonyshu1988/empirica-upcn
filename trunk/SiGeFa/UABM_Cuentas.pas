unit UABM_Cuentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,
  ZStoredProcedure, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  QRCtrls, QuickRpt, EKVistaPreviaQR, EKOrdenarGrilla;

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
    ZQ_MedioPagoID_TIPO_FORMAPAGO: TIntegerField;
    ZQ_MedioPagoDESCRIPCION: TStringField;
    ZQ_MedioPagoBAJA: TStringField;
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
  private
  public
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
end;


procedure TFABM_Cuentas.btnSalirClick(Sender: TObject);
begin
 Close;
end;


procedure TFABM_Cuentas.btnModificarClick(Sender: TObject);
begin
  if ZQ_Cuentas.IsEmpty then
      exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Cuentas]) then
  begin
    DBGridCuentas.Enabled := false;
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
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_Cuentas.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Cuentas.IsEmpty) OR (ZQ_CuentasBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja la Cuenta seleccionada?'), 'ABM Cuenta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Cuentas]) then
    begin
      ZQ_Cuentas.Edit;
      ZQ_CuentasBAJA.AsString:='S';
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
    Application.MessageBox('El campo "Código" se encuentra vacío, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
    DBECodigo.SetFocus;
    exit;
  end;

  if (trim(DBENombre.Text) = '') then
  begin
    Application.MessageBox('El campo "Nombre" se encuentra vacío, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
    DBENombre.SetFocus;
    exit;
  end;

  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      DBGridCuentas.Enabled:= true;
      DBGridCuentas.SetFocus;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      PanelEdicion.Visible := false;
      recNo:= ZQ_Cuentas.RecNo;
      ZQ_Cuentas.Refresh;
      ZQ_Cuentas.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_Cuentas, lblCantidadRegistros);  
end;


procedure TFABM_Cuentas.btnCancelarClick(Sender: TObject);
begin
 if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    DBGridCuentas.Enabled:=true;
    DBGridCuentas.SetFocus;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    PanelEdicion.Visible := false;
  end;
end;


procedure TFABM_Cuentas.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Cuentas.IsEmpty) OR (ZQ_CuentasBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar la Cuenta seleccionada?'), 'ABM Cuenta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Cuentas]) then
    begin
      ZQ_Cuentas.Edit;
      ZQ_CuentasBAJA.AsString:='N';
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
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Cuentas]) then
  begin
    DBGridCuentas.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_UltimoNro.Close;
    ZQ_UltimoNro.Open;

    ZQ_Cuentas.Append;
    if ZQ_UltimoNro.IsEmpty then
      ZQ_CuentasCODIGO.AsInteger:= 1
    else
      ZQ_CuentasCODIGO.AsInteger:= ZQ_UltimoNroCODIGO.AsInteger + 1;
    ZQ_CuentasBAJA.AsString:= 'N';

    DBENombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_Cuentas.FormCreate(Sender: TObject);
begin
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
  EKOrdenarGrilla1.CargarConfigColumnas;

  dm.EKModelo.abrir(ZQ_MedioPago);

  EKBuscar.Abrir;
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
  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  QRLabelCritBusqueda.Caption := EKBuscar.ParametrosBuscados;
  EKVistaPrevia.VistaPrevia;
end;

end.


