unit UImprimirEtiquetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, jpeg, QRCtrls, QuickRpt, StdCtrls,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, ZStoredProcedure, UBuscarProducto,
  ZSqlProcessor, EKVistaPreviaQR, EKCodigoBarra,
  EKOrdenarGrilla, Menus, EKListadoSQL, ZSqlUpdate;

type
  TFImprimirEtiquetas = class(TForm)
    PanelFondo: TPanel;
    dxBarABM: TdxBarManager;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    ZQ_Etiquetas: TZQuery;
    DBGridEtiquetas: TDBGrid;
    DS_Etiquetas: TDataSource;
    SP_ImprimirEtiquetas: TZStoredProc;
    borrar: TZSQLProcessor;
    btnEliminarLinea: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnConPrecio: TdxBarLargeButton;
    EKVistaPreviaQR1: TEKVistaPreviaQR;
    QRBand1: TQRBand;
    QRShapeTapa: TQRShape;
    QRCodigoBarra1: TQRImage;
    QRCodigoBarra2: TQRImage;
    QRCodigoBarra3: TQRImage;
    QRDBArticulo1: TQRDBText;
    QRDBArticulo2: TQRDBText;
    QRDBArticulo3: TQRDBText;
    QRDBPrecio2: TQRDBText;
    QRDBPrecio3: TQRDBText;
    QRDBPrecio1: TQRDBText;
    Label1: TLabel;
    EKCodigoBarra1: TEKCodigoBarra;
    EKCodigoBarra2: TEKCodigoBarra;
    EKCodigoBarra3: TEKCodigoBarra;
    btnEditar: TdxBarLargeButton;
    Popup_Producto: TPopupMenu;
    PopItemProducto_Agregar: TMenuItem;
    PopItemProducto_Quitar: TMenuItem;
    PopItemProducto_QuitarTodos: TMenuItem;
    EKOrdenarGrilla: TEKOrdenarGrilla;
    EKListado_Sucursal: TEKListadoSQL;
    btnEliminarTodos: TdxBarLargeButton;
    ZU_Etiquetas: TZUpdateSQL;
    ZQ_EtiquetasID_PRODUCTO: TIntegerField;
    ZQ_EtiquetasCANTIDAD: TIntegerField;
    ZQ_EtiquetasID_PRECIO: TIntegerField;
    ZQ_EtiquetasNOMBRE: TStringField;
    ZQ_EtiquetasMEDIDA: TStringField;
    ZQ_EtiquetasCOD_CORTO_PRO: TStringField;
    ZQ_EtiquetasCODIGO_BARRA: TStringField;
    ZQ_EtiquetasCOD_CORTO_CAB: TStringField;
    ZQ_EtiquetasPRECIO_VENTA: TFloatField;
    SP_ImprimirEtiquetasCODIGOBARRA: TStringField;
    SP_ImprimirEtiquetasID_PRODUCTO: TIntegerField;
    SP_ImprimirEtiquetasDESCRIPCION: TStringField;
    SP_ImprimirEtiquetasID_PRECIO: TIntegerField;
    SP_ImprimirEtiquetasMEDIDA: TStringField;
    SP_ImprimirEtiquetasCOLOR: TStringField;
    SP_ImprimirEtiquetasPRECIO: TFloatField;
    SP_ImprimirEtiquetasNOMBRE_PRO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DBGridEtiquetasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SP_ImprimirEtiquetasAfterScroll(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure btnEliminarLineaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConPrecioClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure agregarProducto();
    procedure cargarProductos();
    procedure PopItemProducto_AgregarClick(Sender: TObject);
    procedure PopItemProducto_QuitarClick(Sender: TObject);
    procedure PopItemProducto_QuitarTodosClick(Sender: TObject);
    procedure DBGridEtiquetasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnEliminarTodosClick(Sender: TObject);
    procedure centrarCodigo;
  private
    vselProducto: TFBuscarProducto;
    procedure onSelProducto;
    procedure onSelTodosProducto;
  public
    id_sucursal: integer;
  end;

var
  FImprimirEtiquetas : TFImprimirEtiquetas;

const
  transaccion_Etiquetas = 'ETIQUETAS';

implementation

uses UDM, StrUtils, UPrincipal;

{$R *.dfm}

procedure TFImprimirEtiquetas.FormCreate(Sender: TObject);
begin
  EKOrdenarGrilla.PopUpGrilla:= nil;
  GrupoEditando.Enabled:= False;
  GrupoVisualizando.Enabled:= True;

//  ZQ_Productos.Open;
end;


procedure TFImprimirEtiquetas.cargarProductos();
begin
  ZQ_Etiquetas.Open;
end;


procedure TFImprimirEtiquetas.DBGridEtiquetasKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_Etiquetas) then
  begin
    if key = 112 then
      agregarProducto;
  end;
