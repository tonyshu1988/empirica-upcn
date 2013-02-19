unit EKListadoSQL;

interface

uses
  SysUtils, Classes, EKModelo,  forms, Controls, ZDataset, Dialogs, Windows;

type
  TEKListadoSQL = class(TComponent)
  private
    FModelo : TEKModeloTransaccion;
    FSQL : TStrings;
    FCampoBuscar : String;
    FCampoClave : String;
    Fresultado : String;
    Fseleccion : String;
    FBuscarEnQuery : TZQuery;
    FEditar : Boolean;
    FEditarUpperCase : Boolean;
    FTituloVentana : string;
    procedure SetSQL(const Value: TStrings);
    procedure bt_nuevoClick(Sender: TObject);
    procedure bt_Modificar(Sender: TObject);
    procedure bt_Eliminar(Sender: TObject);


    { Private declarations }
  protected
    { Protected declarations }
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    function Buscar() : Boolean;
    constructor Create(AOwner: TComponent); override;
    destructor destroy ; override;
  published
    { Published declarations }
    Property
      Modelo : TEKModeloTransaccion read FModelo write FModelo;
    Property
      SQL : TStrings read FSQL write SetSQL;
    Property
      CampoBuscar : String read FCampoBuscar write FCampoBuscar;
    Property
      CampoClave : String read FCampoClave write FCampoClave;
    Property
      Resultado : String read Fresultado write Fresultado;
    Property
      Seleccion : String read FSeleccion write FSeleccion;
    Property
      BuscarEnQuery : TZQuery read FBuscarEnQuery write FBuscarEnQuery;
    Property
      Editar : Boolean read FEditar write FEditar default false;
    Property
      EditarUpperCase : Boolean read FEditarUpperCase write FEditarUpperCase default true;
    Property
      TituloVentana : String read FTituloVentana write FTituloVentana ;
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
      if FModelo.iniciar_transaccion('ABM', [FListadoSQL.SQL]) then
      begin
        FListadoSQL.SQL.Insert;
        if FEditarUpperCase then
          texto := UpperCase(texto);
        FListadoSQL.SQL.FieldByName(FCampoBuscar).Value := texto;
        if FModelo.finalizar_transaccion('ABM') then
        begin
          FListadoSQL.SQL.Refresh;
          FListadoSQL.C_sql.Refresh;
          FListadoSQL.C_sql.Locate(FCampoBuscar,texto,[]);
        end
        else
          FModelo.cancelar_transaccion('ABM')
      end;
end;

procedure TEKListadoSQL.bt_Eliminar(Sender: TObject);
begin
  if FListadoSQL.C_sql.IsEmpty then
    exit;
  FListadoSQL.SQL.Locate(FCampoClave,FListadoSQL.C_sql.fieldbyname(FCampoClave).Value,[]) ;
  if (application.MessageBox(pchar('Elimina el Registro'), 'Pregunta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
      if FModelo.iniciar_transaccion('ABM', [FListadoSQL.SQL]) then
      begin
        FListadoSQL.SQL.delete;
        if FModelo.finalizar_transaccion('ABM') then
        begin
          FListadoSQL.SQL.Refresh;
          FListadoSQL.C_sql.Refresh;
        end
        else
          FModelo.cancelar_transaccion('ABM')
      end;
end;

procedure TEKListadoSQL.bt_Modificar(Sender: TObject);
var
  texto : string;
begin
  if FListadoSQL.C_sql.IsEmpty then
    exit;
  FListadoSQL.SQL.Locate(FCampoClave,FListadoSQL.C_sql.fieldbyname(FCampoClave).Value,[]) ;
  texto := FListadoSQL.SQL.fieldbyname(FCampoBuscar).Value;
  if InputQuery('Modificar','Descripción:', texto) then
    if texto <> '' then
      if FModelo.iniciar_transaccion('ABM', [FListadoSQL.SQL]) then
      begin
        // FListadoSQL.SQL.Insert;
        if FEditarUpperCase then
          texto := UpperCase(texto);
        FListadoSQL.SQL.Edit;
        FListadoSQL.SQL.FieldByName(FCampoBuscar).Value := texto;
        if FModelo.finalizar_transaccion('ABM') then
        begin
          FListadoSQL.SQL.Refresh;
          FListadoSQL.C_sql.Refresh;
          FListadoSQL.C_sql.Locate(FCampoBuscar,texto,[]);
        end
        else
          FModelo.cancelar_transaccion('ABM')
      end;
end;

function TEKListadoSQL.Buscar: Boolean;
var f: string;
    i, x: integer;
begin
  Application.CreateForm(TFListadoSQL, FListadoSQL);
  if not (FTituloVentana = '') then
    FListadoSQL.Caption := FTituloVentana;
  FListadoSQL.campo_buscar.Caption := FCampoBuscar;
  FListadoSQL.SQL.SQL.Clear;
  FListadoSQL.SQL.SQL.Assign(FSQL);
  FListadoSQL.SQL.Connection := FModelo.Coneccion;
  FModelo.abrir(FListadoSQL.SQL);
  for x := 0 to FListadoSQL.SQL.FieldCount -1 do
    FListadoSQL.SQL.Fields[x].Required := false;
  FListadoSQL.C_sql.Open;
  FListadoSQL.grilla.Columns[0].FieldName := FCampoClave;
  FListadoSQL.grilla.Columns[1].FieldName := FCampoBuscar;

  if FEditar  then
  begin
    FListadoSQL.Width := 768;
    FListadoSQL.panel_edicion.Visible := true;
    FListadoSQL.bt_nuevo.Enabled := true;
    FListadoSQL.Bt_modificar.Enabled := true;
    FListadoSQL.bt_eliminar.Enabled := true;
    FListadoSQL.bt_nuevo.OnClick := bt_nuevoClick;
    FListadoSQL.Bt_modificar.OnClick := bt_Modificar;
    FListadoSQL.bt_eliminar.OnClick := bt_Eliminar;
  end;

  if FListadoSQL.ShowModal = mrOK then
  begin
    Fresultado := FListadoSQL.C_sql.fieldbyname(FCampoClave).AsString;
    Fseleccion := FListadoSQL.C_sql.fieldbyname(FCampoBuscar).AsString;
    result := True;
    if Assigned(FBuscarEnQuery) then
    begin
      FBuscarEnQuery.Active:= true;
      FBuscarEnQuery.Locate(FCampoClave,Fresultado,[]);
    end;
  end
  else
  begin
    Fresultado := '';
    Fseleccion := '';
    result := false;
  end;

  FListadoSQL.Release;

end;

constructor TEKListadoSQL.Create(AOwner: TComponent);
begin
  inherited;
  FSQL := TStringList.Create;
  FEditar := false;
  FEditarUpperCase := true;
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
    end
  end;
end;

end.
 