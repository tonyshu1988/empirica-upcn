unit UABM_ArticuloMedida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls,
  DBClient, Menus, ActnList, XPStyleActnCtrls,
  ActnMan, QRCtrls, QuickRpt,
  ISBusquedaAvanzada, cxClasses, ISLlenarCombo, ISListadoSQL,
  ISVistaPreviaQR;

type
  TFABM_ArticuloMedida = class(TForm) 
    PanelFondo: TPanel;
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
    ZQ_Medida: TZQuery;
    ZQ_MedidaID_MEDIDA: TIntegerField;
    ZQ_MedidaMEDIDA: TStringField;
    DS_Medida: TDataSource;
    ZQ_MedidaBAJA: TStringField;
    PageControlEdicion: TPageControl;
    TabABMMedidas: TTabSheet;
    TabMedidaArticulo: TTabSheet;
    DBGridMedidas: TDBGrid;
    DBGridMedida: TDBGrid;
    DBGridArticulo: TDBGrid;
    Splitter1: TSplitter;
    CDSArticulo: TClientDataSet;
    CDSMedidas: TClientDataSet;
    DSArticulo: TDataSource;
    DSMedidas: TDataSource;
    CDSArticulonombre_producto: TStringField;
    CDSMedidasid_medida: TIntegerField;
    CDSMedidasmedida: TStringField;
    PopupMenuArticulo: TPopupMenu;
    PopupMenuMedida: TPopupMenu;
    AgregarArticulo1: TMenuItem;
    QuitarArticulo1: TMenuItem;
    AgregarMedida1: TMenuItem;
    QuitarMedida1: TMenuItem;
    btnProcesar: TdxBarLargeButton;
    ZQ_MedidaArticulo: TZQuery;
    ZQ_MedidaArticuloID_ARTICULO: TIntegerField;
    ZQ_MedidaArticuloID_MEDIDA: TIntegerField;
    CDSArticuloid_articulo: TIntegerField;
    btCargarDatos: TdxBarLargeButton;
    btnGuardarCarga: TdxBarLargeButton;
    btnCancelarCarga: TdxBarLargeButton;
    TabMedidaArticuloUnico: TTabSheet;
    PanelSeleccionarArticulo: TPanel;
    DBGridMedidaARticulo: TDBGrid;
    CBArticulo: TComboBox;
    Label1: TLabel;
    ZQ_MedidaArticulomedida: TStringField;
    DS_MedidaArticulo: TDataSource;
    ZQ_Articulo: TZQuery;
    ZQ_ArticuloID_ARTICULO: TIntegerField;
    ZQ_ArticuloDESCRIPCION: TStringField;
    ZQ_ArticuloID_TIPO_ARTICULO: TIntegerField;
    ZQ_ArticuloBAJA: TStringField;
    PopupMenuArticuloMedida: TPopupMenu;
    AgregarMedida2: TMenuItem;
    QuitarMedida2: TMenuItem;
    ZQ_MedidaArticuloBAJA: TStringField;
    MedidaArticuloBAJA: TZQuery;
    MedidaArticuloBAJAID_ARTICULO: TIntegerField;
    MedidaArticuloBAJAID_MEDIDA: TIntegerField;
    MedidaArticuloBAJABAJA: TStringField;
    PBusqueda: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
    PanelEdicion: TPanel;
    Label2: TLabel;
    DBENombre: TDBEdit;
    ZQ_ArticuloTIPO_ARTICULO: TStringField;
    ZQ_ArticuloBUSQUEDA: TStringField;
    Label3: TLabel;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    AProcesar: TAction;
    AGuardarAsociar: TAction;
    ACancelarAsociar: TAction;
    RepMedida: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepMedida_Subtitulo: TQRLabel;
    RepMedida_Titulo: TQRLabel;
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
    btnExcel: TdxBarLargeButton;
    ISBuscar: TISBusquedaAvanzada;
    ISListadoArticulo: TISListadoSQL;
    ISListadoMedidas: TISListadoSQL;
    ISLlenarComboArticulo: TISLlenarCombo;
    ISVistaPrevia: TISVistaPreviaQR;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridMedidasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure AgregarArticulo1Click(Sender: TObject);
    procedure QuitarArticulo1Click(Sender: TObject);
    procedure AgregarMedida1Click(Sender: TObject);
    procedure QuitarMedida1Click(Sender: TObject);
    procedure btnProcesarClick(Sender: TObject);
    procedure PageControlEdicionChange(Sender: TObject);
    procedure btCargarDatosClick(Sender: TObject);
    procedure btnGuardarCargaClick(Sender: TObject);
    procedure btnCancelarCargaClick(Sender: TObject);
    procedure AgregarMedida2Click(Sender: TObject);
    procedure QuitarMedida2Click(Sender: TObject);
    procedure PageControlEdicionChanging(Sender: TObject; var AllowChange: Boolean);
    procedure DBGridMedidaARticuloDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CBArticuloKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    //------TECLAS RAPIDAS
    procedure ABuscarExecute(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure ABajaExecute(Sender: TObject);
    procedure AReactivarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure AProcesarExecute(Sender: TObject);
    procedure AGuardarAsociarExecute(Sender: TObject);
    procedure ACancelarAsociarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure DBGridArticuloDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridMedidaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnExcelClick(Sender: TObject);
    procedure ISLlenarComboArticuloCambio(valor: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_ArticuloMedida: TFABM_ArticuloMedida;
  banderaSeleccionar : integer;

const
  transaccion_ABMMedida = 'ABM ARTICULO MEDIDA';

implementation

uses UPrincipal, UDM;

{$R *.dfm}

procedure TFABM_ArticuloMedida.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABMMedida);
end;


procedure TFABM_ArticuloMedida.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_ArticuloMedida.btnBuscarClick(Sender: TObject);
begin
  if ISBuscar.Buscar then
    dm.mostrarCantidadRegistro(ZQ_Medida, lblCantidadRegistros);
end;


procedure TFABM_ArticuloMedida.btnNuevoClick(Sender: TObject);
begin
  if dm.ISModelo.iniciar_transaccion(transaccion_ABMMedida, [ZQ_Medida]) then
  begin
    DBGridMedidas.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_Medida.Append;
    ZQ_MedidaBAJA.AsString:= 'N';
    DBENombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_ArticuloMedida.btnModificarClick(Sender: TObject);
begin
  if ZQ_Medida.IsEmpty then
    exit;

  if dm.ISModelo.iniciar_transaccion(transaccion_ABMMedida, [ZQ_Medida]) then
  begin
    DBGridMedidas.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_Medida.Edit;
    DBENombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_ArticuloMedida.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Medida.IsEmpty) OR (ZQ_MedidaBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja la "Medida" seleccionada?'), 'ABM Articulo Medida', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.ISModelo.iniciar_transaccion(transaccion_ABMMedida, [ZQ_Medida, MedidaArticuloBAJA]) then
    begin
      ZQ_Medida.Edit;
      ZQ_MedidaBAJA.AsString:='S';

      MedidaArticuloBAJA.Close;
      MedidaArticuloBAJA.ParamByName('ID_MEDIDA').AsInteger := ZQ_MedidaID_MEDIDA.AsInteger;
      MedidaArticuloBAJA.Open;

      MedidaArticuloBAJA.First;
      while not MedidaArticuloBAJA.Eof do
      begin
        MedidaArticuloBAJA.Edit;
        MedidaArticuloBAJABAJA.AsString := 'S';
        MedidaArticuloBAJA.Next;
      end;
    end
    else
      exit;

    if not (dm.ISModelo.finalizar_transaccion(transaccion_ABMMedida)) then
      dm.ISModelo.cancelar_transaccion(transaccion_ABMMedida);

    recNo:= ZQ_Medida.RecNo;
    ZQ_Medida.Refresh;
    ZQ_Medida.RecNo:= recNo;
  end;
end;


procedure TFABM_ArticuloMedida.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Medida.IsEmpty) OR (ZQ_MedidaBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar la "Medida" seleccionado?'), 'ABM Articulo Medida', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.ISModelo.iniciar_transaccion(transaccion_ABMMedida, [ZQ_Medida, MedidaArticuloBAJA]) then
    begin
      ZQ_Medida.Edit;
      ZQ_MedidaBAJA.AsString:='N';

      MedidaArticuloBAJA.Close;
      MedidaArticuloBAJA.ParamByName('ID_MEDIDA').AsInteger := ZQ_MedidaID_MEDIDA.AsInteger;
      MedidaArticuloBAJA.Open;

      MedidaArticuloBAJA.First;
      while not MedidaArticuloBAJA.Eof do
      begin
        MedidaArticuloBAJA.Edit;
        MedidaArticuloBAJABAJA.AsString := 'N';
        MedidaArticuloBAJA.Next;
      end;
    end
    else
      exit;

    if not (dm.ISModelo.finalizar_transaccion(transaccion_ABMMedida)) then
      dm.ISModelo.cancelar_transaccion(transaccion_ABMMedida);

    recNo:= ZQ_Medida.RecNo;
    ZQ_Medida.Refresh;
    ZQ_Medida.RecNo:= recNo;
  end;
end;


procedure TFABM_ArticuloMedida.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if (trim(DBENombre.Text) = '') then
  begin
    Application.MessageBox('El campo "Medida" se encuentra vacío, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
    DBENombre.SetFocus;
    exit;
  end;

  try
    if DM.ISModelo.finalizar_transaccion(transaccion_ABMMedida) then
    begin
      DBGridMedidas.Enabled:= true;    
      DBGridMedidas.SetFocus;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      recNo:= ZQ_Medida.RecNo;
      ZQ_Medida.Refresh;
      ZQ_Medida.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_Medida, lblCantidadRegistros);
end;


procedure TFABM_ArticuloMedida.btnCancelarClick(Sender: TObject);
begin
  if dm.ISModelo.cancelar_transaccion(transaccion_ABMMedida) then
  begin
    DBGridMedidas.Enabled:=true;
    DBGridMedidas.SetFocus;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    PanelEdicion.Visible := false;
  end;
end;


procedure TFABM_ArticuloMedida.FormCreate(Sender: TObject);
begin
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
  StaticTxtBaja.Color:= FPrincipal.baja;

  dm.ISModelo.abrir(ZQ_Articulo);
  CDSArticulo.CreateDataSet;
  CDSMedidas.CreateDataSet;
  PageControlEdicion.TabIndex := 0;
  ISLlenarComboArticulo.CargarCombo;

  ISBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_Medida, lblCantidadRegistros);   
