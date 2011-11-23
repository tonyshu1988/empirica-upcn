unit UABM_PersonasPuntos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, UBuscarPersona, StdCtrls,
  Mask, DBCtrls, EKBusquedaAvanzada, ZSqlUpdate;

type
  TFABM_PersonasPuntos = class(TForm)
    PContenedor: TPanel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnVerDetalle: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBaja: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimirDetalle: TdxBarLargeButton;
    btnImprimirListado: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
    btnEMail: TdxBarLargeButton;
    btnSkype: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    DBGridPersonasPtos: TDBGrid;
    PEdicion: TPanel;
    ZQ_Personas_Puntos: TZQuery;
    ZQ_Personas_PuntosNOMBRE: TStringField;
    ZQ_Personas_PuntosDIRECCION: TStringField;
    ZQ_Personas_PuntosEMAIL: TStringField;
    ZQ_Personas_PuntosNUMERO_DOC: TStringField;
    ZQ_Personas_PuntosID_PERSONA: TIntegerField;
    ZQ_Personas_PuntosMONTO: TFloatField;
    ZQ_Personas_PuntosPUNTOS_MAYOR_MONTO: TFloatField;
    ZQ_Personas_PuntosPUNTOS_MENOR_MONTO: TFloatField;
    ZQ_Personas_PuntosPUNTOS_ACUMULADOS: TFloatField;
    ZQ_Personas_PuntosBAJA: TStringField;
    DS_Personas_Puntos: TDataSource;
    ZQ_Personas_PuntosCODIGO_CORTO: TIntegerField;
    ZQ_Personas_PuntosCODIGO_BARRA: TStringField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblNombre: TLabel;
    lblDireccion: TLabel;
    lblDoc: TLabel;
    lblCodCorto: TLabel;
    lblCodBarra: TLabel;
    btBuscarPersona: TButton;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    Label13: TLabel;
    DBEdit3: TDBEdit;
    EKBusquedaAvanzadaBuscarPersonasPtos: TEKBusquedaAvanzada;
    ZUpdateSQL1: TZUpdateSQL;
    ZQ_Personas_PuntosID_PERSONA_PUNTO: TIntegerField;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    procedure btnSalirClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure ZQ_Personas_PuntosAfterScroll(DataSet: TDataSet);
    procedure btnGuardarClick(Sender: TObject);
    procedure btBuscarPersonaClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure DBGridPersonasPtosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    vsel2: TFBuscarPersona;
    procedure OnSelPers;
    procedure asignarLabels(bandera: boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_PersonasPuntos: TFABM_PersonasPuntos;

const
  transaccion_ABM_PersonaPtos = 'ABM Personas Puntos';  

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFABM_PersonasPuntos.asignarLabels(bandera : boolean);
begin
  if bandera then
  begin
    lblNombre.Caption:= vsel2.ZQ_PersonasNOMBRE.AsString;
    lblDireccion.Caption:= vsel2.ZQ_PersonasDIRECCION.AsString;
    lblDoc.Caption:= vsel2.ZQ_PersonasNUMERO_DOC.AsString;
    lblCodCorto.Caption:= vsel2.ZQ_PersonasCODIGO_CORTO.AsString;
    lblCodBarra.Caption:= vsel2.ZQ_PersonasCODIGO_BARRA.AsString;
    bandera := false;
  end
  else
  begin
    lblNombre.Caption:= ZQ_Personas_PuntosNOMBRE.AsString;
    lblDireccion.Caption:= ZQ_Personas_PuntosDIRECCION.AsString;
    lblDoc.Caption:= ZQ_Personas_PuntosNUMERO_DOC.AsString;
    lblCodCorto.Caption:= ZQ_Personas_PuntosCODIGO_CORTO.AsString;
    lblCodBarra.Caption:= ZQ_Personas_PuntosCODIGO_BARRA.AsString;
  end;
end;

procedure TFABM_PersonasPuntos.OnSelPers;
begin
  if not(vsel2.ZQ_Personas.IsEmpty) then
  begin
    ZQ_Personas_PuntosID_PERSONA.AsInteger:=vsel2.ZQ_PersonasID_PERSONA.AsInteger;
    asignarLabels(true);
  end;
  vsel2.Close;
end;

procedure TFABM_PersonasPuntos.btnSalirClick(Sender: TObject);
begin
close;
end;

procedure TFABM_PersonasPuntos.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM_PersonaPtos, [ZQ_Personas_Puntos]) then
  begin
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;

    PEdicion.Visible := true;

    ZQ_Personas_Puntos.Append;
    ZQ_Personas_PuntosBAJA.AsString := 'N';

    if not Assigned(vsel2) then
    vsel2:= TFBuscarPersona.Create(nil);

    vsel2.configRelacion(RELACION_CLIENTE,True);
    vsel2.EKBusqueda.Abrir;
    vsel2.OnSeleccionar := OnSelPers;
    vsel2.ShowModal;

  end;
