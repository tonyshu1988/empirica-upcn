unit UABM_Comprobantes;

interface

{
  -Proponer enviar las notas de pedido por mail al proveedor
  -Cambiar la clave foranea de comprobante_detalle para que apunte a producto stock en lugar de producto
  -Cambiar la clave foranea de comprobante_forma_pago para que apunte a la tabla tipo_formapago
}


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  EKVistaPreviaQR, QRCtrls, QuickRpt, Buttons, ImgList;

type
  TFABM_Comprobantes = class(TForm)
    PanelFondo: TPanel;
    PanelVer: TPanel;
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
    PanelInfo: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    PanelEditar: TPanel;
    PanelListaCpb: TPanel;
    PanelCpbActual: TPanel;
    Splitter1: TSplitter;
    PanelCpbActual_Producto: TPanel;
    PanelCpbActual_FPago: TPanel;
    PanelCpbActual_Info: TPanel;
    PanelEditar_DatosGral: TPanel;
    PanelEditar_Producto: TPanel;
    PanelEditar_FPago: TPanel;
    PanelEditar_FPagoInfo: TPanel;
    PanelEditar_ProductoInfo: TPanel;
    DBGridEditar_Producto: TDBGrid;
    DBGridEditar_Fpago: TDBGrid;
    btnEliminarProducto: TButton;
    btnEliminarFPago: TButton;
    btnBuscarEntidad: TSpeedButton;
    ImageListEntidad: TImageList;
    ZQ_VerCpb: TZQuery;
    ZQ_VerCpb_Fpago: TZQuery;
    ZQ_VerCpb_Producto: TZQuery;
    DS_VerCpb: TDataSource;
    DS_VerCpb_Fpago: TDataSource;
    DS_VerCpb_Producto: TDataSource;
    ZQ_VerCpbID_COMPROBANTE: TIntegerField;
    ZQ_VerCpbID_SUCURSAL: TIntegerField;
    ZQ_VerCpbID_PROVEEDOR: TIntegerField;
    ZQ_VerCpbID_CLIENTE: TIntegerField;
    ZQ_VerCpbID_TIPO_CPB: TIntegerField;
    ZQ_VerCpbID_VENDEDOR: TIntegerField;
    ZQ_VerCpbID_COMP_ESTADO: TIntegerField;
    ZQ_VerCpbCODIGO: TStringField;
    ZQ_VerCpbFECHA: TDateTimeField;
    ZQ_VerCpbOBSERVACION: TStringField;
    ZQ_VerCpbBASE_IMPONIBLE: TFloatField;
    ZQ_VerCpbSALDO: TFloatField;
    ZQ_VerCpbIMPORTE_TOTAL: TFloatField;
    ZQ_VerCpbPORC_IVA: TFloatField;
    ZQ_VerCpbIMPORTE_IVA: TFloatField;
    ZQ_VerCpbPORC_DESCUENTO: TFloatField;
    ZQ_VerCpbIMPORTE_DESCUENTO: TFloatField;
    ZQ_VerCpbENCABEZADO: TStringField;
    ZQ_VerCpbPIE: TStringField;
    ZQ_VerCpbFECHA_COBRADA: TDateField;
    ZQ_VerCpbFECHA_ENVIADA: TDateField;
    ZQ_VerCpbFECHA_IMPRESA: TDateField;
    ZQ_VerCpbFECHA_VENCIMIENTO: TDateField;
    ZQ_VerCpbSUCURSAL: TStringField;
    ZQ_VerCpbPROVEEDOR: TStringField;
    ZQ_VerCpbCUIT_PROVEEDOR: TStringField;
    ZQ_VerCpbCLIENTE: TStringField;
    ZQ_VerCpbCLIENTE_DOCUMENTO: TStringField;
    ZQ_VerCpbCLIENTE_CUIL: TStringField;
    ZQ_VerCpbVENDEDOR: TStringField;
    ZQ_VerCpbNOMBRE_TIPO_CPB: TStringField;
    ZQ_VerCpbESTADO: TStringField;
    DBGridListaCpb: TDBGrid;
    DBGridCpbActual_Producto: TDBGrid;
    DBGridCpbActual_FPago: TDBGrid;
    ZQ_VerCpb_FpagoID_COMPROB_FP: TIntegerField;
    ZQ_VerCpb_FpagoID_COMPROBANTE: TIntegerField;
    ZQ_VerCpb_FpagoID_TIPO_FORMAPAG: TIntegerField;
    ZQ_VerCpb_FpagoMDCP_FECHA: TDateField;
    ZQ_VerCpb_FpagoMDCP_BANCO: TStringField;
    ZQ_VerCpb_FpagoMDCP_CHEQUE: TStringField;
    ZQ_VerCpb_FpagoIMPORTE: TFloatField;
    ZQ_VerCpb_FpagoCONCILIADO: TDateField;
    ZQ_VerCpb_FpagoCUENTA_INGRESO: TIntegerField;
    ZQ_VerCpb_FpagoCUENTA_EGRESO: TIntegerField;
    ZQ_VerCpb_FpagoDESCRIPCION: TStringField;
    ZQ_VerCpb_ProductoID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_VerCpb_ProductoID_COMPROBANTE: TIntegerField;
    ZQ_VerCpb_ProductoID_PRODUCTO: TIntegerField;
    ZQ_VerCpb_ProductoDETALLE: TStringField;
    ZQ_VerCpb_ProductoCANTIDAD: TFloatField;
    ZQ_VerCpb_ProductoIMPORTE_FINAL: TFloatField;
    ZQ_VerCpb_ProductoPORC_DESCUENTO: TFloatField;
    ZQ_VerCpb_ProductoBASE_IMPONIBLE: TFloatField;
    ZQ_VerCpb_ProductoIMPORTE_UNITARIO: TFloatField;
    ZQ_VerCpb_ProductoIMPUESTO_INTERNO: TFloatField;
    ZQ_VerCpb_ProductoPORC_IVA: TFloatField;
    ZQ_VerCpb_ProductoCOD_CABECERA: TStringField;
    ZQ_VerCpb_ProductoPRODUCTO: TStringField;
    ZQ_VerCpb_ProductoIMAGEN: TBlobField;
    ZQ_VerCpb_ProductoMEDIDA: TStringField;
    ZQ_VerCpb_ProductoCOLOR: TStringField;
    ZQ_VerCpb_ProductoMARCA: TStringField;
    ZQ_VerCpb_ProductoARTICULO: TStringField;
    ZQ_VerCpb_ProductoTIPO_ARTICULO: TStringField;
    ZQ_VerCpb_ProductoCOD_PRODUCTO: TStringField;
    EKOrd_VerCpb: TEKOrdenarGrilla;
    EKOrd_VerCpb_Fpago: TEKOrdenarGrilla;
    EKOrd_VerCpb_Producto: TEKOrdenarGrilla;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    //------TECLAS RAPIDAS
    procedure ANuevoExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure ABajaExecute(Sender: TObject);
    procedure AReactivarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ssDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure sDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ZQ_VerCpbAfterScroll(DataSet: TDataSet);
    procedure modoEdicion(flag: boolean);
  private
    estadoPantalla: string;
  public
    { Public declarations }
  end;