end;


procedure TFABM_ArticuloMedida.DBGridMedidasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillasConBajas(DBGridMedidas, ZQ_MedidaBAJA.AsString, Rect, DataCol, Column, State);
end;


procedure TFABM_ArticuloMedida.AgregarArticulo1Click(Sender: TObject);
begin
  if ISListadoArticulo.Buscar then
  begin
    CDSArticulo.Filter:= 'id_articulo = '+ISListadoArticulo.Resultado;
    CDSArticulo.Filtered := true;
    if not CDSArticulo.IsEmpty then
    begin
      CDSArticulo.Filtered := false;
      Application.MessageBox('Este articulo ya fue cargado','Carga articulo',MB_OK+MB_ICONINFORMATION);
      exit;
    end;

    CDSArticulo.Filtered := false;
    CDSArticulo.Append;
    CDSArticuloid_articulo.AsString := ISListadoArticulo.Resultado;
    CDSArticulonombre_producto.AsString := ISListadoArticulo.Seleccion;
  end;
end;


procedure TFABM_ArticuloMedida.QuitarArticulo1Click(Sender: TObject);
begin
  if not CDSArticulo.IsEmpty then
    CDSArticulo.Delete;
end;


procedure TFABM_ArticuloMedida.AgregarMedida1Click(Sender: TObject);
begin
  if ISListadoMedidas.Buscar then
  begin
    CDSMedidas.Filter:= 'id_medida = '+ISListadoMedidas.Resultado;
    CDSMedidas.Filtered := true;
    if not CDSMedidas.IsEmpty then
    begin
      CDSMedidas.Filtered := false;
      Application.MessageBox('Esta medida ya fue cargada','Carga medida',MB_OK+MB_ICONINFORMATION);
      exit;
    end;

    CDSMedidas.Filtered := false;
    CDSMedidas.Append;
    CDSMedidasid_medida.AsString := ISListadoMedidas.Resultado;
    CDSMedidasmedida.AsString := ISListadoMedidas.Seleccion;
  end;
