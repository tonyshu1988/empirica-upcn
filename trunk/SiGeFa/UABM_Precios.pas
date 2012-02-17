unit UABM_Precios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, EKBusquedaAvanzada,
  ZStoredProcedure, ZSqlUpdate, EKOrdenarGrilla, mxNativeExcel, mxExport, UBuscarPersona,
  QRCtrls, QuickRpt, EKVistaPreviaQR, DBClient, Provider, ShellApi,
  ComCtrls, EKUsrPermisos, EKIni, ActnList, XPStyleActnCtrls, ActnMan,
  Buttons, ZSqlProcessor;

type
  TFABM_Precios = class(TForm)
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
    btnEditarGrilla: TdxBarLargeButton;
    btnProcesarImportes: TdxBarLargeButton;
    btnSeleccionar: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
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
    ZQ_ProductosID_PRODUCTO: TIntegerField;
    PanelEdicion: TPanel;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    ZQ_Clientes: TZQuery;
    RepListaPrecios: TQuickRep;
    QRBand5: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel11: TQRLabel;
    RepListaPrecios_Subtitulo: TQRLabel;
    RepListaPrecios_Titulo: TQRLabel;
    QRBandDetalle: TQRBand;
    QRDBTextCoefGanancia: TQRDBText;
    QRDBText1: TQRDBText;
    QRChildBandCleinte: TQRChildBand;
    QRBand7: TQRBand;
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
    CDSZQ_Productoscod_corto: TStringField;
    QRSysData1: TQRSysData;
    btnBuscarGoogle: TdxBarLargeButton;
    ZQ_ProductosPRECIO_COSTO_CIMPUESTOS: TFloatField;
    ZQ_ProductosIMPUESTO_ADICIONAL1: TFloatField;
    ZQ_ProductosIMPUESTO_ADICIONAL2: TFloatField;
    PBusqueda: TPanel;
    lblCantidadRegistros: TLabel;
    btnImprimirEtiquetas: TdxBarLargeButton;
    ZQ_ImprimirEtiquetas: TZQuery;
    ZQ_ImprimirEtiquetasID_PRODUCTO: TIntegerField;
    ZQ_ImprimirEtiquetasCANTIDAD: TIntegerField;
    QRLabel15: TQRLabel;
    QRDBText16: TQRDBText;
    ZQ_ProductosPRECIO1: TFloatField;
    ZQ_ProductosPRECIO2: TFloatField;
    ZQ_ProductosPRECIO3: TFloatField;
    ZQ_ProductosPRECIO4: TFloatField;
    ZQ_ProductosPRECIO5: TFloatField;
    ZU_Productos: TZUpdateSQL;
    ZQ_ProductosCOLOR: TStringField;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    ZQ_ProductosNOMBRE: TStringField;
    ZQ_ProductosID_PRECIO: TIntegerField;
    ZQ_Sucursal: TZQuery;
    ZQ_SucursalNOMBRE: TStringField;
    ZQ_SucursalID_SUCURSAL: TIntegerField;
    ZSPActualizarImporte: TZStoredProc;
    ZQ_ProductosID_SUCURSAL: TIntegerField;
    ZQ_ImprimirEtiquetasID_PRECIO: TIntegerField;
    QRlblPieDePagina: TQRLabel;
    QRLabel43: TQRLabel;
    btnExpImp: TdxBarLargeButton;
    CD_Precios: TClientDataSet;
    PArchivoPrecios: TPanel;
    LeerCodBar: TLabel;
    CD_Preciosid_producto: TIntegerField;
    CD_Preciosprecio_costo: TFloatField;
    CD_Preciosprecio_venta: TFloatField;
    CD_Precioscoef_ganancia: TFloatField;
    CD_Preciosimpuesto_interno: TFloatField;
    CD_Preciosimpuesto_iva: TFloatField;
    CD_Preciosprecio_costo_cimpuestos: TFloatField;
    CD_Preciosimpuesto_adicional2: TFloatField;
    CD_Preciosprecio1: TFloatField;
    CD_Preciosprecio2: TFloatField;
    CD_Preciosprecio3: TFloatField;
    CD_Preciosprecio4: TFloatField;
    CD_Preciosprecio5: TFloatField;
    btnArchivoAceptar: TBitBtn;
    btnArchivoCancelar: TBitBtn;
    radExportar: TRadioButton;
    radImportar: TRadioButton;
    GuardarArchivo: TSaveDialog;
    AbrirArchivo: TOpenDialog;
    CD_Precioscoef_descuento: TFloatField;
    CD_Preciosimpuesto_adicional1: TFloatField;
    ZQ_ActualizarPrecios: TZQuery;
    lblModoSeleccion: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    RadioGroupImpuestos: TRadioGroup;
    GboxImpuestos: TGroupBox;
    Label4: TLabel;
    lblImpAdicional1: TLabel;
    lblImpAdicional2: TLabel;
    EditIVA: TEdit;
    EditImpAdicional1: TEdit;
    EditImpAdicional2: TEdit;
    Label5: TLabel;
    Panel3: TPanel;
    RadioGroupTipoCalculo: TRadioGroup;
    GBoxIncDecImportes: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    LabelTipo2: TLabel;
    LabelTipo1: TLabel;
    lblPrecio1: TLabel;
    lblPrecio2: TLabel;
    lblPrecio3: TLabel;
    lblPrecio4: TLabel;
    lblPrecio5: TLabel;
    LabelTipoP2: TLabel;
    LabelTipoP1: TLabel;
    LabelTipoP3: TLabel;
    LabelTipoP4: TLabel;
    LabelTipoP5: TLabel;
    EditCosto: TEdit;
    EditVenta: TEdit;
    EditPrecio1: TEdit;
    EditPrecio2: TEdit;
    EditPrecio3: TEdit;
    EditPrecio4: TEdit;
    EditPrecio5: TEdit;
    RadioGroupTipoUpdate: TRadioGroup;
    AModificar: TAction;
    btnCopiarPrecios: TdxBarLargeButton;
    ZP_UpdateInsert_Precios: TZStoredProc;
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnEditarGrillaClick(Sender: TObject);
    procedure btnProcesarImportesClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSeleccionarClick(Sender: TObject);
    procedure RadioGroupTipoCalculoClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnImprimirClick(Sender: TObject);
    procedure ZQ_ProductosCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarGoogleClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ZQ_ProductosIMPUESTO_IVAChange(Sender: TField);
    procedure ZQ_ProductosIMPUESTO_ADICIONAL1Change(Sender: TField);
    procedure ZQ_ProductosIMPUESTO_ADICIONAL2Change(Sender: TField);
    procedure ZQ_ProductosPRECIO_COSTOChange(Sender: TField);
    procedure actualizarPrecios(llamador: string);
    procedure ZQ_ProductosPRECIO_VENTAChange(Sender: TField);
    procedure ZQ_ProductosCOEF_GANANCIAChange(Sender: TField);
    procedure DBGridProductosColEnter(Sender: TObject);
    procedure RadioGroupImpuestosClick(Sender: TObject);
    procedure btnImprimirEtiquetasClick(Sender: TObject);
    procedure HabilitarCampos();
    procedure DBGridProductosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ABuscarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure EditVentaExit(Sender: TObject);
    procedure ZQ_ProductosCOEF_DESCUENTOChange(Sender: TField);
    procedure btnExpImpClick(Sender: TObject);
    procedure btnArchivoCancelarClick(Sender: TObject);
    procedure btnArchivoAceptarClick(Sender: TObject);
    function exportarPrecios():Boolean;
    function importarPrecios():Boolean;
    procedure habilitarModificar(flag: boolean);
    procedure btnModificarClick(Sender: TObject);
    procedure RadioGroupTipoUpdateClick(Sender: TObject);
    procedure ejecutarActualizacion(id_precio: integer);
    procedure AModificarExecute(Sender: TObject);
    procedure validarSucursal(Sender: TField);
    procedure btnCopiarPreciosClick(Sender: TObject);
  private
    { Private declarations }
    campoQueCambia: string; //guardo que campo se tiene que recalcular automatica// cuando cambio el precio de costo
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
  Transaccion_ImprimirEtiquetas = 'IMPRIMIR ETIQUETAS';

