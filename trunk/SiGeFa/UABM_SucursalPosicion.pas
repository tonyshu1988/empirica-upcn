unit UABM_SucursalPosicion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, StdCtrls, Mask, DBCtrls, Grids, DBGrids,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKListadoSQL, EKBusquedaAvanzada, EKOrdenarGrilla, ActnList,
  XPStyleActnCtrls, ActnMan, EKVistaPreviaQR, QRCtrls, QuickRpt;

type
  TFABM_SucursalPosicion = class(TForm)
    PContenedor: TPanel;
    DBGridPosicionSucursal: TDBGrid;
    PanelEdicion: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
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
    DBLookupCBoxSuc: TDBLookupComboBox;
    Label4: TLabel;
    ZQ_PosicionSucursal: TZQuery;
    DS_PosicionSucursal: TDataSource;
    ZQ_PosicionSucursalID_POSICION_SUCURSAL: TIntegerField;
    ZQ_PosicionSucursalID_SUCURSAL: TIntegerField;
    ZQ_Sucursal: TZQuery;
    ZQ_PosicionSucursalsucursal: TStringField;
    ZQ_SucursalID_SUCURSAL: TIntegerField;
    ZQ_SucursalNOMBRE: TStringField;
    ZQ_SucursalDIRECCION: TStringField;
    ZQ_SucursalLOCALIDAD: TStringField;
    ZQ_SucursalCODIGO_POSTAL: TStringField;
    ZQ_SucursalTELEFONO: TStringField;
    ZQ_SucursalEMAIL: TStringField;
    ZQ_SucursalBAJA: TStringField;
    ZQ_SucursalAUD_UDUARIO: TStringField;
    ZQ_SucursalAUD_FECHA: TDateTimeField;
    DS_Sucursal: TDataSource;
    ZQ_PosicionSucursalBAJA: TStringField;
    EKBusquedaAvanzada1: TEKBusquedaAvanzada;
    EKListadoSucursal: TEKListadoSQL;
    PBusqueda: TPanel;
    StaticTxtBaja: TStaticText;
    lblCantidadRegistros: TLabel;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    RepSucPosicion: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepSucPosicion_Subtitulo: TQRLabel;
    RepSucPosicion_Titulo: TQRLabel;
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
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    ZQ_PosicionSucursalSECCION: TStringField;
    ZQ_PosicionSucursalSECTOR: TStringField;
    ZQ_PosicionSucursalFILA: TStringField;
    ZQ_PosicionSucursalCOLUMNA: TStringField;
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBLookupCBoxSucKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridPosicionSucursalDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    //------TECLAS RAPIDAS
    procedure ABuscarExecute(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure ABajaExecute(Sender: TObject);
    procedure AReactivarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_SucursalPosicion: TFABM_SucursalPosicion;

const

  Transaccion_ABMPosicionSuc = 'ABM Posicion Sucursal';

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFABM_SucursalPosicion.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(Transaccion_ABMPosicionSuc, [ZQ_PosicionSucursal]) then
  begin
    DBGridPosicionSucursal.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_PosicionSucursal.Append;
    ZQ_PosicionSucursalBAJA.AsString:= 'N';
    DBLookupCBoxSuc.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_SucursalPosicion.btnModificarClick(Sender: TObject);
begin
  if ZQ_PosicionSucursal.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(Transaccion_ABMPosicionSuc, [ZQ_PosicionSucursal]) then
  begin
    DBGridPosicionSucursal.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_PosicionSucursal.Edit;
    DBLookupCBoxSuc.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_SucursalPosicion.btnGuardarClick(Sender: TObject);
begin
  if DM.EKModelo.finalizar_transaccion(Transaccion_ABMPosicionSuc) then
  begin
    DBGridPosicionSucursal.Enabled:=true;
    GrupoEditando.Enabled:=true;
    GrupoGuardarCancelar.Enabled:=false;
    DBGridPosicionSucursal.SetFocus;
    PanelEdicion.Visible := false;
  end;

  dm.mostrarCantidadRegistro(ZQ_PosicionSucursal, lblCantidadRegistros);  
end;


procedure TFABM_SucursalPosicion.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(Transaccion_ABMPosicionSuc) then
  begin
    DBGridPosicionSucursal.Enabled:=true;
    DBGridPosicionSucursal.SetFocus;
    GrupoEditando.Enabled:=true;
    GrupoGuardarCancelar.Enabled:=false;
    PanelEdicion.Visible := false;
  end;
end;


procedure TFABM_SucursalPosicion.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFABM_SucursalPosicion.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_PosicionSucursal.IsEmpty) OR (ZQ_PosicionSucursalBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja la "Posición Sucursal" seleccionada?'), 'ABM Posición Sucursal', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(Transaccion_ABMPosicionSuc, [ZQ_PosicionSucursal]) then
    begin
      ZQ_PosicionSucursal.Edit;
      ZQ_PosicionSucursalBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(Transaccion_ABMPosicionSuc)) then
      dm.EKModelo.cancelar_transaccion(Transaccion_ABMPosicionSuc);

    recNo:= ZQ_PosicionSucursal.RecNo;
    ZQ_PosicionSucursal.Refresh;
    ZQ_PosicionSucursal.RecNo:= recNo;
  end;
