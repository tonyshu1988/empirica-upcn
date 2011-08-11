unit UCuentaCorriente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  EKVistaPreviaQR, QRCtrls, QuickRpt, UBuscarPersona, EKEdit, Buttons,
  EKDbSuma;

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
    PanelCliente: TPanel;
    PanelCliente_CtaCte: TPanel;
    DBGridCliente_CtaCte: TDBGrid;
    PanelCliente_Datos: TPanel;
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
    PanelCliente_Resumen: TPanel;
    ZQ_Cliente: TZQuery;
    DS_Cliente: TDataSource;
    ZQ_ClienteID_PERSONA: TIntegerField;
    ZQ_ClienteID_PROVINCIA: TIntegerField;
    ZQ_ClienteID_TIPO_DOC: TIntegerField;
    ZQ_ClienteID_TIPO_IVA: TIntegerField;
    ZQ_ClienteNOMBRE: TStringField;
    ZQ_ClienteDIRECCION: TStringField;
    ZQ_ClienteLOCALIDAD: TStringField;
    ZQ_ClienteCODIGO_POSTAL: TStringField;
    ZQ_ClienteTELEFONO: TStringField;
    ZQ_ClienteEMAIL: TStringField;
    ZQ_ClienteFECHA_NACIMIENTO: TDateField;
    ZQ_ClienteNUMERO_DOC: TStringField;
    ZQ_ClienteSEXO: TStringField;
    ZQ_ClienteBAJA: TStringField;
    ZQ_ClienteDESCRIPCION: TStringField;
    ZQ_ClienteCUIT_CUIL: TStringField;
    ZQ_ClienteDESCUENTO_ESPECIAL: TFloatField;
    ZQ_ClienteCODIGO_CORTO: TIntegerField;
    ZQ_ClienteNOMBRE_PROVINCIA: TStringField;
    ZQ_ClienteNOMBRE_TIPO_IVA: TStringField;
    ZQ_ClienteCOD_IVA: TStringField;
    ZQ_ClienteNOMBRE_TIPO_DOC: TStringField;
    ZQ_ClienteID_CTA_CTE: TIntegerField;
    ZQ_ClienteSALDO: TFloatField;
    ZQ_ClienteLIMITE_DEUDA: TFloatField;
    ZQ_ClienteFECHA_ALTA: TDateField;
    ZQ_ClienteFECHA_BAJA: TDateField;
    PanelResumen: TPanel;
    PanelResumen_Abajo: TPanel;
    DBGridResumen_CtaCtes: TDBGrid;
    PanelResumen_Arriba: TPanel;
    ZQ_CtaCte_Gral: TZQuery;
    ZQ_CtaCte_GralID_PERSONA: TIntegerField;
    ZQ_CtaCte_GralLIMITE_DEUDA: TFloatField;
    ZQ_CtaCte_GralSALDO: TFloatField;
    ZQ_CtaCte_GralFECHA_ALTA: TDateField;
    ZQ_CtaCte_GralFECHA_BAJA: TDateField;
    ZQ_CtaCte_GralDEBE: TFloatField;
    ZQ_CtaCte_GralHABER: TFloatField;
    ZQ_CtaCte_GralNOMBRE: TStringField;
    ZQ_CtaCte_GralNUMERO_DOC: TStringField;
    ZQ_CtaCte_GralLOCALIDAD: TStringField;
    ZQ_CtaCte_GralCODIGO_POSTAL: TStringField;
    ZQ_CtaCte_GralCUIT_CUIL: TStringField;
    ZQ_CtaCte_GralBAJA: TStringField;
    ZQ_CtaCte_GralNOMBRE_PROVINCIA: TStringField;
    ZQ_CtaCte_GralNOMBRE_TIPO_IVA: TStringField;
    ZQ_CtaCte_GralCOD_IVA: TStringField;
    ZQ_CtaCte_GralNOMBRE_TIPO_DOC: TStringField;
    DS_CtaCte_Gral: TDataSource;
    ZQ_CtaCte_Cliente: TZQuery;
    ZQ_CtaCte_ClienteID_COMPROBANTE: TIntegerField;
    ZQ_CtaCte_ClienteID_CUENTA: TIntegerField;
    ZQ_CtaCte_ClienteID_VENDEDOR: TIntegerField;
    ZQ_CtaCte_ClienteID_TIPO_IVA: TIntegerField;
    ZQ_CtaCte_ClienteID_TIPO_FP: TIntegerField;
    ZQ_CtaCte_ClienteFECHA: TDateTimeField;
    ZQ_CtaCte_ClienteOBSERVACION: TStringField;
    ZQ_CtaCte_ClienteFECHA_FP: TDateTimeField;
    ZQ_CtaCte_ClienteDEBE: TFloatField;
    ZQ_CtaCte_ClienteHABER: TFloatField;
    ZQ_CtaCte_ClienteSALDO_CPB: TFloatField;
    DS_CtaCte_Cliente: TDataSource;
    EKOrdenar_CtaCteGral: TEKOrdenarGrilla;
    EKOrdenar_CtaCteCliente: TEKOrdenarGrilla;
    ZQ_CtaCte_GralCODIGO_CORTO: TIntegerField;
    ZQ_CtaCte_ClienteTIPO_COMPROBANTE: TStringField;
    EKEditTotalRegistros: TEKEdit;
    EKEditDebe: TEKEdit;
    EKEditHaber: TEKEdit;
    EKEditSaldo: TEKEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    PanelFiltro: TPanel;
    BtnFiltro_Todos: TSpeedButton;
    BtnFiltro_Hoy: TSpeedButton;
    BtnFiltro_EstaSemana: TSpeedButton;
    BtnFiltro_EsteMes: TSpeedButton;
    BtnFiltro_EsteAnio: TSpeedButton;
    Label39: TLabel;
    EKDbSumaCtaCte_Cliente: TEKDbSuma;
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
    //------TECLAS RAPIDAS
    procedure ANuevoExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure ABajaExecute(Sender: TObject);
    procedure AReactivarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);

    procedure btnImprimirClick(Sender: TObject);
    procedure DBGridResumen_CtaCtesDblClick(Sender: TObject);
    procedure AplicarFiltro(Sender: TObject);
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