end;


procedure TFABM_ArticuloMedida.QuitarMedida1Click(Sender: TObject);
begin
  if not CDSMedidas.IsEmpty then
    CDSMedidas.Delete;
end;


procedure TFABM_ArticuloMedida.btnProcesarClick(Sender: TObject);
begin
  if CDSArticulo.IsEmpty or CDSMedidas.IsEmpty then
  begin
    Application.MessageBox('Debe cargar Articulos o Medidas VERIFIQUE','Procesar',MB_OK+MB_ICONINFORMATION);
    exit;
  end;

  CDSArticulo.First;

  if dm.ISModelo.iniciar_transaccion(transaccion_ABMMedida, [ZQ_MedidaArticulo]) then
  begin
    while not CDSArticulo.Eof do
    begin
      CDSMedidas.First;
      while not CDSMedidas.Eof do
      begin
         ZQ_MedidaArticulo.Append;
         ZQ_MedidaArticuloID_ARTICULO.AsInteger := CDSArticuloid_articulo.AsInteger;
         ZQ_MedidaArticuloID_MEDIDA.AsInteger := CDSMedidasid_medida.AsInteger;
         ZQ_MedidaArticuloBAJA.AsString := 'N';
         CDSMedidas.Next;
      end;
      CDSArticulo.Next;
    end;

    btnGuardarCarga.Enabled := true;
    btnCancelarCarga.Enabled := true;
    btnProcesar.Enabled := false;
    DBGridArticulo.Enabled := false;
    DBGridMedida.Enabled := false;
  end;
