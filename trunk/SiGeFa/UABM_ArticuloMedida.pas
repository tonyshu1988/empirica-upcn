unit UABM_ArticuloMedida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls,
  DBClient, Menus, EKListadoSQL, EKLlenarCombo;

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
    btProcesar: TdxBarLargeButton;
    EKListadoArticulos: TEKListadoSQL;
    EKListadoMedidas: TEKListadoSQL;
    ZQ_MedidaArticulo: TZQuery;
    ZQ_MedidaArticuloID_ARTICULO: TIntegerField;
    ZQ_MedidaArticuloID_MEDIDA: TIntegerField;
    CDSArticuloid_articulo: TIntegerField;
    btCargarDatos: TdxBarLargeButton;
    btGuardarCarga: TdxBarLargeButton;
    btCancelarCarga: TdxBarLargeButton;
    TabMedidaArticuloUnico: TTabSheet;
    PanelSeleccionarArticulo: TPanel;
    DBGridMedidaARticulo: TDBGrid;
    CBArticulo: TComboBox;
    btseleccionarArticulo: TButton;
    Label1: TLabel;
    ZQ_MedidaArticulomedida: TStringField;
    DS_MedidaArticulo: TDataSource;
    EKLlenarComboArticulo: TEKLlenarCombo;
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
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridMedidasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure AgregarArticulo1Click(Sender: TObject);
    procedure QuitarArticulo1Click(Sender: TObject);
    procedure AgregarMedida1Click(Sender: TObject);
    procedure QuitarMedida1Click(Sender: TObject);
    procedure btProcesarClick(Sender: TObject);
    procedure PageControlEdicionChange(Sender: TObject);
    procedure btCargarDatosClick(Sender: TObject);
    procedure btGuardarCargaClick(Sender: TObject);
    procedure btCancelarCargaClick(Sender: TObject);
    procedure AgregarMedida2Click(Sender: TObject);
    procedure QuitarMedida2Click(Sender: TObject);
    procedure btseleccionarArticuloClick(Sender: TObject);
    procedure CBArticuloExit(Sender: TObject);
    procedure PageControlEdicionChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure DBGridMedidaARticuloDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
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

procedure TFABM_ArticuloMedida.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABMMedida, [ZQ_Medida]) then
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

  if dm.EKModelo.iniciar_transaccion(transaccion_ABMMedida, [ZQ_Medida]) then
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
    if dm.EKModelo.iniciar_transaccion(transaccion_ABMMedida, [ZQ_Medida, MedidaArticuloBAJA]) then
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

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABMMedida)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABMMedida);

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
    if dm.EKModelo.iniciar_transaccion(transaccion_ABMMedida, [ZQ_Medida, MedidaArticuloBAJA]) then
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

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABMMedida)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABMMedida);

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
    if DM.EKModelo.finalizar_transaccion(transaccion_ABMMedida) then
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
  if dm.EKModelo.cancelar_transaccion(transaccion_ABMMedida) then
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
  StaticTxtBaja.Color:= FPrincipal.baja;

  dm.EKModelo.abrir(ZQ_Medida);
  dm.EKModelo.abrir(ZQ_Articulo);
  CDSArticulo.CreateDataSet;
  CDSMedidas.CreateDataSet;
  PageControlEdicion.TabIndex := 0;
  EKLlenarComboArticulo.CargarCombo;

  dm.mostrarCantidadRegistro(ZQ_Medida, lblCantidadRegistros);   
end;


procedure TFABM_ArticuloMedida.DBGridMedidasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ZQ_Medida.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillasConBajas(DBGridMedidas, ZQ_MedidaBAJA.AsString, Rect, DataCol, Column, State);
end;


procedure TFABM_ArticuloMedida.AgregarArticulo1Click(Sender: TObject);
begin
  if EKListadoArticulos.Buscar then
  begin
    CDSArticulo.Filter:= 'id_articulo = '+EKListadoArticulos.Resultado;
    CDSArticulo.Filtered := true;
    if not CDSArticulo.IsEmpty then
    begin
      CDSArticulo.Filtered := false;
      Application.MessageBox('Este articulo ya fue cargado','Carga articulo',MB_OK+MB_ICONINFORMATION);
      exit;
    end;

    CDSArticulo.Filtered := false;
    CDSArticulo.Append;
    CDSArticuloid_articulo.AsString := EKListadoArticulos.Resultado;
    CDSArticulonombre_producto.AsString := EKListadoArticulos.Seleccion;
  end;
end;


procedure TFABM_ArticuloMedida.QuitarArticulo1Click(Sender: TObject);
begin
  if not CDSArticulo.IsEmpty then
    CDSArticulo.Delete;
end;


procedure TFABM_ArticuloMedida.AgregarMedida1Click(Sender: TObject);
begin
  if EKListadoMedidas.Buscar then
  begin
    CDSMedidas.Filter:= 'id_medida = '+EKListadoMedidas.Resultado;
    CDSMedidas.Filtered := true;
    if not CDSMedidas.IsEmpty then
    begin
      CDSMedidas.Filtered := false;
      Application.MessageBox('Esta medida ya fue cargada','Carga medida',MB_OK+MB_ICONINFORMATION);
      exit;
    end;

    CDSMedidas.Filtered := false;
    CDSMedidas.Append;
    CDSMedidasid_medida.AsString := EKListadoMedidas.Resultado;
    CDSMedidasmedida.AsString := EKListadoMedidas.Seleccion;
  end;
