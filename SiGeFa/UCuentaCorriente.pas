unit UCuentaCorriente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  EKVistaPreviaQR, QRCtrls, QuickRpt, UBuscarPersona;

type
  TFCuentaCorriente = class(TForm)
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
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    PanelContenedor: TPanel;
    PanelDatosCtaCte: TPanel;
    DBGridCtaCte: TDBGrid;
    PanelEditar_DatosGralCliente: TPanel;
    DBText7: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    DBText8: TDBText;
    Label4: TLabel;
    DBText9: TDBText;
    Label5: TLabel;
    DBText10: TDBText;
    Label6: TLabel;
    DBText11: TDBText;
    Label7: TLabel;
    DBText12: TDBText;
    Label8: TLabel;
    DBText13: TDBText;
    Label9: TLabel;
    DBText14: TDBText;
    Label10: TLabel;
    DBText15: TDBText;
    Label11: TLabel;
    DBText16: TDBText;
    Label1: TLabel;
    DBText1: TDBText;
    Label12: TLabel;
    DBText2: TDBText;
    Label13: TLabel;
    DBText3: TDBText;
    PanelResumen: TPanel;
    ZQ_Cliente: TZQuery;
    DS_Cliente: TDataSource;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);    
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridMarcaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    //------TECLAS RAPIDAS
    procedure ANuevoExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure ABajaExecute(Sender: TObject);
    procedure AReactivarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    vsel: TFBuscarPersona;
    procedure onSelCliente;
  public
  end;

var
  FCuentaCorriente: TFCuentaCorriente;

const
  transaccion = 'CUENTA CORRIENTE';

implementation

uses UPrincipal, UDM;

{$R *.dfm}

procedure TFCuentaCorriente.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion);
end;


procedure TFCuentaCorriente.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFCuentaCorriente.onSelCliente;
begin
//  ZQ_Proveedores.Close;
//  ZQ_Proveedores.ParamByName('id_prov').AsInteger:= vsel.ZQ_ProveedoresID_PROVEEDOR.AsInteger;
//  ZQ_Proveedores.Open;

  vsel.Close;
end;


procedure TFCuentaCorriente.btnBuscarClick(Sender: TObject);
begin
  if not Assigned(vsel) then
    vsel:= TFBuscarPersona.Create(nil);
  vsel.configCliente;
  vsel.btnBuscar.Click;
  vsel.OnSeleccionar := onSelCliente;
  vsel.ShowModal;
  
  if (not (vsel.ZQ_Personas.IsEmpty)) then //si se selecciona un cliente
  begin
//    porComprobante:= true;
//    ctacte_simple:= false;
//    DBGridCtaCte.DataSource:= DS_CtaCteProveedor;
//    ZS_CtaCteProveedor.Close;
//    ZS_CtaCteProveedor.ParamByName('ID_PROVEEDOR').AsInteger:= vsel.ZQ_ProveedoresID_PROVEEDOR.AsInteger;
//    ZS_CtaCteProveedor.ParamByName('TIPO').AsInteger:= 1;
//    ZS_CtaCteProveedor.Open;

//    porFechaCarga:= true;
//    porComprobante:= false;
//    ctacte_simple:= false;
//    btnAceptarFiltro.Click;
  end;
end;


procedure TFCuentaCorriente.btnNuevoClick(Sender: TObject);
begin
//  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Marcas]) then
//  begin
//    DBGridMarca.Enabled := false;
//    PanelEdicion.Visible:= true;
//
//    ZQ_UltimoNro.Close;
//    ZQ_UltimoNro.Open;
//
//    ZQ_Marcas.Append;
//    ZQ_MarcasBAJA.AsString:= 'N';
//    if ZQ_UltimoNro.IsEmpty then
//      ZQ_MarcasCODIGO_MARCA.AsInteger:= 1
//    else
//      ZQ_MarcasCODIGO_MARCA.AsInteger:= ZQ_UltimoNroCODIGO_MARCA.AsInteger + 1;
//
//    DBECodigo.SetFocus;
//    GrupoEditando.Enabled := false;
//    GrupoGuardarCancelar.Enabled := true;
//  end;
end;


procedure TFCuentaCorriente.btnModificarClick(Sender: TObject);
begin
//  if (ZQ_Marcas.IsEmpty) or (ZQ_MarcasID_MARCA.AsInteger = 0) then
//    exit;
//
//  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Marcas]) then
//  begin
//    DBGridMarca.Enabled := false;
//    PanelEdicion.Visible:= true;
//
//    ZQ_Marcas.Edit;
//    if ZQ_MarcasCODIGO_MARCA.IsNull then
//    begin
//      ZQ_UltimoNro.Close;
//      ZQ_UltimoNro.Open;
//      if ZQ_UltimoNro.IsEmpty then
//        ZQ_MarcasCODIGO_MARCA.AsInteger:= 1
//      else
//        ZQ_MarcasCODIGO_MARCA.AsInteger:= ZQ_UltimoNroCODIGO_MARCA.AsInteger + 1;
//    end;
//
//    DBECodigo.SetFocus;
//    GrupoEditando.Enabled := false;
//    GrupoGuardarCancelar.Enabled := true;
//  end;
end;


