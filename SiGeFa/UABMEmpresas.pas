unit UABMEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, ComCtrls, Grids, DBGrids,
  DBCtrls, StdCtrls, Mask, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, EKBusquedaAvanzada, EKOrdenarGrilla, Menus;

type
  TFABMEmpresas = class(TForm)
    PanelContenedor: TPanel;
    dxBarABM: TdxBarManager;
    BtNuevo: TdxBarLargeButton;
    BtModificar: TdxBarLargeButton;
    btBaja: TdxBarLargeButton;
    btBuscar: TdxBarLargeButton;
    BtGuardar: TdxBarLargeButton;
    BtCancelar: TdxBarLargeButton;
    BtImprimir: TdxBarLargeButton;
    btReactivar: TdxBarLargeButton;
    btsalir: TdxBarLargeButton;
    btverbajados: TdxBarLargeButton;
    BtBusquedaNueva: TdxBarLargeButton;
    btnSiguiente: TdxBarLargeButton;
    btnAnterior: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    PageControlEdicion: TPageControl;
    TabEmpresa: TTabSheet;
    TabContactos: TTabSheet;
    TabViajantes: TTabSheet;
    DBGridEmpresas: TDBGrid;
    Label5: TLabel;
    Label2: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    dbNombre: TDBEdit;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    DBGridContactos: TDBGrid;
    DBGridViajantes: TDBGrid;
    ZQ_Empresa: TZQuery;
    DS_Empresa: TDataSource;
    ZQ_EmpresaCUIT_CUIL: TStringField;
    ZQ_EmpresaID_PROVINCIA: TIntegerField;
    ZQ_EmpresaID_TIPO_IVA: TIntegerField;
    ZQ_EmpresaNOMBRE: TStringField;
    ZQ_EmpresaDIRECCION: TStringField;
    ZQ_EmpresaLOCALIDAD: TStringField;
    ZQ_EmpresaCODIGO_POSTAL: TStringField;
    ZQ_EmpresaTELEFONO: TStringField;
    ZQ_EmpresaEMAIL: TStringField;
    ZQ_EmpresaPAGINA_WEB: TStringField;
    ZQ_EmpresaBAJA: TStringField;
    ZQ_EmpresaAUD_USUARIO: TStringField;
    ZQ_EmpresaAUD_FECHA: TDateTimeField;
    ZQ_EmpresaDESCRIPCION: TStringField;
    ZQ_Provincia: TZQuery;
    ZQ_ProvinciaID_PROVINCIA: TIntegerField;
    ZQ_ProvinciaNOMBRE_PROVINCIA: TStringField;
    DS_Provincia: TDataSource;
    ZQ_TipoEmpresa: TZQuery;
    DS_TipoEmpresa: TDataSource;
    ZQ_TipoIVA: TZQuery;
    DS_TipoIVA: TDataSource;
    ZQ_TipoEmpresaID_TIPO_EMPRESA: TIntegerField;
    ZQ_TipoEmpresaDESCRIPCION: TStringField;
    ZQ_TipoIVAID_TIPO_IVA: TIntegerField;
    ZQ_TipoIVANOMBRE_TIPO_IVA: TStringField;
    ZQ_TipoIVAABREVIATURA: TStringField;
    ZQ_TipoIVADISCRIMINAR: TStringField;
    ZQ_TipoIVALETRA: TStringField;
    ZQ_TipoIVAFISCAL: TStringField;
    ZQ_Empresaprovincia: TStringField;
    ZQ_Empresatipo_empresa: TStringField;
    ZQ_Empresatipo_IVA: TStringField;
    EKBusquedaAvanzadaEmpresas: TEKBusquedaAvanzada;
    ZQ_EmpresaID_EMPRESA: TIntegerField;
    ZQ_EmpresaID_TIPO_EMPRESA: TIntegerField;
    PBusqueda: TPanel;
    Label16: TLabel;
    StaticText3: TStaticText;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    PopupMenuContactos: TPopupMenu;
    AgregarContacto1: TMenuItem;
    QuitarContacto1: TMenuItem;
    ZQ_PersonaRelacion: TZQuery;
    ZQ_PersonaRelacionID_PERSONA_RELACION: TIntegerField;
    ZQ_PersonaRelacionID_PERSONA: TIntegerField;
    ZQ_PersonaRelacionID_RELACION: TIntegerField;
    ZQ_PersonaRelacionID_EMPRESA: TIntegerField;
    ZQ_PersonaRelacionID_SUCURSAL: TIntegerField;
    ZQ_Contacto: TZQuery;
    DS_Contacto: TDataSource;
    ZQ_ContactoNOMBRE: TStringField;
    ZQ_ContactoDIRECCION: TStringField;
    ZQ_ContactoLOCALIDAD: TStringField;
    ZQ_ContactoNOMBRE_TIPO_DOC: TStringField;
    ZQ_ContactoNUMERO_DOC: TStringField;
    ZQ_ContactoCODIGO_POSTAL: TStringField;
    ZQ_ContactoTELEFONO: TStringField;
    ZQ_ContactoEMAIL: TStringField;
    ZQ_ContactoFECHA_NACIMIENTO: TDateField;
    ZQ_ContactoNOMBRE_TIPO_IVA: TStringField;
    procedure BtNuevoClick(Sender: TObject);
    procedure BtModificarClick(Sender: TObject);
    procedure BtGuardarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure btsalirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btBuscarClick(Sender: TObject);
    procedure btBajaClick(Sender: TObject);
    procedure btReactivarClick(Sender: TObject);
    procedure DBGridEmpresasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure AgregarContacto1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABMEmpresas: TFABMEmpresas;