implementation

uses UDM, UUtilidades, UPrincipal, UImprimirEtiquetas;

{$R *.dfm}


procedure TFABM_Precios.HabilitarCampos();
begin
  if (imp_ad1_nombre <> '') then
  begin
    lblImpAdicional1.Caption := 'Coef. '+imp_ad1_nombre+':';
    lblImpAdicional1.Visible := true;
    EditImpAdicional1.Visible := true;
    GboxImpuestos.Width := 369;
    DBGridProductos.Columns[GetIndexField(DBGridProductos, 'IMPUESTO_ADICIONAL1')].Title.Caption:= 'Coef. '+imp_ad1_nombre;
    DBGridProductos.Columns[GetIndexField(DBGridProductos, 'IMPUESTO_ADICIONAL1')].Visible := true;
  end;

  if (imp_ad2_nombre <> '') then
  begin
    lblImpAdicional2.Caption := 'Coef. '+imp_ad2_nombre+':';
    lblImpAdicional2.Visible := true;
    GboxImpuestos.Width := 589;
    EditImpAdicional2.Visible := true;
    DBGridProductos.Columns[GetIndexField(DBGridProductos, 'IMPUESTO_ADICIONAL2')].Title.Caption:= 'Coef. '+imp_ad2_nombre;
    DBGridProductos.Columns[GetIndexField(DBGridProductos, 'IMPUESTO_ADICIONAL2')].Visible := true;
  end;

  if (precio1 <> '') then
  begin
    lblPrecio1.Caption := precio1+':';
    lblPrecio1.Visible := true;
    LabelTipoP1.Visible := true;
    EditPrecio1.Visible := true;
    DBGridProductos.Columns[GetIndexField(DBGridProductos, 'PRECIO1')].Title.Caption:= precio1;
    DBGridProductos.Columns[GetIndexField(DBGridProductos, 'PRECIO1')].Visible := true;
    GBoxIncDecImportes.Width := 394;
  end;

  if (precio2 <> '') then
  begin
    lblPrecio2.Caption := precio2+':';
    lblPrecio2.Visible := true;
    LabelTipoP2.Visible := true;
    EditPrecio2.Visible := true;
    DBGridProductos.Columns[GetIndexField(DBGridProductos, 'PRECIO2')].Title.Caption:= precio2;
    DBGridProductos.Columns[GetIndexField(DBGridProductos, 'PRECIO2')].Visible := true;
    GBoxIncDecImportes.Width := 394;
  end;

  if (precio3 <> '') then
  begin
    lblPrecio3.Caption := precio3+':';
    lblPrecio3.Visible := true;
    LabelTipoP3.Visible := true;
    EditPrecio3.Visible := true;
    DBGridProductos.Columns[GetIndexField(DBGridProductos, 'PRECIO3')].Title.Caption:= precio3;
    DBGridProductos.Columns[GetIndexField(DBGridProductos, 'PRECIO3')].Visible := true;
    GBoxIncDecImportes.Width := 594;
  end;

  if (precio4 <> '') then
  begin
    lblPrecio4.Caption := precio4+':';
    lblPrecio4.Visible := true;
    LabelTipoP4.Visible := true;
    EditPrecio4.Visible := true;
    DBGridProductos.Columns[GetIndexField(DBGridProductos, 'PRECIO4')].Title.Caption:= precio4;
    DBGridProductos.Columns[GetIndexField(DBGridProductos, 'PRECIO4')].Visible := true;
    GBoxIncDecImportes.Width := 594;
  end;

  if (precio5 <> '') then
  begin
    lblPrecio5.Caption := precio5+':';
    lblPrecio5.Visible := true;
    LabelTipoP5.Visible := true;
    EditPrecio5.Visible := true;
    DBGridProductos.Columns[GetIndexField(DBGridProductos, 'PRECIO5')].Title.Caption:= precio5;
    DBGridProductos.Columns[GetIndexField(DBGridProductos, 'PRECIO5')].Visible := true;
    GBoxIncDecImportes.Width := 800;
  end;

end;

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
  if EKBusquedaAvanzada1.Buscar then
    dm.mostrarCantidadRegistro(ZQ_Productos, lblCantidadRegistros);
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
    DBGridProductos.Options := DBGridProductos.Options + [dgEditing];

//  if dm.EKModelo.iniciar_transaccion(Transaccion_ABMImportes, [ZQ_Productos]) then
  begin
    ZQ_Productos.Edit;
    DBGridProductos.SetFocus;
    GrupoEditando.Enabled := false;
    btnGuardar.Enabled:= true;

    PanelEdicion.Enabled:= false;
  end;
end;