end;


procedure TFABM_ArticuloMedida.PageControlEdicionChange(Sender: TObject);
begin
  ZQ_MedidaArticulo.Close;

  case PageControlEdicion.TabIndex of
  0:begin
      btnProcesar.Visible := ivNever;
      btCargarDatos.Visible := ivNever;
      btnGuardarCarga.Visible := ivNever;
      btnCancelarCarga.Visible := ivNever;

      btnBuscar.Visible := ivAlways;
      btnGuardar.Visible := ivAlways;
      btnCancelar.Visible := ivAlways;
      btnNuevo.Visible := ivAlways;
      btnModificar.Visible := ivAlways;
      btnBaja.Visible := ivAlways;
      btnReactivar.Visible := ivAlways;
      btnImprimir.Visible := ivAlways;
    end;

  1:begin
      btnProcesar.Visible := ivAlways;
      btCargarDatos.Visible := ivAlways;
      btnGuardarCarga.Visible := ivAlways;
      btnCancelarCarga.Visible := ivAlways;

      btnBuscar.Visible := ivNever;
      btnGuardar.Visible := ivNever;
      btnCancelar.Visible := ivNever;
      btnModificar.Visible := ivNever;
      btnNuevo.Visible := ivNever;
      btnBaja.Visible := ivNever;
      btnReactivar.Visible := ivNever;
      btnImprimir.Visible := ivNever;
    end;

  2:begin
      btnProcesar.Visible := ivNever;
      btCargarDatos.Visible := ivNever;
      btnGuardarCarga.Visible := ivNever;
      btnCancelarCarga.Visible := ivNever;

      btnBuscar.Visible := ivNever;
      btnGuardar.Visible := ivNever;
      btnCancelar.Visible := ivNever;
      btnModificar.Visible := ivNever;
      btnNuevo.Visible := ivNever;
      btnBaja.Visible := ivNever;
      btnReactivar.Visible := ivNever;
      btnImprimir.Visible := ivNever;
    end;

  end;
end;


procedure TFABM_ArticuloMedida.btCargarDatosClick(Sender: TObject);
begin
  btCargarDatos.Enabled := false;
  btnCancelarCarga.Enabled := true;
  btnProcesar.Enabled := true;
end;