procedure TFCuentaCorriente.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
//  if (ZQ_Marcas.IsEmpty) OR (ZQ_MarcasBAJA.AsString <> 'N') or (ZQ_MarcasID_MARCA.AsInteger = 0)then
//    exit;
//
//  if (application.MessageBox(pchar('¿Desea dar de baja la "Marca" seleccionada?'), 'ABM Marcas', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
//  begin
//    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Marcas]) then
//    begin
//      ZQ_Marcas.Edit;
//      ZQ_MarcasBAJA.AsString:='S';
//    end
//    else
//      exit;
//
//    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
//      dm.EKModelo.cancelar_transaccion(transaccion_ABM);
//
//    recNo:= ZQ_Marcas.RecNo;
//    ZQ_Marcas.Refresh;
//    ZQ_Marcas.RecNo:= recNo;
//  end;
end;


procedure TFCuentaCorriente.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
//  if (ZQ_Marcas.IsEmpty) OR (ZQ_MarcasBAJA.AsString <> 'S') or (ZQ_MarcasID_MARCA.AsInteger = 0) then
//    exit;
//
//  if (application.MessageBox(pchar('¿Desea reactivar la "Marca" seleccionada?'), 'ABM Marcas', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
//  begin
//    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Marcas]) then
//    begin
//      ZQ_Marcas.Edit;
//      ZQ_MarcasBAJA.AsString:='N';
//    end
//    else
//      exit;
//
//    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
//      dm.EKModelo.cancelar_transaccion(transaccion_ABM);
//
//    recNo:= ZQ_Marcas.RecNo;
//    ZQ_Marcas.Refresh;
//    ZQ_Marcas.RecNo:= recNo;
//  end;
end;


procedure TFCuentaCorriente.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
//  Perform(WM_NEXTDLGCTL, 0, 0);
//
//  if (trim(DBECodigo.Text) = '') then
//  begin
//    Application.MessageBox('El campo "Código" se encuentra vacío, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
//    DBECodigo.SetFocus;
//    exit;
//  end;
//
//  if (trim(DBENombre.Text) = '') then
//  begin
//    Application.MessageBox('El campo "Marca" se encuentra vacío, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
//    DBENombre.SetFocus;
//    exit;
//  end;
//
//  try
//    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
//    begin
//      DBGridMarca.Enabled:= true;
//      DBGridMarca.SetFocus;
//      GrupoEditando.Enabled := true;
//      GrupoGuardarCancelar.Enabled := false;
//      PanelEdicion.Visible := false;
//      recNo:= ZQ_Marcas.RecNo;
//      ZQ_Marcas.Refresh;
//      ZQ_Marcas.RecNo:= recNo;
//    end
//  except
//    begin
//      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
//      exit;
//    end
//  end;
//
//  dm.mostrarCantidadRegistro(ZQ_Marcas, lblCantidadRegistros);
end;


procedure TFCuentaCorriente.btnCancelarClick(Sender: TObject);
begin
//  if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
//  begin
//    DBGridMarca.Enabled:=true;
//    DBGridMarca.SetFocus;
//    GrupoEditando.Enabled := true;
//    GrupoGuardarCancelar.Enabled := false;
//    PanelEdicion.Visible := false;
//  end;
end;


procedure TFCuentaCorriente.FormCreate(Sender: TObject);
begin
//  StaticTxtBaja.Color:= FPrincipal.baja;
//
//  ZQ_Marcas.Close;
//  ZQ_Marcas.open;
//
//  dm.mostrarCantidadRegistro(ZQ_Marcas, lblCantidadRegistros);
end;


procedure TFCuentaCorriente.DBGridMarcaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFCuentaCorriente.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFCuentaCorriente.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFCuentaCorriente.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFCuentaCorriente.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFCuentaCorriente.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFCuentaCorriente.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFCuentaCorriente.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------





procedure TFCuentaCorriente.btnImprimirClick(Sender: TObject);
begin
//  if ZQ_Marcas.IsEmpty then
//    exit;
//
//  DM.VariablesReportes(RepMarca);
//  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
//  QRLabelCritBusqueda.Caption := EKBuscar.ParametrosBuscados;
//  EKVistaPrevia.VistaPrevia;
end;

end.
