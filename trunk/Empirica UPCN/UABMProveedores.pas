unit UABMProveedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, StdCtrls, DBCtrls, Mask, ExtCtrls, Grids,
  DBGrids, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZSqlUpdate,
  EKBusquedaAvanzada, QuickRpt, QRCtrls, EKVistaPreviaQR, EKOrdenarGrilla,
  ComCtrls, DBClient, Provider, ZStoredProcedure;

type
  TFABMProveedores = class(TForm)
    DBGridProveedores: TDBGrid;
    dxBarABM: TdxBarManager;
    BtNuevo: TdxBarLargeButton;
    BtModificar: TdxBarLargeButton;
    btBaja: TdxBarLargeButton;
    btBuscar: TdxBarLargeButton;
    BtGuardar: TdxBarLargeButton;
    BtCancelar: TdxBarLargeButton;
    btReactivar: TdxBarLargeButton;
    btVerDetalle: TdxBarLargeButton;
    btBajar: TdxBarLargeButton;
    bt_salir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PanelContenedor: TPanel;
    ZQ_IE_Proveedores: TZQuery;
    DS_IE_Proveedores: TDataSource;
    ZQ_TipoDocumento: TZQuery;
    DS_TipoDocumento: TDataSource;
    EKBusquedaAvanzada1: TEKBusquedaAvanzada;
    PBusqueda: TPanel;
    Label4: TLabel;
    StaticText3: TStaticText;
    btImprimir: TdxBarLargeButton;
    RepProv: TQuickRep;
    QRBand7: TQRBand;
    QRBand10: TQRBand;
    QRDBText53: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText69: TQRDBText;
    ChildBand1: TQRChildBand;
    QRLabel18: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    EKVistaPreviaQR1: TEKVistaPreviaQR;
    ZQ_TipoDocumentoTIPO_DOCUMENTO: TIntegerField;
    ZQ_TipoDocumentoDESCRIPCION: TStringField;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    QRDBImage1: TQRDBImage;
    QRLabel11: TQRLabel;
    RepProv_Reporte_Titulo_2: TQRLabel;
    RepProv_Reporte_Titulo_1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel24: TQRLabel;
    QRSysData2: TQRSysData;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel_edicion: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label16: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBENombreApellido: TDBEdit;
    DBENombreFantasia: TDBEdit;
    DBETelefono: TDBEdit;
    DBEDireccion: TDBEdit;
    DBENroDocumento: TDBEdit;
    DBEEmail: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    dbDatosAdic: TDBMemo;
    GBoxCuentasAsig: TGroupBox;
    GBoxConceptosAsig: TGroupBox;
    Provider_Conceptos: TDataSetProvider;
    Provider_CuentasA: TDataSetProvider;
    CD_Conceptos: TClientDataSet;
    DS_Conceptos: TDataSource;
    ZQ_Conceptos: TZQuery;
    DBGridConceptos: TDBGrid;
    DBGridCuentas: TDBGrid;
    ZQ_CuentasA: TZQuery;
    DS_CuentasA: TDataSource;
    CD_CuentasA: TClientDataSet;
    ZQ_IE_ProveedoresNRO_PROVEEDOR: TIntegerField;
    ZQ_IE_ProveedoresAPELLIDO_Y_NOMBRE: TStringField;
    ZQ_IE_ProveedoresNOMBRE_FANTASIA: TStringField;
    ZQ_IE_ProveedoresDIRECCION: TStringField;
    ZQ_IE_ProveedoresTIPO_DOCUMENTO: TStringField;
    ZQ_IE_ProveedoresNRO_DOCUMENTO: TStringField;
    ZQ_IE_ProveedoresTELEFONOS: TStringField;
    ZQ_IE_ProveedoresEMAIL: TStringField;
    ZQ_IE_ProveedoresBAJA: TStringField;
    ZQ_IE_ProveedoresDESCRIPCION: TStringField;
    ZQ_IE_ProveedoresEDITABLE: TStringField;
    ZQ_IE_ProveedoresID_CUENTA: TIntegerField;
    ZQ_CuentasAID_CUENTA: TIntegerField;
    ZQ_CuentasANOMBRE_CUENTA: TStringField;
    ZQ_CuentasAMEDIO_DE_PAGO: TStringField;
    ZQ_CuentasANRO_CUENTA_BANCARIA: TStringField;
    ZQ_CuentasAULTIMO_NRO: TIntegerField;
    ZQ_CuentasAAUTONUMERAR: TStringField;
    ZQ_CuentasAMEDIO_POR_DEFECTO: TIntegerField;
    ZQ_CuentasACOLOR_CONSILIADO: TStringField;
    ZQ_CuentasAID_PROVEEDOR: TIntegerField;
    CD_CuentasAID_CUENTA: TIntegerField;
    CD_CuentasANOMBRE_CUENTA: TStringField;
    CD_CuentasAMEDIO_DE_PAGO: TStringField;
    CD_CuentasANRO_CUENTA_BANCARIA: TStringField;
    CD_CuentasAULTIMO_NRO: TIntegerField;
    CD_CuentasAAUTONUMERAR: TStringField;
    CD_CuentasAMEDIO_POR_DEFECTO: TIntegerField;
    CD_CuentasACOLOR_CONSILIADO: TStringField;
    CD_CuentasAID_PROVEEDOR: TIntegerField;
    ZQ_ConceptosID_CONCEPTO: TIntegerField;
    ZQ_ConceptosCOD_CORTO: TStringField;
    ZQ_ConceptosNOMBRE_CONCEPTO: TStringField;
    ZQ_ConceptosBAJA: TStringField;
    ZQ_ConceptosIMPORTE: TFloatField;
    ZQ_ConceptosEDITABLE: TStringField;
    ZQ_ConceptosID_PROVEEDOR: TIntegerField;
    CD_ConceptosID_CONCEPTO: TIntegerField;
    CD_ConceptosCOD_CORTO: TStringField;
    CD_ConceptosNOMBRE_CONCEPTO: TStringField;
    CD_ConceptosBAJA: TStringField;
    CD_ConceptosIMPORTE: TFloatField;
    CD_ConceptosEDITABLE: TStringField;
    CD_ConceptosID_PROVEEDOR: TIntegerField;
    EKOrdenarCuentas: TEKOrdenarGrilla;
    EKOrdenarConceptos: TEKOrdenarGrilla;
    ZQ_Insertar: TZQuery;
    ZQ_Borrar: TZQuery;
    Nro_Proveedor: TZStoredProc;
    Nro_ProveedorID: TIntegerField;
    Label8: TLabel;
    DBTipo: TDBLookupComboBox;
    ZQ_TipoProveedor: TZQuery;
    DS_TipoProveedor: TDataSource;
    ZQ_TipoProveedorID_TIPO: TIntegerField;
    ZQ_TipoProveedorDESCRIPCION: TStringField;
    ZQ_IE_ProveedoresID_TIPO: TIntegerField;
    Label9: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    ZQ_CondicIVA: TZQuery;
    DS_CondicIVA: TDataSource;
    ZQ_CondicIVAID_TIPO_IVA: TIntegerField;
    ZQ_CondicIVADESCRIPCION: TStringField;
    ZQ_IE_ProveedoresID_TIPO_IVA: TIntegerField;
    procedure bt_salirClick(Sender: TObject);
    procedure BtNuevoClick(Sender: TObject);
    procedure BtModificarClick(Sender: TObject);
    procedure btBajaClick(Sender: TObject);
    procedure btReactivarClick(Sender: TObject);
    procedure BtGuardarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridProveedoresDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btImprimirClick(Sender: TObject);
    function validarcampos():boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ZQ_IE_ProveedoresAfterScroll(DataSet: TDataSet);
    procedure btVerDetalleClick(Sender: TObject);
    procedure actualizar_permisos(id_proveedor: integer);
    procedure grabar_permisos;
    procedure DBGridCuentasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridConceptosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridConceptosDblClick(Sender: TObject);
    procedure DBGridCuentasDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABMProveedores: TFABMProveedores;

