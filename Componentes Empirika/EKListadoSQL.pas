unit EKListadoSQL;

interface

uses
  SysUtils, Classes, EKModelo,  forms, Controls, ZDataset, Dialogs, Windows, Graphics;

type
  TEKListadoSQL = class(TComponent)
  private
    FModelo : TEKModeloTransaccion;
    FSQL : TStrings;
    FCampoBuscar : String;
	FCampoBuscar2: string;
    FCampoClave : String;
    Fresultado : String;
    Fseleccion : String;
	Fseleccion2: string;
    FBuscarEnQuery : TZQuery;
	FSQLDataset: TZQuery;
    FEditar : Boolean;
    FEditarUpperCase : Boolean;
    FTituloVentana : string;
    FTituloBuscar: string;
    FTituloBuscar2: string;
    FBuscarDoble: boolean;
    FSQLDatasetRefAuto: boolean;
    FColorGrilla: TColor;
    FAnchoClave: integer;
    FAnchoBuscar1: integer;
    FAnchoBuscar2: integer;
    ConsultaVirtual: TZQuery;
    procedure SetSQL(const Value: TStrings);
    procedure bt_nuevoClick(Sender: TObject);
    procedure bt_Modificar(Sender: TObject);
    procedure bt_Eliminar(Sender: TObject);
    procedure bt_refrescar(Sender: TObject);
  protected
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    function Buscar() : Boolean;
    constructor Create(AOwner: TComponent); override;
    destructor destroy ; override;
  published
    Property Modelo : TEKModeloTransaccion read FModelo write FModelo;
    Property SQL : TStrings read FSQL write SetSQL;
    property SQLDataset: TZQuery read FSQLDataset write FSQLDataset;
    property SQLDatasetRefAuto: Boolean read FSQLDatasetRefAuto write FSQLDatasetRefAuto default false;
    Property CampoBuscar : String read FCampoBuscar write FCampoBuscar;
    property CampoBuscar2: string read FCampoBuscar2 write FCampoBuscar2;    
	Property CampoClave : String read FCampoClave write FCampoClave;
    Property Resultado : String read Fresultado write Fresultado;
    Property Seleccion : String read FSeleccion write FSeleccion;
    property Seleccion2: string read FSeleccion2 write FSeleccion2;
    Property BuscarEnQuery : TZQuery read FBuscarEnQuery write FBuscarEnQuery;
    Property Editar : Boolean read FEditar write FEditar default false;
    Property EditarUpperCase : Boolean read FEditarUpperCase write FEditarUpperCase default true;
    Property TituloVentana : String read FTituloVentana write FTituloVentana ;
    property TituloBuscar: string read FTituloBuscar write FTituloBuscar;
    property TituloBuscar2: string read FTituloBuscar2 write FTituloBuscar2;
    property BuscarDoble: Boolean read FBuscarDoble write FBuscarDoble default false;
    property ColorGrilla: TColor read FColorGrilla write FColorGrilla;
    property AnchoClave: Integer read FAnchoClave write FAnchoClave;
    property AnchoBuscar1: Integer read FAnchoBuscar1 write FAnchoBuscar1;
    property AnchoBuscar2: Integer read FAnchoBuscar2 write FAnchoBuscar2;
  end;

procedure Register;

implementation
uses EKUListadoSql;

procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKListadoSQL]);
end;


{ TEKListadoSQL }
procedure TEKListadoSQL.bt_nuevoClick(Sender: TObject);
var
  texto : string;
begin
  texto := '';
  if InputQuery('Insertar Nuevo','Descripción:', texto) then
    if texto <> '' then
      if FModelo.iniciar_transaccion('ABM', [ConsultaVirtual]) then
      begin
        ConsultaVirtual.Insert;
        if FEditarUpperCase then
          texto := UpperCase(texto);
        FEKListadoSQL.SQL.FieldByName(FCampoBuscar).Value := texto;
        if FModelo.finalizar_transaccion('ABM') then
        begin
          ConsultaVirtual.Refresh;
          FEKListadoSQL.C_sql.Refresh;
          FEKListadoSQL.C_sql.Locate(FCampoBuscar,texto,[]);
        end
        else
          FModelo.cancelar_transaccion('ABM')
      end;
