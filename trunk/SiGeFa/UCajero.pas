unit UCajero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, Grids, DBGrids,
  EKEdit,UBuscarProducto, Mask, Provider, DBClient, ActnList,
  XPStyleActnCtrls, ActnMan, EKListadoSQL, ISDbSuma,UBuscarPersona, Buttons;

type
  TFCajero = class(TForm)
    PanelContenedor: TPanel;
    ZQ_Productos: TZQuery;
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
    ZQ_ProductosID_PRODUCTO: TIntegerField;
    DS_Productos: TDataSource;
    PanelDetalleProducto: TPanel;
    PanelContenedorDerecha: TPanel;
    PanelFormaPago: TPanel;
    PanelListadoProducto: TPanel;
    PanelCabeceraFactura: TPanel;
    edImagen: TDBImage;
    DBGridListadoProductos: TDBGrid;
    PieGrilla: TPanel;
    DBGridFormaPago: TDBGrid;
    btQuitarProducto: TButton;
    PieGrillaFormaPago: TPanel;
    ZQ_ComprobanteDetalle: TZQuery;
    ZQ_ComprobanteDetalleID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_ComprobanteDetalleID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteDetalleID_PRODUCTO: TIntegerField;
    ZQ_ComprobanteDetalleDETALLE: TStringField;
    ZQ_ComprobanteDetalleCANTIDAD: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_FINAL: TFloatField;
    ZQ_ComprobanteDetallePORC_DESCUENTO: TFloatField;
    ZQ_ComprobanteDetalleBASE_IMPONIBLE: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_UNITARIO: TFloatField;
    ZQ_ComprobanteDetalleIMPUESTO_INTERNO: TFloatField;
    ZQ_ComprobanteDetallePORC_IVA: TFloatField;
    DS_ComprobanteDetalle: TDataSource;
    ZQ_Comprobante_FormaPago: TZQuery;
    ZQ_Comprobante_FormaPagoID_COMPROB_FP: TIntegerField;
    ZQ_Comprobante_FormaPagoID_COMPROBANTE: TIntegerField;
    ZQ_Comprobante_FormaPagoID_TIPO_FORMAPAG: TIntegerField;
    ZQ_Comprobante_FormaPagoMDCP_FECHA: TDateField;
    ZQ_Comprobante_FormaPagoMDCP_BANCO: TStringField;
    ZQ_Comprobante_FormaPagoMDCP_CHEQUE: TStringField;
    ZQ_Comprobante_FormaPagoIMPORTE: TFloatField;
    ZQ_Comprobante_FormaPagoCONCILIADO: TDateField;
    ZQ_Comprobante_FormaPagoCUENTA_INGRESO: TIntegerField;
    ZQ_Comprobante_FormaPagoCUENTA_EGRESO: TIntegerField;
    DS_Comprobante_FormaPago: TDataSource;
    dxBarABM: TdxBarManager;
    BtBuscarProducto: TdxBarLargeButton;
    BtModificar: TdxBarLargeButton;
    BtEliminar: TdxBarLargeButton;
    BtAgregarPago: TdxBarLargeButton;
    BtAceptarPago: TdxBarLargeButton;
    BtCancelarPago: TdxBarLargeButton;
    BtDuplicar: TdxBarLargeButton;
    Bt_Cierre_Z: TdxBarLargeButton;
    btBajar: TdxBarLargeButton;
    btsalir: TdxBarLargeButton;
    bt_accion: TdxBarControlContainerItem;
    bt_motivo_baja: TdxBarControlContainerItem;
    bt_VerDetalle: TdxBarLargeButton;
    bt_BuscarCliente: TdxBarLargeButton;
    Bt_Detalle: TdxBarLargeButton;
    Bt_Imprimir_Arqueo: TdxBarLargeButton;
    Bt_Imprimir_convenio: TdxBarLargeButton;
    BtLeerCodigo: TdxBarLargeButton;
    BtBuscar: TdxBarLargeButton;
    btLiquidar: TdxBarLargeButton;
    Bt_imprimir_listadoFP: TdxBarLargeButton;
    bt_cierre_X: TdxBarLargeButton;
    GrupoBuscarCliente: TdxBarGroup;
    GrupoLeerCodigo: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PanelStatusBar: TPanel;
    ZQ_Comprobante: TZQuery;
    ZQ_ComprobanteID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteID_SUCURSAL: TIntegerField;
    ZQ_ComprobanteID_PROVEEDOR: TIntegerField;
    ZQ_ComprobanteID_CLIENTE: TIntegerField;
    ZQ_ComprobanteID_TIPO_CPB: TIntegerField;
    ZQ_ComprobanteID_VENDEDOR: TIntegerField;
    ZQ_ComprobanteID_COMP_ESTADO: TIntegerField;
    ZQ_ComprobanteCODIGO: TStringField;
    ZQ_ComprobanteFECHA: TDateTimeField;
    ZQ_ComprobanteOBSERVACION: TStringField;
    ZQ_ComprobanteBASE_IMPONIBLE: TFloatField;
    ZQ_ComprobanteSALDO: TFloatField;
    ZQ_ComprobanteIMPORTE_TOTAL: TFloatField;
    ZQ_ComprobantePORC_IVA: TFloatField;
    ZQ_ComprobanteIMPORTE_IVA: TFloatField;
    ZQ_ComprobantePORC_DESCUENTO: TFloatField;
    ZQ_ComprobanteIMPORTE_DESCUENTO: TFloatField;
    ZQ_ComprobanteENCABEZADO: TStringField;
    ZQ_ComprobantePIE: TStringField;
    ZQ_ComprobanteFECHA_COBRADA: TDateField;
    ZQ_ComprobanteFECHA_ENVIADA: TDateField;
    ZQ_ComprobanteFECHA_IMPRESA: TDateField;
    ZQ_ComprobanteFECHA_VENCIMIENTO: TDateField;
    DS_Comprobante: TDataSource;
    codBarras: TEdit;
    CD_DetalleFactura: TClientDataSet;
    DS_DetalleFactura: TDataSource;
    DataSetProvider1: TDataSetProvider;
    CD_DetalleFacturaID_COMPROBANTE_DETALLE: TIntegerField;
    CD_DetalleFacturaID_COMPROBANTE: TIntegerField;
    CD_DetalleFacturaID_PRODUCTO: TIntegerField;
    CD_DetalleFacturaDETALLE: TStringField;
    CD_DetalleFacturaCANTIDAD: TFloatField;
    CD_DetalleFacturaIMPORTE_FINAL: TFloatField;
    CD_DetalleFacturaPORC_DESCUENTO: TFloatField;
    CD_DetalleFacturaBASE_IMPONIBLE: TFloatField;
    CD_DetalleFacturaIMPORTE_UNITARIO: TFloatField;
    CD_DetalleFacturaIMPUESTO_INTERNO: TFloatField;
    CD_DetalleFacturaPORC_IVA: TFloatField;
    EKListadoProducto: TEKListadoSQL;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    ZQ_ProductosIMAGEN: TBlobField;
    btnBorrarPago: TButton;
    ISDbSumaLista: TISDbSuma;
    CD_Fpago: TClientDataSet;
    DSFpago: TDataSource;
    ISDbSumaFpago: TISDbSuma;
    CD_FpagoID_COMPROB_FP: TIntegerField;
    CD_FpagoID_COMPROBANTE: TIntegerField;
    CD_FpagoID_TIPO_FORMAPAG: TIntegerField;
    CD_FpagoMDCP_FECHA: TDateField;
    CD_FpagoMDCP_BANCO: TStringField;
    CD_FpagoMDCP_CHEQUE: TStringField;
    CD_FpagoIMPORTE: TFloatField;
    CD_FpagoCONCILIADO: TDateField;
    CD_FpagoCUENTA_INGRESO: TIntegerField;
    CD_FpagoCUENTA_EGRESO: TIntegerField;
    Label11: TLabel;
    Label10: TLabel;
    lblCantProductos: TLabel;
    Label1: TLabel;
    Label19: TLabel;
    Importe: TEdit;
    Label20: TLabel;
    ImporteFpago: TEdit;
    ZQ_FormasPago: TZQuery;
    ZQ_FormasPagoID_TIPO_FORMAPAGO: TIntegerField;
    ZQ_FormasPagoDESCRIPCION: TStringField;
    ZQ_FormasPagoBAJA: TStringField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    edCantidad: TEKEdit;
    LeerCodBar: TLabel;
    Label9: TLabel;
    CD_FpagomedioPago: TStringField;
    ZQ_Personas: TZQuery;
    ZQ_PersonasID_PERSONA: TIntegerField;
    ZQ_PersonasID_PROVINCIA: TIntegerField;
    ZQ_PersonasID_TIPO_DOC: TIntegerField;
    ZQ_PersonasID_TIPO_IVA: TIntegerField;
    ZQ_PersonasNOMBRE: TStringField;
    ZQ_PersonasDIRECCION: TStringField;
    ZQ_PersonasLOCALIDAD: TStringField;
    ZQ_PersonasCODIGO_POSTAL: TStringField;
    ZQ_PersonasTELEFONO: TStringField;
    ZQ_PersonasEMAIL: TStringField;
    ZQ_PersonasFECHA_NACIMIENTO: TDateField;
    ZQ_PersonasNUMERO_DOC: TStringField;
    ZQ_PersonasSEXO: TStringField;
    ZQ_PersonasBAJA: TStringField;
    ZQ_PersonasDESCRIPCION: TStringField;
    ZQ_PersonasCUIT_CUIL: TStringField;
    Label12: TLabel;
    ZQ_PersonasDESCUENTO_ESPECIAL: TFloatField;
    ZQ_PersonasCODIGO_CORTO: TIntegerField;
    ZQ_PersonasPROV: TStringField;
    ZQ_PersonasTDOC: TStringField;
    ZQ_PersonasTIVA: TStringField;
    DataSource1: TDataSource;
    DBText1: TDBText;
    DS_Personas: TDataSource;
    DBText2: TDBText;
    DBText4: TDBText;
    DBText6: TDBText;
    ZQ_Comprobantepers_nombre: TStringField;
    ZQ_Comprobantepers_direccion: TStringField;
    ZQ_Comprobantepers_cuit: TStringField;
    ZQ_Comprobantepers_codigo: TStringField;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    BitBtn1: TBitBtn;
    Label17: TLabel;
    DBText3: TDBText;
    CD_Comprobante: TClientDataSet;
    CD_ComprobanteID_COMPROBANTE: TIntegerField;
    CD_ComprobanteID_SUCURSAL: TIntegerField;
    CD_ComprobanteID_PROVEEDOR: TIntegerField;
    CD_ComprobanteID_CLIENTE: TIntegerField;
    CD_ComprobanteID_TIPO_CPB: TIntegerField;
    CD_ComprobanteID_VENDEDOR: TIntegerField;
    CD_ComprobanteID_COMP_ESTADO: TIntegerField;
    CD_ComprobanteCODIGO: TStringField;
    CD_ComprobanteFECHA: TDateTimeField;
    CD_ComprobanteOBSERVACION: TStringField;
    CD_ComprobanteBASE_IMPONIBLE: TFloatField;
    CD_ComprobanteSALDO: TFloatField;
    CD_ComprobanteIMPORTE_TOTAL: TFloatField;
    CD_ComprobantePORC_IVA: TFloatField;
    CD_ComprobanteIMPORTE_IVA: TFloatField;
    CD_ComprobantePORC_DESCUENTO: TFloatField;
    CD_ComprobanteIMPORTE_DESCUENTO: TFloatField;
    CD_ComprobanteENCABEZADO: TStringField;
    CD_ComprobantePIE: TStringField;
    CD_ComprobanteFECHA_COBRADA: TDateField;
    CD_ComprobanteFECHA_ENVIADA: TDateField;
    CD_ComprobanteFECHA_IMPRESA: TDateField;
    CD_ComprobanteFECHA_VENCIMIENTO: TDateField;
    CD_Comprobantepers_nombre: TStringField;
    CD_Comprobantepers_cuit: TStringField;
    CD_Comprobantepers_codigo: TStringField;
    CD_Comprobantepers_iva: TStringField;
    Label18: TLabel;
    DBText5: TDBText;
    CD_Comprobantepers_tel: TStringField;
    CD_Comprobantepers_direccion: TStringField;
    CD_DetalleFacturaproducto: TStringField;
    ZQ_ProductosDETALLE_PROD: TStringField;
    procedure btsalirClick(Sender: TObject);
    procedure BtBuscarProductoClick(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure ISDbSumaListaSumListChanged(Sender: TObject);
    procedure ISDbSumaFpagoSumListChanged(Sender: TObject);
    function agregar(detalle: string;prod:integer):Boolean;
    procedure BtAgregarPagoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btQuitarProductoClick(Sender: TObject);
    procedure btnBorrarPagoClick(Sender: TObject);
    procedure DBGridFormaPagoColEnter(Sender: TObject);
    procedure codBarrasEnter(Sender: TObject);
    procedure LimpiarCodigo;
    procedure codBarrasExit(Sender: TObject);
    procedure codBarrasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IdentificarCodigo();
    procedure LeerCodigo();
    procedure BtLeerCodigoClick(Sender: TObject);
    procedure bt_BuscarClienteClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtAceptarPagoClick(Sender: TObject);
    procedure BtCancelarPagoClick(Sender: TObject);
    procedure crearComprobante();
  private
    vsel: TFBuscarProducto;
    vsel2 : TFBuscarPersona;
    procedure OnSelCliente;

    procedure onSelProducto;
    { Private declarations }
  public


    { Public declarations }
  end;

var
  FCajero: TFCajero;
  importeacob, punitoriosacob, acumulado, acumFpago: double;
  IdProd:Integer;
  cliente,cajero:Integer;
  descCliente:double;
const
  abmComprobante='ABM Factura-Cajero';

implementation

uses UDM, UPrincipal,strutils, EKModelo;

{$R *.dfm}


procedure TFCajero.FormCreate(Sender: TObject);
begin

  dm.ZQ_Configuracion.Close;
  dm.ZQ_Configuracion.Open;
  CD_Comprobante.CreateDataSet;
  CD_DetalleFactura.CreateDataSet;
  CD_Fpago.CreateDataSet;
  dm.EKModelo.abrir(ZQ_FormasPago);
  dm.EKModelo.abrir(ZQ_Personas);
  cliente:=0;
  descCliente:=0;
  try
    cajero := strtoint(dm.EKUsrLogin.PermisoAccionValor('CAJA_NRO'));
  except
    Application.MessageBox('El usuario no tiene Caja definida', 'Error');
    //Busco al Cajero correspondiente
    
  end;
  crearComprobante();

end;

procedure TFCajero.btsalirClick(Sender: TObject);
begin
close;
end;

procedure TFCajero.BtBuscarProductoClick(Sender: TObject);
begin
if not Assigned(vsel) then
    vsel:= TFBuscarProducto.Create(nil);
  vsel.OnSeleccionar := onSelProducto;
  vsel.ShowModal;
end;

procedure TFCajero.onSelProducto;
begin
  if dm.EKModelo.verificar_transaccion(abmComprobante) then
  begin
    if not vsel.ZQ_Producto.IsEmpty then
    begin
      CD_DetalleFactura.Filter:= 'idProducto = ' +  vsel.ZQ_ProductoID_PRODUCTO.AsString;
      CD_DetalleFactura.Filtered := true;
      if not CD_DetalleFactura.IsEmpty then
      begin
        CD_DetalleFactura.Filtered := false;
        Application.MessageBox('El Producto seleccionado ya fue cargado','Carga Producto',MB_OK+MB_ICONINFORMATION);
        exit;
      end;
      ZQ_ComprobanteDetalle.Filtered := false;
      agregar('',vsel.ZQ_ProductoID_PRODUCTO.AsInteger);
    end;

    vsel.Close;
  end;
end;

function TFCajero.agregar(detalle: string;prod:integer):Boolean;
begin

  CD_DetalleFactura.Append;
  CD_DetalleFacturaID_PRODUCTO.AsInteger:=prod;
  CD_DetalleFacturaDETALLE.AsString:=detalle;
  CD_DetalleFacturaCANTIDAD.AsInteger:=edCantidad.AsInteger;
  CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat:=ZQ_ProductosPRECIO_VENTA.AsFloat;
  CD_DetalleFacturaPORC_DESCUENTO.AsFloat:=ZQ_ProductosCOEF_DESCUENTO.AsFloat;
  CD_DetalleFacturaIMPUESTO_INTERNO.AsFloat:=00;
  CD_DetalleFacturaPORC_IVA.AsFloat:=00;
  CD_DetalleFacturaBASE_IMPONIBLE.AsFloat:=(CD_DetalleFacturaCANTIDAD.AsInteger*CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat);

  CD_DetalleFacturaIMPORTE_FINAL.AsFloat:=(CD_DetalleFacturaBASE_IMPONIBLE.AsFloat)-(CD_DetalleFacturaBASE_IMPONIBLE.AsFloat*CD_DetalleFacturaPORC_DESCUENTO.AsFloat);


  CD_DetalleFactura.Post;

  lblCantProductos.Caption:='Cantidad Productos: '+inttostr(CD_DetalleFactura.RecordCount);
  Result:=True;
end;
procedure TFCajero.ABuscarExecute(Sender: TObject);
begin
  if EKListadoProducto.Buscar then
   begin
     codBarras.Text:=ZQ_ProductosCODIGO_BARRA.AsString;
     edCantidad.SetFocus;
   end
end;

procedure TFCajero.ISDbSumaListaSumListChanged(Sender: TObject);
begin
  acumulado := ISDbSumaLista.SumCollection[0].SumValue;
  importe.Text := FormatFloat('$ ##,###,##0.00 ', acumulado);
end;

procedure TFCajero.ISDbSumaFpagoSumListChanged(Sender: TObject);
begin
  acumFpago := ISDbSumaFpago.SumCollection[0].SumValue;
  importeFpago.Text := FormatFloat('$ ##,###,##0.00 ', acumFpago);
end;

procedure TFCajero.BtAgregarPagoClick(Sender: TObject);
begin
if cliente<0 then
 begin
   Application.MessageBox('Debe seleccionar el Cliente.', 'Atención');
   bt_BuscarCliente.Click;
   exit;
 end;

if (not(ZQ_Productos.IsEmpty)and(edCantidad.AsInteger>0)) then
  if agregar('',ZQ_ProductosID_PRODUCTO.AsInteger) then
    begin
      LimpiarCodigo;
      BtAgregarPago.Enabled := true;
      BtAceptarPago.Enabled := true;
      BtCancelarPago.Enabled := true;
    end
end;


procedure TFCajero.btQuitarProductoClick(Sender: TObject);
begin
if not(CD_DetalleFactura.IsEmpty) then
  CD_DetalleFactura.Delete;

end;

procedure TFCajero.btnBorrarPagoClick(Sender: TObject);
begin
if not(CD_Fpago.IsEmpty) then
  CD_Fpago.Delete;
end;

procedure TFCajero.DBGridFormaPagoColEnter(Sender: TObject);
begin
 if (DBGridFormaPago.SelectedIndex = 1) then
    if CD_FpagoID_TIPO_FORMAPAG.IsNull then
    begin
      keybd_event(VK_F2, 0, 0, 0);
      keybd_event(VK_F2, 0, KEYEVENTF_KEYUP, 0);
      keybd_event(VK_MENU, 0, 0, 0);
      keybd_event(VK_DOWN, 0, 0, 0);
      keybd_event(VK_DOWN, 0, KEYEVENTF_KEYUP, 0);
      keybd_event(VK_MENU, 0, KEYEVENTF_KEYUP, 0);
    end;

  if (DBGridFormaPago.SelectedIndex = 2) then
    if (CD_FpagoID_TIPO_FORMAPAG.AsInteger = 1) then
      DBGridFormaPago.SelectedIndex := 5;
end;

procedure TFCajero.codBarrasEnter(Sender: TObject);
begin
  LeerCodBar.Visible := true;
  codBarras.Text := '';
  LimpiarCodigo;
end;

procedure TFCajero.LimpiarCodigo;
begin
  //-----------------------------------

  ZQ_Productos.Close;

  importeacob := 0;
  edCantidad.AsInteger := 0;
  codBarras.SetFocus;

end;

procedure TFCajero.codBarrasExit(Sender: TObject);
begin
  LeerCodBar.Visible := false;
end;

procedure TFCajero.codBarrasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    IdentificarCodigo;
end;

procedure TFCajero.IdentificarCodigo();
var
  cod, num: string;
begin

  cod := codBarras.Text;

  // POR NRO DE PRESUPUESTO (EJ. P9494)
  if UpperCase(MidStr(Cod, 1, 1)) = 'P' then
  begin
//    CargarPresup(strtoint(MidStr(Cod, 2, Length(cod) - 1)));
  end
  else
    // POR NUMERO DE ProductoDetalle
    if Length(cod) < 20 then
      begin
        //LeerCodigoID(strtoint(Cod));
        LeerCodigo
      end
    else
      // POR CODIGO DE BARRAS PRODUCTO
      if Length(cod) = 20 then
      begin
        // Verificar Sucursal (Primeros 3 digitos del codigo de barra)
    //    codSuc := UpperCase(MidStr(Cod, 1, 3));
    //    if StrToInt(codmuni) = StrToInt(org_id) then
    //      org_id:=''
    //    else
    //
    //      Org_msg.Visible:=true;
        LeerCodigo;
      end
      else
       if (Length(codBarras.Text) > 20) then
        begin
          Application.MessageBox('Longitud de código incorrecta', 'Error');
          LimpiarCodigo;
          codBarras.Clear;
          exit;
        end;
end;

procedure TFCajero.LeerCodigo();
var
  f1, f2, fecha: tdate;
  punit: double;
  diasm: integer;
begin
  

  //fecha := dateof(FechaPago.DateTime);
  LimpiarCodigo;
  try
    IdProd:= strToInt(codBarras.Text);
  except
    begin
      Application.MessageBox('Código incorrecto', 'Error');
      LimpiarCodigo;
      codBarras.Clear;
      exit;
    end
  end;
  //DigVerif:= MidStr(codBarras.Text, StrLen(PChar(codBarras.Text)), 1);

  ZQ_Productos.Close;
  ZQ_Productos.Open;
  ZQ_Productos.Locate('id_producto',IdProd,[]);

//  if (digito_verificador(LeftStr(Codigo.Text, 47)) <> DigVerif.Text) then
//  begin
//    Application.MessageBox('Dígito verificador incorrecto', 'Error');
//    exit;
//  end;
//
//  try
//    f1 := strtodate(midstr(Vencim1.text, 1, 2) + '/' +
//      midstr(Vencim1.text, 3, 2) + '/' +
//      midstr(Vencim1.text, 5, 2));
//    FVen1.Text := datetostr(f1);
//
//    f2 := strtodate(midstr(Vencim2.text, 1, 2) + '/' +
//      midstr(Vencim2.text, 3, 2) + '/' +
//      midstr(Vencim2.text, 5, 2));
//    FVen2.Text := datetostr(f2);
//
//    FVen1.Font.Color := clBlack;
//    FVen2.Font.Color := clBlack;
//
//    Importe1.Text := FormatFloat('$ ##,###,##0.00', StrToFloat(Impo1.Text) / 100);
//    Importe2.Text := FormatFloat('$ ##,###,##0.00', StrToFloat(Impo2.Text) / 100);
//
//    if no_blk_ven.Checked then
//      diasm := strtoint(dias_m.text)
//    else
//      diasm := 0;
//
//    if (f1 >= fecha - diasm) then
//    begin
//      FechaVen := f1;
//      importeacob := StrToFloat(Impo1.Text) / 100;
//      BtAgregar.Enabled := true;
//    end
//    else
//    begin
//      FVen1.Font.Color := clRed;
//      if (f2 >= fecha - diasm) then
//      begin
//        FechaVen := f2;
//        importeacob := StrToFloat(Impo2.Text) / 100;
//        BtAgregar.Enabled := true;
//      end
//      else
//        FVen2.Font.Color := clRed;
//    end;
//
//    if Tributo.Text = '999' then
//      NTributo.Text := 'LIQUIDACION'
//    else
//      if Tributos.Locate('id_tributo', VarArrayOf([strtoint(Tributo.Text)]), []) then
//      begin
//        NTributo.Text := TributosDESCRIPCION.AsString;
//        if TributosCAJAIMPORTE.AsString = 'S' then
//        begin
//          impoacob.Text := '0.00';
//          impoacob.Enabled := true;
//          puniacob.Enabled := true;
//          impoacob.SetFocus;
//        end
//      end
//      else
//        NTributo.Text := '--NO DEFINIDO--';
//
//    if Actualizar.Checked then
//      if (f1 < fecha - diasm) and (f2 < fecha - diasm) then
//        if Tributo.Text <> '999' then
//        begin
//          msj_actualizado.Visible := true;
//          punit := StrToFloat(punitorio.Text) / 100 / 30;
//          importeacob := StrToFloat(Impo1.Text) / 100;
//          importeacob := importeacob * (1 + DaysBetween(f1, dm.ISModeloT.Fecha) * punit);
//          importeacob := roundto(importeacob, -2);
//          impoacob.Text := floattostr(importeacob);
//          BtAgregar.Enabled := true;
//          //Actualizar.Checked:=false;
//        end
//        else
//          Application.MessageBox('Las liquidaciones no se pueden actualizar', 'Error');
//
//    if ModificarImporte.Checked then
//    begin
//      impoacob.Text := floattostr(importeacob);
//      impoacob.Enabled := true;
//      puniacob.Enabled := true;
//      Application.ProcessMessages;
//      impoacob.SetFocus;
//    end;
//
//    if Tributo.Text = '006' then
//    begin
//      puniacob.Text := FloatToStr((StrToFloat(impo2.Text) - StrToFloat(impo1.Text)) / 100);
//      punitoriosacob := (StrToFloat(impo2.Text) - StrToFloat(impo1.Text)) / 100;
//      importeacob := StrToFloat(Impo2.Text) / 100;
//      impoacob.Text := floattostr(importeacob);
//    end;
//  except
//  end;
end;



procedure TFCajero.BtLeerCodigoClick(Sender: TObject);
begin
LimpiarCodigo;
end;

procedure TFCajero.bt_BuscarClienteClick(Sender: TObject);
begin
  if not Assigned(vsel2) then
    vsel2 := TFBuscarPersona.Create(nil);

  vsel2.OnSeleccionar := OnSelCliente;
  vsel2.ShowModal;

end;

procedure TFCajero.OnSelCliente;
begin
  if not(vsel2.ZQ_PersonasID_PERSONA.IsNull) then
   begin
    Cliente:=vsel2.ZQ_PersonasID_PERSONA.AsInteger;
    CD_ComprobanteID_CLIENTE.AsInteger:=Cliente;
    vsel2.Close;
   end;
end;



procedure TFCajero.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 CanClose:= FPrincipal.cerrar_ventana(abmComprobante);
end;

procedure TFCajero.BtAceptarPagoClick(Sender: TObject);
begin
if dm.EKModelo.iniciar_transaccion(abmComprobante,[ZQ_Comprobante,ZQ_ComprobanteDetalle]) then
   begin
      ZQ_Comprobante.Append;
      ZQ_ComprobanteID_SUCURSAL.Value:=CD_ComprobanteID_SUCURSAL.Value;
      ZQ_ComprobanteID_PROVEEDOR.Clear;
      ZQ_ComprobanteID_CLIENTE.AsInteger:=CD_ComprobanteID_CLIENTE.AsInteger;
      ZQ_ComprobanteID_TIPO_CPB.value:=CD_ComprobanteID_TIPO_CPB.Value;
      ZQ_ComprobanteID_VENDEDOR.Value:=CD_ComprobanteID_VENDEDOR.Value;
      ZQ_ComprobanteID_COMP_ESTADO.Value:=CD_ComprobanteID_COMP_ESTADO.Value;;
      ZQ_ComprobanteCODIGO.Value:=CD_ComprobanteCODIGO.Value;
      ZQ_ComprobanteFECHA.AsDateTime:=CD_ComprobanteFECHA.AsDateTime;
      ZQ_ComprobanteOBSERVACION.Value:=CD_ComprobanteOBSERVACION.Value;
      ZQ_ComprobanteBASE_IMPONIBLE.Value:=CD_ComprobanteBASE_IMPONIBLE.Value;
      ZQ_ComprobanteSALDO.AsFloat:=CD_ComprobanteSALDO.Value;
      ZQ_ComprobanteIMPORTE_TOTAL.AsFloat:=CD_ComprobanteIMPORTE_TOTAL.Value;
      ZQ_ComprobantePORC_IVA.AsFloat:=CD_ComprobantePORC_IVA.Value;
      ZQ_ComprobanteIMPORTE_IVA.AsFloat:=CD_ComprobanteIMPORTE_IVA.AsFloat;
      ZQ_ComprobantePORC_DESCUENTO.AsFloat:=CD_ComprobantePORC_DESCUENTO.AsFloat;
      ZQ_ComprobanteIMPORTE_DESCUENTO.AsFloat:=CD_ComprobanteIMPORTE_DESCUENTO.AsFloat;
      ZQ_ComprobanteENCABEZADO.AsString:=CD_ComprobanteENCABEZADO.AsString;
      ZQ_ComprobantePIE.AsString:=CD_ComprobantePIE.AsString;
      ZQ_ComprobanteFECHA_COBRADA.Clear;
      ZQ_ComprobanteFECHA_ENVIADA.Clear;
      ZQ_ComprobanteFECHA_IMPRESA.Clear;
      ZQ_ComprobanteFECHA_VENCIMIENTO.Clear;
      ZQ_Comprobante.Post;
   end;
   if not(dm.EKModelo.finalizar_transaccion(abmComprobante)) then
     begin
      dm.EKModelo.cancelar_transaccion(abmComprobante);
      Application.MessageBox('No se pudo crear el Comprobante', 'Atención');
     end;


      CD_DetalleFactura.EmptyDataSet;
      CD_Fpago.EmptyDataSet;
      BtAgregarPago.Enabled := true;
      BtAceptarPago.Enabled := false;
      BtCancelarPago.Enabled := false;
end;

procedure TFCajero.BtCancelarPagoClick(Sender: TObject);
begin
  crearComprobante();
  CD_DetalleFactura.EmptyDataSet;
  CD_Fpago.EmptyDataSet;
  acumulado := 0;
  importe.Text := '';
  acumFpago := 0;
  ImporteFpago.Text := '';
  ISDbSumaLista.SumCollection[0].SumValue := 0;
  ISDbSumaFpago.SumCollection[0].SumValue := 0;
  BtAgregarPago.Enabled := true;
  BtAceptarPago.Enabled := false;
  BtCancelarPago.Enabled := false;
end;

procedure TFCajero.crearComprobante;
begin
  cliente:=-1;
  importeacob:=0;
  punitoriosacob:=0;
  acumulado:=0;
  acumFpago:=0;
  IdProd:=-1;
  descCliente:=0;

  CD_Comprobante.EmptyDataSet;
  CD_Comprobante.Append;
  CD_ComprobanteID_SUCURSAL.AsInteger:=SUCURSAL_LOGUEO;
  CD_ComprobanteID_CLIENTE.AsInteger:=-1;
  CD_ComprobanteID_TIPO_CPB.AsInteger:=11; //FACTURA
  CD_ComprobanteID_VENDEDOR.AsInteger:=113;//Aca va el cajero, buscar el logueado
  CD_ComprobanteID_COMP_ESTADO.AsInteger:=0;//PENDIENTE
  CD_ComprobanteCODIGO.AsString:='';
  CD_ComprobanteFECHA.AsDateTime:=dm.EKModelo.Fecha();
  CD_ComprobanteOBSERVACION.AsString:='';
  CD_ComprobanteBASE_IMPONIBLE.AsFloat:=0;
  CD_ComprobanteSALDO.AsFloat:=0;
  CD_ComprobanteIMPORTE_TOTAL.AsFloat:=0;
  CD_ComprobantePORC_IVA.AsFloat:=0;
  CD_ComprobanteIMPORTE_IVA.AsInteger:=0;
  CD_ComprobantePORC_DESCUENTO.AsFloat:=0;
  CD_ComprobanteIMPORTE_DESCUENTO.AsInteger:=0;
  CD_ComprobanteENCABEZADO.AsString:='';
  CD_ComprobantePIE.AsString:='';
  CD_ComprobanteFECHA_COBRADA.Clear;
  CD_ComprobanteFECHA_ENVIADA.Clear;
  CD_ComprobanteFECHA_IMPRESA.Clear;
  CD_ComprobanteFECHA_VENCIMIENTO.Clear

end;

end.