end;

procedure TFImprimirEtiquetas.agregarProducto();
begin
  if not Assigned(vselProducto) then
    vselProducto:= TFBuscarProducto.Create(nil);
  vselProducto.OnSeleccionar := onSelProducto;
  vselProducto.OnSeleccionarTodos := onSelTodosProducto;
  vselProducto.btnSeleccionarTodos.Visible:= ivAlways;
  vselProducto.SeleccionarYSalir:= false;
  vselProducto.ShowModal;
end;


procedure TFImprimirEtiquetas.onSelProducto;
begin
  if not vselProducto.ZQ_Producto.IsEmpty then
  begin
    ZQ_Etiquetas.Append;
    ZQ_EtiquetasID_PRODUCTO.AsInteger := vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
    ZQ_EtiquetasID_PRECIO.AsInteger := vselProducto.ZQ_ProductoID_PRECIO.AsInteger;
    ZQ_EtiquetasCANTIDAD.AsFloat := 1;
    ZQ_EtiquetasNOMBRE.AsString := vselProducto.ZQ_ProductoNOMBRE.AsString;
    ZQ_EtiquetasMEDIDA.AsString := vselProducto.ZQ_ProductoMEDIDA.AsString;
    ZQ_EtiquetasCOD_CORTO_PRO.AsString := vselProducto.ZQ_ProductoCOD_CORTO.AsString;
    ZQ_EtiquetasCOD_CORTO_CAB.AsString := vselProducto.ZQ_ProductoCOD_CORTO_1.AsString;
    ZQ_EtiquetasCODIGO_BARRA.AsString := vselProducto.ZQ_ProductoCODIGO_BARRA.AsString;
  end;

  if vselProducto.SeleccionarYSalir then
    vselProducto.Close;
end;


procedure TFImprimirEtiquetas.onSelTodosProducto;
begin
  vselProducto.ZQ_Producto.First;
  while not vselProducto.ZQ_Producto.Eof do
  begin
    ZQ_Etiquetas.Append;
    ZQ_EtiquetasID_PRODUCTO.AsInteger := vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
    ZQ_EtiquetasID_PRECIO.AsInteger := vselProducto.ZQ_ProductoID_PRECIO.AsInteger;
    ZQ_EtiquetasCANTIDAD.AsFloat := 1;
    ZQ_EtiquetasNOMBRE.AsString := vselProducto.ZQ_ProductoNOMBRE.AsString;
    ZQ_EtiquetasMEDIDA.AsString := vselProducto.ZQ_ProductoMEDIDA.AsString;
    ZQ_EtiquetasCOD_CORTO_PRO.AsString := vselProducto.ZQ_ProductoCOD_CORTO.AsString;
    ZQ_EtiquetasCOD_CORTO_CAB.AsString := vselProducto.ZQ_ProductoCOD_CORTO_1.AsString;
    ZQ_EtiquetasCODIGO_BARRA.AsString := vselProducto.ZQ_ProductoCODIGO_BARRA.AsString;

    vselProducto.ZQ_Producto.Next;
  end;

  vselProducto.Close;
end;


procedure TFImprimirEtiquetas.SP_ImprimirEtiquetasAfterScroll(DataSet: TDataSet);
begin
  EKCodigoBarra1.Text := SP_ImprimirEtiquetasCODIGOBARRA.AsString;
  EKCodigoBarra2.Text := SP_ImprimirEtiquetasCODIGOBARRA.AsString;
  EKCodigoBarra3.Text := SP_ImprimirEtiquetasCODIGOBARRA.AsString;

  centrarCodigo;
end;


procedure TFImprimirEtiquetas.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFImprimirEtiquetas.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if SP_ImprimirEtiquetasID_PRODUCTO.AsInteger = 0 then
  begin
    QRShapeTapa.BringToFront;
    QRShapeTapa.Enabled := true;
  end
  else
  Begin
    QRShapeTapa.Enabled := false;
  end;
end;


procedure TFImprimirEtiquetas.centrarCodigo;
begin
  QRCodigoBarra1.Left:= (QRDBPrecio1.Left) + ((245-EKCodigoBarra1.Width) div 2);
  QRCodigoBarra2.Left:= (QRDBPrecio2.Left) + ((245-EKCodigoBarra2.Width) div 2);
  QRCodigoBarra3.Left:= (QRDBPrecio3.Left) + ((245-EKCodigoBarra3.Width) div 2);
