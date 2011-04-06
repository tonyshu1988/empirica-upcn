unit UABM_ProductoStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, dxBar, dxBarExtItems, DB,
  ZAbstractRODataset, ZAbstractDataset, ZStoredProcedure, ZSqlUpdate,
  ZDataset, EKDBGrid;

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
    ZQ_StockID_STOCK_PRODUCTO: TIntegerField;
    ZQ_StockID_SUCURSAL: TIntegerField;
    ZQ_StockID_PRODUCTO: TIntegerField;
    ZQ_StockLLEVAR_STOCK: TStringField;
    ZQ_StockSTOCK_ACTUAL: TFloatField;
    ZQ_StockSTOCK_MIN: TFloatField;
    ZQ_StockSTOCK_MAX: TFloatField;
    ZQ_StockSTOCK_REPEDIDO: TFloatField;
    ZQ_StockSTOCK_MIN_ALARMA: TStringField;
    ZQ_StockNOMBRE: TStringField;
    ZQ_StockIMAGEN: TBlobField;
    ZQ_StockCOD_CORTO_CABECERA: TStringField;
    ZQ_StockDESCRIPCION: TStringField;
    ZQ_StockCOD_CORTO_PRODUCTO: TStringField;
    ZQ_StockCODIGO_BARRA: TStringField;
    ZU_Stock: TZUpdateSQL;
    DS_Stock: TDataSource;
    DBGridStock: TEKDBGrid;
    ZQ_GenerarStock: TZQuery;
    procedure btnModificarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
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
  Close;
end;


procedure TFABM_ProductoStock.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABMStock);
end;


procedure TFABM_ProductoStock.btnModificarClick(Sender: TObject);
begin

  if dm.EKModelo.iniciar_transaccion(transaccion_ABMStock, [ZQ_GenerarStock, ZQ_Stock]) then
  begin
    GrupoEditando.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= true;

    DBGridStock.ReadOnly:= false;

    ZQ_GenerarStock.close;
    ZQ_GenerarStock.ParamByName('id_sucursal').AsInteger:= id_sucursal;
    ZQ_GenerarStock.ExecSQL;


//    ZQ_Stock.Close;
//    ZQ_Stock.ParamByName('id_sucursal').AsInteger:= id_sucursal;
//    ZQ_Stock.Open;
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

end.
