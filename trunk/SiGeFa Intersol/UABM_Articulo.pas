unit UABM_Articulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, XPStyleActnCtrls, ActnMan, QRCtrls, QuickRpt, Menus,
  ZSqlUpdate, ISBusquedaAvanzada, ISVistaPreviaQR, ISListadoSQL,
  ISOrdenarGrilla, cxClasses;

type
  TFABM_Articulo = class(TForm)
    PanelFondo: TPanel;
    PanelEdicion: TPanel;
    Label4: TLabel;
    DBEDescripcion: TDBEdit;
    PanelGrilla: TPanel;
    DBGridArticulo: TDBGrid;
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
    ZQ_Articulo: TZQuery;
    DS_Articulo: TDataSource;
    ZQ_ArticuloID_ARTICULO: TIntegerField;
    ZQ_ArticuloID_TIPO_ARTICULO: TIntegerField;
    ZQ_ArticuloDESCRIPCION: TStringField;
    ZQ_ArticuloBAJA: TStringField;
    ZQ_TipoArt: TZQuery;
    ZQ_TipoArtID_TIPO_ARTICULO: TIntegerField;
    ZQ_TipoArtDESCRIPCION: TStringField;
    ZQ_TipoArtBAJA: TStringField;
    DS_TipoArt: TDataSource;
    ZQ_ArticuloTipoArticulo: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
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
    RepArticulo: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepArticulo_Subtitulo: TQRLabel;
    RepArticulo_Titulo: TQRLabel;
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
    DBGridMedidas: TDBGrid;
    ZQ_Medidas: TZQuery;
    DS_Medidas: TDataSource;
    ZQ_MedidasMEDIDA: TStringField;
    ZQ_MedidasBAJA: TStringField;
    PopupMenuMedida: TPopupMenu;
    QuitarMedida1: TMenuItem;
    ZU_Medidas: TZUpdateSQL;
    btnExcel: TdxBarLargeButton;
    ISOrdenar: TISOrdenarGrilla;
    ISListadoTipo: TISListadoSQL;
    ISVistaPrevia: TISVistaPreviaQR;
    ISBuscar: TISBusquedaAvanzada;
    ZQ_MedidasID_MEDIDA_ARTICULO: TIntegerField;
    ZQ_MedidasID_ARTICULO: TIntegerField;
    ZQ_MedidasID_MEDIDA: TIntegerField;
    ZQ_MedidasBAJA_1: TStringField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridArticuloDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnBuscarClick(Sender: TObject);
    procedure DBLookupComboBox1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    //------TECLAS RAPIDAS
    procedure ABuscarExecute(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure ABajaExecute(Sender: TObject);
    procedure AReactivarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ZQ_ArticuloAfterScroll(DataSet: TDataSet);
    procedure QuitarMedida1Click(Sender: TObject);
    procedure DBGridMedidasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnExcelClick(Sender: TObject);
  private
  public
  end;

var
  FABM_Articulo: TFABM_Articulo;

const
  transaccion_ABM = 'ABM ARTICULO';

implementation

uses UPrincipal, UDM;

{$R *.dfm}

procedure TFABM_Articulo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFABM_Articulo.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_Articulo.btnNuevoClick(Sender: TObject);
begin
  if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Articulo, ZQ_Medidas]) then
  begin
    DBGridMedidas.PopupMenu:= PopupMenuMedida;
    DBGridArticulo.Enabled:= false;
    PanelEdicion.Visible:= true;

    ZQ_Articulo.Append;
    ZQ_ArticuloBAJA.AsString:= 'N';

    DBLookupComboBox1.SetFocus;
    GrupoEditando.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= true;
  end;
end;


procedure TFABM_Articulo.btnModificarClick(Sender: TObject);
begin
  if ZQ_Articulo.IsEmpty then
    exit;

  if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Articulo, ZQ_Medidas]) then
  begin
    DBGridMedidas.PopupMenu:= PopupMenuMedida;
    DBGridArticulo.Enabled:= false;
    PanelEdicion.Visible:= true;

    ZQ_Articulo.Edit;

    DBLookupComboBox1.SetFocus;
    GrupoEditando.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= true;
  end;
end;


