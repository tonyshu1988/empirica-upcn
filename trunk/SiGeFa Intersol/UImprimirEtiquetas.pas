unit UImprimirEtiquetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, jpeg, QRCtrls, QuickRpt, StdCtrls,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, ZStoredProcedure, UBuscarProducto,
  ZSqlProcessor,
   Menus,  ZSqlUpdate, ISOrdenarGrilla,
  ISVistaPreviaQR, ISBarcode, ISListadoSQL, cxClasses;

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
    QROpcion1_Band: TQRBand;
    QROpcion1_ShapeTapa: TQRShape;
    QROpcion1_CodigoBarra1: TQRImage;
    QROpcion1_CodigoBarra2: TQRImage;
    QROpcion1_CodigoBarra3: TQRImage;
    QROpcion1_DBArticulo1: TQRDBText;
    QROpcion1_DBArticulo2: TQRDBText;
    QROpcion1_DBArticulo3: TQRDBText;
    QROpcion1_DBPrecio2: TQRDBText;
    QROpcion1_DBPrecio3: TQRDBText;
    QROpcion1_DBPrecio1: TQRDBText;
    Label1: TLabel;
    btnEditar: TdxBarLargeButton;
    Popup_Producto: TPopupMenu;
    PopItemProducto_Agregar: TMenuItem;
    PopItemProducto_Quitar: TMenuItem;
    PopItemProducto_QuitarTodos: TMenuItem;
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
    RepOpcion1: TQuickRep;
    RepOpcion2: TQuickRep;
    Label2: TLabel;
    QROpcion2_Band: TQRBand;
    QROpcion2_ShapeTapa: TQRShape;
    QROpcion2_CodigoBarra1: TQRImage;
    QROpcion2_CodigoBarra2: TQRImage;
    QROpcion2_CodigoBarra3: TQRImage;
    QROpcion2_DBArticulo1: TQRDBText;
    QROpcion2_DBArticulo2: TQRDBText;
    QROpcion2_DBArticulo3: TQRDBText;
    QROpcion2_DBPrecio2: TQRDBText;
    QROpcion2_DBPrecio3: TQRDBText;
    QROpcion2_DBPrecio1: TQRDBText;
    QROpcion2_CodigoBarra4: TQRImage;
    QROpcion2_DBPrecio4: TQRDBText;
    QROpcion2_DBArticulo4: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    ISListado_Sucursal: TISListadoSQL;
    ISCodigoBarra1: TISBarcode;
    ISVistaPrevia_Opcion1: TISVistaPreviaQR;
    ISVistaPrevia_Opcion2: TISVistaPreviaQR;
    ISOrdenarGrilla: TISOrdenarGrilla;
    ISCodigoBarra2: TISBarcode;
    ISCodigoBarra3: TISBarcode;
    ISCodigoBarra4: TISBarcode;
    procedure FormCreate(Sender: TObject);
    procedure DBGridEtiquetasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SP_ImprimirEtiquetasAfterScroll(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
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
    procedure DBGridEtiquetasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnEliminarTodosClick(Sender: TObject);
    procedure centrarCodigo;
    procedure QRBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure mostrarPrecio(flag: boolean);
  private
    vselProducto: TFBuscarProducto;
    procedure onSelProducto;
    procedure onSelTodosProducto;
  public
    id_sucursal: integer;
    opcion: integer;
    long_descripcion: integer;
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
  opcion:= imprimirEtiqueta_opcionReporte;
  long_descripcion:= 60;
  
  DBGridEtiquetas.PopupMenu:= nil;
  GrupoEditando.Enabled:= False;
  GrupoVisualizando.Enabled:= True;
end;


procedure TFImprimirEtiquetas.cargarProductos();
begin
  ZQ_Etiquetas.Open;
end;


procedure TFImprimirEtiquetas.DBGridEtiquetasKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if dm.ISModelo.verificar_transaccion(transaccion_Etiquetas) then
    if key = 112 then
      agregarProducto;
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
  ISCodigoBarra1.Text:= SP_ImprimirEtiquetasCODIGOBARRA.AsString;
  ISCodigoBarra2.Text:= SP_ImprimirEtiquetasCODIGOBARRA.AsString;
  ISCodigoBarra3.Text:= SP_ImprimirEtiquetasCODIGOBARRA.AsString;
  ISCodigoBarra4.Text:= SP_ImprimirEtiquetasCODIGOBARRA.AsString;

  centrarCodigo;
end;


procedure TFImprimirEtiquetas.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFImprimirEtiquetas.QRBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QROpcion2_Band.Height:= 90;
  case opcion of
    1:begin
        if SP_ImprimirEtiquetasID_PRODUCTO.AsInteger = 0 then
        begin
          QROpcion1_ShapeTapa.BringToFront;
          QROpcion1_ShapeTapa.Enabled:= true;
        end
        else
        Begin
          QROpcion1_ShapeTapa.Enabled:= false;
        end;
      end;
    2:begin
        if SP_ImprimirEtiquetasID_PRODUCTO.AsInteger = 0 then
        begin
          QROpcion2_ShapeTapa.BringToFront;
          QROpcion2_ShapeTapa.Enabled:= true;
        end
        else
        Begin
          QROpcion2_ShapeTapa.Enabled:= false;
        end;
      end;
  end;
end;


procedure TFImprimirEtiquetas.centrarCodigo;
begin
  //left original OPCION 1
  QROpcion1_CodigoBarra1.Left:= QROpcion1_DBPrecio1.Left;
  QROpcion1_CodigoBarra2.Left:= QROpcion1_DBPrecio2.Left;
  QROpcion1_CodigoBarra3.Left:= QROpcion1_DBPrecio3.Left;
  //left original OPCION 2
  QROpcion2_CodigoBarra1.Left:= QROpcion2_DBPrecio1.Left;
  QROpcion2_CodigoBarra2.Left:= QROpcion2_DBPrecio2.Left;
  QROpcion2_CodigoBarra3.Left:= QROpcion2_DBPrecio3.Left;
  QROpcion2_CodigoBarra4.Left:= QROpcion2_DBPrecio4.Left;

  case opcion of
  1: begin
        if ISCodigoBarra1.Width < 241 then
        begin
          QROpcion1_CodigoBarra1.Left:= (QROpcion1_DBPrecio1.Left) + ((241-ISCodigoBarra1.Width) div 2);
          QROpcion1_CodigoBarra2.Left:= (QROpcion1_DBPrecio2.Left) + ((241-ISCodigoBarra2.Width) div 2);
          QROpcion1_CodigoBarra3.Left:= (QROpcion1_DBPrecio3.Left) + ((241-ISCodigoBarra3.Width) div 2);
        end;
     end;
  2: begin
        if ISCodigoBarra1.Width < 170 then
        begin
          QROpcion2_CodigoBarra1.Left:= (QROpcion2_DBPrecio1.Left) + ((170-ISCodigoBarra1.Width) div 2);
          QROpcion2_CodigoBarra2.Left:= (QROpcion2_DBPrecio2.Left) + ((170-ISCodigoBarra2.Width) div 2);
          QROpcion2_CodigoBarra3.Left:= (QROpcion2_DBPrecio3.Left) + ((170-ISCodigoBarra3.Width) div 2);
          QROpcion2_CodigoBarra4.Left:= (QROpcion2_DBPrecio4.Left) + ((170-ISCodigoBarra4.Width) div 2);
        end;
     end;
  end;
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

  if dm.ISModelo.finalizar_transaccion(transaccion_Etiquetas) then
  begin
    DBGridEtiquetas.PopupMenu:= nil;

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

  dm.ISModelo.aplicar_modificaciones(transaccion_Etiquetas);
  mostrarPrecio(false);
  
  SP_ImprimirEtiquetas.Active := false;
  SP_ImprimirEtiquetas.ParamByName('desde_renglon').AsInteger:= Filan;
  SP_ImprimirEtiquetas.ParamByName('long_descripcion').AsInteger:= long_descripcion;
  SP_ImprimirEtiquetas.Active := true;

  case opcion of
    1: ISVistaPrevia_Opcion1.VistaPrevia;
    2: ISVistaPrevia_Opcion2.VistaPrevia;
  end
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

  dm.ISModelo.aplicar_modificaciones(transaccion_Etiquetas);
  mostrarPrecio(true);

  SP_ImprimirEtiquetas.Active := false;
  SP_ImprimirEtiquetas.ParamByName('desde_renglon').AsInteger := Filan;
  SP_ImprimirEtiquetas.ParamByName('long_descripcion').AsInteger:= long_descripcion;
  SP_ImprimirEtiquetas.Active := true;

  case opcion of
    1: ISVistaPrevia_Opcion1.VistaPrevia;
    2: ISVistaPrevia_Opcion2.VistaPrevia;
  end
end;


procedure TFImprimirEtiquetas.btnEditarClick(Sender: TObject);
begin
  if not dm.ISModelo.iniciar_transaccion(transaccion_Etiquetas, [ZQ_Etiquetas]) then
    exit;

  borrar.Execute;

  DBGridEtiquetas.PopupMenu:= Popup_Producto;

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


procedure TFImprimirEtiquetas.mostrarPrecio(flag: boolean);
begin
  case opcion of
  1:  begin
        ISCodigoBarra1.QRCodigo:= QROpcion1_CodigoBarra1;
        ISCodigoBarra2.QRCodigo:= QROpcion1_CodigoBarra2;
        ISCodigoBarra3.QRCodigo:= QROpcion1_CodigoBarra3;

        QROpcion1_DBPrecio1.Enabled := flag;
        QROpcion1_DBPrecio2.Enabled := flag;
        QROpcion1_DBPrecio3.Enabled := flag;
      end;
  2:  begin
        ISCodigoBarra1.QRCodigo:= QROpcion2_CodigoBarra1;
        ISCodigoBarra2.QRCodigo:= QROpcion2_CodigoBarra2;
        ISCodigoBarra3.QRCodigo:= QROpcion2_CodigoBarra3;
        ISCodigoBarra4.QRCodigo:= QROpcion2_CodigoBarra4;

        QROpcion2_DBPrecio1.Enabled := flag;
        QROpcion2_DBPrecio2.Enabled := flag;
        QROpcion2_DBPrecio3.Enabled := flag;
        QROpcion2_DBPrecio4.Enabled := flag;
      end;
  end;
end;

end.