procedure TFABM_Precios.ejecutarActualizacion(id_precio: integer);
begin
  ZSPActualizarImporte.Close;
  ZSPActualizarImporte.ParamByName('ID_PRECIO').AsInteger:= id_precio;
  ZSPActualizarImporte.ParamByName('COEF_AUMENTO_COSTO').AsFloat:= StrToFloat(EditCosto.Text);
  ZSPActualizarImporte.ParamByName('COEF_AUMENTO_VENTA').AsFloat:= StrToFloat(EditVenta.Text);
  ZSPActualizarImporte.ParamByName('PRECIO1').AsFloat:= StrToFloat(EditPrecio1.Text);
  ZSPActualizarImporte.ParamByName('PRECIO2').AsFloat:= StrToFloat(EditPrecio2.Text);
  ZSPActualizarImporte.ParamByName('PRECIO3').AsFloat:= StrToFloat(EditPrecio3.Text);
  ZSPActualizarImporte.ParamByName('PRECIO4').AsFloat:= StrToFloat(EditPrecio4.Text);
  ZSPActualizarImporte.ParamByName('PRECIO5').AsFloat:= StrToFloat(EditPrecio5.Text);

  if RadioGroupTipoUpdate.ItemIndex = 0 then
    ZSPActualizarImporte.ParamByName('tipo_update').AsInteger:= 0 //reemplazo todos los valores
  else
    ZSPActualizarImporte.ParamByName('tipo_update').AsInteger:= 1; //actualizo segun lo ingresado

  if RadioGroupTipoCalculo.ItemIndex = 0 then
    ZSPActualizarImporte.ParamByName('TIPOCALCULO').AsInteger:= 0
  else
    ZSPActualizarImporte.ParamByName('TIPOCALCULO').AsInteger:= 1;

  if RadioGroupImpuestos.ItemIndex = 0 then
  begin
    ZSPActualizarImporte.ParamByName('ACTUALIZAR_IMPUESTOS').AsInteger:= 1;
    ZSPActualizarImporte.ParamByName('IMPUESTO_IVA').AsFloat:= StrToFloat(EditIVA.Text);
    ZSPActualizarImporte.ParamByName('IMPUESTO_ADICIONAL1').AsFloat:= StrToFloat(EditImpAdicional1.Text);
    ZSPActualizarImporte.ParamByName('IMPUESTO_ADICIONAL2').AsFloat:= StrToFloat(EditImpAdicional2.Text);
  end
  else
    ZSPActualizarImporte.ParamByName('ACTUALIZAR_IMPUESTOS').AsInteger := 0;

  ZSPActualizarImporte.Open;
end;