uses UPrincipal, UDM, DateUtils;

{$R *.dfm}

procedure TFCuentaCorriente.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  EKOrdenar_CtaCteGral.GuardarConfigColumnas;
  EKOrdenar_CtaCteCliente.GuardarConfigColumnas;

  CanClose:= FPrincipal.cerrar_ventana(transaccion);
end;


procedure TFCuentaCorriente.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFCuentaCorriente.onSelCliente;
begin
  if (not (vsel.ZQ_Personas.IsEmpty)) then //si se selecciona un cliente
  begin
    ZQ_CtaCte_Gral.Close;
    ZQ_CtaCte_Gral.ParamByName('id_cliente').AsInteger:= vsel.ZQ_PersonasID_PERSONA.AsInteger;
    ZQ_CtaCte_Gral.Open;
  end;

  vsel.Close;
end;


procedure TFCuentaCorriente.btnBuscarClick(Sender: TObject);
begin
  if not Assigned(vsel) then
    vsel:= TFBuscarPersona.Create(nil);
  vsel.configRelacion(RELACION_CLIENTE);
  vsel.btnBuscar.Click;
  vsel.OnSeleccionar := onSelCliente;
  vsel.ShowModal;
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
  EKOrdenar_CtaCteGral.CargarConfigColumnas;
  EKOrdenar_CtaCteCliente.CargarConfigColumnas;

  PanelResumen.BringToFront;

  ZQ_CtaCte_Gral.Close;
  ZQ_CtaCte_Gral.ParamByName('id_cliente').AsInteger:= -1;
  ZQ_CtaCte_Gral.Open;

//  StaticTxtBaja.Color:= FPrincipal.baja;
//
//  ZQ_Marcas.Close;
//  ZQ_Marcas.open;
//
//  dm.mostrarCantidadRegistro(ZQ_Marcas, lblCantidadRegistros);
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
  ZQ_Cliente.Close;
  PanelResumen.BringToFront;

