unit UOP_ABMLaboratorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
   ActnList, XPStyleActnCtrls, ActnMan,
   QRCtrls, QuickRpt, ISOrdenarGrilla, ISVistaPreviaQR, ISBusquedaAvanzada,
  cxClasses;

type
  TFOP_ABMLaboratorio = class(TForm)
    PanelFondo: TPanel;
    PanelGrilla: TPanel;
    DBGrid: TDBGrid;
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
    ZQ_Laboratorio: TZQuery;
    DS_Laboratorio: TDataSource;
    PBusqueda: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
    PanelEdicion: TPanel;
    Label1: TLabel;
    DBENombre: TDBEdit;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    RepLab: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepLab_Subtitulo: TQRLabel;
    RepLab_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText1: TQRDBText;
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
    QRLabel30: TQRLabel;
    btnExcel: TdxBarLargeButton;
    Label2: TLabel;
    DBEDireccion: TDBEdit;
    Label3: TLabel;
    DBETelefono: TDBEdit;
    Label4: TLabel;
    DBECodigo: TDBEdit;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    ZQ_LaboratorioID_LABORATORIO: TIntegerField;
    ZQ_LaboratorioNOMBRE: TStringField;
    ZQ_LaboratorioDIRECCION: TStringField;
    ZQ_LaboratorioTELEFONO: TStringField;
    ZQ_LaboratorioCODIGO: TStringField;
    ZQ_LaboratorioBAJA: TStringField;
    ISBuscar: TISBusquedaAvanzada;
    ISVistaPrevia: TISVistaPreviaQR;
    ISOrdenarGrilla1: TISOrdenarGrilla;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);    
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  public
  end;

var
  FOP_ABMLaboratorio: TFOP_ABMLaboratorio;

const
  transaccion_ABM = 'ABM LABORATORIO';

implementation

uses UPrincipal, UDM;

{$R *.dfm}

procedure TFOP_ABMLaboratorio.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFOP_ABMLaboratorio.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFOP_ABMLaboratorio.btnBuscarClick(Sender: TObject);
begin
  if ISBuscar.Buscar then
    dm.mostrarCantidadRegistro(ZQ_Laboratorio, lblCantidadRegistros);
end;


procedure TFOP_ABMLaboratorio.btnNuevoClick(Sender: TObject);
begin
  if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Laboratorio]) then
  begin
    DBGrid.Enabled := false;

    ZQ_Laboratorio.Append;
    ZQ_LaboratorioBAJA.AsString:= 'N';

    DBECodigo.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFOP_ABMLaboratorio.btnModificarClick(Sender: TObject);
begin
  if (ZQ_Laboratorio.IsEmpty) then
    exit;

  if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Laboratorio]) then
  begin
    DBGrid.Enabled := false;

    ZQ_Laboratorio.Edit;

    DBECodigo.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFOP_ABMLaboratorio.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Laboratorio.IsEmpty) OR (ZQ_LaboratorioBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja el "Laboratorio" seleccionado'), 'ABM Laboratorio', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Laboratorio]) then
    begin
      ZQ_Laboratorio.Edit;
      ZQ_LaboratorioBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.ISModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.ISModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_Laboratorio.RecNo;
    ZQ_Laboratorio.Refresh;
    ZQ_Laboratorio.RecNo:= recNo;
  end;
end;


procedure TFOP_ABMLaboratorio.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Laboratorio.IsEmpty) OR (ZQ_LaboratorioBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar el "Laboratorio" seleccionado?'), 'ABM Laboratorio', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Laboratorio]) then
    begin
      ZQ_Laboratorio.Edit;
      ZQ_LaboratorioBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.ISModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.ISModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_Laboratorio.RecNo;
    ZQ_Laboratorio.Refresh;
    ZQ_Laboratorio.RecNo:= recNo;
  end;
end;


procedure TFOP_ABMLaboratorio.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if (trim(DBENombre.Text) = '') then
  begin
    Application.MessageBox('El campo "Nombre" se encuentra vacío, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
    DBENombre.SetFocus;
    exit;
  end;

  try
    if DM.ISModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      DBGrid.Enabled:= true;
      DBGrid.SetFocus;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      recNo:= ZQ_Laboratorio.RecNo;
      ZQ_Laboratorio.Refresh;
      ZQ_Laboratorio.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_Laboratorio, lblCantidadRegistros);
end;


procedure TFOP_ABMLaboratorio.btnCancelarClick(Sender: TObject);
begin
  if dm.ISModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    DBGrid.Enabled:=true;
    DBGrid.SetFocus;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
  end;
end;


procedure TFOP_ABMLaboratorio.FormCreate(Sender: TObject);
begin
  ISOrdenarGrilla1.CargarConfigColunmas;
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
  StaticTxtBaja.Color:= FPrincipal.baja;

  ISBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_Laboratorio, lblCantidadRegistros);
end;


procedure TFOP_ABMLaboratorio.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillasConBajas(DBGrid, ZQ_LaboratorioBAJA.AsString, Rect, DataCol, Column, State);
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFOP_ABMLaboratorio.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFOP_ABMLaboratorio.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFOP_ABMLaboratorio.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFOP_ABMLaboratorio.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFOP_ABMLaboratorio.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFOP_ABMLaboratorio.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFOP_ABMLaboratorio.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFOP_ABMLaboratorio.btnImprimirClick(Sender: TObject);
begin
  if ZQ_Laboratorio.IsEmpty then
    exit;

  DM.VariablesReportes(RepLab);
  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.ISModelo.Fecha);
  QRLabelCritBusqueda.Caption := ISBuscar.ParametrosBuscados;
  ISVistaPrevia.VistaPrevia;
end;


procedure TFOP_ABMLaboratorio.btnExcelClick(Sender: TObject);
begin
  if not ZQ_Laboratorio.IsEmpty then
    dm.ExportarEXCEL(DBGrid);
end;

procedure TFOP_ABMLaboratorio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ISOrdenarGrilla1.GuardarConfigColumnas;
end;

end.