const

  transaccion_ABMProveedores = 'ABM PROVEEDORES';

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFABMProveedores.bt_salirClick(Sender: TObject);
begin
  close;
end;


procedure TFABMProveedores.BtNuevoClick(Sender: TObject);
var
  id_proveedor: integer;
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABMProveedores, [ZQ_IE_Proveedores]) then
  begin
    DBGridProveedores.Enabled := false;
    PageControl1.Visible:= true;
    PageControl1.ActivePageIndex:= 0;
    Panel_edicion.Enabled:= true;

    Nro_Proveedor.Active := true;   //obtengo el numero de movimiento
    id_proveedor := Nro_ProveedorID.AsInteger;
    Nro_Proveedor.Active := false;

    ZQ_IE_Proveedores.Append;
    ZQ_IE_ProveedoresNRO_PROVEEDOR.AsInteger:= id_proveedor;
    ZQ_IE_ProveedoresBAJA.AsString:= 'N';
    actualizar_permisos(id_proveedor);

    DBENombreApellido.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABMProveedores.BtModificarClick(Sender: TObject);
begin
  if (ZQ_IE_Proveedores.IsEmpty) OR (ZQ_IE_ProveedoresEDITABLE.AsString='N') then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABMProveedores, [ZQ_IE_Proveedores]) then
  begin
    Panel_edicion.Enabled:= true;  
    DBGridProveedores.Enabled := false;
    PageControl1.Visible:=true;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABMProveedores.btBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if ZQ_IE_Proveedores.IsEmpty OR (ZQ_IE_ProveedoresEDITABLE.AsString='N') then
    exit;

  if (application.MessageBox(pchar('�Desea dar de baja el Proveedor?'), 'ABM Proveedores', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABMProveedores, [ZQ_IE_Proveedores]) then
    begin
      ZQ_IE_Proveedores.Edit;
      ZQ_IE_ProveedoresBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABMProveedores)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABMProveedores);

    recNo:= ZQ_IE_Proveedores.RecNo;
    ZQ_IE_Proveedores.Refresh;
    ZQ_IE_Proveedores.RecNo:= recNo;
  end;