//  if ZQ_Marcas.IsEmpty then
//    exit;
//
//  DM.VariablesReportes(RepMarca);
//  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
//  QRLabelCritBusqueda.Caption := EKBuscar.ParametrosBuscados;
//  EKVistaPrevia.VistaPrevia;
end;


procedure TFCuentaCorriente.DBGridResumen_CtaCtesDblClick(Sender: TObject);
begin
  PanelCliente.BringToFront;

  ZQ_Cliente.Close;
  ZQ_Cliente.ParamByName('id_persona').AsInteger:= ZQ_CtaCte_GralID_PERSONA.AsInteger;
  ZQ_Cliente.Open;

  AplicarFiltro(BtnFiltro_Todos);
end;


procedure TFCuentaCorriente.AplicarFiltro(Sender: TObject);
var
  hoy: Tdate;
  diasDesdeUltimaSemana, diasDesdeUltimoMes, diasDesdeUltimoAnio: integer;
  debe, haber, saldo: Double;
begin
  hoy:= dm.EKModelo.Fecha;

  ZQ_CtaCte_Cliente.Close;
  ZQ_CtaCte_Cliente.ParamByName('id_persona').AsInteger:= ZQ_CtaCte_GralID_PERSONA.AsInteger;
  ZQ_CtaCte_Cliente.ParamByName('id_sucursal').AsInteger:= SUCURSAL_LOGUEO;

  if TSpeedButton (Sender).Name = 'BtnFiltro_Todos' then
  begin
    ZQ_CtaCte_Cliente.ParamByName('fecha_desde').AsDate:= EncodeDate(1000,1,1);
    ZQ_CtaCte_Cliente.ParamByName('fecha_hasta').AsDate:= EncodeDate(3000,1,1);
  end;

  if TSpeedButton (Sender).Name = 'BtnFiltro_Hoy' then
  begin
    ZQ_CtaCte_Cliente.ParamByName('fecha_desde').AsDate:= hoy;
    ZQ_CtaCte_Cliente.ParamByName('fecha_hasta').AsDate:= hoy;
  end;

  if TSpeedButton (Sender).Name = 'BtnFiltro_EstaSemana' then //la semana comienza el lunesa
  begin
    diasDesdeUltimaSemana:= DayOfTheWeek(hoy) - 1;
    ZQ_CtaCte_Cliente.ParamByName('fecha_desde').AsDate:= IncDay(hoy, -diasDesdeUltimaSemana);
    ZQ_CtaCte_Cliente.ParamByName('fecha_hasta').AsDate:= hoy;
  end;

  if TSpeedButton (Sender).Name = 'BtnFiltro_EsteMes' then
  begin
    ZQ_CtaCte_Cliente.ParamByName('fecha_desde').AsDate:= EncodeDate(YearOf(hoy), MonthOf(hoy), 1);
    ZQ_CtaCte_Cliente.ParamByName('fecha_hasta').AsDate:= hoy;
  end;

  if TSpeedButton (Sender).Name = 'BtnFiltro_EsteAnio' then
  begin
    ZQ_CtaCte_Cliente.ParamByName('fecha_desde').AsDate:= EncodeDate(YearOf(hoy), 1, 1);
    ZQ_CtaCte_Cliente.ParamByName('fecha_hasta').AsDate:= hoy;
  end;

  //ShowMessage(DateToStr(ZQ_CtaCte_Cliente.ParamByName('fecha_desde').AsDate)+' - '+DateToStr(ZQ_CtaCte_Cliente.ParamByName('fecha_hasta').AsDate));

  ZQ_CtaCte_Cliente.Open;

  EKDbSumaCtaCte_Cliente.RecalcAll;

  EKEditTotalRegistros.Text:= IntToStr(ZQ_CtaCte_Cliente.RecordCount);
  EKEditDebe.Text:=  FormatFloat('$ ###,###,##0.00', EKDbSumaCtaCte_Cliente.SumCollection.Items[0].SumValue);
  EKEditHaber.Text:= FormatFloat('$ ###,###,##0.00', EKDbSumaCtaCte_Cliente.SumCollection.Items[1].SumValue);
  EKEditSaldo.Text:= FormatFloat('$ ###,###,##0.00', EKDbSumaCtaCte_Cliente.SumCollection.Items[2].SumValue);
end;
end.