procedure TFABM_Precios.btnProcesarImportesClick(Sender: TObject);
var
i: integer;
begin
  if ZQ_Productos.IsEmpty then
    exit;

  //verifico que todos los datos ingresados sean numeros
  try
    StrToFloat(EditCosto.Text);
    StrToFloat(EditVenta.Text);
    StrToFloat(EditPrecio1.Text);
    StrToFloat(EditPrecio2.Text);
    StrToFloat(EditPrecio3.Text);
    StrToFloat(EditPrecio4.Text);
    StrToFloat(EditPrecio5.Text);
    StrToFloat(EditIVA.Text);
    StrToFloat(EditImpAdicional1.Text);
    StrToFloat(EditImpAdicional2.Text);
  except
    Application.MessageBox('Se ingresaron datos no validos'+#13+'Verifique que no haya campos numéricos mal ingresados o vacios','Validar',MB_OK+MB_ICONINFORMATION);
    exit;
  end;

//  if dm.EKModelo.iniciar_transaccion(Transaccion_ABMImportes, []) then
  begin
    GrupoEditando.Enabled := false;
    btnGuardar.Enabled:= true;

    //deshabilito los groupbox
    PanelEdicion.Enabled:= false;

    if DBGridProductos.SelectedRows.Count > 0 then
    begin
      with DBGridProductos.DataSource.DataSet do
        for i:=0 to DBGridProductos.SelectedRows.Count-1 do
        begin
          GotoBookmark(pointer(DBGridProductos.SelectedRows.Items[i]));
          ejecutarActualizacion(ZQ_ProductosID_PRECIO.AsInteger);
        end;
    end
    else
    begin
      ZQ_Productos.first;
      while not(ZQ_Productos.Eof) do
      begin
        ejecutarActualizacion(ZQ_ProductosID_PRECIO.AsInteger);
        ZQ_Productos.Next;
      end;
    end;

     ZQ_Productos.Refresh;
     DBGridProductos.SetFocus;
  end;
end;


procedure TFABM_Precios.btnGuardarClick(Sender: TObject);
begin
  if (ZQ_ProductosID_PRODUCTO.AsInteger = 0) then
    ZQ_Productos.Delete; //Borro los renglones vacios

  if (dgEditing	in DBGridProductos.Options) then
    DBGridProductos.Options := DBGridProductos.Options - [dgEditing];

  try
    if DM.EKModelo.finalizar_transaccion(Transaccion_ABMImportes) then
    begin
      DBGridProductos.Enabled:= true;
      GrupoEditando.Enabled:= true;
      btnGuardar.Enabled:= false;

      EditCosto.Text:= '0';
      EditVenta.Text:= '0';
      EditPrecio1.Text:= '0';
      EditPrecio2.Text:= '0';
      EditPrecio3.Text:= '0';
      EditPrecio4.Text:= '0';
      EditPrecio5.Text:= '0';

      ZQ_Productos.Refresh;
      DBGridProductos.Options:= DBGridProductos.Options - [dgMultiSelect];
      btnSeleccionar.Caption:= 'Seleccionar';
      btnSeleccionar.Hint:= 'Seleccionar de la grilla los productos a actualizar';
      btnSeleccionar.ImageIndex:= 5;
      lblModoSeleccion.Caption:= 'Modo selección Desactivado';

      DBGridProductos.SetFocus;
    end                                                 
  except
    begin
      dm.EKModelo.cancelar_transaccion(Transaccion_ABMImportes);
      Application.MessageBox('No se pudo finalizar la modificación de precios.', 'Atención',MB_OK+MB_ICONINFORMATION);
    end
  end;

  habilitarModificar(false);
end;


procedure TFABM_Precios.btnCancelarClick(Sender: TObject);
begin
  if (application.MessageBox(pchar('¿Seguro que desea cancelar? Se perderan los cambios realizados.'), 'ATENCION - ABM Precios', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO) then
    exit;

  if (dgEditing	in DBGridProductos.Options) then
    DBGridProductos.Options:= DBGridProductos.Options - [dgEditing];

  try
    if dm.EKModelo.cancelar_transaccion(Transaccion_ABMImportes) then
    begin
      DBGridProductos.Enabled:= true;
      GrupoEditando.Enabled:= true;
      btnGuardar.Enabled:= false;

      EditCosto.Text:= '0';
      EditVenta.Text:= '0';
      EditPrecio1.Text:= '0';
      EditPrecio2.Text:= '0';
      EditPrecio3.Text:= '0';
      EditPrecio4.Text:= '0';
      EditPrecio5.Text:= '0';

      ZQ_Productos.Refresh;
      DBGridProductos.SetFocus;

      habilitarModificar(false);
    end;
  Except
  end;
end;


procedure TFABM_Precios.btnSeleccionarClick(Sender: TObject);
begin
  if (dgMultiSelect	in DBGridProductos.Options) then
  begin
    DBGridProductos.Options:=DBGridProductos.Options - [dgMultiSelect];
    btnSeleccionar.Caption:= 'Seleccionar';
    btnSeleccionar.Hint:= 'Seleccionar de la grilla los productos a actualizar';
    btnSeleccionar.ImageIndex:= 5;
    lblModoSeleccion.Caption:= 'Modo selección Desactivado';
  end
  else
  begin
    DBGridProductos.Options:=DBGridProductos.Options + [dgMultiSelect];
    btnSeleccionar.Caption:= 'Todos';
    btnSeleccionar.Hint:= 'Se actualizan todos los productos de la grilla';
    btnSeleccionar.ImageIndex:= 78;
    lblModoSeleccion.Caption:= 'Modo selección Activado';
  end;

  DBGridProductos.SetFocus;
end;


procedure TFABM_Precios.RadioGroupTipoCalculoClick(Sender: TObject);
begin
  if RadioGroupTipoCalculo.ItemIndex = 1 then
  begin
    LabelTipo1.Caption:= '%';
    LabelTipo2.Caption:= '%';
    LabelTipoP1.Caption:= '%';
    LabelTipoP2.Caption:= '%';
    LabelTipoP3.Caption:= '%';
    LabelTipoP4.Caption:= '%';
    LabelTipoP5.Caption:= '%';
  end
  else
  begin
    LabelTipo1.Caption:= '$';
    LabelTipo2.Caption:= '$';
    LabelTipoP1.Caption:= '$';
    LabelTipoP2.Caption:= '$';
    LabelTipoP3.Caption:= '$';
    LabelTipoP4.Caption:= '$';
    LabelTipoP5.Caption:= '$';
  end;
end;


procedure TFABM_Precios.btnExcelClick(Sender: TObject);
begin
  if not ZQ_Productos.IsEmpty then
    dm.ExportarEXCEL(DBGridProductos);
end;


procedure TFABM_Precios.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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
          CDSZQ_Productoscod_corto.AsString:= ZQ_ProductosCOD_CORTO.AsString;
          CDSZQ_Productosnombre_producto.AsString:= ZQ_ProductosNOMBRE_PRODUCTO.AsString;
          CDSZQ_Productostipo_articulo.AsString:= ZQ_ProductosTIPO_ARTICULO.AsString;
          CDSZQ_Productosarticulo.AsString:= ZQ_ProductosARTICULO.AsString;
          CDSZQ_Productosmedida.AsString:= ZQ_ProductosMEDIDA.AsString;
          CDSZQ_Productosimporte_venta_cliente.AsFloat:= ZQ_Productosimporte_venta_cliente.AsFloat;
          CDSZQ_Productosprecio_costo.AsFloat:= ZQ_ProductosPRECIO_COSTO.AsFloat;
          CDSZQ_Productoscoef_ganancia.AsFloat:= ZQ_ProductosCOEF_GANANCIA.AsFloat;
        end;
    end
  end
  else
  begin
    ZQ_Productos.First;
    while not(ZQ_Productos.Eof) do
    begin
      CDSZQ_Productos.Append;
      CDSZQ_Productoscod_corto.AsString:= ZQ_ProductosCOD_CORTO.AsString;
      CDSZQ_Productosnombre_producto.AsString:= ZQ_ProductosNOMBRE_PRODUCTO.AsString;
      CDSZQ_Productostipo_articulo.AsString:= ZQ_ProductosTIPO_ARTICULO.AsString;
      CDSZQ_Productosarticulo.AsString:= ZQ_ProductosARTICULO.AsString;
      CDSZQ_Productosmedida.AsString:= ZQ_ProductosMEDIDA.AsString;
      CDSZQ_Productosimporte_venta_cliente.AsFloat:= ZQ_Productosimporte_venta_cliente.AsFloat;
      CDSZQ_Productosprecio_costo.AsFloat:= ZQ_ProductosPRECIO_COSTO.AsFloat;
      CDSZQ_Productoscoef_ganancia.AsFloat:= ZQ_ProductosCOEF_GANANCIA.AsFloat;
      ZQ_Productos.Next;
    end;
  end;

  if (Application.MessageBox('Desea Selecionar algun cliente en particular para imprimir esta lista de precios?','ABM Precios',MB_YESNO+MB_ICONQUESTION) = IDYES) then
  begin
    if not Assigned(vsel) then
      vsel:= TFBuscarPersona.Create(nil);
    vsel.btnBuscar.Click;
    vsel.OnSeleccionar := OnSelPersona;
    vsel.ShowModal;

    QRLabelCoefGanancia.Enabled:= false;
    QRDBTextCoefGanancia.Enabled:= false;
    QRLabelmporteCosto.Enabled:= false;
    QRDBTextPrecioCosto.Enabled:= false;
    QRLabelimporteVenta.Left:= 942;
    QRDBTextPrecioVenta.Left:= 942;

    QRChildBandCleinte.Enabled:= true;

    DM.VariablesReportes(RepListaPrecios);
    EKVistaPreviaListaPrecios.VistaPrevia;
  end
  else
  begin
    QRLabelCoefGanancia.Enabled:= true;
    QRDBTextCoefGanancia.Enabled:= true;
    QRLabelmporteCosto.Enabled:= true;
    QRDBTextPrecioCosto.Enabled:= true;
    QRLabelimporteVenta.Left:= 736;
    QRDBTextPrecioVenta.Left:= 736;

    QRChildBandCleinte.Enabled := false;

    DM.VariablesReportes(RepListaPrecios);
    QRlblPieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
    EKVistaPreviaListaPrecios.VistaPrevia;
  end;

  CDSZQ_Productos.EmptyDataSet;
end;


procedure TFABM_Precios.ZQ_ProductosCalcFields(DataSet: TDataSet);
begin
  ZQ_Productosimporte_venta_cliente.AsFloat:= ZQ_ProductosPRECIO_VENTA.AsFloat-(ZQ_ProductosPRECIO_VENTA.AsFloat*DescuentoCliente);
end;


procedure TFABM_Precios.FormCreate(Sender: TObject);
begin
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;

  CDSZQ_Productos.CreateDataSet;
  EKOrdenarGrilla1.CargarConfigColumnas;
  lblCantidadRegistros.Caption:= '';
  lblModoSeleccion.Caption:= '';
  GBoxIncDecImportes.Width:= 250;
  GboxImpuestos.Width:= 97;
  HabilitarCampos;

  dm.EKModelo.abrir(ZQ_Sucursal);
  if ZQ_Sucursal.Locate('id_sucursal', VarArrayOf([SUCURSAL_LOGUEO]), []) then
    TEKCriterioBA(EKBusquedaAvanzada1.CriteriosBusqueda.Items[0]).ItemIndex:= ZQ_Sucursal.RecNo - 1;

  FPrincipal.Iconos_Menu_16.GetBitmap(0, btnArchivoCancelar.Glyph);
  FPrincipal.Iconos_Menu_16.GetBitmap(1, btnArchivoAceptar.Glyph);

  RadioGroupTipoCalculo.Width:= 1;
  habilitarModificar(false);
end;


procedure TFABM_Precios.btnBuscarGoogleClick(Sender: TObject);
begin
  if ZQ_Productos.IsEmpty then
  exit;

  ShellExecute(self.handle, 'open', pchar('http://www.google.com.ar/#hl=es-419&q='+ZQ_ProductosNOMBRE_PRODUCTO.AsString+'&oq'), nil, nil, SW_SHOWNORMAL);
end;


procedure TFABM_Precios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenarGrilla1.GuardarConfigColumnas;
end;

procedure TFABM_Precios.ZQ_ProductosIMPUESTO_IVAChange(Sender: TField);
begin
  actualizarPrecios('IMP_IVA');
end;

procedure TFABM_Precios.ZQ_ProductosIMPUESTO_ADICIONAL1Change(Sender: TField);
begin
  actualizarPrecios('IMP_ADICIONAL1');
end;

procedure TFABM_Precios.ZQ_ProductosIMPUESTO_ADICIONAL2Change(Sender: TField);
begin
  actualizarPrecios('IMP_ADICIONAL2');
end;

procedure TFABM_Precios.ZQ_ProductosPRECIO_COSTOChange(Sender: TField);
begin
  actualizarPrecios('PRECIO_COSTO');
end;

procedure TFABM_Precios.ZQ_ProductosPRECIO_VENTAChange(Sender: TField);
begin
  if ZQ_ProductosPRECIO1.IsNull then
    ZQ_ProductosPRECIO1.AsFloat:= ZQ_ProductosPRECIO_VENTA.AsFloat;
  if campoQueCambia <> 'PRECIO_VENTA' then
    actualizarPrecios('PRECIO_VENTA');
end;

procedure TFABM_Precios.ZQ_ProductosCOEF_GANANCIAChange(Sender: TField);
begin
  if campoQueCambia <> 'COEF_GAN_DESC' then
    actualizarPrecios('COEF_GANANCIA');
end;

procedure TFABM_Precios.ZQ_ProductosCOEF_DESCUENTOChange(Sender: TField);
begin
  ShowMessage( Sender.FieldName);
  if campoQueCambia <> 'COEF_GAN_DESC' then
    actualizarPrecios('COEF_DESCUENTO');
end;


procedure TFABM_Precios.actualizarPrecios(llamador: string);
var
  costo_neto, costo_con_impuestos, imp_adicional_1,
  imp_adicional_2, imp_iva, coef_ganancia, coef_descuento, precio_venta: double;
begin
  costo_neto:= ZQ_ProductosPRECIO_COSTO.AsFloat;
  costo_con_impuestos:= ZQ_ProductosPRECIO_COSTO_CIMPUESTOS.AsFloat;
  imp_adicional_1:= ZQ_ProductosIMPUESTO_ADICIONAL1.AsFloat;
  imp_adicional_2:= ZQ_ProductosIMPUESTO_ADICIONAL2.AsFloat;
  imp_iva:= ZQ_ProductosIMPUESTO_IVA.AsFloat;
  coef_ganancia:= ZQ_ProductosCOEF_GANANCIA.AsFloat;
  coef_descuento:= ZQ_ProductosCOEF_DESCUENTO.AsFloat;
  precio_venta:= ZQ_ProductosPRECIO_VENTA.AsFloat;

  if llamador <> 'PRECIO_VENTA' then
  begin
    campoQueCambia:= 'PRECIO_VENTA';
    costo_con_impuestos:= costo_neto + (costo_neto * imp_adicional_1) + (costo_neto * imp_adicional_2) + (costo_neto * imp_iva);
    precio_venta:= costo_con_impuestos * (1 + coef_ganancia);
    precio_venta:= precio_venta - (precio_venta * coef_descuento);

    ZQ_ProductosPRECIO_COSTO_CIMPUESTOS.AsFloat:= costo_con_impuestos;
    ZQ_ProductosPRECIO_VENTA.AsFloat:= precio_venta;
  end
  else
    if llamador = 'PRECIO_VENTA' then
    begin
      campoQueCambia:= 'COEF_GAN_DESC';

      if costo_con_impuestos = 0 then
        coef_ganancia:= 0
      else
        coef_ganancia:= (precio_venta / costo_con_impuestos) - 1;

      ZQ_ProductosCOEF_GANANCIA.AsFloat:= coef_ganancia;
    end;


          if (precio1 <> '') then
          begin
            if (ZQ_ProductosPRECIO1.IsNull) or (ZQ_ProductosPRECIO1.AsFloat = 0) then
              ZQ_ProductosPRECIO1.AsFloat := ZQ_ProductosPRECIO_VENTA.AsFloat;
          end
          else
            ZQ_ProductosPRECIO1.AsFloat := ZQ_ProductosPRECIO_VENTA.AsFloat;

          if (precio2 <> '') then
          begin
            if (ZQ_ProductosPRECIO2.IsNull) or (ZQ_ProductosPRECIO2.AsFloat = 0) then
              ZQ_ProductosPRECIO2.AsFloat := ZQ_ProductosPRECIO_VENTA.AsFloat;
          end
          else
            ZQ_ProductosPRECIO2.AsFloat := ZQ_ProductosPRECIO_VENTA.AsFloat;

          if (precio3 <> '') then
          begin
            if (ZQ_ProductosPRECIO3.IsNull) or (ZQ_ProductosPRECIO3.AsFloat = 0) then
              ZQ_ProductosPRECIO3.AsFloat := ZQ_ProductosPRECIO_VENTA.AsFloat;
          end
          else
            ZQ_ProductosPRECIO3.AsFloat := ZQ_ProductosPRECIO_VENTA.AsFloat;

          if (precio4 <> '') then
          begin
            if (ZQ_ProductosPRECIO4.IsNull) or (ZQ_ProductosPRECIO4.AsFloat = 0) then
              ZQ_ProductosPRECIO4.AsFloat := ZQ_ProductosPRECIO_VENTA.AsFloat;
          end
          else
            ZQ_ProductosPRECIO4.AsFloat := ZQ_ProductosPRECIO_VENTA.AsFloat;

          if (precio5 <> '') then
          begin
            if (ZQ_ProductosPRECIO5.IsNull) or (ZQ_ProductosPRECIO5.AsFloat = 0) then
              ZQ_ProductosPRECIO5.AsFloat := ZQ_ProductosPRECIO_VENTA.AsFloat;
          end
          else
            ZQ_ProductosPRECIO5.AsFloat := ZQ_ProductosPRECIO_VENTA.AsFloat;
end;


procedure TFABM_Precios.DBGridProductosColEnter(Sender: TObject);
begin
  if ((sender as tdbgrid).SelectedField.FieldName = 'PRECIO_VENTA') then
    campoQueCambia:= 'COEF_GANANCIA'
  else
  if ((sender as tdbgrid).SelectedField.FieldName = 'COEF_GANANCIA') then
    campoQueCambia:= 'PRECIO_VENTA';
end;


procedure TFABM_Precios.RadioGroupImpuestosClick(Sender: TObject);
begin
  if RadioGroupImpuestos.ItemIndex = 0 then
  begin
    GboxImpuestos.Enabled:= true;
  end
  else
  begin
    GboxImpuestos.Enabled:= false;
  end;
end;


procedure TFABM_Precios.btnImprimirEtiquetasClick(Sender: TObject);
var
  id_suc: integer;
  suc: string;
begin
  if dm.EKModelo.iniciar_transaccion(Transaccion_ImprimirEtiquetas, [ZQ_ImprimirEtiquetas]) then
  begin
    ZQ_Productos.First;
    id_suc:= ZQ_ProductosID_SUCURSAL.AsInteger;
    suc:= 'Sucursal: '+ZQ_ProductosNOMBRE.AsString;
    while not(ZQ_Productos.Eof) do
    begin
      ZQ_ImprimirEtiquetas.Append;
      ZQ_ImprimirEtiquetasID_PRODUCTO.AsInteger:= ZQ_ProductosID_PRODUCTO.AsInteger;
      ZQ_ImprimirEtiquetasID_PRECIO.AsInteger:= ZQ_ProductosID_PRECIO.AsInteger;
      ZQ_ImprimirEtiquetasCANTIDAD.AsInteger:= 1;
      ZQ_ImprimirEtiquetas.Post;
      
      ZQ_Productos.Next;
    end;

    if dm.EKModelo.finalizar_transaccion(Transaccion_ImprimirEtiquetas) then
    begin
      FPrincipal.AImprimirEtiqueta.Execute;
      FImprimirEtiquetas.btnEditar.Click;
      FImprimirEtiquetas.ZQ_Etiquetas.Refresh;
    end;
  end;
end;


procedure TFABM_Precios.DBGridProductosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridProductos, Rect, DataCol, Column, State);
end;


procedure TFABM_Precios.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled and (btnBuscar.Visible = ivAlways) then
    btnBuscar.Click;
end;

procedure TFABM_Precios.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled and (btnGuardar.Visible = ivAlways) then
    btnGuardar.Click;
end;

procedure TFABM_Precios.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled and (btnCancelar.Visible = ivAlways) then
    btnCancelar.Click;
end;

procedure TFABM_Precios.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled and (btnModificar.Visible = ivAlways) then
    btnModificar.Click;
end;


procedure TFABM_Precios.EditVentaExit(Sender: TObject);
begin
  EditPrecio1.Text:= EditVenta.Text;
end;


procedure TFABM_Precios.btnExpImpClick(Sender: TObject);
begin
  PArchivoPrecios.Visible:=True;
  PArchivoPrecios.BringToFront;
  PanelContenedor.Enabled:=False;
  dm.centrarPanel(FABM_Precios,PArchivoPrecios);
end;


procedure TFABM_Precios.btnArchivoCancelarClick(Sender: TObject);
begin
  PArchivoPrecios.Visible:=False;
  PanelContenedor.Enabled:=True;
end;


procedure TFABM_Precios.btnArchivoAceptarClick(Sender: TObject);
var
  i: integer;
begin
if radExportar.Checked then
 begin
   if exportarPrecios() then ZQ_Productos.Refresh;
   PArchivoPrecios.Visible:=False;
   PanelContenedor.Enabled:=True;
 end
else
 begin
  if radImportar.Checked then
   begin
     if importarPrecios() then ZQ_Productos.Refresh;
     PArchivoPrecios.Visible:=False;
     PanelContenedor.Enabled:=True;
   end
 end;
end;


function TFABM_Precios.exportarPrecios(): Boolean;
var
  i:Integer;
begin
  if ZQ_Productos.IsEmpty then
    exit;

    CD_Precios.EmptyDataSet;
    if DBGridProductos.SelectedRows.Count > 0 then
    begin
      with DBGridProductos.DataSource.DataSet do
        for i:=0 to DBGridProductos.SelectedRows.Count-1 do
        begin
          GotoBookmark(pointer(DBGridProductos.SelectedRows.Items[i]));
          CD_Precios.Append;
          CD_Preciosid_producto.Value:=ZQ_ProductosID_PRODUCTO.Value;
          CD_Preciosprecio_costo.Value:=ZQ_ProductosPRECIO_COSTO.Value;
          CD_Preciosprecio_venta.Value:=ZQ_ProductosPRECIO_VENTA.Value;
          CD_Precioscoef_ganancia.Value:=ZQ_ProductosCOEF_GANANCIA.Value;
          CD_Precioscoef_descuento.Value:=ZQ_ProductosCOEF_DESCUENTO.Value;
          CD_Preciosimpuesto_interno.Value:=ZQ_ProductosIMPUESTO_INTERNO.Value;
          CD_Preciosimpuesto_iva.Value:=ZQ_ProductosIMPUESTO_IVA.Value;
          CD_Preciosprecio_costo_cimpuestos.Value:=ZQ_ProductosPRECIO_COSTO_CIMPUESTOS.Value;
          CD_Preciosimpuesto_adicional1.Value:=ZQ_ProductosIMPUESTO_ADICIONAL1.Value;
          CD_Preciosimpuesto_adicional2.Value:=ZQ_ProductosIMPUESTO_ADICIONAL2.Value;
          CD_Preciosprecio1.Value:=ZQ_ProductosPRECIO1.Value;
          CD_Preciosprecio2.Value:=ZQ_ProductosPRECIO2.Value;
          CD_Preciosprecio3.Value:=ZQ_ProductosPRECIO3.Value;
          CD_Preciosprecio4.Value:=ZQ_ProductosPRECIO4.Value;
          CD_Preciosprecio5.Value:=ZQ_ProductosPRECIO5.Value;

          CD_Precios.Post;
        end;
    end
  else
   begin
      ZQ_Productos.first;
      while not(ZQ_Productos.Eof) do
      begin
        CD_Precios.Append;
          CD_Preciosid_producto.Value:=ZQ_ProductosID_PRODUCTO.Value;
          CD_Preciosprecio_costo.Value:=ZQ_ProductosPRECIO_COSTO.Value;
          CD_Preciosprecio_venta.Value:=ZQ_ProductosPRECIO_VENTA.Value;
          CD_Precioscoef_ganancia.Value:=ZQ_ProductosCOEF_GANANCIA.Value;
          CD_Precioscoef_descuento.Value:=ZQ_ProductosCOEF_DESCUENTO.Value;
          CD_Preciosimpuesto_interno.Value:=ZQ_ProductosIMPUESTO_INTERNO.Value;
          CD_Preciosimpuesto_iva.Value:=ZQ_ProductosIMPUESTO_IVA.Value;
          CD_Preciosprecio_costo_cimpuestos.Value:=ZQ_ProductosPRECIO_COSTO_CIMPUESTOS.Value;
          CD_Preciosimpuesto_adicional1.Value:=ZQ_ProductosIMPUESTO_ADICIONAL1.Value;
          CD_Preciosimpuesto_adicional2.Value:=ZQ_ProductosIMPUESTO_ADICIONAL2.Value;
          CD_Preciosprecio1.Value:=ZQ_ProductosPRECIO1.Value;
          CD_Preciosprecio2.Value:=ZQ_ProductosPRECIO2.Value;
          CD_Preciosprecio3.Value:=ZQ_ProductosPRECIO3.Value;
          CD_Preciosprecio4.Value:=ZQ_ProductosPRECIO4.Value;
          CD_Preciosprecio5.Value:=ZQ_ProductosPRECIO5.Value;
          CD_Precios.Post;

          ZQ_Productos.Next;
      end;

     ZQ_Productos.Refresh;
   end;

  if not(CD_Precios.IsEmpty) then
   begin
    if GuardarArchivo.Execute then
     begin
       try
         begin
           CD_Precios.SaveToFile(ExtractFileName(GuardarArchivo.FileName),dfXMLUTF8);
           Application.MessageBox(PChar(Format('Se creó con éxito el archivo %s',[ExtractFileName(GuardarArchivo.FileName)])),'Exportación Lista de Precios',MB_OK+MB_ICONINFORMATION);
           Result:=True;
         end
       except
        begin
           Application.MessageBox(PChar('Se produjo un error al crear el archivo'),'Exportación Lista de Precios',MB_OK+MB_ICONWARNING);
           Result:=False;
           Exit;
        end
       end;
     end
   end;
end;


function TFABM_Precios.importarPrecios: Boolean;
var
  cant,idSuc:integer;
begin
   CD_Precios.EmptyDataSet;

   if AbrirArchivo.Execute then
   begin
     try
       begin
         CD_Precios.LoadFromFile(ExtractFileName(AbrirArchivo.FileName));
         cant:=CD_Precios.RecordCount;
       end
     except
      begin
         Application.MessageBox(PChar('Se produjo un error al importar el archivo'),'Importación Lista de Precios',MB_OK+MB_ICONWARNING);
         Result:=False;
         Exit;
      end
     end;
   end;

  if dm.EKModelo.iniciar_transaccion('Importar Lista Precios',[]) then
  begin
   idSuc:=dm.ZQ_SucursalID_SUCURSAL.AsInteger;
   CD_Precios.First;

   while not(CD_Precios.Eof) do
   begin
     ZQ_ActualizarPrecios.Close;
     ZQ_ActualizarPrecios.ParamByName('id_prod').AsInteger:=CD_Preciosid_producto.AsInteger;
     ZQ_ActualizarPrecios.ParamByName('id_suc').AsInteger:=idSuc;
     ZQ_ActualizarPrecios.ParamByName('precio_costo').Value:=CD_Preciosprecio_costo.Value;
     ZQ_ActualizarPrecios.ParamByName('precio_venta').Value:=CD_Preciosprecio_venta.Value;
     ZQ_ActualizarPrecios.ParamByName('coef_ganancia').Value:=CD_Precioscoef_ganancia.Value;
     ZQ_ActualizarPrecios.ParamByName('coef_descuento').Value:=CD_Precioscoef_descuento.Value;
     ZQ_ActualizarPrecios.ParamByName('impuesto_interno').Value:=CD_Preciosimpuesto_interno.Value;
     ZQ_ActualizarPrecios.ParamByName('impuesto_iva').Value:=CD_Preciosimpuesto_iva.Value;
     ZQ_ActualizarPrecios.ParamByName('precio_costo_cimpuestos').Value:=CD_Preciosprecio_costo_cimpuestos.Value;
     ZQ_ActualizarPrecios.ParamByName('impuesto_adicional1').Value:=CD_Preciosimpuesto_adicional1.Value;
     ZQ_ActualizarPrecios.ParamByName('impuesto_adicional2').Value:=CD_Preciosimpuesto_adicional2.Value;
     ZQ_ActualizarPrecios.ParamByName('precio1').Value:=CD_Preciosprecio1.Value;
     ZQ_ActualizarPrecios.ParamByName('precio2').Value:=CD_Preciosprecio2.Value;
     ZQ_ActualizarPrecios.ParamByName('precio3').Value:=CD_Preciosprecio3.Value;
     ZQ_ActualizarPrecios.ParamByName('precio4').Value:=CD_Preciosprecio4.Value;
     ZQ_ActualizarPrecios.ParamByName('precio5').Value:=CD_Preciosprecio5.Value;
     ZQ_ActualizarPrecios.ExecSQL;

     CD_Precios.Next;
   end;

   if dm.EKModelo.finalizar_transaccion('Importar Lista Precios') then
    begin
        Application.MessageBox(PChar(Format('Se importaron con éxito %d productos',[cant])),'Importación Lista de Precios',MB_OK+MB_ICONINFORMATION);
        Result:=True;
    end
   else
      begin
         Application.MessageBox(PChar('Se produjo un error al importar el archivo'),'Importación Lista de Precios',MB_OK+MB_ICONWARNING);
         Result:=False;
         Exit;
      end
  end;
end;


procedure TFABM_Precios.habilitarModificar(flag: boolean);
begin
  btnModificar.Visible:= ivNever;
  if flag = false then //oculto todos los botones de la modificacion
  begin
    if dm.EKUsrLogin.PermisoAccion('MODIFIC_PRECIO') then
    begin
      btnModificar.Visible:= ivAlways;
    end;

    btnBuscar.Visible:= ivAlways;
    btnExpImp.Visible:= ivAlways;
    btnCopiarPrecios.Visible:= ivAlways;
    btnImprimir.Visible:= ivAlways;
    btnImprimirEtiquetas.Visible:= ivAlways;
    btnExcel.Visible:= ivAlways;
    btnBuscarGoogle.Visible:= ivAlways;

    btnSeleccionar.Visible:= ivNever;
    btnEditarGrilla.Visible:= ivNever;
    btnProcesarImportes.Visible:= ivNever;
    btnGuardar.Visible:= ivNever;
    btnCancelar.Visible:= ivNever;

    PanelEdicion.Visible:= false;
    PanelEdicion.Enabled:= false;
    lblModoSeleccion.Caption:= '';
  end
  else //muestro todos los botones de la modificacion
  begin
    btnBuscar.Visible:= ivNever;
    btnModificar.Visible:= ivNever;
    btnExpImp.Visible:= ivNever;
    btnCopiarPrecios.Visible:= ivNever;    
    btnImprimir.Visible:= ivNever;
    btnImprimirEtiquetas.Visible:= ivNever;
    btnExcel.Visible:= ivNever;
    btnBuscarGoogle.Visible:= ivNever;

    btnSeleccionar.Visible:= ivAlways;
    btnEditarGrilla.Visible:= ivAlways;
    btnProcesarImportes.Visible:= ivAlways;
    btnGuardar.Visible:= ivAlways;
    btnCancelar.Visible:= ivAlways;

    PanelEdicion.Visible:= true;
    PanelEdicion.Enabled:= true;
    lblModoSeleccion.Caption:= 'Modo selección Desactivado';
  end
end;


procedure TFABM_Precios.btnModificarClick(Sender: TObject);
begin
  if ZQ_Productos.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(Transaccion_ABMImportes, [ZQ_Productos]) then
  begin
    habilitarModificar(true);
    RadioGroupTipoUpdate.ItemIndex:= 0;
  end;
end;


procedure TFABM_Precios.RadioGroupTipoUpdateClick(Sender: TObject);
begin
  if RadioGroupTipoUpdate.ItemIndex = 0 then
  begin
    RadioGroupTipoCalculo.Width:= 1;
  end
  else
  begin
    RadioGroupTipoCalculo.Width:= 185;
  end;
end;


procedure TFABM_Precios.validarSucursal(Sender: TField);
var
  i, suc_prod: integer;
begin
//  suc_prod:= ZQ_ProductosID_SUCURSAL.AsInteger; //sucursal a la que pertenece el precio
//  for  i:= 0 to Length(sucursales) - 1 do //Recorro todas las sucursales del usuario seleccionado
//  begin //si el prducto es de la sucursal en la que estoy loqueado o el usuario tiene permiso en esa sucursal o si es administrador
//    if not ( (suc_prod = SUCURSAL_LOGUEO) or (suc_prod = StrToInt(sucursales[i].valor)) or (StrToInt(sucursales[i].valor) = 0) )  then
//    begin
//      ZQ_Productos.RevertRecord;
//      ShowMessage(pchar('El usuario no posee los permisos para modificar el stock de la sucursal '+ZQ_ProductosNOMBRE.AsString+'.'));
//    end;
//  end;
end;


procedure TFABM_Precios.btnCopiarPreciosClick(Sender: TObject);
var
  id_suc_origen, id_suc_destino, id_producto, cant: integer;
begin
  if ZQ_Productos.IsEmpty then
    exit;

  cant:= 0;
  if MessageDlg('Esta seguro que desea agregar/actualizar los precios buscados en la sucursal '+dm.ZQ_SucursalNOMBRE.AsString+'?', mtConfirmation, [mbYes, mbNo], 0,) = mrYes then
  begin
    if dm.EKModelo.iniciar_transaccion('UPDATE/INSERT PRECIOS',[]) then
    begin
      id_suc_destino:= SUCURSAL_LOGUEO;
      ZQ_Productos.First;
      while not(ZQ_Productos.Eof) do
      begin
        id_suc_origen:= ZQ_ProductosID_SUCURSAL.AsInteger;
        id_producto:= ZQ_ProductosID_PRODUCTO.AsInteger;

        ZP_UpdateInsert_Precios.Close;
        ZP_UpdateInsert_Precios.ParamByName('ID_SUC_ORIGEN').AsInteger:= id_suc_origen;
        ZP_UpdateInsert_Precios.ParamByName('ID_SUC_DESTINO').AsInteger:= id_suc_destino;
        ZP_UpdateInsert_Precios.ParamByName('ID_PRODUCTO_IN').AsInteger:= id_producto;
        ZP_UpdateInsert_Precios.ExecSQL;

        cant:= cant + 1;

        ZQ_Productos.Next;
      end;

      try
        if DM.EKModelo.finalizar_transaccion('UPDATE/INSERT PRECIOS') then
        begin
          Application.MessageBox(PChar(Format('Se Agregaron/Actualizaron %d Precios con éxito',[cant])),'Agrega/Actualizar Precios',MB_OK+MB_ICONINFORMATION);
        end
      except
        begin
          dm.EKModelo.cancelar_transaccion('UPDATE/INSERT PRECIOS');
          Application.MessageBox(PChar('Se produjo un error al Agrega/Actualizar Precios'),'Agrega/Actualizar Precios',MB_OK+MB_ICONWARNING);
        end
      end;
    end;
  end;
end;

end.