end;


procedure TFABMProveedores.btReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if ZQ_IE_Proveedores.IsEmpty then
    exit;

  if (application.MessageBox(pchar('�Desea Reactivar el Proveedor?'), 'ABM Proveedores', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABMProveedores, [ZQ_IE_Proveedores]) then
    begin
      ZQ_IE_Proveedores.Edit;
      ZQ_IE_ProveedoresBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABMProveedores)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABMProveedores);

    recNo:= ZQ_IE_Proveedores.RecNo;
    ZQ_IE_Proveedores.Refresh;
    ZQ_IE_Proveedores.RecNo:= recNo;
  end;
end;


procedure TFABMProveedores.BtGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
if validarcampos() then
 begin
  //grabar_permisos;
  if DM.EKModelo.finalizar_transaccion(transaccion_ABMProveedores) then
  begin
    DBGridProveedores.Enabled := true;
    Panel_edicion.Enabled:= False;    
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    recNo:= ZQ_IE_Proveedores.RecNo;
    ZQ_IE_Proveedores.Refresh;
    ZQ_IE_Proveedores.RecNo:= recNo;
    actualizar_permisos(ZQ_IE_ProveedoresNRO_PROVEEDOR.AsInteger);
  end;
 end
end;


procedure TFABMProveedores.BtCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_ABMProveedores) then
  begin
    Panel_edicion.Enabled:= false;
    DBGridProveedores.Enabled := true;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    actualizar_permisos(ZQ_IE_ProveedoresNRO_PROVEEDOR.AsInteger);
  end;
end;


