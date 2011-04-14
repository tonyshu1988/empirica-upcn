unit UImprimirEtiquetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, jpeg, QRCtrls, QuickRpt, StdCtrls,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, ZStoredProcedure,
  ZSqlProcessor, EKVistaPreviaQR, EKListadoSQL, ISBarcode;

type
  TFImprimirEtiquetas = class(TForm)
    PanelFondo: TPanel;
    dxBarABM: TdxBarManager;
    BtNuevo: TdxBarLargeButton;
    BtModificar: TdxBarLargeButton;
    BtEliminar: TdxBarLargeButton;
    btAutoComit: TdxBarLargeButton;
    BtGuardar: TdxBarLargeButton;
    BtCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    BtDuplicar: TdxBarLargeButton;
    Bt_Cerrar: TdxBarLargeButton;
    btVentas: TdxBarLargeButton;
    bTAlquiler: TdxBarLargeButton;
    btDeBaja: TdxBarLargeButton;
    dxBarver: TdxBarStatic;
    btBajar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    bt_buscar: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    GrupoModEspecial: TdxBarGroup;
    GrupoBuscar: TdxBarGroup;
    ZQ_Etiquetas: TZQuery;
    DBGridEtiquetas: TDBGrid;
    ZQ_Productos: TZQuery;
    DS_Etiquetas: TDataSource;
    SP_ImprimirEtiquetas: TZStoredProc;
    ISBarcode1: TISBarcode;
    ISBarcode2: TISBarcode;
    ISBarcode3: TISBarcode;
    borrar: TZSQLProcessor;
    btnEliminarLinea: TdxBarLargeButton;
    btnVacia: TdxBarLargeButton;
    btnConPrecio: TdxBarLargeButton;
    EKVistaPreviaQR1: TEKVistaPreviaQR;
    EKListado: TEKListadoSQL;
    ZQ_EtiquetasID_PRODUCTO: TIntegerField;
    ZQ_EtiquetasCANTIDAD: TIntegerField;
    ZQ_ProductosID_PRODUCTO: TIntegerField;
    ZQ_ProductosNOMBRE: TStringField;
    ZQ_ProductosMEDIDA: TStringField;
    ZQ_ProductosCOD_CORTO_PRO: TStringField;
    ZQ_ProductosCODIGO_BARRA: TStringField;
    ZQ_ProductosCOD_CORTO_CAB: TStringField;
    SP_ImprimirEtiquetasID_PRODUCTO: TIntegerField;
    SP_ImprimirEtiquetasDESCRIPCION: TStringField;
    ZQ_EtiquetasProducto: TStringField;
    ZQ_EtiquetasMedida: TStringField;
    ZQ_EtiquetasCodCortoProd: TStringField;
    ZQ_EtiquetasCodCortoCab: TStringField;
    ZQ_EtiquetasCodBarra: TStringField;
    QRBand1: TQRBand;
    QRShapeTapa: TQRShape;
    QRCodigoBarra1: TQRImage;
    QRCodigoBarra2: TQRImage;
    QRImagePrecio2: TQRImage;
    QRCodigoBarra3: TQRImage;
    QRImagePrecio3: TQRImage;
    QRDBArticulo1: TQRDBText;
    QRDBArticulo2: TQRDBText;
    QRDBArticulo3: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBPrecio2: TQRDBText;
    QRDBPrecio3: TQRDBText;
    QRImagePrecio1: TQRImage;
    QRDBPrecio1: TQRDBText;
    SP_ImprimirEtiquetasCODIGOBARRA: TStringField;
    SP_ImprimirEtiquetasMedida: TStringField;
    ZQ_ProductosPRECIO_VENTA: TFloatField;
    SP_ImprimirEtiquetasPrecio: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEtiquetasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SP_ImprimirEtiquetasAfterScroll(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure btnEliminarLineaClick(Sender: TObject);
    procedure btnVaciaClick(Sender: TObject);
    procedure btnConPrecioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImprimirEtiquetas : TFImprimirEtiquetas;

const
  transaccion_Etiquetas = 'ETIQUETAS';

implementation

uses UDM, StrUtils;

{$R *.dfm}

procedure TFImprimirEtiquetas.FormCreate(Sender: TObject);
begin
  borrar.Execute;
  dm.EKModelo.iniciar_transaccion(transaccion_Etiquetas, [ZQ_Etiquetas]);
  ZQ_Productos.Open;
end;


procedure TFImprimirEtiquetas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.EKModelo.cancelar_transaccion(transaccion_Etiquetas);
  Release;
end;


procedure TFImprimirEtiquetas.DBGridEtiquetasKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((sender as tdbgrid).SelectedField.FullName = 'Producto') then
    if key = 112 then
      if EKListado.Buscar then
      begin
        ZQ_Etiquetas.Edit;
        ZQ_EtiquetasID_PRODUCTO.AsString := EKListado.Resultado;
      end;
end;


procedure TFImprimirEtiquetas.SP_ImprimirEtiquetasAfterScroll(DataSet: TDataSet);
begin
  ISBarcode1.Text := SP_ImprimirEtiquetasCODIGOBARRA.AsString;
  ISBarcode2.Text := SP_ImprimirEtiquetasCODIGOBARRA.AsString;
  ISBarcode3.Text := SP_ImprimirEtiquetasCODIGOBARRA.AsString;
end;


procedure TFImprimirEtiquetas.btnImprimirClick(Sender: TObject);
var
    Fila: string;
    Filan : integer;
begin
  fila := InputBox('Ingrese','Desde que fila?','0');
  try
    filan := StrToInt(fila);
  except
    filan := 0;
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


procedure TFImprimirEtiquetas.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFImprimirEtiquetas.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
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


procedure TFImprimirEtiquetas.btnEliminarLineaClick(Sender: TObject);
begin
  ZQ_Etiquetas.Delete;
end;


procedure TFImprimirEtiquetas.btnVaciaClick(Sender: TObject);
begin
  borrar.Execute;
  ZQ_Etiquetas.Refresh;
end;


procedure TFImprimirEtiquetas.btnConPrecioClick(Sender: TObject);
var Fila: string;
    Filan : integer;
begin
  fila := InputBox('Ingrese','Desde que fila?','0');
  try
    filan := StrToInt(fila);
  except
    filan := 0;
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

end.