end;


procedure TFImprimirEtiquetas.btnEliminarLineaClick(Sender: TObject);
begin
  if not ZQ_Etiquetas.IsEmpty then
    ZQ_Etiquetas.Delete;
end;


procedure TFImprimirEtiquetas.btnCancelarClick(Sender: TObject);
begin
  borrar.Execute;
  btnEliminarTodos.click;

  if dm.EKModelo.finalizar_transaccion(transaccion_Etiquetas) then
  begin
    EKOrdenarGrilla.PopUpGrilla:= nil;

    DBGridEtiquetas.Enabled:= false;

    GrupoEditando.Enabled:= false;
    GrupoVisualizando.Enabled:= True;

    ZQ_Etiquetas.Refresh;
  end;
end;


procedure TFImprimirEtiquetas.btnImprimirClick(Sender: TObject);
var
    Fila: string;
    Filan : integer;
begin
  if ZQ_Etiquetas.IsEmpty then
    exit;

  fila := InputBox('Configurar Pagina','Indique la fila de la pagina desde donde empezar:','1');
  try
    filan := StrToInt(fila);
  except
    begin
      ShowMessage('valor incorrecto, intente de nuevo.');
      exit;
    end;
  end;

  dm.EKModelo.aplicar_modificaciones(transaccion_Etiquetas);

  SP_ImprimirEtiquetas.Active := false;
  SP_ImprimirEtiquetas.ParamByName('desde_renglon').AsInteger := Filan;
  SP_ImprimirEtiquetas.Active := true;

  QRDBPrecio1.Enabled := false;
  QRDBPrecio2.Enabled := false;
  QRDBPrecio3.Enabled := false;

  EKVistaPreviaQR1.VistaPrevia;
end;


procedure TFImprimirEtiquetas.btnConPrecioClick(Sender: TObject);
var
  Fila: string;
  Filan : integer;
begin
  if ZQ_Etiquetas.IsEmpty then
    exit;

  fila := InputBox('Configurar Pagina','Indique la fila de la pagina desde donde empezar:','1');
  try
    filan := StrToInt(fila);
  except
    begin
      ShowMessage('valor incorrecto, intente de nuevo.');
      exit;
    end;
  end;

  dm.EKModelo.aplicar_modificaciones(transaccion_Etiquetas);
  
  SP_ImprimirEtiquetas.Active := false;
  SP_ImprimirEtiquetas.ParamByName('desde_renglon').AsInteger := Filan;
  SP_ImprimirEtiquetas.Active := true;

  QRDBPrecio1.Enabled := true;
  QRDBPrecio2.Enabled := true;
  QRDBPrecio3.Enabled := true;

  EKVistaPreviaQR1.VistaPrevia;
end;


procedure TFImprimirEtiquetas.btnEditarClick(Sender: TObject);
begin
  if not dm.EKModelo.iniciar_transaccion(transaccion_Etiquetas, [ZQ_Etiquetas]) then
    exit;

  EKOrdenarGrilla.PopUpGrilla:= Popup_Producto;

  DBGridEtiquetas.Enabled:= true;
  DBGridEtiquetas.SetFocus;

  GrupoEditando.Enabled:= True;
  GrupoVisualizando.Enabled:= false;
end;


procedure TFImprimirEtiquetas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if not ZQ_Etiquetas.IsEmpty then
    btnCancelar.Click;

  CanClose:= FPrincipal.cerrar_ventana(transaccion_Etiquetas);
end;


procedure TFImprimirEtiquetas.PopItemProducto_AgregarClick(Sender: TObject);
begin
  agregarProducto;
end;


procedure TFImprimirEtiquetas.PopItemProducto_QuitarClick(Sender: TObject);
begin
  btnEliminarLinea.Click
end;


procedure TFImprimirEtiquetas.PopItemProducto_QuitarTodosClick(Sender: TObject);
begin
  btnEliminarTodos.Click
end;


procedure TFImprimirEtiquetas.DBGridEtiquetasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridEtiquetas, Rect, DataCol, Column, State);
end;


procedure TFImprimirEtiquetas.btnEliminarTodosClick(Sender: TObject);
begin
  if ZQ_Etiquetas.IsEmpty then
    exit;

  if (application.MessageBox(pchar('¿Seguro que desea eliminar todos los productos cargados'), 'ATENCION - Imprimir Etiquetas', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO) then
    exit;

  ZQ_Etiquetas.First;
  while not ZQ_Etiquetas.Eof do
   ZQ_Etiquetas.Delete;
end;



end.
