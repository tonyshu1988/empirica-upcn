unit UABM_Precios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, EKBusquedaAvanzada,
  ZStoredProcedure, ZSqlUpdate, EKOrdenarGrilla, mxNativeExcel, mxExport, UBuscarPersona,
  QRCtrls, QuickRpt, EKVistaPreviaQR, DBClient, Provider, ShellApi,
  ComCtrls, EKUsrPermisos, EKIni;

type
  TFABM_Precios = class(TForm)
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnExportarXLS: TdxBarLargeButton;
    btnEditarGrilla: TdxBarLargeButton;
    btnProcesarImportes: TdxBarLargeButton;
    btnSeleccionar: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PanelContenedor: TPanel;
    DBGridProductos: TDBGrid;
    ZQ_Productos: TZQuery;
    DS_Productos: TDataSource;
    ZQ_ProductosNOMBRE_PRODUCTO: TStringField;
    ZQ_ProductosMEDIDA: TStringField;
    ZQ_ProductosARTICULO: TStringField;
    ZQ_ProductosTIPO_ARTICULO: TStringField;
    ZQ_ProductosNOMBRE_MARCA: TStringField;
    ZQ_ProductosDESCRIPCION: TStringField;
    ZQ_ProductosPRECIO_COSTO: TFloatField;
    ZQ_ProductosPRECIO_VENTA: TFloatField;
    ZQ_ProductosCOEF_GANANCIA: TFloatField;
    ZQ_ProductosCOEF_DESCUENTO: TFloatField;
    ZQ_ProductosIMPUESTO_INTERNO: TFloatField;
    ZQ_ProductosIMPUESTO_IVA: TFloatField;
    ZQ_ProductosCOD_CORTO: TStringField;
    ZQ_ProductosCODIGO_BARRA: TStringField;
    EKBusquedaAvanzada1: TEKBusquedaAvanzada;
    ZSPActualizarImporte: TZStoredProc;
    ZQ_ProductosID_PRODUCTO: TIntegerField;
    ZUpdateSQL1: TZUpdateSQL;
    ZSPActualizarImporteSALIDA: TIntegerField;
    PanelEdicion: TPanel;
    EditCosto: TEdit;
    EditVenta: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RadioGroupTipoCalculo: TRadioGroup;
    LabelTipo2: TLabel;
    LabelTipo1: TLabel;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    mxDBGridExport: TmxDBGridExport;
    mxNativeExcel1: TmxNativeExcel;
    ZQ_Clientes: TZQuery;
    RepListaPrecios: TQuickRep;
    QRBand5: TQRBand;
    QRDBImage1: TQRDBImage;
    QRLabel11: TQRLabel;
    RepCtas_Reporte_Titulo_2: TQRLabel;
    RepCtas_Reporte_Titulo_1: TQRLabel;
    QRBandDetalle: TQRBand;
    QRDBTextCoefGanancia: TQRDBText;
    QRDBText1: TQRDBText;
    QRChildBandCleinte: TQRChildBand;
    QRBand7: TQRBand;
    QRLabel24: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand1: TQRBand;
    QRExpr15: TQRExpr;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabelimporteVenta: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabelmporteCosto: TQRLabel;
    QRLabelCoefGanancia: TQRLabel;
    QRDBTextPrecioCosto: TQRDBText;
    QRDBTextPrecioVenta: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText5: TQRDBText;
    EKVistaPreviaListaPrecios: TEKVistaPreviaQR;
    QRDBText8: TQRDBText;
    ZQ_Productosimporte_venta_cliente: TFloatField;
    ZQ_ClientesNOMBRE: TStringField;
    ZQ_ClientesDIRECCION: TStringField;
    ZQ_ClientesTELEFONO: TStringField;
    ZQ_ClientesEMAIL: TStringField;
    ZQ_ClientesCODIGO_POSTAL: TStringField;
    ZQ_ClientesLOCALIDAD: TStringField;
    ZQ_ClientesNOMBRE_PROVINCIA: TStringField;
    ZQ_ClientesNOMBRE_TIPO_DOC: TStringField;
    ZQ_ClientesNUMERO_DOC: TStringField;
    ZQ_ClientesNOMBRE_TIPO_IVA: TStringField;
    ZQ_ClientesDESCUENTO_ESPECIAL: TFloatField;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    ZQ_ClientesCUIT_CUIL: TStringField;
    QRLabel14: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    CDSZQ_Productos: TClientDataSet;
    CDSZQ_Productosnombre_producto: TStringField;
    CDSZQ_Productostipo_articulo: TStringField;
    CDSZQ_Productosarticulo: TStringField;
    CDSZQ_Productosmedida: TStringField;
    CDSZQ_Productosimporte_venta_cliente: TFloatField;
    CDSZQ_Productosprecio_costo: TFloatField;
    CDSZQ_Productoscoef_ganancia: TFloatField;
    btBuscarGoogle: TdxBarLargeButton;
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnEditarGrillaClick(Sender: TObject);
    procedure btnProcesarImportesClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSeleccionarClick(Sender: TObject);
    procedure RadioGroupTipoCalculoClick(Sender: TObject);
    procedure btnExportarXLSClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnImprimirClick(Sender: TObject);
    procedure ZQ_ProductosCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btBuscarGoogleClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    vsel : TFBuscarPersona;
    procedure OnSelPersona;
  public
    { Public declarations }
  end;