var
  FABM_Comprobantes: TFABM_Comprobantes;

const
  transaccion_ABM = 'ABM COMPROBANTES';
  EDITANDO = 'EDITANDO';
  VIENDO   = 'VIENDO';

implementation

uses UPrincipal, UDM;

{$R *.dfm}

procedure TFABM_Comprobantes.modoEdicion(flag:boolean);
begin
  if flag then //si estoy en modo edicion
  begin
    estadoPantalla:= EDITANDO;
    PanelEditar.BringToFront;
    PanelEditar.Visible:= true;

    PanelVer.Visible:= false;

    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end
  else
  begin
    estadoPantalla:= VIENDO;
    PanelVer.BringToFront;
    PanelVer.Visible:= true;

    PanelEditar.Visible:= false;

    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
  end;
end;


procedure TFABM_Comprobantes.FormCreate(Sender: TObject);
begin
  modoEdicion(false);
  StaticTxtBaja.Color:= FPrincipal.baja;
  ImageListEntidad.GetBitmap(0, btnBuscarEntidad.Glyph); //cargo la imagen del boton buscar entidad

  ZQ_VerCpb.Close;
  ZQ_VerCpb.open;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFABM_Comprobantes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFABM_Comprobantes.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_Comprobantes.btnBuscarClick(Sender: TObject);
begin
//  EKbuscar.buscar;
end;


procedure TFABM_Comprobantes.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, []) then
  begin
    modoEdicion(true);

//    ZQ_TipoFPago.Append;
//    ZQ_TipoFPagoBAJA.AsString:= 'N';
//    DBENombre.SetFocus;
  end;
end;


