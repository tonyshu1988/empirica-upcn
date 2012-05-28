unit UABM_ProductoStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, dxBar, dxBarExtItems, DB,
  ZAbstractRODataset, ZAbstractDataset, ZStoredProcedure, ZSqlUpdate,
  ZDataset, EKDBGrid, EKOrdenarGrilla, EKBusquedaAvanzada, Menus,
  EKListadoSQL, DBClient, UBuscarProducto, ZSqlProcessor, ActnList,
  XPStyleActnCtrls, ActnMan, StdCtrls, EKDbSuma, QRCtrls, QuickRpt,
  EKVistaPreviaQR;

type
  TFABM_ProductoStock = class(TForm)
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnVolver: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnProcesar: TdxBarLargeButton;
    btnAsociar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PanelFondo: TPanel;
    ZQ_Stock: TZQuery;
    ZU_Stock: TZUpdateSQL;
    DS_Stock: TDataSource;
    DBGridStock: TDBGrid;
    EKOrdenarGrillaStock: TEKOrdenarGrilla;
    EKBuscarStock: TEKBusquedaAvanzada;
    PanelCarga: TPanel;
    PanelAsociar: TPanel;
    PanelAsociar_Producto: TPanel;
    PanelAsociar_Sucursal: TPanel;
    DBGridSucursal: TDBGrid;
    DBGridProducto: TDBGrid;
    Popup_Sucursal: TPopupMenu;
    Popup_Producto: TPopupMenu;
    PopItemSucursal_Agregar: TMenuItem;
    PopItemSucursal_Quitar: TMenuItem;
    PopItemProducto_Agregar: TMenuItem;
    PopItemProducto_Quitar: TMenuItem;
    Splitter1: TSplitter;
    CD_Sucursal: TClientDataSet;
    CD_Sucursal_nombre: TStringField;
    CD_Sucursal_idSucursal: TIntegerField;
    DS_Sucursal: TDataSource;
    EKListado_Sucursal: TEKListadoSQL;
    DS_Producto: TDataSource;
    CD_Producto: TClientDataSet;
    CD_Producto_idProducto: TIntegerField;
    CD_Producto_producto: TStringField;
    CD_Producto_medida: TStringField;
    CD_Producto_marca: TStringField;
    CD_Producto_tipoArticulo: TStringField;
    CD_Producto_articulo: TStringField;
    CD_Producto_codigoBarra: TStringField;
    CD_Producto_codProducto: TStringField;
    CD_Producto_codCabecera: TStringField;
    vaciar_TempSucursal: TZSQLProcessor;
    vaciar_TempProducto: TZSQLProcessor;
    ZQ_TempSucursal: TZQuery;
    ZQ_TempProducto: TZQuery;
    ZQ_TempProductoID_PRODUCTO: TIntegerField;
    ZQ_TempSucursalID_SUCURSAL: TIntegerField;
    ZQ_GenerarStock: TZQuery;
    Panel1: TPanel;
    ZQ_StockID_STOCK_PRODUCTO: TIntegerField;
    ZQ_StockSTOCK_ACTUAL: TFloatField;
    ZQ_StockSTOCK_MIN: TFloatField;
    ZQ_StockSTOCK_MAX: TFloatField;
    ZQ_StockSTOCK_REPEDIDO: TFloatField;
    ZQ_StockSTOCK_MIN_ALARMA: TStringField;
    ZQ_StockNOMBRE: TStringField;
    ZQ_StockCOD_CORTO_CABECERA: TStringField;
    ZQ_StockCOD_CORTO_PRODUCTO: TStringField;
    ZQ_StockCODIGO_BARRA: TStringField;
    ZQ_StockMEDIDA: TStringField;
    ZQ_StockNOMBRE_MARCA: TStringField;
    ZQ_StockBAJA: TStringField;
    ZQ_StockNOMBRE_ARTICULO: TStringField;
    ZQ_StockTIPO_ARTICULO: TStringField;
    ZQ_StockSUCURSAL: TStringField;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    AAsociar: TAction;
    AProcesar: TAction;
    ZQ_StockSECCION: TStringField;
    ZQ_StockSECTOR: TStringField;
    ZQ_StockFILA: TStringField;
    ZQ_StockCOLUMNA: TStringField;
    ZQ_StockPOSICSUCURSAL: TStringField;
    CD_Producto_color: TStringField;
    PopItemProducto_QuitarTodos: TMenuItem;
    EKOrdenarGrillaProducto: TEKOrdenarGrilla;
    Panel2: TPanel;
    lblResumen: TLabel;
    EKDbSuma1: TEKDbSuma;
    AVolver: TAction;
    PopUpDesasociar: TPopupMenu;
    PopUpStock_Desasociar: TMenuItem;
    PopUpStock_DesasociarTodos: TMenuItem;
    ZQ_StockCOLOR: TStringField;
    ZQ_StockID_SUCURSAL: TIntegerField;
    btnExcel: TdxBarLargeButton;
    RepProductoStock: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLblTituloListado: TQRLabel;
    RepProductoStock_Subtitulo: TQRLabel;
    RepProductoStock_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand11: TQRBand;
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
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    EKVistaPreviaQR1: TEKVistaPreviaQR;
    ZQ_Sucursal: TZQuery;
    ZQ_SucursalID_SUCURSAL: TIntegerField;
    ZQ_SucursalNOMBRE: TStringField;
    ZQ_SucursalDIRECCION: TStringField;
    ZQ_SucursalLOCALIDAD: TStringField;
    ZQ_SucursalCODIGO_POSTAL: TStringField;
    ZQ_SucursalTELEFONO: TStringField;
    ZQ_SucursalEMAIL: TStringField;
    ZQ_SucursalBAJA: TStringField;
    ZQ_SucursalLOGO: TBlobField;
    ZQ_SucursalREPORTE_TITULO: TStringField;
    ZQ_SucursalREPORTE_SUBTITULO: TStringField;
    ZQ_SucursalCOMPROBANTE_TITULO: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON1: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON2: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON3: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON4: TStringField;
    ZQ_SeccionSuc: TZQuery;
    procedure btnModificarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure PopItemProducto_AgregarClick(Sender: TObject);
    procedure PopItemProducto_QuitarClick(Sender: TObject);
    procedure PopItemSucursal_AgregarClick(Sender: TObject);
    procedure PopItemSucursal_QuitarClick(Sender: TObject);
    procedure btnProcesarClick(Sender: TObject);
    procedure btnAsociarClick(Sender: TObject);
    procedure ZQ_StockAfterInsert(DataSet: TDataSet);
    //------TECLAS RAPIDAS
    procedure ABuscarExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure AAsociarExecute(Sender: TObject);
    procedure AProcesarExecute(Sender: TObject);
    procedure btnVolverClick(Sender: TObject);
    procedure PopItemProducto_QuitarTodosClick(Sender: TObject);
    procedure DBGridStockDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure AVolverExecute(Sender: TObject);
    procedure PopUpStock_DesasociarClick(Sender: TObject);
    procedure PopUpStock_DesasociarTodosClick(Sender: TObject);
    procedure DBGridProductoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridSucursalDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure EKDbSuma1SumListChanged(Sender: TObject);
    procedure DBGridStockKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure validarSucursal(Sender: TField);
    procedure validarPermisosUsuario;
    procedure btnExcelClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    vsel: TFBuscarProducto;
    procedure onSelProducto;
    procedure onSelTodosProducto;    
  public
    { Public declarations }
  end;