end;

procedure TFABM_PersonasPuntos.ZQ_Personas_PuntosAfterScroll(
  DataSet: TDataSet);
begin
asignarLabels(false);
end;

procedure TFABM_PersonasPuntos.btnGuardarClick(Sender: TObject);
begin
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM_PersonaPtos) then
    begin
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;

      PEdicion.Visible := false;
      ZQ_Personas_Puntos.Refresh;
    end;
end;

procedure TFABM_PersonasPuntos.btBuscarPersonaClick(Sender: TObject);
begin
    if not Assigned(vsel2) then
    vsel2:= TFBuscarPersona.Create(nil);

    vsel2.configRelacion(RELACION_CLIENTE,True);
    vsel2.EKBusqueda.Abrir;
    vsel2.OnSeleccionar := OnSelPers;
    vsel2.ShowModal;
end;

procedure TFABM_PersonasPuntos.btnBuscarClick(Sender: TObject);
begin
EKBusquedaAvanzadaBuscarPersonasPtos.Buscar;
end;

procedure TFABM_PersonasPuntos.btnModificarClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM_PersonaPtos, [ZQ_Personas_Puntos]) then
  begin
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;

    PEdicion.Visible := true;

    ZQ_Personas_Puntos.Edit;
  end;
end;

procedure TFABM_PersonasPuntos.btnCancelarClick(Sender: TObject);
begin
    if DM.EKModelo.cancelar_transaccion(transaccion_ABM_PersonaPtos) then
    begin
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;

      PEdicion.Visible := false;
      ZQ_Personas_Puntos.Refresh;
    end;
end;

procedure TFABM_PersonasPuntos.btnBajaClick(Sender: TObject);
begin
  if (ZQ_Personas_Puntos.IsEmpty) OR (ZQ_Personas_PuntosBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja el Sistema de Puntos Para la persona seleccionada?'), 'ABM Personas Puntos', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM_PersonaPtos, [ZQ_Personas_Puntos]) then
    begin
      ZQ_Personas_Puntos.Edit;
      ZQ_Personas_PuntosBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM_PersonaPtos)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM_PersonaPtos);

    EKBusquedaAvanzadaBuscarPersonasPtos.Abrir;
  end;  

end;

procedure TFABM_PersonasPuntos.btnReactivarClick(Sender: TObject);
begin
  if (ZQ_Personas_Puntos.IsEmpty) OR (ZQ_Personas_PuntosBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea Reactivar el Sistema de Puntos?'), 'ABM Personas Puntos', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM_PersonaPtos, [ZQ_Personas_Puntos]) then
    begin
      ZQ_Personas_Puntos.Edit;
      ZQ_Personas_PuntosBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM_PersonaPtos)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM_PersonaPtos);

    EKBusquedaAvanzadaBuscarPersonasPtos.Abrir;
  end;
end;

procedure TFABM_PersonasPuntos.DBGridPersonasPtosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillasConBajas(DBGridPersonasPtos, ZQ_Personas_PuntosBAJA.AsString, Rect, DataCol, Column, State);
end;

end.
