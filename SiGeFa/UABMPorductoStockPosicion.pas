unit UABMPorductoStockPosicion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, ExtCtrls, StdCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBClient, Menus,
  EKListadoSQL, EKLlenarCombo;

type
  TFABMProductoStockPosicion = class(TForm)
    PanelFondo: TPanel;
    DBGridStock: TDBGrid;
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
    PanelAsociar: TPanel;
    DBGridPosicion: TDBGrid;
    DBGridProductos: TDBGrid;
    Splitter1: TSplitter;
    PanelSeleccionarSucursal: TPanel;
    CBoxSucursal: TComboBox;
    Label1: TLabel;
    ZQ_Sucursal: TZQuery;
    CDPosicion: TClientDataSet;
    DSPosicion: TDataSource;
    CDProductos: TClientDataSet;
    DSProductos: TDataSource;
    PopMPosicion: TPopupMenu;
    PopMProductos: TPopupMenu;
    EKListadoPosicion: TEKListadoSQL;
    EKListadoProductos: TEKListadoSQL;
    EKListadoArticulo: TEKListadoSQL;
    AgregarPosicion1: TMenuItem;
    QuitarPosicion1: TMenuItem;
    CDPosicionid_posicion_sucursal: TIntegerField;
    CDPosicionposicion: TStringField;
    EKLlenarComboSucursal: TEKLlenarCombo;
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
    CDProductosid_producto: TIntegerField;
    CDProductosdescripcion: TStringField;
    procedure AgregarPosicion1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EKLlenarComboSucursalCambio(valor: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABMProductoStockPosicion: TFABMProductoStockPosicion;

implementation

uses UDM;

{$R *.dfm}

procedure TFABMProductoStockPosicion.AgregarPosicion1Click(
  Sender: TObject);
begin
  if EKListadoPosicion.Buscar then
  begin
    CDPosicion.Filter:= 'id_posicion_sucursal = '+EKListadoPosicion.Resultado;
    CDPosicion.Filtered := true;
    if not CDPosicion.IsEmpty then
    begin
      CDPosicion.Filtered := false;
      Application.MessageBox('Esta Posicion ya fue cargada','Carga Posición',MB_OK+MB_ICONINFORMATION);
      exit;
    end;

    CDPosicion.Filtered := false;
    CDPosicion.Append;
    CDPosicionid_posicion_sucursal.AsInteger := StrToInt(EKListadoPosicion.Resultado);
    CDPosicionposicion.AsString := EKListadoPosicion.Seleccion;
  end;
end;

procedure TFABMProductoStockPosicion.FormCreate(Sender: TObject);
begin
  CDPosicion.CreateDataSet;
  //CDProductos.CreateDataSet;
  dm.EKModelo.abrir(ZQ_Sucursal);
  EKLlenarComboSucursal.CargarCombo;
end;

procedure TFABMProductoStockPosicion.EKLlenarComboSucursalCambio(valor: String);
begin
EKListadoPosicion.SQL[3] := 'where (ps.baja <> ''S'') and (ps.id_sucursal = '+EKLlenarComboSucursal.SelectClave+') order by ps.seccion';

end;

end.