type
  THackDBGrid = class(TDBGrid);


var
  FABM_ProductoStock: TFABM_ProductoStock;

const
  transaccion_ABMStock = 'ABM STOCK';
  transaccion_Asociar = 'ABM STOCK - ASOCIAR';

implementation

uses UDM, UPrincipal, UUtilidades;

{$R *.dfm}

procedure TFABM_ProductoStock.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  EKOrdenarGrillaStock.GuardarConfigColumnas;
  EKOrdenarGrillaProducto.GuardarConfigColumnas;
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

    EKOrdenarGrillaStock.PopUpGrilla:= nil;
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
      ZQ_Stock.Refresh;
      DBGridStock.ReadOnly := true;

      EKOrdenarGrillaStock.PopUpGrilla:= PopUpDesasociar;
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
  if (application.MessageBox(pchar('¿Seguro que desea cancelar? Se perderan los cambios realizados.'), 'ATENCION - ABM Producto Stock', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO) then
    exit;

  if dm.EKModelo.cancelar_transaccion(transaccion_ABMStock) then
  begin
    GrupoEditando.Enabled:= true;
    GrupoGuardarCancelar.Enabled:= false;

    DBGridStock.ReadOnly := true;

    EKOrdenarGrillaStock.PopUpGrilla:= PopUpDesasociar;
  end;
end;


procedure TFABM_ProductoStock.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_ProductoStock.FormCreate(Sender: TObject);
begin
  validarPermisosUsuario;

  PanelAsociar.Visible:= false;
  lblResumen.Caption:= '';

  EKOrdenarGrillaStock.CargarConfigColumnas;
  EKOrdenarGrillaProducto.CargarConfigColumnas;

  CD_Sucursal.CreateDataSet;
  CD_Producto.CreateDataSet;

  ZQ_Sucursal.Close;
  ZQ_Sucursal.Open;
  if ZQ_Sucursal.Locate('id_sucursal', VarArrayOf([SUCURSAL_LOGUEO]), []) then
    TEKCriterioBA(EKBuscarStock.CriteriosBusqueda.Items[13]).ItemIndex:= ZQ_Sucursal.RecNo - 1;

  ZQ_SeccionSuc.Close;
  ZQ_SeccionSuc.Open;
end;


procedure TFABM_ProductoStock.btnBuscarClick(Sender: TObject);
begin
  EKBuscarStock.Buscar;
end;


procedure TFABM_ProductoStock.onSelProducto;
begin
  if not vsel.ZQ_Producto.IsEmpty then
  begin
    CD_Producto.Filter:= 'idProducto = ' +  vsel.ZQ_ProductoID_PRODUCTO.AsString;
    CD_Producto.Filtered := true;
    if not CD_Producto.IsEmpty then
    begin
      CD_Producto.Filtered := false;
      Application.MessageBox('El Producto seleccionado ya fue cargado','Carga Producto',MB_OK+MB_ICONINFORMATION);
      exit;
    end;

    CD_Producto.Filtered := false;
    CD_Producto.Append;
    CD_Producto_idProducto.AsInteger := vsel.ZQ_ProductoID_PRODUCTO.AsInteger;
    CD_Producto_producto.AsString := vsel.ZQ_ProductoNOMBRE.AsString;
    CD_Producto_medida.AsString := vsel.ZQ_ProductoMEDIDA.AsString;
    CD_Producto_color.AsString := vsel.ZQ_ProductoCOLOR.AsString;
    CD_Producto_marca.AsString := vsel.ZQ_ProductoNOMBRE_MARCA.AsString;
    CD_Producto_tipoArticulo.AsString := vsel.ZQ_ProductoTIPO_ARTICULO.AsString;
    CD_Producto_articulo.AsString := vsel.ZQ_ProductoNOMBRE_ARTICULO.AsString;
    CD_Producto_codigoBarra.AsString := vsel.ZQ_ProductoCODIGO_BARRA.AsString;
    CD_Producto_codCabecera.AsString := vsel.ZQ_ProductoCOD_CORTO.AsString;
    CD_Producto_codProducto.AsString := vsel.ZQ_ProductoCOD_CORTO_1.AsString;
  end;

  if vsel.SeleccionarYSalir then
    vsel.Close;
end;


procedure TFABM_ProductoStock.onSelTodosProducto;
begin
  if not vsel.ZQ_Producto.IsEmpty then
  begin
    vsel.ZQ_Producto.First;
    while not vsel.ZQ_Producto.Eof do
    begin
      CD_Producto.Filter:= 'idProducto = ' +  vsel.ZQ_ProductoID_PRODUCTO.AsString;
      CD_Producto.Filtered := true;
      if not CD_Producto.IsEmpty then //si el producto ya esta cargado, paso al proximo
      begin
        CD_Producto.Filtered := false;
        vsel.ZQ_Producto.Next;
      end;

      CD_Producto.Filtered := false;
      CD_Producto.Append;
      CD_Producto_idProducto.AsInteger := vsel.ZQ_ProductoID_PRODUCTO.AsInteger;
      CD_Producto_producto.AsString := vsel.ZQ_ProductoNOMBRE.AsString;
      CD_Producto_medida.AsString := vsel.ZQ_ProductoMEDIDA.AsString;
      CD_Producto_color.AsString := vsel.ZQ_ProductoCOLOR.AsString;
      CD_Producto_marca.AsString := vsel.ZQ_ProductoNOMBRE_MARCA.AsString;
      CD_Producto_tipoArticulo.AsString := vsel.ZQ_ProductoTIPO_ARTICULO.AsString;
      CD_Producto_articulo.AsString := vsel.ZQ_ProductoNOMBRE_ARTICULO.AsString;
      CD_Producto_codigoBarra.AsString := vsel.ZQ_ProductoCODIGO_BARRA.AsString;
      CD_Producto_codCabecera.AsString := vsel.ZQ_ProductoCOD_CORTO.AsString;
      CD_Producto_codProducto.AsString := vsel.ZQ_ProductoCOD_CORTO_1.AsString;

      vsel.ZQ_Producto.Next;
    end;
  end;

  vsel.Close;
end;

procedure TFABM_ProductoStock.PopItemProducto_AgregarClick(Sender: TObject);
begin
  if not Assigned(vsel) then
    vsel:= TFBuscarProducto.Create(nil);
  vsel.OnSeleccionar := onSelProducto;
  vsel.OnSeleccionarTodos := onSelTodosProducto;
  vsel.btnSeleccionarTodos.Visible:= ivAlways;
  vsel.SeleccionarYSalir:= false;
  vsel.ShowModal;
end;


procedure TFABM_ProductoStock.PopItemProducto_QuitarClick(Sender: TObject);
begin
  if not CD_Producto.IsEmpty then
    CD_Producto.Delete;
end;


procedure TFABM_ProductoStock.PopItemProducto_QuitarTodosClick(  Sender: TObject);
begin
  if CD_Producto.IsEmpty then
    exit;

  if (application.MessageBox(pchar('¿Seguro que desea eliminar todos los productos cargados'), 'ATENCION - ABM Producto Stock', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO) then
    exit;

  CD_Producto.EmptyDataSet;
end;


procedure TFABM_ProductoStock.PopItemSucursal_AgregarClick(Sender: TObject);
begin
  if EKListado_Sucursal.Buscar then
  begin
    CD_Sucursal.Filter:= 'idSucursal = '+EKListado_Sucursal.Resultado;
    CD_Sucursal.Filtered := true;
    if not CD_Sucursal.IsEmpty then
    begin
      CD_Sucursal.Filtered := false;
      Application.MessageBox('La Sucursal seleccionada ya fue cargada','Carga Sucursal',MB_OK+MB_ICONINFORMATION);
      exit;
    end;

    CD_Sucursal.Filtered := false;
    CD_Sucursal.Append;
    CD_Sucursal_idSucursal.AsString := EKListado_Sucursal.Resultado;
    CD_Sucursal_nombre.AsString := EKListado_Sucursal.Seleccion;
  end;
end;


procedure TFABM_ProductoStock.PopItemSucursal_QuitarClick(Sender: TObject);
begin
  if not CD_Sucursal.IsEmpty then
    CD_Sucursal.Delete;
end;


procedure TFABM_ProductoStock.btnProcesarClick(Sender: TObject);
var
  estado: boolean;
begin
  estado:= false;
  vaciar_TempSucursal.Execute; //vacio la tabla temporal de sucursal
  vaciar_TempProducto.Execute; //vacio la tabla temporal de producto

  if CD_Sucursal.IsEmpty or CD_Producto.IsEmpty then
  begin
    ShowMessage('Debe seleccionar al menos una Posición en la Sucursal y al menos un Producto para ser asociados');
    exit;
  end;

  if dm.EKModelo.iniciar_transaccion(transaccion_Asociar, [ZQ_TempSucursal, ZQ_TempProducto]) then
  begin
    CD_Sucursal.First;
    while not CD_Sucursal.Eof do
    begin
      ZQ_TempSucursal.Append;
      ZQ_TempSucursalID_SUCURSAL.AsInteger:= CD_Sucursal_idSucursal.AsInteger;
      CD_Sucursal.Next;
    end;

    CD_Producto.First;
    while not CD_Producto.Eof do
    begin
      ZQ_TempProducto.Append;
      ZQ_TempProductoID_PRODUCTO.AsInteger:= CD_Producto_idProducto.AsInteger;
      CD_Producto.Next;
    end;

    //finalizo la transaccion
    if DM.EKModelo.finalizar_transaccion(transaccion_Asociar) then
      estado:= true //si pudo llenar las tablas temporales entonces seteo que esta todo bien hasta el momento
    else
      DM.EKModelo.cancelar_transaccion(transaccion_Asociar);
  end;

  if dm.EKModelo.iniciar_transaccion(transaccion_Asociar, []) and estado then
  begin
    //genero el stock en 0 para los productos cargados recientemente
    ZQ_GenerarStock.close;
    ZQ_GenerarStock.ExecSQL;

    //finalizo la transaccion
    if DM.EKModelo.finalizar_transaccion(transaccion_Asociar) then
    begin
      ShowMessage('La Asociación se realizó correctamente');

      CD_Sucursal.EmptyDataSet;
      CD_Producto.EmptyDataSet;

      GrupoEditando.Enabled:= true;
      btnProcesar.Enabled:= false;
      btnVolver.Enabled:=false;
      PanelAsociar.Visible:= false;
      PanelCarga.Visible:= true;
    end
    else
      DM.EKModelo.cancelar_transaccion(transaccion_Asociar);
  end;
end;


procedure TFABM_ProductoStock.btnAsociarClick(Sender: TObject);
begin
  GrupoEditando.Enabled:= false;
  btnProcesar.Enabled:= true;
  btnVolver.Enabled:=True;
  PanelAsociar.Visible:= true;
  PanelCarga.Visible:= false;
end;


procedure TFABM_ProductoStock.ZQ_StockAfterInsert(DataSet: TDataSet);
begin
  ZQ_Stock.Delete;
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFABM_ProductoStock.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled and (btnBuscar.Visible = ivAlways) then
    btnBuscar.Click;
end;

procedure TFABM_ProductoStock.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled and (btnModificar.Visible = ivAlways) then
    btnModificar.Click;
end;

procedure TFABM_ProductoStock.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled and (btnGuardar.Visible = ivAlways) then
    btnGuardar.Click;
end;

procedure TFABM_ProductoStock.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled and (btnCancelar.Visible = ivAlways) then
    btnCancelar.Click;
end;

procedure TFABM_ProductoStock.AAsociarExecute(Sender: TObject);
begin
  if btnAsociar.Enabled and (btnAsociar.Visible = ivAlways) then
    btnAsociar.Click;
end;

procedure TFABM_ProductoStock.AProcesarExecute(Sender: TObject);
begin
  if btnProcesar.Enabled and (btnProcesar.Visible = ivAlways) then
    btnProcesar.Click;
end;

procedure TFABM_ProductoStock.AVolverExecute(Sender: TObject);
begin
  if btnVolver.Enabled and (btnVolver.Visible = ivAlways) then
    btnVolver.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFABM_ProductoStock.btnVolverClick(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_Asociar) then
    dm.EKModelo.cancelar_transaccion(transaccion_Asociar);

  if not CD_Sucursal.IsEmpty then
    CD_Sucursal.EmptyDataSet;

  if not CD_Producto.IsEmpty then
    CD_Producto.EmptyDataSet;

  GrupoEditando.Enabled:= true;
  btnProcesar.Enabled:= false;
  btnVolver.Enabled:=false;
  PanelAsociar.Visible:= false;
  PanelCarga.Visible:= true;
end;


procedure TFABM_ProductoStock.DBGridStockDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridStock, Rect, DataCol, Column, State);
end;


procedure TFABM_ProductoStock.PopUpStock_DesasociarClick(Sender: TObject);
var
  sucursal: string;
begin
  if ZQ_Stock.IsEmpty then
    exit;

  if ZQ_StockSTOCK_ACTUAL.AsFloat <> 0 then
  begin
    Application.MessageBox('No se puede desasociar el producto seleccionado porque actualmente tiene stock, por favor verifique.','Validación',MB_OK+MB_ICONINFORMATION);
    exit;
  end;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABMStock, [ZQ_Stock]) then
  begin
    sucursal:= ZQ_StockSUCURSAL.AsString;
    if not ZQ_StockSECCION.IsNull then
      sucursal:= sucursal + ' Sección: ' + ZQ_StockSECCION.AsString;
    if not ZQ_StockFILA.IsNull then
      sucursal:= sucursal + ' Fila: ' + ZQ_StockFILA.AsString;
    if not ZQ_StockCOLUMNA.IsNull then
      sucursal:= sucursal + ' Columna: ' + ZQ_StockCOLUMNA.AsString;

    if (application.MessageBox(pchar('¿Seguro que desea quitar el producto seleccionado de '+sucursal+'?'), 'ATENCION - ABM Producto Stock', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO) then
      exit;

    ZQ_Stock.Delete;

    if not DM.EKModelo.finalizar_transaccion(transaccion_ABMStock) then
      DM.EKModelo.cancelar_transaccion(transaccion_ABMStock);
  end;
end;


procedure TFABM_ProductoStock.PopUpStock_DesasociarTodosClick(Sender: TObject);
var
  sucursal: string;
  tieneStock: boolean;
begin
  if ZQ_Stock.IsEmpty then
    exit;

  tieneStock:= false;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABMStock, [ZQ_Stock]) then
  begin
    sucursal:= ZQ_StockSUCURSAL.AsString;
    if not ZQ_StockSECCION.IsNull then
      sucursal:= sucursal + ' Sección: ' + ZQ_StockSECCION.AsString;
    if not ZQ_StockFILA.IsNull then
      sucursal:= sucursal + ' Fila: ' + ZQ_StockFILA.AsString;
    if not ZQ_StockCOLUMNA.IsNull then
      sucursal:= sucursal + ' Columna: ' + ZQ_StockCOLUMNA.AsString;

    if (application.MessageBox(pchar('¿Seguro que desea quitar todos los productos listados de '+sucursal+'?'), 'ATENCION - ABM Producto Stock', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO) then
      exit;

    ZQ_Stock.First;
    while not ZQ_Stock.Eof do
    begin
      if ZQ_StockSTOCK_ACTUAL.AsFloat <> 0 then
      begin
        Application.MessageBox('No se puede completar la acción porque un producto de la lista actualmente tiene stock, por favor verifique.','Validación',MB_OK+MB_ICONINFORMATION);
        DM.EKModelo.cancelar_transaccion(transaccion_ABMStock);
        exit;
      end;

      ZQ_Stock.Delete;
    end;

    if not DM.EKModelo.finalizar_transaccion(transaccion_ABMStock) then
      DM.EKModelo.cancelar_transaccion(transaccion_ABMStock);
  end;
end;

procedure TFABM_ProductoStock.DBGridProductoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridProducto, Rect, DataCol, Column, State);
end;

