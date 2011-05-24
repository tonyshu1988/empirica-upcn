unit UABM_ProductoStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, dxBar, dxBarExtItems, DB,
  ZAbstractRODataset, ZAbstractDataset, ZStoredProcedure, ZSqlUpdate,
  ZDataset, EKDBGrid, EKOrdenarGrilla, EKBusquedaAvanzada;

type
  TFABM_ProductoStock = class(TForm)
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
    PanelFondo: TPanel;
    ZP_GenerarStock: TZStoredProc;
    ZQ_Stock: TZQuery;
    ZU_Stock: TZUpdateSQL;
    DS_Stock: TDataSource;
    ZQ_GenerarStock: TZQuery;
    DBGridStock: TDBGrid;
    ZQ_StockID_STOCK_PRODUCTO: TIntegerField;
    ZQ_StockID_SUCURSAL: TIntegerField;
    ZQ_StockID_PRODUCTO: TIntegerField;
    ZQ_StockSTOCK_ACTUAL: TFloatField;
    ZQ_StockSTOCK_MIN: TFloatField;
    ZQ_StockSTOCK_MAX: TFloatField;
    ZQ_StockSTOCK_REPEDIDO: TFloatField;
    ZQ_StockSTOCK_MIN_ALARMA: TStringField;
    ZQ_StockNOMBRE: TStringField;
    ZQ_StockCOD_CORTO_CABECERA: TStringField;
    ZQ_StockDESCRIPCION: TStringField;
    ZQ_StockCOD_CORTO_PRODUCTO: TStringField;
    ZQ_StockCODIGO_BARRA: TStringField;
    ZQ_StockMEDIDA: TStringField;
    EKOrdenarGrilla: TEKOrdenarGrilla;
    EKBuscarStock: TEKBusquedaAvanzada;
    procedure btnModificarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_ProductoStock: TFABM_ProductoStock;

const
  transaccion_ABMStock = 'ABM STOCK';

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFABM_ProductoStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EKOrdenarGrilla.GuardarConfigColumnas;
end;


procedure TFABM_ProductoStock.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABMStock);
end;


procedure TFABM_ProductoStock.btnModificarClick(Sender: TObject);
begin
  if ZQ_Stock.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABMStock, [ZQ_Stock]) then
  begin
    GrupoEditando.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= true;

    DBGridStock.ReadOnly:= false;
  end;
end;


procedure TFABM_ProductoStock.btnGuardarClick(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);
  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABMStock) then
    begin
      GrupoEditando.Enabled:= true;
      GrupoGuardarCancelar.Enabled:= false;

      DBGridStock.ReadOnly := true;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end
end;


procedure TFABM_ProductoStock.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_ABMStock) then
  begin
    GrupoEditando.Enabled:= true;
    GrupoGuardarCancelar.Enabled:= false;

    DBGridStock.ReadOnly := true;
  end;
end;


procedure TFABM_ProductoStock.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_ProductoStock.FormCreate(Sender: TObject);
begin
  EKBuscarStock.SQL_Where.Text:= 'where sp.id_sucursal = '+IntToStr(SUCURSAL_LOGUEO);
  EKOrdenarGrilla.CargarConfigColunmas;

  //inicio transaccion
  if dm.EKModelo.iniciar_transaccion(transaccion_ABMStock, []) then
  begin
    //genero el stock en 0 para los productos cargados recientemente
    ZQ_GenerarStock.close;
    ZQ_GenerarStock.ParamByName('id_sucursal').AsInteger:= SUCURSAL_LOGUEO;
    ZQ_GenerarStock.ExecSQL;

    //finalizo la transaccion
    if not DM.EKModelo.finalizar_transaccion(transaccion_ABMStock) then
      DM.EKModelo.cancelar_transaccion(transaccion_ABMStock);
  end;
end;


procedure TFABM_ProductoStock.btnBuscarClick(Sender: TObject);
begin
  EKBuscarStock.Buscar;
end;

end.