procedure TFABM_Comprobantes.btnModificarClick(Sender: TObject);
begin
  if ZQ_VerCpb.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, []) then
  begin
    modoEdicion(true);

//    ZQ_TipoFPago.Edit;
//    DBENombre.SetFocus;
  end;
end;


procedure TFABM_Comprobantes.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
//  if (ZQ_TipoFPago.IsEmpty) OR (ZQ_TipoFPagoBAJA.AsString <> 'N') then
//    exit;
//
//  if (application.MessageBox(pchar('¿Desea dar de baja el "Tipo Medio Pago" seleccionado?'), 'ABM Tipo Medio Pago', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
//  begin
//    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoFPago]) then
//    begin
//      ZQ_TipoFPago.Edit;
//      ZQ_TipoFPagoBAJA.AsString:='S';
//    end
//    else
//      exit;
//
//    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
//      dm.EKModelo.cancelar_transaccion(transaccion_ABM);
//
//    recNo:= ZQ_TipoFPago.RecNo;
//    ZQ_TipoFPago.Refresh;
//    ZQ_TipoFPago.RecNo:= recNo;
//  end;
end;


procedure TFABM_Comprobantes.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
//  if (ZQ_TipoFPago.IsEmpty) OR (ZQ_TipoFPagoBAJA.AsString <> 'S') then
//    exit;
//
//  if (application.MessageBox(pchar('¿Desea reactivar el "Tipo Medio Pago" seleccionado?'), 'ABM Tipo Medio Pago', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
//  begin
//    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoFPago]) then
//    begin
//      ZQ_TipoFPago.Edit;
//      ZQ_TipoFPagoBAJA.AsString:='N';
//    end
//    else
//      exit;
//
//    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
//      dm.EKModelo.cancelar_transaccion(transaccion_ABM);
//
//    recNo:= ZQ_TipoFPago.RecNo;
//    ZQ_TipoFPago.Refresh;
//    ZQ_TipoFPago.RecNo:= recNo;
//  end;
end;


procedure TFABM_Comprobantes.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

//  if (trim(DBENombre.Text) = '') then
//  begin
//    Application.MessageBox('El campo "Tipo Medio Pago" se encuentra vacío, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
//    DBENombre.SetFocus;
//    exit;
//  end;
//
  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
    begin
//      DBGridTipoFPago.Enabled:= true;
//      DBGridTipoFPago.SetFocus;

      modoEdicion(false);
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFABM_Comprobantes.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
  begin
//    DBGridTipoFPago.Enabled:=true;
//    DBGridTipoFPago.SetFocus;

    modoEdicion(false);
  end;
end;


procedure TFABM_Comprobantes.btnImprimirClick(Sender: TObject);
begin
//  if ZQ_TipoFPago.IsEmpty then
//    exit;
//
//  DM.VariablesReportes(RepTipoFPago);
//  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
//  QRLabelCritBusqueda.Caption := EKBuscar.ParametrosBuscados;
//  EKVistaPrevia.VistaPrevia;
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFABM_Comprobantes.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFABM_Comprobantes.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABM_Comprobantes.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_Comprobantes.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_Comprobantes.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFABM_Comprobantes.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_Comprobantes.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------



//------------------------------------------------------------------------------
//      VISUALIZACION  DE COMPROBANTES
//------------------------------------------------------------------------------
procedure TFABM_Comprobantes.ZQ_VerCpbAfterScroll(DataSet: TDataSet);
begin
  if ZQ_VerCpb.IsEmpty then
  begin
    ZQ_VerCpb_Fpago.Close;
    ZQ_VerCpb_Producto.Close;

    exit;
  end;

  ZQ_VerCpb_Producto.Close;
  ZQ_VerCpb_Producto.ParamByName('id_comprobante').AsInteger:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
  ZQ_VerCpb_Producto.Open;

  ZQ_VerCpb_Fpago.Close;
  ZQ_VerCpb_Fpago.ParamByName('id_comprobante').AsInteger:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
  ZQ_VerCpb_Fpago.Open;
end;


//PINTAR GRILLAS VISUALIZACION
procedure TFABM_Comprobantes.ssDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if ZQ_VerCpb_Fpago.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillas(DBGridCpbActual_FPago, Rect, DataCol, Column, State);
end;


procedure TFABM_Comprobantes.sDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if ZQ_VerCpb_Producto.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillas(DBGridCpbActual_Producto, Rect, DataCol, Column, State);
end;



end.