var
  FABM_Precios: TFABM_Precios;
  DescuentoCliente : real;

const
  Transaccion_ABMImportes = 'ABM IMPORTES';

implementation

uses UDM, UUtilidades, UPrincipal;

{$R *.dfm}

procedure TFABM_Precios.OnSelPersona;
begin
  ZQ_Clientes.Close;
  ZQ_Clientes.ParamByName('ID_PERSONA').AsInteger := vsel.ZQ_PersonasID_PERSONA.AsInteger;
  ZQ_Clientes.Open;

  if ZQ_ClientesDESCUENTO_ESPECIAL.AsFloat <> 0 then
    if (application.MessageBox('Este Cliente tiene un descuento especial, Desea aplicarlo?','Lista de precios',MB_YESNO+MB_ICONQUESTION)= IDYES) then
      DescuentoCliente := ZQ_ClientesDESCUENTO_ESPECIAL.AsFloat
    else
      DescuentoCliente := 0;

  vsel.Close;
end;

procedure TFABM_Precios.btnBuscarClick(Sender: TObject);
begin
EKBusquedaAvanzada1.Buscar;
end;

procedure TFABM_Precios.btnSalirClick(Sender: TObject);
begin
close;
end;

procedure TFABM_Precios.btnEditarGrillaClick(Sender: TObject);
begin
  if ZQ_Productos.IsEmpty then
  exit;

  if not (dgEditing	in DBGridProductos.Options) then
  begin
    DBGridProductos.Options := DBGridProductos.Options - [dgRowSelect];
    DBGridProductos.Options := DBGridProductos.Options + [dgEditing];
  end;

  if dm.EKModelo.iniciar_transaccion(Transaccion_ABMImportes, [ZQ_Productos]) then
  begin
    ZQ_Productos.Edit;
    DBGridProductos.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
    RadioGroupTipoCalculo.Enabled := false;
    EditCosto.Enabled := false;
    EditVenta.Enabled := false;
  end;

end;