const
  transaccion_ABMEmpresas = 'ABM Empresas';
  transaccion_contactos = 'ABM contactos';  

implementation

uses UDM, UBuscarPersona;

{$R *.dfm}

procedure TFABMEmpresas.BtNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABMEmpresas,[ZQ_Empresa]) then
  begin
    GrupoVisualizando.Enabled:=false;
    GrupoEditando.Enabled:=true;
    DBGridEmpresas.Enabled:= false;
    ZQ_Empresa.Append;
    ZQ_EmpresaBAJA.AsString := 'N';
    dbNombre.SetFocus;
  end;
end;

procedure TFABMEmpresas.BtModificarClick(Sender: TObject);
begin
  if ZQ_Empresa.IsEmpty then
   exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABMEmpresas,[ZQ_Empresa]) then
  begin
    DBGridEmpresas.Enabled:=false;
    ZQ_Empresa.Edit;
    dbNombre.SetFocus;
    GrupoVisualizando.Enabled := false;
    GrupoEditando.Enabled:=true;
  end;
end;

procedure TFABMEmpresas.BtGuardarClick(Sender: TObject);
var
recno:integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);
//  if validarcampos() then
  begin
    if DM.EKModelo.finalizar_transaccion(transaccion_ABMEmpresas) then
    begin
      DBGridEmpresas.Enabled:=true;
      GrupoVisualizando.Enabled:=true;
      GrupoEditando.Enabled:=false;
      recno:=ZQ_Empresa.RecNo;
      ZQ_Empresa.Refresh;
      ZQ_Empresa.RecNo:=recno;
      DBGridEmpresas.SetFocus;
    end;
  end;
end;

procedure TFABMEmpresas.BtCancelarClick(Sender: TObject);
begin
   Perform(WM_NEXTDLGCTL, 0, 0);
   DBGridEmpresas.Enabled:=true;
   dm.EKModelo.cancelar_transaccion(transaccion_ABMEmpresas);
   GrupoVisualizando.Enabled:=true;
   GrupoEditando.Enabled:=false;
   DBGridEmpresas.SetFocus;
end;

procedure TFABMEmpresas.btsalirClick(Sender: TObject);
begin
Close;
end;

