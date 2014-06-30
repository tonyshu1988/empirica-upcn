unit UOP_ABMMedico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
   ActnList, XPStyleActnCtrls, ActnMan,
   QRCtrls, QuickRpt, ISVistaPreviaQR, ISBusquedaAvanzada,
  cxClasses, ISOrdenarGrilla;

type
  TFOP_ABMMedico = class(TForm)
    PanelFondo: TPanel;
    PanelGrilla: TPanel;
    DBGridMedico: TDBGrid;
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
    ZQ_Medico: TZQuery;
    DS_Medico: TDataSource;
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
    RepMedico: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepMedico_Subtitulo: TQRLabel;
    RepMedico_Titulo: TQRLabel;
    QRBand10: TQRBand;
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
    QRLabel30: TQRLabel;
    QRLabel1: TQRLabel;
    btnExcel: TdxBarLargeButton;
    ZQ_MedicoID_MEDICO: TIntegerField;
    ZQ_MedicoNOMBRE: TStringField;
    ZQ_MedicoDIRECCION: TStringField;
    ZQ_MedicoTELEFONO: TStringField;
    ZQ_MedicoMATRICULA: TStringField;
    ZQ_MedicoBAJA: TStringField;
    Label2: TLabel;
    DBEDireccion: TDBEdit;
    Label3: TLabel;
    DBETelefono: TDBEdit;
    Label4: TLabel;
    DBEMatricula: TDBEdit;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
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
    procedure DBGridMedicoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
  FOP_ABMMedico: TFOP_ABMMedico;

const
  transaccion_ABM = 'ABM MEDICO';

implementation

uses UPrincipal, UDM;

{$R *.dfm}

procedure TFOP_ABMMedico.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFOP_ABMMedico.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFOP_ABMMedico.btnBuscarClick(Sender: TObject);
begin
  if ISBuscar.Buscar then
    dm.mostrarCantidadRegistro(ZQ_Medico, lblCantidadRegistros);
end;


procedure TFOP_ABMMedico.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Medico]) then
  begin
    DBGridMedico.Enabled := false;

    ZQ_Medico.Append;
    ZQ_MedicoBAJA.AsString:= 'N';

    DBENombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFOP_ABMMedico.btnModificarClick(Sender: TObject);
begin
  if (ZQ_Medico.IsEmpty) then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Medico]) then
  begin
    DBGridMedico.Enabled := false;

    ZQ_Medico.Edit;

    DBENombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFOP_ABMMedico.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Medico.IsEmpty) OR (ZQ_MedicoBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja el "Medico" seleccionado'), 'ABM Medico', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Medico]) then
    begin
      ZQ_Medico.Edit;
      ZQ_MedicoBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_Medico.RecNo;
    ZQ_Medico.Refresh;
    ZQ_Medico.RecNo:= recNo;
  end;
end;


procedure TFOP_ABMMedico.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Medico.IsEmpty) OR (ZQ_MedicoBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar el "Medico" seleccionado?'), 'ABM Medico', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Medico]) then
    begin
      ZQ_Medico.Edit;
      ZQ_MedicoBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_Medico.RecNo;
    ZQ_Medico.Refresh;
    ZQ_Medico.RecNo:= recNo;
  end;
end;


procedure TFOP_ABMMedico.btnGuardarClick(Sender: TObject);
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
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      DBGridMedico.Enabled:= true;
      DBGridMedico.SetFocus;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      recNo:= ZQ_Medico.RecNo;
      ZQ_Medico.Refresh;
      ZQ_Medico.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_Medico, lblCantidadRegistros);
end;


procedure TFOP_ABMMedico.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    DBGridMedico.Enabled:=true;
    DBGridMedico.SetFocus;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
  end;
end;


procedure TFOP_ABMMedico.FormCreate(Sender: TObject);
begin
  ISOrdenarGrilla1.CargarConfigColunmas;
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
  StaticTxtBaja.Color:= FPrincipal.baja;

  ISBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_Medico, lblCantidadRegistros);
end;


procedure TFOP_ABMMedico.DBGridMedicoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillasConBajas(DBGridMedico, ZQ_MedicoBAJA.AsString, Rect, DataCol, Column, State);
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFOP_ABMMedico.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFOP_ABMMedico.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFOP_ABMMedico.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFOP_ABMMedico.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFOP_ABMMedico.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFOP_ABMMedico.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFOP_ABMMedico.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------





procedure TFOP_ABMMedico.btnImprimirClick(Sender: TObject);
begin
  if ZQ_Medico.IsEmpty then
    exit;

  DM.VariablesReportes(RepMedico);
  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  QRLabelCritBusqueda.Caption := ISBuscar.ParametrosBuscados;
  ISVistaPrevia.VistaPrevia;
end;

procedure TFOP_ABMMedico.btnExcelClick(Sender: TObject);
begin
  if not ZQ_Medico.IsEmpty then
    dm.ExportarEXCEL(DBGridMedico);
end;

procedure TFOP_ABMMedico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ISOrdenarGrilla1.GuardarConfigColumnas;
end;

end.