procedure TFABMProveedores.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABMProveedores) then
  begin
    if not (application.MessageBox(pchar('Si continua con el cierre se perderan los cambios realizados.'+#13+#13+'�Salir de todos modos?'),'Atenci�n', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      canClose := False
    else
      dm.EKModelo.cancelar_transaccion(transaccion_ABMProveedores);
  end;
end;


procedure TFABMProveedores.btBuscarClick(Sender: TObject);
begin
  EKBusquedaAvanzada1.Buscar;
end;


procedure TFABMProveedores.FormCreate(Sender: TObject);
begin
//  EKOrdenarGrilla1.CargarConfigColunmas;
  dm.EKModelo.abrir(ZQ_TipoDocumento);
  dm.EKModelo.abrir(ZQ_TipoProveedor);
  dm.EKModelo.abrir(ZQ_CondicIVA);
  EKBusquedaAvanzada1.Abrir;
  PageControl1.ActivePageIndex:= 0;
end;


procedure TFABMProveedores.DBGridProveedoresDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not ZQ_IE_Proveedores.IsEmpty then
    begin
       if (ZQ_IE_ProveedoresBAJA.Value='S') then
          begin
           DBGridProveedores.Canvas.Brush.Color :=StaticText3.Brush.Color;
           DBGridProveedores.Canvas.Font.Color := clBlack;
           DBGridProveedores.Canvas.Font.Style := DBGridProveedores.Canvas.Font.Style + [fsBold];
           if (gdFocused in State) or (gdSelected in State) then
             begin
             DBGridProveedores.Canvas.Font.Color := clwhite;
             end
          end
       else
          begin
            if (gdFocused in State) or (gdSelected in State) then
             begin
               DBGridProveedores.Canvas.Font.Color := clwhite;
               DBGridProveedores.Canvas.Brush.Color:=clBlue;
               DBGridProveedores.Canvas.Font.Style := DBGridProveedores.Canvas.Font.Style + [fsBold];
             end;
          end;
       DBGridProveedores.DefaultDrawColumnCell(rect,datacol,column,state);
    end;
end;


procedure TFABMProveedores.btImprimirClick(Sender: TObject);
begin
  if ZQ_IE_Proveedores.IsEmpty then
    exit;

  dm.VariablesReportes(RepProv);
  EKVistaPreviaQR1.VistaPrevia;
end;


function TFABMProveedores.validarcampos():boolean;
begin
   result := true;

   if (DBENombreApellido.Text = '') then
    begin
      Application.MessageBox('El campo "Nombre y Apellido" se encuentra vac�o, por favor Verifique','Validaci�n',MB_OK+MB_ICONINFORMATION);
      PageControl1.ActivePageIndex:= 0;
      DBENombreApellido.SetFocus;
      result := false;
      exit;
    end;

  if (DBENombreFantasia.Text = '') then
    begin
      Application.MessageBox('El campo "Nombre de Fantas�a" se encuentra vac�o, por favor Verifique','Validaci�n',MB_OK+MB_ICONINFORMATION);
      PageControl1.ActivePageIndex:= 0;
      DBENombreFantasia.SetFocus;
      result := false;
      exit;
    end;
  if (DBTipo.Text = '') then
    begin
      Application.MessageBox('El campo "Tipo" se encuentra vac�o, por favor Verifique','Validaci�n',MB_OK+MB_ICONINFORMATION);
      PageControl1.ActivePageIndex:= 0;
      DBTipo.SetFocus;
      result := false;
      exit;
    end;
end;


procedure TFABMProveedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenarGrilla1.GuardarConfigColumnas;
end;


procedure TFABMProveedores.ZQ_IE_ProveedoresAfterScroll(DataSet: TDataSet);
begin
  if ZQ_IE_ProveedoresBAJA.AsString = 'S' then
  begin
    btBaja.Enabled:= false;
    btReactivar.Enabled:= true;
  end
  else
  if ZQ_IE_ProveedoresBAJA.AsString = 'N' then
  begin
    btBaja.Enabled:= true;
    btReactivar.Enabled:= false;
  end;

  actualizar_permisos(ZQ_IE_ProveedoresNRO_PROVEEDOR.AsInteger);
end;


procedure TFABMProveedores.btVerDetalleClick(Sender: TObject);
begin
  PageControl1.Visible:= not(PageControl1.Visible);
end;


procedure TFABMProveedores.actualizar_permisos(id_proveedor: integer);
begin
//  if ZQ_IE_Proveedores.State = dsBrowse then
//  begin
    CD_Conceptos.Active := false;
    ZQ_Conceptos.Active := false;
    ZQ_Conceptos.ParamByName('proveedor').AsInteger:= id_proveedor;
    ZQ_Conceptos.Active := true;
    CD_Conceptos.Active := true;

    CD_CuentasA.Active := false;
    ZQ_CuentasA.Active := false;
    ZQ_CuentasA.ParamByName('proveedor').AsInteger:= id_proveedor;
    ZQ_CuentasA.Active := true;
    CD_CuentasA.Active := true;
//  end;
end;


procedure TFABMProveedores.DBGridCuentasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not (CD_CuentasA.FieldByName('ID_PROVEEDOR').IsNull) then
  begin
    DBGridCuentas.Canvas.Brush.Color := $008DC08D;
    DBGridCuentas.Canvas.Font.Style := DBGridCuentas.Canvas.Font.Style + [fsBold];
  end;
  DBGridCuentas.DefaultDrawColumnCell(rect,datacol,column,state);
end;


procedure TFABMProveedores.DBGridConceptosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not (CD_Conceptos.FieldByName('ID_PROVEEDOR').IsNull) then
  begin
    DBGridConceptos.Canvas.Brush.Color := $008DC08D;
    DBGridConceptos.Canvas.Font.Style := DBGridConceptos.Canvas.Font.Style + [fsBold];
  end;
  DBGridConceptos.DefaultDrawColumnCell(rect,datacol,column,state);
end;


procedure TFABMProveedores.DBGridConceptosDblClick(Sender: TObject);
var
  id_proveedor, id_concepto: string;
begin
  id_proveedor:= ZQ_IE_ProveedoresNRO_PROVEEDOR.AsString;
  id_concepto:= CD_ConceptosID_CONCEPTO.AsString;

  if dm.EKModelo.verificar_transaccion(transaccion_ABMProveedores) then
  begin
    if CD_ConceptosID_PROVEEDOR.IsNull then //ai no esta asignado
    begin
      CD_Conceptos.Edit;
      CD_Conceptos.FieldByName('ID_PROVEEDOR').AsInteger := ZQ_IE_ProveedoresNRO_PROVEEDOR.AsInteger;
      CD_Conceptos.Post;

      ZQ_Insertar.SQL.Text:= 'insert into proveedor_concepto (id_proveedor, id_concepto) values ('+id_proveedor+', '+id_concepto+')';
      ZQ_Insertar.ExecSQL;
    end
    else
    begin
      CD_Conceptos.Edit;
      CD_Conceptos.FieldByName('ID_PROVEEDOR').Clear;
      CD_Conceptos.Post;

      ZQ_Borrar.SQL.Text:= 'delete from proveedor_concepto where (id_proveedor = '+id_proveedor+' and id_concepto = '+id_concepto+')';
      ZQ_Borrar.ExecSQL;
    end;
  end;
end;


procedure TFABMProveedores.DBGridCuentasDblClick(Sender: TObject);
var
  id_proveedor, id_cuenta: string;
begin
  id_proveedor:= ZQ_IE_ProveedoresNRO_PROVEEDOR.AsString;
  id_cuenta:= CD_CuentasAID_CUENTA.AsString;

  if dm.EKModelo.verificar_transaccion(transaccion_ABMProveedores) then
  begin
    if CD_CuentasAID_PROVEEDOR.IsNull then //Si no esta asignado
    begin
      CD_CuentasA.Edit;
      CD_CuentasA.FieldByName('ID_PROVEEDOR').AsInteger := ZQ_IE_ProveedoresNRO_PROVEEDOR.AsInteger;
      CD_CuentasA.Post;

      ZQ_Insertar.SQL.Text:= 'insert into proveedor_cuenta (id_proveedor, id_cuenta) values ('+id_proveedor+', '+id_cuenta+')';
      ZQ_Insertar.ExecSQL;
    end
    else
    begin
      CD_CuentasA.Edit;
      CD_CuentasA.FieldByName('ID_PROVEEDOR').Clear;
      CD_CuentasA.Post;

      ZQ_Borrar.SQL.Text:= 'delete from proveedor_cuenta where (id_proveedor = '+id_proveedor+' and id_cuenta = '+id_cuenta+')';
      ZQ_Borrar.ExecSQL;
    end;
  end;
end;


procedure TFABMProveedores.grabar_permisos;
var
  id_proveedor, id_cuenta, id_concepto: string;
begin
  CD_CuentasA.DisableControls;
  CD_Conceptos.DisableControls;

  id_proveedor:= ZQ_IE_ProveedoresNRO_PROVEEDOR.AsString;
  CD_CuentasA.First;
  while not CD_CuentasA.Eof do
  begin
    if not CD_CuentasAID_PROVEEDOR.IsNull then
    begin
      id_cuenta:= CD_CuentasAID_CUENTA.AsString;
      ZQ_Insertar.SQL.Text:= 'insert into proveedor_cuenta (id_proveedor, id_cuenta) values ('+id_proveedor+', '+id_cuenta+')';
      ZQ_Insertar.ExecSQL;
    end
    else
    begin
      id_cuenta:= CD_CuentasAID_CUENTA.AsString;
      ZQ_Borrar.SQL.Text:= 'delete from proveedor_cuenta where (id_proveedor = '+id_proveedor+' and id_cuenta = '+id_cuenta+')';
      ZQ_Borrar.ExecSQL;
    end;
    CD_CuentasA.Next;
  end;

  CD_Conceptos.First;
  while not CD_Conceptos.Eof do
  begin
    if not CD_ConceptosID_PROVEEDOR.IsNull then
    begin
      id_concepto:= CD_ConceptosID_CONCEPTO.AsString;
      ZQ_Insertar.SQL.Text:= 'insert into proveedor_concepto (id_proveedor, id_concepto) values ('+id_proveedor+', '+id_concepto+')';
      ZQ_Insertar.ExecSQL;
    end
    else
    begin
      id_concepto:= CD_ConceptosID_CONCEPTO.AsString;
      ZQ_Borrar.SQL.Text:= 'delete from proveedor_concepto where (id_proveedor = '+id_proveedor+' and id_concepto = '+id_concepto+')';
      ZQ_Borrar.ExecSQL;
    end;
    CD_Conceptos.Next;
  end;

  CD_CuentasA.EnableControls;
  CD_Conceptos.EnableControls;
end;

end.