end;


procedure TEKListadoSQL.bt_Eliminar(Sender: TObject);
begin
  if FEKListadoSQL.C_sql.IsEmpty then
    exit;
  ConsultaVirtual.Locate(FCampoClave,FEKListadoSQL.C_sql.fieldbyname(FCampoClave).Value,[]) ;
  if (application.MessageBox(pchar('Elimina el Registro'), 'Pregunta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
      if FModelo.iniciar_transaccion('ABM', [FEKListadoSQL.SQL]) then
      begin
        ConsultaVirtual.delete;
        if FModelo.finalizar_transaccion('ABM') then
        begin
          ConsultaVirtual.Refresh;
          FEKListadoSQL.C_sql.Refresh;
        end
        else
          FModelo.cancelar_transaccion('ABM')
      end;
end;


procedure TEKListadoSQL.bt_Modificar(Sender: TObject);
var
  texto : string;
begin
  if FEKListadoSQL.C_sql.IsEmpty then
    exit;
  ConsultaVirtual.Locate(FCampoClave,FEKListadoSQL.C_sql.fieldbyname(FCampoClave).Value,[]) ;
  texto := ConsultaVirtual.fieldbyname(FCampoBuscar).Value;
  if InputQuery('Modificar','Descripción:', texto) then
    if texto <> '' then
      if FModelo.iniciar_transaccion('ABM', [ConsultaVirtual]) then
      begin
        if FEditarUpperCase then
          texto := UpperCase(texto);
        ConsultaVirtual.Edit;
        ConsultaVirtual.FieldByName(FCampoBuscar).Value := texto;
        if FModelo.finalizar_transaccion('ABM') then
        begin
          ConsultaVirtual.Refresh;
          FEKListadoSQL.C_sql.Refresh;
          FEKListadoSQL.C_sql.Locate(FCampoBuscar,texto,[]);
        end
        else
          FModelo.cancelar_transaccion('ABM')
      end;
end;


function TEKListadoSQL.Buscar: Boolean;
var
	f: string;
	i, x: integer;
begin
  Application.CreateForm(TFEKListadoSQL, FEKListadoSQL);

  FEKListadoSQL.grilla.Color:= FColorGrilla;

  if not (FTituloVentana = '') then
    FEKListadoSQL.Caption:= FTituloVentana;
  if not (FTituloBuscar = '') then
    FEKListadoSQL.lblBuscar.Caption:= FTituloBuscar;
  if not (FTituloBuscar2 = '') then
    FEKListadoSQL.lblBuscar2.Caption:= FTituloBuscar2;

  //guardo en el form los campos a buscar en un label
  FEKListadoSQL.campo_buscar.Caption:= FCampoBuscar;
  FEKListadoSQL.campo_buscar2.Caption:= FCampoBuscar2;

  if Assigned(FSQLDataset) then
  begin
    ConsultaVirtual := FSQLDataset;
    FEKListadoSQL.P_sql.DataSet := ConsultaVirtual;
    if not ConsultaVirtual.Active then
      FModelo.abrir(ConsultaVirtual)
    else
      if SQLDatasetRefAuto then
        ConsultaVirtual.Refresh;
    ConsultaVirtual.First;
    FEKListadoSQL.C_sql.Open;
  end
  else
  begin
    ConsultaVirtual := FEKListadoSQL.SQL;
    FEKListadoSQL.P_sql.DataSet := ConsultaVirtual;
    ConsultaVirtual.SQL.Clear;
    ConsultaVirtual.SQL.Assign(FSQL);
    ConsultaVirtual.Connection:= FModelo.Coneccion;
    FModelo.abrir(ConsultaVirtual);
    for x:= 0 to ConsultaVirtual.FieldCount - 1 do
      ConsultaVirtual.Fields[x].Required:= false;
    FEKListadoSQL.C_sql.Open;
  end;
  FEKListadoSQL.grilla.Columns[0].FieldName:= FCampoClave;
  FEKListadoSQL.grilla.Columns[0].Width:= FAnchoClave;
  FEKListadoSQL.grilla.Columns[1].FieldName:= FCampoBuscar;
  FEKListadoSQL.grilla.Columns[1].Width:= FAnchoBuscar1;
  FEKListadoSQL.grilla.Columns[1].Title.Caption:= FEKListadoSQL.lblBuscar.Caption;

  FEKListadoSQL.bt_actualizar.OnClick:= bt_refrescar;

  if FEditar then
  begin
    FEKListadoSQL.panel_edicion.Visible:= true;
    FEKListadoSQL.bt_nuevo.Enabled:= true;
    FEKListadoSQL.Bt_modificar.Enabled:= true;
    FEKListadoSQL.bt_eliminar.Enabled:= true;
    FEKListadoSQL.bt_nuevo.OnClick:= bt_nuevoClick;
    FEKListadoSQL.Bt_modificar.OnClick:= bt_Modificar;
    FEKListadoSQL.bt_eliminar.OnClick:= bt_Eliminar;
  end;

  if FBuscarDoble then
  begin
    FEKListadoSQL.grilla.Columns[2].Visible:= true;
    FEKListadoSQL.grilla.Columns[2].FieldName:= FCampoBuscar2;
    FEKListadoSQL.grilla.Columns[2].Width:= FAnchoBuscar2;
    FEKListadoSQL.grilla.Columns[2].Title.Caption:= FEKListadoSQL.lblBuscar2.Caption;
    FEKListadoSQL.Panel_Buscar2.Visible:= true;
  end;

  if FEKListadoSQL.ShowModal = mrOK then
  begin
    Fresultado:= FEKListadoSQL.C_sql.fieldbyname(FCampoClave).AsString;
    Fseleccion:= FEKListadoSQL.C_sql.fieldbyname(FCampoBuscar).AsString;
    if FBuscarDoble and (FCampoBuscar2 <> '') then
      Fseleccion2:= FEKListadoSQL.C_sql.fieldbyname(FCampoBuscar2).AsString;
    result:= True;
    if Assigned(FBuscarEnQuery) then
    begin
      FBuscarEnQuery.Active:= true;
      FBuscarEnQuery.Locate(FCampoClave,Fresultado,[]);
    end;
  end
  else
  begin
    Fresultado:= '';
    Fseleccion:= '';
    Fseleccion2:= '';
    result:= false;
  end;

  FEKListadoSQL.Release;
end;


constructor TEKListadoSQL.Create(AOwner: TComponent);
begin
  inherited;

  FSQL:= TStringList.Create;
  FEditar:= false;
  FBuscarDoble:= false;
  fSQLDatasetRefAuto:= false;
  FEditarUpperCase:= true;
  FColorGrilla:= $00DEDEBC;
  FTituloBuscar:= 'Campo Busqueda:';
  FTituloBuscar2:= 'Campo Busqueda 2:';
  FAnchoClave:= 80;
  FAnchoBuscar1:= 500;
  FAnchoBuscar2:= 500;
end;


destructor TEKListadoSQL.destroy;
begin
  FSQL.Free;
  inherited;
end;


procedure TEKListadoSQL.SetSQL(const Value: TStrings);
begin
  FSQL.Assign(Value);
end;


procedure TEKListadoSQL.Notification(AComponent: TComponent; Operation: TOperation);
var
  I: Integer;
  NeedLayout: Boolean;
begin
  inherited Notification(AComponent, Operation);

  if (Operation = opRemove) then
  begin
    if (AComponent is TZQuery) then
    begin
      if Assigned(FBuscarEnQuery) and (AComponent.Name = FBuscarEnQuery.Name) then
        FBuscarEnQuery:= nil;
      if Assigned(FSQLDataset) and (AComponent.Name = FSQLDataset.Name) then
        FSQLDataset:= nil;
    end
  end;
end;


procedure TEKListadoSQL.bt_refrescar(Sender: TObject);
begin
  ConsultaVirtual.Refresh;
  FEKListadoSQL.C_sql.Refresh;
end;

end.

