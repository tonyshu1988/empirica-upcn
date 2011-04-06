unit EKFiltrarColumna;

interface

uses
  SysUtils, Classes, DBGrids, StdCtrls, Registry, forms;

type
  TEKColumna = class(TCollectionItem)
  private
    function GetDisplayName : string; override;
  protected
    FNombreColumna: String;
    FCheckBox: TCheckBox;
    FValorDefecto: Boolean;
  public
    constructor Create(Collection: TCollection); override;
    destructor destroy ; override;
  published
    Property NombreColumna: String read FNombreColumna write FNombreColumna;
    Property CheckBox: TCheckBox read FCheckBox write FCheckBox;
    Property ValorDefecto: Boolean read FValorDefecto write FValorDefecto default true;
  end;

type
  TEKColumnas = Class(TCollection)
  private
  protected
   FOwner: TPersistent;
  public
  end;

type
  TEKFiltrarColumna = class(TComponent)
  private
  protected
  public
    FGrilla: TDBGrid;
    FFiltros: TEKColumnas;
    FNombreGuardar: String;
    procedure SetFGrilla(const Value: TDBGrid);
    procedure GuardarFiltro();
    procedure CargarFiltro();
    procedure AplicarFiltro();
    function GetIndex(Grid: TDBGrid; Nombre: string): Integer;
    constructor Create(AOwner: TComponent); override;
    destructor destroy ; override;
  published
    Property Grilla: TDBGrid read FGrilla write SetFGrilla;
    Property Filtros: TEKColumnas read FFiltros write FFiltros;
    Property NombreGuardar: String read FNombreGuardar write FNombreGuardar;
  end;

procedure Register;

implementation

uses DB;

procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKFiltrarColumna]);
end;


{ TEKColumnas }
constructor TEKColumna.Create(Collection: TCollection);
begin
  inherited;
end;


destructor TEKColumna.destroy;
begin
  inherited;
end;


function TEKColumna.GetDisplayName: string;
begin
    result := FNombreColumna;
end;

{ TEKFiltrarColumna }
constructor TEKFiltrarColumna.Create(AOwner: TComponent);
begin
  inherited;

  FFiltros := TEKColumnas.Create(TEKColumna);
end;


destructor TEKFiltrarColumna.destroy;
begin
  FFiltros.Free;

  inherited;
end;


procedure TEKFiltrarColumna.SetFGrilla(const Value: TDBGrid);
begin
  FGrilla := Value;
end;


procedure TEKFiltrarColumna.GuardarFiltro();
var
  Registro :TRegistry;
  F        :Byte;
begin
  if FNombreGuardar > '' then
  begin
    try
      Registro:= TRegistry.Create;
      Registro.OpenKey('\Software\EmpiriKa\'+ExtractFileName(Application.Exename)+'\FiltroGrilla', TRUE);

      for F:= 0 to FFiltros.Count - 1 do //Por cada uno de los filtros cargafos
      begin
        with TEKColumna(FFiltros.Items[F]) do
          if CheckBox.Checked then //si el checkBox asociado esta tildado
            Registro.WriteString(FNombreGuardar+Grilla.Name+'['+IntToStr(F)+']', 'TRUE')
          else //si el checkBox asociado no esta tildado
            Registro.WriteString(FNombreGuardar+Grilla.Name+'['+IntToStr(F)+']', 'FALSE');
      end;

      Registro.Free;
    except
    end;
  end;
end;


procedure TEKFiltrarColumna.CargarFiltro();
var
  Registro: TRegistry;
  F: Byte;
begin
  if FNombreGuardar > '' then
  begin
    try
      Registro:= TRegistry.Create;
      Registro.OpenKey('\Software\EmpiriKa\'+ExtractFileName(Application.Exename)+'\FiltroGrilla', TRUE);

      for F:= 0 to FFiltros.Count - 1 do //Por cada uno de los filtros cargados
      begin
        with TEKColumna(FFiltros.Items[F]) do
          if Registro.ReadString(FNombreGuardar+Grilla.Name+'['+IntToStr(F)+']') <> '' then
            CheckBox.Checked:= StrToBool(Registro.ReadString(FNombreGuardar+Grilla.Name+'['+IntToStr(F)+']'));
      end;

      Registro.Free;
    except
    end;
  end;
end;


procedure TEKFiltrarColumna.AplicarFiltro();
var
  indice: integer;
  F: Byte;
begin
  for F:= 0 to FFiltros.Count - 1 do //Por cada uno de los filtros cargados
  begin
    with TEKColumna(FFiltros.Items[F]) do
    begin
      indice:= GetIndex(Grilla, NombreColumna);
      Grilla.Columns[indice].Visible:= CheckBox.Checked;
    end
  end;
end;


function TEKFiltrarColumna.GetIndex(Grid: TDBGrid; Nombre: string): Integer;
var
  i: Integer;
begin
  Result:= -1;
  for i:= 0 to Grid.FieldCount -1 do
    if Nombre = Grid.Fields[i].FieldName then
    begin
      Result:= i;
      Exit;
    end;
end;

end.