procedure TFABMEmpresas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABMEmpresas) then
  begin
      if not (application.MessageBox(pchar('Esta editando un registro, hay cambios sin guardar. Los Cancela ?'),'Pregunta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
        canClose := False
      else
        dm.EKModelo.cancelar_transaccion(transaccion_ABMEmpresas);
  end;

end;

procedure TFABMEmpresas.btBuscarClick(Sender: TObject);
begin
EKBusquedaAvanzadaEmpresas.Buscar;
end;

procedure TFABMEmpresas.btBajaClick(Sender: TObject);
begin
  if  not(ZQ_Empresa.IsEmpty) then
  begin
    if (ZQ_EmpresaBAJA.AsString='S') then
    begin
      Application.MessageBox(PChar('La empresa seleccionada ya fue dada de baja'),'Baja Empresa',MB_OK+MB_ICONWARNING);
    end
    else
    begin
      if dm.EKModelo.iniciar_transaccion(transaccion_ABMEmpresas,[ZQ_Empresa]) then
      begin
        ZQ_Empresa.Edit;
        ZQ_EmpresaBAJA.AsString:='S';
        if dm.EKModelo.finalizar_transaccion(transaccion_ABMEmpresas) then
          Application.MessageBox(PChar('La empresa seleccionada há sido dado de Baja'),'Atención',MB_OK+MB_ICONINFORMATION)
      end
    end
  end;

end;

procedure TFABMEmpresas.btReactivarClick(Sender: TObject);
begin
  if not(ZQ_Empresa.IsEmpty) then
  begin
    if (ZQ_EmpresaBAJA.AsString='N') then
    begin
      Application.MessageBox(PChar('La empresa seleccionada no figura como dado de Baja'),'Reactivar Empresa',MB_OK+MB_ICONWARNING);
    end
    else
    begin
      if dm.EKModelo.iniciar_transaccion(transaccion_ABMEmpresas,[ZQ_Empresa]) then
      begin
        ZQ_Empresa.Edit;
        ZQ_EmpresaBAJA.AsString:='N';
        if dm.EKModelo.finalizar_transaccion(transaccion_ABMEmpresas) then
          Application.MessageBox(PChar('La empresa seleccionada há sido Reactivada'),'Atención',MB_OK+MB_ICONINFORMATION)
      end
    end
  end;
end;

procedure TFABMEmpresas.DBGridEmpresasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not ZQ_Empresa.IsEmpty then
    begin
       if (ZQ_EmpresaBAJA.Value='S') then
          begin
           DBGridEmpresas.Canvas.Brush.Color :=$007A7AFE;
           DBGridEmpresas.Canvas.Font.Color := clBlack;
           DBGridEmpresas.Canvas.Font.Style := DBGridEmpresas.Canvas.Font.Style + [fsBold];
           if (gdFocused in State) or (gdSelected in State) then
             begin
             DBGridEmpresas.Canvas.Font.Color := clwhite;
             end
          end
       else
          begin
            if (gdFocused in State) or (gdSelected in State) then
             begin
               DBGridEmpresas.Canvas.Font.Color := clwhite;
               DBGridEmpresas.Canvas.Brush.Color:=clBlue;
               DBGridEmpresas.Canvas.Font.Style := DBGridEmpresas.Canvas.Font.Style + [fsBold];
             end;
          end;
       DBGridEmpresas.DefaultDrawColumnCell(rect,datacol,column,state);
    end;
end;

procedure TFABMEmpresas.FormCreate(Sender: TObject);
begin
EKBusquedaAvanzadaEmpresas.Abrir;
end;

procedure TFABMEmpresas.AgregarContacto1Click(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_contactos,[ZQ_PersonaRelacion]) then
  begin
    DBGridEmpresas.Enabled:= false;
    Application.CreateForm(TFBuscarPersona,FBuscarPersona);
    FBuscarPersona.ShowModal;
    FBuscarPersona.Release;

    ZQ_PersonaRelacion.Append;
    ZQ_PersonaRelacionID_RELACION.AsInteger := 4;
    ZQ_PersonaRelacionID_EMPRESA.AsInteger := ZQ_EmpresaID_EMPRESA.AsInteger;
    

    if dm.EKModelo.finalizar_transaccion(transaccion_contactos) then
      Application.MessageBox(PChar('La persona seleccionada há sido agregada como contacto'),'Atención',MB_OK+MB_ICONINFORMATION)

  end;
end;

end.