procedure TFABM_ArticuloMedida.btnGuardarCargaClick(Sender: TObject);
begin
  try
    if DM.ISModelo.finalizar_transaccion(transaccion_ABMMedida) then
    begin
      btnGuardarCarga.Enabled := false;
      btnCancelarCarga.Enabled := false;
      btnProcesar.Enabled := true;
      DBGridArticulo.Enabled := true;
      DBGridMedida.Enabled := true;
      CDSArticulo.EmptyDataSet;
      CDSMedidas.EmptyDataSet;
    end
  except
    begin
      Application.MessageBox('Verifique que alguna medida no haya sido cargada anteriormente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end
end;


procedure TFABM_ArticuloMedida.btnCancelarCargaClick(Sender: TObject);
begin
  if dm.ISModelo.cancelar_transaccion(transaccion_ABMMedida) then
  begin
    btnGuardarCarga.Enabled := false;
    btnCancelarCarga.Enabled := false;
    btnProcesar.Enabled := true;
    DBGridArticulo.Enabled := true;
    DBGridMedida.Enabled := true;
    CDSArticulo.EmptyDataSet;
    CDSMedidas.EmptyDataSet;
  end;
end;


procedure TFABM_ArticuloMedida.AgregarMedida2Click(Sender: TObject);
begin
  if ISListadoMedidas.Buscar then
  begin
    if dm.ISModelo.iniciar_transaccion(transaccion_ABMMedida, [ZQ_MedidaArticulo]) then
    begin
      ZQ_MedidaArticulo.Append;
      ZQ_MedidaArticuloID_MEDIDA.AsInteger := StrToInt(ISListadoMedidas.Resultado);
      ZQ_MedidaArticuloID_ARTICULO.AsInteger := strtoint(ISLlenarComboArticulo.SelectClave);
      ZQ_MedidaArticuloBAJA.AsString := 'N';
      
      try
        DM.ISModelo.finalizar_transaccion(transaccion_ABMMedida);
      except
        begin
          dm.ISModelo.cancelar_transaccion(transaccion_ABMMedida);
          Application.MessageBox('Verifique que alguna medida no haya sido cargada anteriormente.', 'Atención',MB_OK+MB_ICONINFORMATION);
          exit;
        end;
      end;

    end;
  end;
end;


procedure TFABM_ArticuloMedida.QuitarMedida2Click(Sender: TObject);
begin
  if ZQ_MedidaArticulo.IsEmpty then
  exit;

  if dm.ISModelo.iniciar_transaccion(transaccion_ABMMedida, [ZQ_MedidaArticulo]) then
  begin
    ZQ_MedidaArticulo.Delete;
    if not DM.ISModelo.finalizar_transaccion(transaccion_ABMMedida) then
      dm.ISModelo.cancelar_transaccion(transaccion_ABMMedida);
  end;
end;


procedure TFABM_ArticuloMedida.PageControlEdicionChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if (btnGuardarCarga.Enabled = true) or (btnGuardar.Enabled = true) then
    AllowChange := false
  else
    AllowChange := true;
end;


procedure TFABM_ArticuloMedida.DBGridMedidaARticuloDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillasConBajas(DBGridMedidaARticulo, ZQ_MedidaArticuloBAJA.AsString, Rect, DataCol, Column, State);
end;

procedure TFABM_ArticuloMedida.CBArticuloKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//  if key = 112 then
//    if ISListadoArticulo.Buscar then
//    begin
//      ZQ_MedidaArticulo.Close;
//      ZQ_MedidaArticulo.ParamByName('ID_ARTICULO').AsInteger := strtoint(ISListadoArticulo.Resultado);
//      ZQ_MedidaArticulo.Open;
//
//      CBArticulo.Text:= ISListadoArticulo.Seleccion;
//    end;
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFABM_ArticuloMedida.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFABM_ArticuloMedida.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABM_ArticuloMedida.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_ArticuloMedida.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_ArticuloMedida.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFABM_ArticuloMedida.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_ArticuloMedida.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;

procedure TFABM_ArticuloMedida.AProcesarExecute(Sender: TObject);
begin
  if btnProcesar.Enabled then
    btnProcesar.Click;
end;

procedure TFABM_ArticuloMedida.AGuardarAsociarExecute(Sender: TObject);
begin
  if btnGuardarCarga.Enabled then
    btnGuardarCarga.Click;
end;

procedure TFABM_ArticuloMedida.ACancelarAsociarExecute(Sender: TObject);
begin
  if btnCancelarCarga.Enabled then
    btnCancelarCarga.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------

procedure TFABM_ArticuloMedida.btnImprimirClick(Sender: TObject);
begin
  if ZQ_Medida.IsEmpty then
    exit;

  DM.VariablesReportes(RepMedida);
  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.ISModelo.Fecha);
  QRLabelCritBusqueda.Caption := ISBuscar.ParametrosBuscados;
  ISVistaPrevia.VistaPrevia;
end;


procedure TFABM_ArticuloMedida.DBGridArticuloDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridArticulo, Rect, DataCol, Column, State);
end;


procedure TFABM_ArticuloMedida.DBGridMedidaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridMedida, Rect, DataCol, Column, State);
end;


procedure TFABM_ArticuloMedida.btnExcelClick(Sender: TObject);
begin
  if not ZQ_Medida.IsEmpty then
    dm.ExportarEXCEL(DBGridMedidas);
end;


procedure TFABM_ArticuloMedida.ISLlenarComboArticuloCambio(valor: String);
begin
  if (ISLlenarComboArticulo.SelectClave = '') then
    exit;

  ZQ_MedidaArticulo.Close;
  ZQ_MedidaArticulo.ParamByName('ID_ARTICULO').AsInteger := strtoint(ISLlenarComboArticulo.SelectClave);
  ZQ_MedidaArticulo.Open;
end;

end.
