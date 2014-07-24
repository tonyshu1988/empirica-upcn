unit UOP_ReconocimProds;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, QRCtrls, QuickRpt, dxBar,
  dxBarExtItems, cxClasses, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Menus, ISListadoSQL, ISLlenarCombo,UBuscarProducto;

type
  TFOP_ReconocimientoProds = class(TForm)
    dxBarABM: TdxBarManager;
    dxBarABMBar1: TdxBar;
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
    btnExcel: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PanelFondo: TPanel;
    RepLab: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepLab_Subtitulo: TQRLabel;
    RepLab_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
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
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    PanelGrilla: TPanel;
    PBusqueda: TPanel;
    grillaProductos: TDBGrid;
    PopupProductos: TPopupMenu;
    PopItemProducto_Agregar: TMenuItem;
    PopItemProducto_Quitar: TMenuItem;
    ZQ_Productos: TZQuery;
    ZQ_Planes: TZQuery;
    DS_Planes: TDataSource;
    ZQ_PlanProducto: TZQuery;
    DS_PlanProducto: TDataSource;
    ZQ_PlanProductoID_PRODUCTOS_RECONOCIDOS: TIntegerField;
    ZQ_PlanProductoMONTO_RECONOCIDO: TFloatField;
    ZQ_PlanProductoID_PRODUCTO: TIntegerField;
    ZQ_PlanProductoID_OS: TIntegerField;
    ISListadoProducto: TISListadoSQL;
    ZQ_PlanProducto_nombreProd: TStringField;
    ZQ_PlanProducto_pventa: TFloatField;
    ZQ_ProductosID_PRODUCTO: TIntegerField;
    ZQ_ProductosPOSICSUCURSAL: TStringField;
    ZQ_ProductosPRECIO_VENTA: TFloatField;
    Label1: TLabel;
    ISLlenarCombo1: TISLlenarCombo;
    ComboBox1: TComboBox;
    ZQ_PlanesID_OS: TIntegerField;
    ZQ_PlanesCODIGO: TStringField;
    ZQ_PlanesNOMBREPLAN: TStringField;
    ZQ_PlanesNOMBREOSS: TStringField;
    ZQ_PlanesDETALLE: TStringField;
    lblCantidadRegistros: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure PopItemProducto_AgregarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure ZQ_PlanProductoBeforePost(DataSet: TDataSet);
    procedure ISLlenarCombo1Cambio(valor: String);
  private
    vsel: TFBuscarProducto;
    procedure onSelProducto;
    procedure onSelTodosProducto;
  public
    { Public declarations }
  end;

var
  FOP_ReconocimientoProds: TFOP_ReconocimientoProds;

const
  transaccion_coberturaPlan = 'COBERTURA_PLAN';

implementation

uses UDM;

{$R *.dfm}

procedure TFOP_ReconocimientoProds.FormCreate(Sender: TObject);
begin
   dm.ISModelo.abrir(ZQ_Planes);
   dm.ISModelo.abrir(ZQ_Productos);
   grillaProductos.PopupMenu:=nil;
   ISLlenarCombo1.CargarCombo;

   GrupoEditando.Enabled:=true;
   GrupoGuardarCancelar.Enabled:=false;
end;

procedure TFOP_ReconocimientoProds.btnSalirClick(Sender: TObject);
begin
Close;
end;

procedure TFOP_ReconocimientoProds.btnModificarClick(Sender: TObject);
begin
  if ZQ_Planes.IsEmpty then
    exit;

  if dm.ISModelo.iniciar_transaccion(transaccion_coberturaPlan, [ZQ_PlanProducto]) then
  begin
      ZQ_PlanProducto.Edit;

      grillaProductos.Enabled:=true;
      grillaProductos.PopupMenu:=PopupProductos;
      GrupoEditando.Enabled:=false;
      GrupoGuardarCancelar.Enabled:=true;

      grillaProductos.SetFocus;
  end;
end;

procedure TFOP_ReconocimientoProds.btnGuardarClick(Sender: TObject);
begin

  if dm.ISModelo.verificar_transaccion(transaccion_coberturaPlan) then
   begin

       if not dm.ISModelo.finalizar_transaccion(transaccion_coberturaPlan) then
              dm.ISModelo.cancelar_transaccion(transaccion_coberturaPlan);

       grillaProductos.PopupMenu:=nil;
       GrupoEditando.Enabled:=true;
       GrupoGuardarCancelar.Enabled:=false;
   end;

end;

procedure TFOP_ReconocimientoProds.PopItemProducto_AgregarClick(
  Sender: TObject);