procedure TFABM_Precios.btnProcesarImportesClick(Sender: TObject);
var
i: integer;
begin
  if ZQ_Productos.IsEmpty then
  exit;

  try
    StrToFloat(EditCosto.Text);
    StrToFloat(EditVenta.Text);
  except
    Application.MessageBox('Se ingresaron datos no validos'+#13+'Verifique que no haya campos numéricos mal ingresados','Validar',MB_OK+MB_ICONINFORMATION);
    exit;
  end;


  if dm.EKModelo.iniciar_transaccion(Transaccion_ABMImportes, [ZQ_Productos]) then
  begin
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
    RadioGroupTipoCalculo.Enabled := false;
    EditCosto.Enabled := false;
    EditVenta.Enabled := false;

    if DBGridProductos.SelectedRows.Count>0 then
    begin
      with DBGridProductos.DataSource.DataSet do
        for i:=0 to DBGridProductos.SelectedRows.Count-1 do
        begin
          GotoBookmark(pointer(DBGridProductos.SelectedRows.Items[i]));
          ZSPActualizarImporte.Close;
          ZSPActualizarImporte.ParamByName('ID_PRODUCTO').AsInteger := ZQ_ProductosID_PRODUCTO.AsInteger;
          ZSPActualizarImporte.ParamByName('COEF_AUMENTO_COSTO').AsFloat := StrToFloat(EditCosto.Text);
          ZSPActualizarImporte.ParamByName('COEF_AUMENTO_VENTA').AsFloat := StrToFloat(EditVenta.Text);
          if RadioGroupTipoCalculo.ItemIndex = 0 then
            ZSPActualizarImporte.ParamByName('TIPOCALCULO').AsInteger := 1
          else
            ZSPActualizarImporte.ParamByName('TIPOCALCULO').AsInteger := 0;
          ZSPActualizarImporte.Open;
        end;
    end
    else
    begin
      while not(ZQ_Productos.Eof) do
      begin
        ZSPActualizarImporte.Close;
        ZSPActualizarImporte.ParamByName('ID_PRODUCTO').AsInteger := ZQ_ProductosID_PRODUCTO.AsInteger;
        ZSPActualizarImporte.ParamByName('COEF_AUMENTO_COSTO').AsFloat := StrToFloat(EditCosto.Text);
        ZSPActualizarImporte.ParamByName('COEF_AUMENTO_VENTA').AsFloat := StrToFloat(EditVenta.Text);
        if RadioGroupTipoCalculo.ItemIndex = 0 then
          ZSPActualizarImporte.ParamByName('TIPOCALCULO').AsInteger := 1
        else
          ZSPActualizarImporte.ParamByName('TIPOCALCULO').AsInteger := 0;
        ZSPActualizarImporte.Open;

        ZQ_Productos.Next;
      end;
    end;

     ZQ_Productos.Refresh;
     DBGridProductos.SetFocus;
  end;
end;

procedure TFABM_Precios.btnGuardarClick(Sender: TObject);
begin
  if (ZQ_ProductosID_PRODUCTO.AsInteger = 0) then ZQ_Productos.Delete; //Borro los renglones vacios

  if (dgEditing	in DBGridProductos.Options) then
  begin
    DBGridProductos.Options := DBGridProductos.Options - [dgEditing];
    DBGridProductos.Options := DBGridProductos.Options + [dgRowSelect];
  end;

  if DM.EKModelo.finalizar_transaccion(Transaccion_ABMImportes) then
  begin
    DBGridProductos.Enabled := true;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    RadioGroupTipoCalculo.Enabled := true;
    EditCosto.Enabled := true;
    EditVenta.Enabled := true;
    EditCosto.Clear;
    EditVenta.Clear;
    ZQ_Productos.Refresh;
    DBGridProductos.Options:=DBGridProductos.Options - [dgMultiSelect];
    DBGridProductos.SetFocus;
  end;

end;

procedure TFABM_Precios.btnCancelarClick(Sender: TObject);
begin

  if (dgEditing	in DBGridProductos.Options) then
  begin
    DBGridProductos.Options := DBGridProductos.Options - [dgEditing];
    DBGridProductos.Options := DBGridProductos.Options + [dgRowSelect];
  end;

  if dm.EKModelo.cancelar_transaccion(Transaccion_ABMImportes) then
  begin
    DBGridProductos.Enabled := true;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    RadioGroupTipoCalculo.Enabled := true;
    EditCosto.Enabled := true;
    EditVenta.Enabled := true;
    EditCosto.Clear;
    EditVenta.Clear;
    ZQ_Productos.Refresh;
    DBGridProductos.SetFocus;
  end;
end;

procedure TFABM_Precios.btnSeleccionarClick(Sender: TObject);
begin
  if (dgMultiSelect	in DBGridProductos.Options) then
  begin
    DBGridProductos.Options:=DBGridProductos.Options - [dgMultiSelect];
    btnSeleccionar.AutoGrayScale := false;
  end
  else
  begin
    DBGridProductos.Options:=DBGridProductos.Options + [dgMultiSelect];
    btnSeleccionar.AutoGrayScale := true;
  end;

  DBGridProductos.SetFocus;
end;

procedure TFABM_Precios.RadioGroupTipoCalculoClick(Sender: TObject);
begin
  if RadioGroupTipoCalculo.ItemIndex = 0 then
  begin
    LabelTipo1.Caption := '%';
    LabelTipo2.Caption := '%';
  end
  else
  begin
    LabelTipo1.Caption := '$';
    LabelTipo2.Caption := '$';
  end;

end;

procedure TFABM_Precios.btnExportarXLSClick(Sender: TObject);
begin
  if not ZQ_Productos.IsEmpty then

    mxDBGridExport.Select;
end;

procedure TFABM_Precios.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
CanClose:= FPrincipal.cerrar_ventana(Transaccion_ABMImportes);
end;

procedure TFABM_Precios.btnImprimirClick(Sender: TObject);
var
i : integer;
begin
  if ZQ_Productos.IsEmpty then
    exit;

  if (dgMultiSelect	in DBGridProductos.Options) then
  begin
    if DBGridProductos.SelectedRows.Count>0 then
    begin
      with DBGridProductos.DataSource.DataSet do
        for i:=0 to DBGridProductos.SelectedRows.Count-1 do
        begin
          GotoBookmark(pointer(DBGridProductos.SelectedRows.Items[i]));
          CDSZQ_Productos.Append;
          CDSZQ_Productosnombre_producto.AsString := ZQ_ProductosNOMBRE_PRODUCTO.AsString;
          CDSZQ_Productostipo_articulo.AsString := ZQ_ProductosTIPO_ARTICULO.AsString;
          CDSZQ_Productosarticulo.AsString := ZQ_ProductosARTICULO.AsString;
          CDSZQ_Productosmedida.AsString := ZQ_ProductosMEDIDA.AsString;
          CDSZQ_Productosimporte_venta_cliente.AsFloat := ZQ_Productosimporte_venta_cliente.AsFloat;
          CDSZQ_Productosprecio_costo.AsFloat := ZQ_ProductosPRECIO_COSTO.AsFloat;
          CDSZQ_Productoscoef_ganancia.AsFloat := ZQ_ProductosCOEF_GANANCIA.AsFloat;
        end;
    end
  end
  else
  begin
    ZQ_Productos.First;
    while not(ZQ_Productos.Eof) do
    begin
      CDSZQ_Productos.Append;
      CDSZQ_Productosnombre_producto.AsString := ZQ_ProductosNOMBRE_PRODUCTO.AsString;
      CDSZQ_Productostipo_articulo.AsString := ZQ_ProductosTIPO_ARTICULO.AsString;
      CDSZQ_Productosarticulo.AsString := ZQ_ProductosARTICULO.AsString;
      CDSZQ_Productosmedida.AsString := ZQ_ProductosMEDIDA.AsString;
      CDSZQ_Productosimporte_venta_cliente.AsFloat := ZQ_Productosimporte_venta_cliente.AsFloat;
      CDSZQ_Productosprecio_costo.AsFloat := ZQ_ProductosPRECIO_COSTO.AsFloat;
      CDSZQ_Productoscoef_ganancia.AsFloat := ZQ_ProductosCOEF_GANANCIA.AsFloat;
      ZQ_Productos.Next;
    end;
  end;


  if (Application.MessageBox('Desea Selecionar algun cliente en particular para imprimir esta lista de precios?','ABM Precios',MB_YESNO+MB_ICONQUESTION) = IDYES) then
  begin
    if not Assigned(vsel) then
    vsel := TFBuscarPersona.Create(nil);
    
    vsel.OnSeleccionar := OnSelPersona;
    vsel.ShowModal;

    QRLabelCoefGanancia.Enabled := false;
    QRDBTextCoefGanancia.Enabled := false;
    QRLabelmporteCosto.Enabled := false;
    QRDBTextPrecioCosto.Enabled := false;
    QRLabelimporteVenta.Left := 942;
    QRDBTextPrecioVenta.Left := 942;


    QRChildBandCleinte.Enabled := true;

    EKVistaPreviaListaPrecios.VistaPrevia;
  end
  else
  begin
    QRLabelCoefGanancia.Enabled := true;
    QRDBTextCoefGanancia.Enabled := true;
    QRLabelmporteCosto.Enabled := true;
    QRDBTextPrecioCosto.Enabled := true;
    QRLabelimporteVenta.Left := 736;
    QRDBTextPrecioVenta.Left := 736;

    QRChildBandCleinte.Enabled := false;

    EKVistaPreviaListaPrecios.VistaPrevia;
  end;

  CDSZQ_Productos.EmptyDataSet;
end;

procedure TFABM_Precios.ZQ_ProductosCalcFields(DataSet: TDataSet);
begin
ZQ_Productosimporte_venta_cliente.AsFloat := ZQ_ProductosPRECIO_VENTA.AsFloat-(ZQ_ProductosPRECIO_VENTA.AsFloat*DescuentoCliente);

end;

procedure TFABM_Precios.FormCreate(Sender: TObject);
begin
CDSZQ_Productos.CreateDataSet;
EKOrdenarGrilla1.CargarFiltro;
end;

procedure TFABM_Precios.btBuscarGoogleClick(Sender: TObject);
begin
  if ZQ_Productos.IsEmpty then
  exit;

  ShellExecute(self.handle, 'open', pchar('http://www.google.com.ar/#hl=es-419&q='+ZQ_ProductosNOMBRE_PRODUCTO.AsString+'&oq'), nil, nil,
  SW_SHOWNORMAL);
end;


procedure TFABM_Precios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EKOrdenarGrilla1.GuardarFiltro;
end;

end.
