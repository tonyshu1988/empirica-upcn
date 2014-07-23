unit UOP_ReconocimProds;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, QRCtrls, QuickRpt, dxBar,
  dxBarExtItems, cxClasses, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Menus, ISListadoSQL;

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
    grillaPlanes: TDBGrid;
    PBusqueda: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
    grillaProductos: TDBGrid;
    Splitter1: TSplitter;
    PopupProductos: TPopupMenu;
    PopItemProducto_Agregar: TMenuItem;
    PopItemProducto_Quitar: TMenuItem;
    ZQ_Productos: TZQuery;
    ZQ_Planes: TZQuery;
    ZQ_PlanesID_OS: TIntegerField;
    DS_Planes: TDataSource;
    ZQ_PlanProducto: TZQuery;
    DS_PlanProducto: TDataSource;
    ZQ_PlanProductoID_PRODUCTOS_RECONOCIDOS: TIntegerField;
    ZQ_PlanProductoMONTO_RECONOCIDO: TFloatField;
    ZQ_PlanProductoID_PRODUCTO: TIntegerField;
    ZQ_PlanProductoID_OS: TIntegerField;
    ISListadoProducto: TISListadoSQL;
    ZQ_PlanesCODIGO: TStringField;
    ZQ_PlanesNOMBREPLAN: TStringField;
    ZQ_PlanesNOMBREOSS: TStringField;
    ZQ_PlanProducto_nombreProd: TStringField;
    ZQ_PlanProducto_pventa: TFloatField;
    ZQ_ProductosID_PRODUCTO: TIntegerField;
    ZQ_ProductosPOSICSUCURSAL: TStringField;
    ZQ_ProductosPRECIO_VENTA: TFloatField;
    procedure ZQ_PlanesAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure PopItemProducto_AgregarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure ZQ_PlanProductoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
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

procedure TFOP_ReconocimientoProds.ZQ_PlanesAfterScroll(DataSet: TDataSet);
begin

 if ZQ_Planes.IsEmpty then exit;

  ZQ_PlanProducto.Close;
  ZQ_PlanProducto.ParamByName('id').AsInteger:=ZQ_PlanesID_OS.AsInteger;
  dm.ISModelo.abrir(ZQ_PlanProducto);
end;

procedure TFOP_ReconocimientoProds.FormCreate(Sender: TObject);
begin
   dm.ISModelo.abrir(ZQ_Planes);
   grillaProductos.PopupMenu:=nil;
   grillaPlanes.Enabled:=true;
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
      grillaPlanes.Enabled:=false;
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
       grillaPlanes.Enabled:=true;
       GrupoEditando.Enabled:=true;
       GrupoGuardarCancelar.Enabled:=false;
   end;

end;

procedure TFOP_ReconocimientoProds.PopItemProducto_AgregarClick(
  Sender: TObject);
begin
  if ISListadoProducto.Buscar then
   if (ISListadoProducto.Resultado<>'') then
    begin
       ZQ_PlanProducto.Append;
       ZQ_PlanProductoID_OS.AsInteger:=ZQ_PlanesID_OS.AsInteger;
       ZQ_PlanProductoID_PRODUCTO.AsInteger:=StrToInt(ISListadoProducto.Resultado);
       ZQ_PlanProductoMONTO_RECONOCIDO.AsFloat:=0;
    end

end;

procedure TFOP_ReconocimientoProds.btnCancelarClick(Sender: TObject);
begin
  if dm.ISModelo.verificar_transaccion(transaccion_coberturaPlan) then
   begin
       dm.ISModelo.cancelar_transaccion(transaccion_coberturaPlan);

       grillaProductos.PopupMenu:=nil;
       grillaPlanes.Enabled:=true;
       GrupoEditando.Enabled:=true;
       GrupoGuardarCancelar.Enabled:=false;
   end;
end;

procedure TFOP_ReconocimientoProds.ZQ_PlanProductoBeforePost(
  DataSet: TDataSet);
begin
  if ZQ_PlanProductoID_PRODUCTO.IsNull then ZQ_PlanProducto.Delete;
end;

end.