procedure TFABM_Articulo.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Articulo.IsEmpty) or (ZQ_ArticuloBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja el "Artículo" seleccionado?'), 'ABM Artículo', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Articulo]) then
    begin
      ZQ_Articulo.Edit;
      ZQ_ArticuloBAJA.AsString:= 'S';
    end
    else
      exit;

    if not (dm.ISModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.ISModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_Articulo.RecNo;
    ZQ_Articulo.Refresh;
    ZQ_Articulo.RecNo:= recNo;
  end;
end;


procedure TFABM_Articulo.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Articulo.IsEmpty) or (ZQ_ArticuloBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar el "Artículo" seleccionado?'), 'ABM Artículo', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Articulo]) then
    begin
      ZQ_Articulo.Edit;
      ZQ_ArticuloBAJA.AsString:= 'N';
    end
    else
      exit;

    if not (dm.ISModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.ISModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_Articulo.RecNo;
    ZQ_Articulo.Refresh;
    ZQ_Articulo.RecNo:= recNo;
  end;
end;


procedure TFABM_Articulo.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if (DBLookupComboBox1.Text = '') then
  begin
    Application.MessageBox(pchar('El campo Tipo Artículo se encuentra vacío, Verifique'), 'Validación', MB_OK + MB_ICONINFORMATION);
    DBLookupComboBox1.SetFocus;
    Exit;
  end;

  if (DBEDescripcion.Text = '') then
  begin
    Application.MessageBox(pchar('El campo Descripción se encuentra vacío, Verifique'), 'Validación', MB_OK + MB_ICONINFORMATION);
    DBEDescripcion.SetFocus;
    Exit;
  end;

  try
    if DM.ISModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      DBGridMedidas.PopupMenu:= nil;
      DBGridArticulo.Enabled:= true;
      DBGridArticulo.SetFocus;
      GrupoEditando.Enabled:= true;
      GrupoGuardarCancelar.Enabled:= false;
      recNo:= ZQ_Articulo.RecNo;
      ZQ_Articulo.Refresh;
      ZQ_Articulo.RecNo:= recNo;
      PanelEdicion.Visible:= false;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención', MB_OK + MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_Articulo, lblCantidadRegistros);
end;


procedure TFABM_Articulo.btnCancelarClick(Sender: TObject);
begin
  if dm.ISModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    DBGridMedidas.PopupMenu:= nil;
    DBGridArticulo.Enabled:= true;
    DBGridArticulo.SetFocus;
    GrupoEditando.Enabled:= true;
    GrupoGuardarCancelar.Enabled:= false;
    PanelEdicion.Visible:= false;
  end;
end;


procedure TFABM_Articulo.FormCreate(Sender: TObject);
begin
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
  StaticTxtBaja.Color:= FPrincipal.baja;

  ISBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_Articulo, lblCantidadRegistros);
end;


procedure TFABM_Articulo.DBGridArticuloDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillasConBajas(DBGridArticulo, ZQ_ArticuloBAJA.AsString, Rect, DataCol, Column, State);
end;


procedure TFABM_Articulo.btnBuscarClick(Sender: TObject);
begin
  if ISBuscar.Buscar then
    dm.mostrarCantidadRegistro(ZQ_Articulo, lblCantidadRegistros);
end;


procedure TFABM_Articulo.DBLookupComboBox1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
    if ISListadoTipo.Buscar then
    begin
      ZQ_Articulo.Edit;
      ZQ_ArticuloID_TIPO_ARTICULO.AsInteger:= StrToInt(ISListadoTipo.Resultado);
      DBLookupComboBox1.SetFocus;
    end;
end;

//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFABM_Articulo.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFABM_Articulo.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABM_Articulo.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_Articulo.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_Articulo.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFABM_Articulo.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_Articulo.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFABM_Articulo.btnImprimirClick(Sender: TObject);
begin
  if ZQ_Articulo.IsEmpty then
    exit;

  DM.VariablesReportes(RepArticulo);
  QRlblPieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ', dm.ISModelo.Fecha);
  QRLabelCritBusqueda.Caption:= ISBuscar.ParametrosBuscados;
  ISVistaPrevia.VistaPrevia;
end;


procedure TFABM_Articulo.ZQ_ArticuloAfterScroll(DataSet: TDataSet);
begin
  ZQ_Medidas.Close;
  ZQ_Medidas.ParamByName('idArticulo').AsInteger:= ZQ_ArticuloID_ARTICULO.AsInteger;
  ZQ_Medidas.Open;
end;


procedure TFABM_Articulo.QuitarMedida1Click(Sender: TObject);
begin
  if ZQ_Medidas.IsEmpty then
    exit;

  ZQ_Medidas.Delete;
end;


procedure TFABM_Articulo.DBGridMedidasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridMedidas, Rect, DataCol, Column, State);
end;


procedure TFABM_Articulo.btnExcelClick(Sender: TObject);
begin
  if not ZQ_Articulo.IsEmpty then
    dm.ExportarEXCEL(DBGridArticulo);
end;

end.

