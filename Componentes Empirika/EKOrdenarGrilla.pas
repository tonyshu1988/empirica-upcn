unit EKOrdenarGrilla;

interface

uses
  Messages, Controls, Dialogs, SysUtils, Classes, DBGrids, ZDataset, Graphics, windows,
  DBClient, Provider, DB, Registry, forms;
type
  TomaInvento = class(TControl);
type
  TEKOrdenarGrilla = class(TComponent)
  private
    { Private declarations }
    FOrdenar_Grilla : TDBGrid;
    FFuenteNormal : TFontStyles;
    FFuenteOrdenado : TFontStyles;
    FFormContenedor : String;
    FOrdenar : Boolean;
    procedure SetFOrdenar_Grilla(const Value: TDBGrid);
    procedure TitleClick(Column: TColumn);
    procedure DBGrid1PillaLaRueda(var Message: TMessage);
    procedure MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SaveColPos(Const DbGrid:TDBgrid);
    procedure LoadColPos(Var DbGrid:TDBgrid);

  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure GuardarConfigColumnas();
    procedure CargarConfigColunmas();
    constructor Create(AOwner: TComponent); override;
    destructor destroy ; override;
  published
    Property
      Grilla : TDBGrid read FOrdenar_Grilla write SetFOrdenar_Grilla;
    Property
      FuenteNormal : TFontStyles read FFuenteNormal write FFuenteNormal;
    Property
      FuenteOrdenado : TFontStyles read FFuenteOrdenado write FFuenteOrdenado default [fsBold,fsUnderline];
    Property
      NombreGuardarConfig : String read FFormContenedor write FFormContenedor;
    property
      Ordenar : Boolean read FOrdenar write FOrdenar;
  end;

procedure Register;

implementation

uses ZAbstractRODataset;

procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKOrdenarGrilla]);
end;

{ TEKOrdenarGrilla }

constructor TEKOrdenarGrilla.Create(AOwner: TComponent);
begin
  inherited;
  FFuenteOrdenado := [fsBold,fsUnderline];
  FFuenteNormal := [];
  FOrdenar:= true;
end;

procedure TEKOrdenarGrilla.DBGrid1PillaLaRueda(var Message: TMessage);
var 
  Cuanto : short;
begin 
  if (Message.Msg = WM_MOUSEWHEEL) then begin
    Cuanto:=HIWORD(Message.WParam);
    Cuanto:=Cuanto div 120;
    if not (FOrdenar_Grilla.DataSource.DataSet.State = dsInactive) then
        FOrdenar_Grilla.DataSource.DataSet.MoveBy(-Cuanto);
  end
  else
    TomaInvento(FOrdenar_Grilla).WndProc(Message);
end;

destructor TEKOrdenarGrilla.destroy;
begin
  inherited;
end;

procedure TEKOrdenarGrilla.SaveColPos(Const DbGrid:TDBgrid);
var
  Registro :TRegistry;
  F        :Byte;