end;


procedure TFABM_ArticuloMedida.QuitarMedida1Click(Sender: TObject);
begin
  if not CDSMedidas.IsEmpty then
    CDSMedidas.Delete;
end;


procedure TFABM_ArticuloMedida.btProcesarClick(Sender: TObject);
begin
  if CDSArticulo.IsEmpty or CDSMedidas.IsEmpty then
  begin
    Application.MessageBox('Debe cargar Articulos o Medidas VERIFIQUE','Procesar',MB_OK+MB_ICONINFORMATION);
    exit;
  end;

  CDSArticulo.First;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABMMedida, [ZQ_MedidaArticulo]) then
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

    btGuardarCarga.Enabled := true;
    btCancelarCarga.Enabled := true;
    btProcesar.Enabled := false;
    DBGridArticulo.Enabled := false;
    DBGridMedida.Enabled := false;
  end;
end;


procedure TFABM_ArticuloMedida.PageControlEdicionChange(Sender: TObject);
begin
  ZQ_MedidaArticulo.Close;

  case PageControlEdicion.TabIndex of
  0:begin
      btProcesar.Visible := ivNever;
      btCargarDatos.Visible := ivNever;
      btGuardarCarga.Visible := ivNever;
      btCancelarCarga.Visible := ivNever;

      btnGuardar.Visible := ivAlways;
      btnCancelar.Visible := ivAlways;
      btnNuevo.Visible := ivAlways;
      btnModificar.Visible := ivAlways;
      btnBaja.Visible := ivAlways;
      btnReactivar.Visible := ivAlways;
      btnImprimir.Visible := ivAlways;
    end;

  1:begin
      btProcesar.Visible := ivAlways;
      btCargarDatos.Visible := ivAlways;
      btGuardarCarga.Visible := ivAlways;
      btCancelarCarga.Visible := ivAlways;
      
      btnGuardar.Visible := ivNever;
      btnCancelar.Visible := ivNever;
      btnModificar.Visible := ivNever;
      btnNuevo.Visible := ivNever;
      btnBaja.Visible := ivNever;
      btnReactivar.Visible := ivNever;
      btnImprimir.Visible := ivNever;
    end;

  2:begin
      btProcesar.Visible := ivNever;
      btCargarDatos.Visible := ivNever;
      btGuardarCarga.Visible := ivNever;
      btCancelarCarga.Visible := ivNever;
      
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
  btCancelarCarga.Enabled := true;
  btProcesar.Enabled := true;
end;


procedure TFABM_ArticuloMedida.btGuardarCargaClick(Sender: TObject);
begin
  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABMMedida) then
    begin
      btGuardarCarga.Enabled := false;
      btCancelarCarga.Enabled := false;
      btProcesar.Enabled := true;
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


procedure TFABM_ArticuloMedida.btCancelarCargaClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_ABMMedida) then
  begin
    btGuardarCarga.Enabled := false;
    btCancelarCarga.Enabled := false;
    btProcesar.Enabled := true;
    DBGridArticulo.Enabled := true;
    DBGridMedida.Enabled := true;
    CDSArticulo.EmptyDataSet;
    CDSMedidas.EmptyDataSet;
  end;
end;


procedure TFABM_ArticuloMedida.AgregarMedida2Click(Sender: TObject);
begin
  if EKListadoMedidas.Buscar then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABMMedida, [ZQ_MedidaArticulo]) then
    begin
      ZQ_MedidaArticulo.Append;
      ZQ_MedidaArticuloID_MEDIDA.AsInteger := StrToInt(EKListadoMedidas.Resultado);
      ZQ_MedidaArticuloID_ARTICULO.AsInteger := strtoint(EKLlenarComboArticulo.SelectClave);
      ZQ_MedidaArticuloBAJA.AsString := 'N';
      
      try
        DM.EKModelo.finalizar_transaccion(transaccion_ABMMedida);
      except
        begin
          dm.EKModelo.cancelar_transaccion(transaccion_ABMMedida);
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

  if dm.EKModelo.iniciar_transaccion(transaccion_ABMMedida, [ZQ_MedidaArticulo]) then
  begin
    ZQ_MedidaArticulo.Delete;
    if not DM.EKModelo.finalizar_transaccion(transaccion_ABMMedida) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABMMedida);
  end;
end;


procedure TFABM_ArticuloMedida.btseleccionarArticuloClick(Sender: TObject);
begin
  if (EKLlenarComboArticulo.SelectClave = '') then
    exit;

  ZQ_MedidaArticulo.Close;
  ZQ_MedidaArticulo.ParamByName('ID_ARTICULO').AsInteger := strtoint(EKLlenarComboArticulo.SelectClave);
  ZQ_MedidaArticulo.Open;

  DBGridMedidaARticulo.Enabled :=  true;
end;


procedure TFABM_ArticuloMedida.CBArticuloExit(Sender: TObject);
begin
  DBGridMedidaARticulo.Enabled :=  false;
end;


procedure TFABM_ArticuloMedida.PageControlEdicionChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if (btGuardarCarga.Enabled = true) or (btnGuardar.Enabled = true) then
    AllowChange := false
  else
    AllowChange := true;
end;


procedure TFABM_ArticuloMedida.DBGridMedidaARticuloDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ZQ_MedidaArticulo.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillasConBajas(DBGridMedidaARticulo, ZQ_MedidaArticuloBAJA.AsString, Rect, DataCol, Column, State);
end;

end.
