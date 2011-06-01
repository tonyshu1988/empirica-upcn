unit UABM_Marcas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  EKVistaPreviaQR, QRCtrls, QuickRpt;

type
  TFABM_Marcas = class(TForm)
    PanelFondo: TPanel;
    PanelGrilla: TPanel;
    DBGridMarca: TDBGrid;
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
    ZQ_Marcas: TZQuery;
    DS_Marcas: TDataSource;
    ZQ_MarcasID_MARCA: TIntegerField;
    ZQ_MarcasNOMBRE_MARCA: TStringField;
    ZQ_MarcasBAJA: TStringField;
    PBusqueda: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
    PanelEdicion: TPanel;
    Label1: TLabel;
    DBENombre: TDBEdit;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    ZQ_MarcasCODIGO_MARCA: TIntegerField;
    Label2: TLabel;
    DBECodigo: TDBEdit;
    ZQ_UltimoNro: TZQuery;
    ZQ_UltimoNroCODIGO_MARCA: TIntegerField;
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
    RepMarca: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepMarca_Subtitulo: TQRLabel;
    RepMarca_Titulo: TQRLabel;
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
    EKVistaPrevia: TEKVistaPreviaQR;
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
    procedure DBGridMarcaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
  FABM_Marcas: TFABM_Marcas;

const
  transaccion_ABM = 'ABM MARCA';

implementation

uses UPrincipal, UDM;

{$R *.dfm}

procedure TFABM_Marcas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFABM_Marcas.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_Marcas.btnBuscarClick(Sender: TObject);
begin
  EKBuscar.Buscar;
end;


procedure TFABM_Marcas.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Marcas]) then
  begin
    DBGridMarca.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_UltimoNro.Close;
    ZQ_UltimoNro.Open;

    ZQ_Marcas.Append;
    ZQ_MarcasBAJA.AsString:= 'N';
    ZQ_MarcasCODIGO_MARCA.AsInteger:= ZQ_UltimoNroCODIGO_MARCA.AsInteger + 1;

    DBECodigo.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_Marcas.btnModificarClick(Sender: TObject);
begin
  if ZQ_Marcas.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Marcas]) then
  begin
    DBGridMarca.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_Marcas.Edit;
    if ZQ_MarcasCODIGO_MARCA.IsNull then
    begin
      ZQ_UltimoNro.Close;
      ZQ_UltimoNro.Open;
      ZQ_MarcasCODIGO_MARCA.AsInteger:= ZQ_UltimoNroCODIGO_MARCA.AsInteger + 1;
    end;

    DBECodigo.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_Marcas.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Marcas.IsEmpty) OR (ZQ_MarcasBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja la "Marca" seleccionada?'), 'ABM Marcas', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Marcas]) then
    begin
      ZQ_Marcas.Edit;
      ZQ_MarcasBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_Marcas.RecNo;
    ZQ_Marcas.Refresh;
    ZQ_Marcas.RecNo:= recNo;
  end;
end;


procedure TFABM_Marcas.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Marcas.IsEmpty) OR (ZQ_MarcasBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar la "Marca" seleccionada?'), 'ABM Marcas', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Marcas]) then
    begin
      ZQ_Marcas.Edit;
      ZQ_MarcasBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_Marcas.RecNo;
    ZQ_Marcas.Refresh;
    ZQ_Marcas.RecNo:= recNo;
  end;
end;


procedure TFABM_Marcas.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if (trim(DBECodigo.Text) = '') then
  begin
    Application.MessageBox('El campo "Código" se encuentra vacío, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
    DBECodigo.SetFocus;
    exit;
  end;

  if (trim(DBENombre.Text) = '') then
  begin
    Application.MessageBox('El campo "Marca" se encuentra vacío, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
    DBENombre.SetFocus;
    exit;
  end;

  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      DBGridMarca.Enabled:= true;
      DBGridMarca.SetFocus;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      PanelEdicion.Visible := false;
      recNo:= ZQ_Marcas.RecNo;
      ZQ_Marcas.Refresh;
      ZQ_Marcas.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_Marcas, lblCantidadRegistros);    
end;


procedure TFABM_Marcas.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    DBGridMarca.Enabled:=true;
    DBGridMarca.SetFocus;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    PanelEdicion.Visible := false;
  end;
end;


procedure TFABM_Marcas.FormCreate(Sender: TObject);
begin
  StaticTxtBaja.Color:= FPrincipal.baja;

  ZQ_Marcas.Close;
  ZQ_Marcas.open;

  dm.mostrarCantidadRegistro(ZQ_Marcas, lblCantidadRegistros);   
end;


procedure TFABM_Marcas.DBGridMarcaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ZQ_Marcas.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillasConBajas(DBGridMarca, ZQ_MarcasBAJA.AsString, Rect, DataCol, Column, State);
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFABM_Marcas.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFABM_Marcas.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABM_Marcas.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_Marcas.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_Marcas.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFABM_Marcas.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_Marcas.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------





procedure TFABM_Marcas.btnImprimirClick(Sender: TObject);
begin
  if ZQ_Marcas.IsEmpty then
    exit;

  DM.VariablesReportes(RepMarca);
  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  QRLabelCritBusqueda.Caption := EKBuscar.ParametrosBuscados;
  EKVistaPrevia.VistaPrevia;
end;

end.