begin
  if FFormContenedor > '' then
  begin
    try
      Registro:=TRegistry.Create;
      Registro.OpenKey( '\Software\EmpiriKa\'+ ExtractFileName(Application.Exename)+'\Grids', TRUE);
      for F:=0 to DbGrid.Columns.Count-1 do
        Registro.WriteInteger(FFormContenedor+DbGrid.Name+'['+IntToStr(F)+']',DbGrid.Columns[F].Width);
      Registro.Free;
    except
    end;
  end;
end;

procedure TEKOrdenarGrilla.LoadColPos(Var DbGrid:TDBgrid);
var
  Registro :TRegistry;
  F        :Byte;
begin
  if FFormContenedor > '' then
  begin
    Registro:=TRegistry.Create;
    Registro.OpenKey( '\Software\EmpiriKa\'+ ExtractFileName(Application.Exename)+'\Grids', False);
    if Registro.ValueExists(FFormContenedor+DbGrid.Name+'[0]') then
      for F:=0 to DbGrid.Columns.Count-1 do
      begin
        try
          DbGrid.Columns[F].Width:=Registro.ReadInteger(FFormContenedor+DbGrid.Name+'['+IntToStr(F)+']');
        except
        end;
      end;
    Registro.Free;
  end;
end;

procedure TEKOrdenarGrilla.MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if not Ordenar then
    exit;
                     
  if y <= 15 then
  begin
    FOrdenar_Grilla.Hint := 'Click sobre el título para ordenar  -  CTRL para mas de un campo  -  SHIFT para buscar';
    FOrdenar_Grilla.ShowHint := true;
  end
  else
    FOrdenar_Grilla.ShowHint := false;
end;

procedure TEKOrdenarGrilla.SetFOrdenar_Grilla(const Value: TDBGrid);
begin
  FOrdenar_Grilla := Value;
  if not ((csDesigning in ComponentState)) then
  begin
    if Assigned(FOrdenar_Grilla) then
    begin
      FOrdenar_Grilla.OnTitleClick := TitleClick;
      FOrdenar_Grilla.WindowProc := DBGrid1PillaLaRueda;
      FOrdenar_Grilla.OnMouseMove := MouseMove;
    end;
  end;
end;

procedure TEKOrdenarGrilla.TitleClick(Column: TColumn);
var
    filtro : string;
    x : integer;
    buscar : string;
    PulsoOk : boolean;
begin
    if not Ordenar then
      exit;


    if column.Field.FieldKind = fkLookup	then   // saco los lockup porque dan error
    begin
      ShowMessage('No se puede ordenar ni buscar sobre este tipo de campo (lookup)');
      exit;
    end;
    if HiWord(GetKeyState(VK_SHIFT)) <> 0  then
    begin
        PulsoOk:= InputQuery('Busqueda en el campo '+column.Title.Caption, 'Ingrese la cadena a buscar:', buscar);
        if PulsoOk then
          if Not(FOrdenar_Grilla.DataSource.DataSet.Locate(column.Field.FieldName, buscar,[loCaseInsensitive, loPartialKey])) then
            ShowMessage('El Valor '+ buscar +' no se encuentra en el campo '+ column.Title.Caption +#13+'En los registros que esta visualizando en la ventana');
        exit;
    end;

    if FOrdenar_Grilla.DataSource.DataSet.ClassName = 'TClientDataSet'then
      filtro := TClientDataSet(FOrdenar_Grilla.DataSource.DataSet).IndexFieldNames
    else
      filtro := TZQuery(FOrdenar_Grilla.DataSource.DataSet).SortedFields;

    if HiWord(GetKeyState(VK_CONTROL)) <> 0 then
    begin
      if filtro = '' then
        Filtro := column.Field.FieldName
      else
        if pos(column.Field.FieldName, filtro) = 0 then
          if FOrdenar_Grilla.DataSource.DataSet.ClassName = 'TClientDataSet'then
            filtro := filtro + '; '+column.Field.FieldName
          else
            filtro := filtro + ', '+column.Field.FieldName;
      Column.Title.Font.Style := FFuenteOrdenado;
    end
    else
    begin
      for x := 0 to FOrdenar_Grilla.Columns.Count - 1 do
        FOrdenar_Grilla.Columns.Items[x].Title.Font.Style := FFuenteNormal;
      if filtro = column.Field.FieldName then
        filtro := ''
      else
      begin
        Filtro := column.Field.FieldName;
        Column.Title.Font.Style := FFuenteOrdenado;
      end;
    end;
    if FOrdenar_Grilla.DataSource.DataSet.ClassName = 'TClientDataSet'then
      TClientDataSet(FOrdenar_Grilla.DataSource.DataSet).IndexFieldNames := filtro
    else
       TZQuery(FOrdenar_Grilla.DataSource.DataSet).SortedFields := filtro;
end;

procedure TEKOrdenarGrilla.CargarConfigColunmas;
begin
    LoadColPos(FOrdenar_Grilla);
end;

procedure TEKOrdenarGrilla.GuardarConfigColumnas;
begin
    SaveColPos(FOrdenar_Grilla);
end;

end.
 