begin
//  if ISListadoProducto.Buscar then
//   if (ISListadoProducto.Resultado<>'') then
//    begin
//       ZQ_PlanProducto.Append;
//       ZQ_PlanProductoID_OS.AsInteger:=ZQ_PlanesID_OS.AsInteger;
//       ZQ_PlanProductoID_PRODUCTO.AsInteger:=StrToInt(ISListadoProducto.Resultado);
//       ZQ_PlanProductoMONTO_RECONOCIDO.AsFloat:=0;
//    end

if not Assigned(vsel) then
    vsel:= TFBuscarProducto.Create(nil);
  vsel.OnSeleccionar:= onSelProducto;
  vsel.OnSeleccionarTodos:= onSelTodosProducto;
  vsel.btnSeleccionarTodos.Visible:= ivAlways;
  vsel.SeleccionarYSalir:= false;
  vsel.ShowModal;

end;


procedure TFOP_ReconocimientoProds.onSelProducto;
begin
  if not vsel.ZQ_Producto.IsEmpty then
  begin

    ZQ_PlanProducto.Filter:= 'id_producto = ' + vsel.ZQ_ProductoID_PRODUCTO.AsString;
    ZQ_PlanProducto.Filtered:= true;

    if not ZQ_PlanProducto.IsEmpty then
    begin
      ZQ_PlanProducto.Filtered:= false;
      Application.MessageBox('El Producto seleccionado ya fue cargado', 'Carga Producto', MB_OK + MB_ICONINFORMATION);
      exit;
    end;

    ZQ_PlanProducto.Filtered:= false;
    ZQ_PlanProducto.Append;
    ZQ_PlanProductoID_PRODUCTO.AsInteger:= vsel.ZQ_ProductoID_PRODUCTO.AsInteger;
    ZQ_PlanProductoID_OS.AsInteger:= ZQ_PlanesID_OS.AsInteger;
    ZQ_PlanProductoMONTO_RECONOCIDO.AsFloat:=0;
    ZQ_PlanProducto.Post;

  end;

  if vsel.SeleccionarYSalir then
     vsel.Close;
end;


procedure TFOP_ReconocimientoProds.onSelTodosProducto;
begin
  if not vsel.ZQ_Producto.IsEmpty then
  begin
    vsel.ZQ_Producto.First;
    while not vsel.ZQ_Producto.Eof do
    begin
      ZQ_PlanProducto.Filter:= 'id_producto = ' + vsel.ZQ_ProductoID_PRODUCTO.AsString;
      ZQ_PlanProducto.Filtered:= true;

      if not ZQ_PlanProducto.IsEmpty then
      begin
        ZQ_PlanProducto.Filtered:= false;
        Application.MessageBox('El Producto seleccionado ya fue cargado', 'Carga Producto', MB_OK + MB_ICONINFORMATION);
        exit;
      end;

      ZQ_PlanProducto.Filtered:= false;
      ZQ_PlanProducto.Append;
      ZQ_PlanProductoID_PRODUCTO.AsInteger:= vsel.ZQ_ProductoID_PRODUCTO.AsInteger;
      ZQ_PlanProductoID_OS.AsInteger:= ZQ_PlanesID_OS.AsInteger;
      ZQ_PlanProductoMONTO_RECONOCIDO.AsFloat:=0;
      ZQ_PlanProducto.Post;

      vsel.ZQ_Producto.Next;
    end;
  end;

  vsel.Close;
end;

procedure TFOP_ReconocimientoProds.btnCancelarClick(Sender: TObject);
begin
  if dm.ISModelo.verificar_transaccion(transaccion_coberturaPlan) then
   begin
       dm.ISModelo.cancelar_transaccion(transaccion_coberturaPlan);

       grillaProductos.PopupMenu:=nil;
       GrupoEditando.Enabled:=true;
       GrupoGuardarCancelar.Enabled:=false;
   end;
end;

procedure TFOP_ReconocimientoProds.ZQ_PlanProductoBeforePost(
  DataSet: TDataSet);
begin
  if ZQ_PlanProductoID_PRODUCTO.IsNull then ZQ_PlanProducto.Delete;
end;

procedure TFOP_ReconocimientoProds.ISLlenarCombo1Cambio(valor: String);
begin
  if ZQ_Planes.IsEmpty then exit;

  ZQ_PlanProducto.Close;
  ZQ_PlanProducto.ParamByName('id').AsInteger:=ZQ_PlanesID_OS.AsInteger;
  dm.ISModelo.abrir(ZQ_PlanProducto);
  dm.mostrarCantidadRegistro(ZQ_PlanProducto, lblCantidadRegistros);
end;

end.