end;


procedure TFABM_SucursalPosicion.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_PosicionSucursal.IsEmpty) OR (ZQ_PosicionSucursalBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar la "Posición Sucursal" seleccionada?'), 'ABM Posición Sucursal', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(Transaccion_ABMPosicionSuc, [ZQ_PosicionSucursal]) then
    begin
      ZQ_PosicionSucursal.Edit;
      ZQ_PosicionSucursalBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(Transaccion_ABMPosicionSuc)) then
      dm.EKModelo.cancelar_transaccion(Transaccion_ABMPosicionSuc);

    recNo:= ZQ_PosicionSucursal.RecNo;
    ZQ_PosicionSucursal.Refresh;
    ZQ_PosicionSucursal.RecNo:= recNo;
  end;
end;


procedure TFABM_SucursalPosicion.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(Transaccion_ABMPosicionSuc);
end;


procedure TFABM_SucursalPosicion.DBLookupCBoxSucKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
    if EKListadoSucursal.Buscar then
    begin
      ZQ_PosicionSucursal.Edit;
      ZQ_PosicionSucursalID_SUCURSAL.AsInteger :=  StrToInt(EKListadoSucursal.Resultado);
    end;
end;


procedure TFABM_SucursalPosicion.DBGridPosicionSucursalDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ZQ_PosicionSucursal.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillasConBajas(DBGridPosicionSucursal, ZQ_PosicionSucursalBAJA.AsString, Rect, DataCol, Column, State);
end;


procedure TFABM_SucursalPosicion.btnBuscarClick(Sender: TObject);
begin
  EKBusquedaAvanzada1.Buscar;
end;


procedure TFABM_SucursalPosicion.FormActivate(Sender: TObject);
begin
  ZQ_Sucursal.Refresh;
end;


procedure TFABM_SucursalPosicion.FormCreate(Sender: TObject);
begin
  StaticTxtBaja.Color:= FPrincipal.baja;

  dm.EKModelo.abrir(ZQ_Sucursal);
  EKBusquedaAvanzada1.Abrir;
  dm.mostrarCantidadRegistro(ZQ_PosicionSucursal, lblCantidadRegistros);
end;

//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFABM_SucursalPosicion.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFABM_SucursalPosicion.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABM_SucursalPosicion.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_SucursalPosicion.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_SucursalPosicion.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFABM_SucursalPosicion.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_SucursalPosicion.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------

procedure TFABM_SucursalPosicion.btnImprimirClick(Sender: TObject);
begin
  if ZQ_PosicionSucursal.IsEmpty then
    exit;

  DM.VariablesReportes(RepSucPosicion);
  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  QRLabelCritBusqueda.Caption := EKBusquedaAvanzada1.ParametrosBuscados;
  EKVistaPrevia.VistaPrevia;
end;

end.