procedure TFABM_ProductoStock.DBGridSucursalDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridSucursal, Rect, DataCol, Column, State);
end;

procedure TFABM_ProductoStock.EKDbSuma1SumListChanged(Sender: TObject);
begin
  lblResumen.Caption:= 'Total Stock: '+FloatToStr(EKDbSuma1.SumCollection.Items[0].SumValue);
end;

procedure TFABM_ProductoStock.DBGridStockKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  campo, fila, cantidad: integer;
begin
  if ZQ_Stock.IsEmpty then
    exit;

  campo:= GetIndexField(DBGridStock, 'STOCK_ACTUAL') - 1;
  cantidad:= ZQ_Stock.RecordCount;
  fila:= ZQ_Stock.RecNo + 1;

  if (Key = 13) or (key = 9) then  { if it's an enter key }
  begin
    Key := 0; {ignore}
    if ((sender as tdbgrid).SelectedField.FullName = 'STOCK_ACTUAL') //si estoy en la columna almacenar
      or ((sender as tdbgrid).SelectedField.FullName = 'STOCK_MIN_ALARMA') then //o en alarma
    begin
      if fila <= cantidad then //si no estoy en la ultima fila entonces paso a la siguiente
        ZQ_Stock.Next
      else //si estoy en la ultima fila
        if ZQ_Stock.State = dsEdit then //y estoy en modo edicion
          ZQ_Stock.Post; //hago un post para que recalcule el EKDBSuma
      DBGridStock.SelectedField:= DBGridStock.Fields[campo]; //sigo en la misma columna
    end;
  end;
end;

//veo si el usuario tiene permiso para modificar el stock de otra sucursal
procedure TFABM_ProductoStock.validarSucursal(Sender: TField);
var
  i, suc_prod: integer;
begin
  suc_prod:= ZQ_StockID_SUCURSAL.AsInteger; //sucursal a la que pertenece el stock del producto
  for  i:= 0 to Length(sucursales) - 1 do //Recorro todas las sucursales del usuario seleccionado
  begin //si el prducto es de la sucursal en la que estoy loqueafo o el usuario tiene permiso en esa sucursal o si es administrador
    if not ( (suc_prod = SUCURSAL_LOGUEO) or (suc_prod = StrToInt(sucursales[i].valor)) or (StrToInt(sucursales[i].valor) = 0) )  then
    begin
      ZQ_Stock.RevertRecord;
      ShowMessage(pchar('El usuario no posee los permisos para modificar el stock de la sucursal '+ZQ_StockSUCURSAL.AsString+'.'));
    end;
  end;
end;

//chequear si el usuario tiene permisos para modificar el stock o para asociar productos a una sucursal
procedure TFABM_ProductoStock.validarPermisosUsuario;
begin
  btnModificar.Visible:= ivNever;
  btnAsociar.Visible:= ivNever;
  btnProcesar.Visible:= ivNever;
  btnVolver.Visible:= ivNever;
  btnGuardar.Visible:= ivNever;
  btnCancelar.Visible:= ivNever;

  if dm.EKUsrLogin.PermisoAccion('MODIFICAR_STOCK') then
  begin
    btnModificar.Visible:= ivAlways;
    btnGuardar.Visible:= ivAlways;
    btnCancelar.Visible:= ivAlways;
  end;

  if dm.EKUsrLogin.PermisoAccion('ASOCIAR_STOCK_SUC') then
  begin
    btnAsociar.Visible:= ivAlways;
    btnProcesar.Visible:= ivAlways;
    btnVolver.Visible:= ivAlways;
  end;
end;


procedure TFABM_ProductoStock.btnExcelClick(Sender: TObject);
begin
  if not ZQ_Stock.IsEmpty then
    dm.ExportarEXCEL(DBGridStock);
end;

procedure TFABM_ProductoStock.btnImprimirClick(Sender: TObject);
begin
  if ZQ_Stock.IsEmpty then
  exit;


DM.VariablesReportes(RepProductoStock);
QRLabelCritBusqueda.Caption := EKBuscarStock.ParametrosBuscados;
EKVistaPreviaQR1.VistaPrevia;
end;

end.
