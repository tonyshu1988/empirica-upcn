unit EKFiltrarColumna;

interface

uses
  SysUtils, Classes, DBGrids, StdCtrls, Registry, forms, strutils, Menus;

type
  TEKColumna = class(TCollectionItem)
  private
    function GetDisplayName : string; override;
  protected
    FTituloColumna: String; //tiene que cargarse el nombre del titulo que tiene la columna de la grilla
    FVisible: Boolean; //valor que indica como se inicia la columna, si visible o no
  public
    constructor Create(Collection: TCollection); override;
    destructor destroy ; override;
    procedure Assign(Source: TPersistent); override;
  published
    Property TituloColumna: String read FTituloColumna write FTituloColumna;
    Property Visible: Boolean read FVisible write FVisible;
  end;

type
  TEKColumnas = Class(TCollection)
  private
  protected
   FOwner:TPersistent;
   function GetOwner:TPersistent; override;
   function GetItem(Index: Integer): TEKColumna;
   procedure SetItem(Index: Integer; Value: TEKColumna);
  public
    property Items[Index: Integer]: TEKColumna read GetItem write SetItem; default;
  end;

type
  TEKFiltrarColumna = class(TComponent)
  private
    { Private declarations }
    FPopUpMenuOriginal: TPopUpMenu; //si la grilla ya tiene un PopUpMenu seteado lo guardo en esta variable
    FPopUpMenu: TPopUpMenu; //PopUpMenu que va a contener los filtros
    FGrilla: TDBGrid; //Grilla que se va a filtrar
    FFiltros: TEKColumnas; //Filtros
    FNombreGuardar: String; //Nombre con el que se va a guardar la configuracion en la pc
    FAltoTituloColumna: integer; //Alto del titulo de la columna, desde 0 a este valor se va a mostrar el PopUp de los filtros

    procedure SetFGrilla(const Value: TDBGrid);
    procedure SetFPopUpMenu();
    procedure AplicarFiltro(); //ver para borrar
    procedure OnClickPopUp(Sender: TObject);
    function GetIndex(grilla: TDBGrid; Nombre: string): Integer; //devuelve el indice en la grilla de la columna pasada como parametro
    function verificarGrilla(grilla: TDBGrid; indice: integer): boolean; //pone visible o invisible en la grilla la columna con el indice pasado como parametro
    procedure iniciarGrilla(grilla: TDBGrid; indice: integer; visible: boolean); //pongo visible los campos segun los filtros cargafos
    procedure iniciarFiltros(grilla: TDBGrid);
    procedure MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer); //habilita el popup de los filtros cuando me posiciono en el titulo de la grilla
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor destroy ; override;

    procedure GuardarFiltro(); //guardo los filtros seleccionados en la pc
    procedure CargarFiltro(); //cargo los filtros guardados
  published
    Property Grilla: TDBGrid read FGrilla write SetFGrilla;
    Property Filtros: TEKColumnas read FFiltros write FFiltros;
    Property NombreGuardar: String read FNombreGuardar write FNombreGuardar;
    Property AltoTituloColumna: integer read FAltoTituloColumna write FAltoTituloColumna;
  end;

procedure Register;

implementation

uses DB;

procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKFiltrarColumna]);
end;


//  if (csDesigning in ComponentState) or (csLoading in ComponentState) then
//    FDataSet := Value
//  else
//    Raise Exception.Create(' Assigning DataSet at runtime not available ');

//-----------------------------------------------------------------
//      TEKColumna
//-----------------------------------------------------------------
constructor TEKColumna.Create(Collection: TCollection);
begin
  inherited;

  FVisible:= true; //por defecto todos los filtros que se cargan se ponen en visible
end;


destructor TEKColumna.destroy;
begin
  inherited;
end;


procedure TEKColumna.Assign(Source: TPersistent);
begin
//  if Source is TCheckConstraint then
//  begin
//   FGroupOperation := TEKDBSumaItem(Source).FGroupOperation;
//   FFieldName := TEKDBSumaItem(Source).FFieldName;
//   Value := TEKDBSumaItem(Source).Value;
//   SumValue := TEKDBSumaItem(Source).SumValue;
//  end;
//  inherited Assign(Source);
end;


//Procedimento para mostrar el nombre que se carga en la lista de filtros
function TEKColumna.GetDisplayName: string;
begin
  result:= FTituloColumna;
  if Result = '' then Result := inherited GetDisplayName;
end;


//-----------------------------------------------------------------
//      TEKColumnas
//-----------------------------------------------------------------
function TEKColumnas.GetOwner:TPersistent;
begin
  Result:= FOwner;
end;


function TEKColumnas.GetItem(Index: Integer): TEKColumna;
begin
  Result:= TEKColumna(inherited GetItem(Index));
end;


procedure TEKColumnas.SetItem(Index: Integer; Value: TEKColumna);
begin
  inherited SetItem(Index, Value);
end;


//-----------------------------------------------------------------
//      TEKFiltrarColumna
//-----------------------------------------------------------------
constructor TEKFiltrarColumna.Create(AOwner: TComponent);
begin
  inherited;

  FFiltros := TEKColumnas.Create(TEKColumna);
  FAltoTituloColumna:= 15; //por defecto el tamaño de los titulos es de 15
end;


destructor TEKFiltrarColumna.destroy;
begin
  FFiltros.Free;

  inherited;
end;


//procedimiento que setea la grilla en el componente
procedure TEKFiltrarColumna.SetFGrilla(const Value: TDBGrid);
begin
  FGrilla:= Value;

  if (csDesigning in ComponentState) then
    iniciarFiltros(FGrilla);
    
  SetFPopUpMenu();

  if Assigned(FGrilla.PopupMenu) then //si la grilla ya tiene un popup asignado lo guardo para que no se pierda
    FPopUpMenuOriginal:= FGrilla.PopupMenu
  else
    FPopUpMenuOriginal:= nil;

  if not ((csDesigning in ComponentState)) then
  begin
    FGrilla.OnMouseMove := MouseMove; //asigno el avento onMouseMove para mostrar el popUp en el titulo
  end;
end;


procedure TEKFiltrarColumna.SetFPopUpMenu();
var
  i: integer;
  menuItem : TMenuItem;
begin
  inherited;

  FPopUpMenu:= TPopupMenu.Create(nil); //creo el PopUpMenu
  FPopUpMenu.Name:= 'PopUpMenu';

  for i := 0 to FFiltros.Count - 1 do  //por cada un de los filtros cargados
  begin
    with TEKColumna(FFiltros.Items[i]) do
    begin
      menuItem:= TMenuItem.Create(FPopUpMenu); //creo el item del PopUp
      menuItem.Caption:= FTituloColumna; //con el nombre del filtro
      menuItem.Checked:= FVisible;
      menuItem.OnClick:= OnClickPopUp; //asigno el evento para cuando se selecciona
      FPopUpMenu.Items.Add(menuItem); //agrego el item al menu

      iniciarGrilla(FGrilla, i, FVisible); //inicio la columan de la grilla en visible o no segun el parametro
    end;
  end
end;


procedure TEKFiltrarColumna.GuardarFiltro();
var
  Registro :TRegistry;
  F        :Byte;
begin
  if FNombreGuardar > '' then //si puse un nombre para guardar
  begin
    try
      Registro:= TRegistry.Create;
      Registro.OpenKey('\Software\EmpiriKa\'+ExtractFileName(Application.Exename)+'\FiltroGrilla', TRUE);

      for F:= 0 to FFiltros.Count - 1 do //Por cada uno de los filtros cargados
      begin
        with TEKColumna(FFiltros.Items[F]) do
          if FVisible then //si la columna esta visible
            Registro.WriteString(FNombreGuardar+FGrilla.Name+'['+IntToStr(F)+']', 'TRUE')
          else //si la columna no esta visible
            Registro.WriteString(FNombreGuardar+FGrilla.Name+'['+IntToStr(F)+']', 'FALSE');
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
  if FNombreGuardar > '' then //si puse un nombre para guardar
  begin
    try
      Registro:= TRegistry.Create;
      Registro.OpenKey('\Software\EmpiriKa\'+ExtractFileName(Application.Exename)+'\FiltroGrilla', TRUE);

      for F:= 0 to FFiltros.Count - 1 do //Por cada uno de los filtros cargados
      begin
        with TEKColumna(FFiltros.Items[F]) do
          if Registro.ReadString(FNombreGuardar+Grilla.Name+'['+IntToStr(F)+']') <> '' then
          begin
            FVisible:= StrToBool(Registro.ReadString(FNombreGuardar+Grilla.Name+'['+IntToStr(F)+']'));
            FGrilla.Columns[F].Visible:= FVisible;
            FPopupMenu.Items[F].Checked:= FVisible;
          end
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
    FPopupMenu.Items[F].Checked:= verificarGrilla(FGrilla, F);
  end;
end;


//devuelve el indice en la grilla de la columna pasada como parametro
function TEKFiltrarColumna.GetIndex(grilla: TDBGrid; Nombre: string): Integer;
var
  i: Integer;
begin
  Result:= -1;

  if not Assigned(FGrilla) then //si no cargue ninguna grilla, entoces salgo
    exit;

  for i:= 0 to grilla.Columns.Count -1 do
    if Nombre = grilla.Columns[i].Title.Caption then
    begin
      Result:= i;
      Exit;
    end;
end;


//pone visible o invisible en la grilla la columna con el indice pasado como parametro
function TEKFiltrarColumna.verificarGrilla(grilla: TDBGrid; indice: integer): boolean;
var
  columna: integer;
  titulo: string;
begin
  if not Assigned(FGrilla) then //si no cargue la grilla, entoces salgo
    exit;

  titulo:= FPopUpMenu.Items[indice].Caption;
  delete(titulo, pos('&', titulo), 1);
  columna:= GetIndex(grilla, titulo); //busco el indice en la grilla del titulo pasado como parametro

  if columna >= 0 then //si encuentro la columna
    if grilla.Columns[columna].Visible then
    begin
      grilla.Columns[columna].Visible:= false;
      TEKColumna(FFiltros.Items[columna]).FVisible:= false;
      Result:= false;
    end
    else
    begin
      grilla.Columns[columna].Visible:= true;
      TEKColumna(FFiltros.Items[columna]).FVisible:= true;
      Result:= true;
    end
end;


//Procedimiento que pone visible o no las columnas de las grillas segun el valor que se cargo en el componente
procedure TEKFiltrarColumna.iniciarGrilla(grilla: TDBGrid; indice: integer; visible: boolean);
var
  columna: integer;
  titulo: string;
begin
  if not Assigned(FGrilla) then //si no cargue la grilla, entoces salgo
    exit;

  titulo:= FPopUpMenu.Items[indice].Caption;
  delete(titulo, pos('&', titulo), 1);
  columna:= GetIndex(grilla, titulo); //busco el indice en la grilla del titulo pasado como parametro

  if columna >= 0 then //si encuentro la columna
    grilla.Columns[columna].Visible:= visible;
end;


procedure TEKFiltrarColumna.iniciarFiltros(grilla: TDBGrid);
var
  i: integer;
  itemNuevo: TEKColumna;
begin
  if not Assigned(FGrilla) then //si no cargue la grilla, entoces salgo
    exit;

  FFiltros.Clear;
  for i:= 0 to grilla.Columns.Count - 1 do
  begin
    TEKColumna(FFiltros.Add).FTituloColumna:= grilla.Columns[i].Title.Caption;
  end
end;


//onclick del popup
procedure TEKFiltrarColumna.OnClickPopUp(Sender: TObject);
begin
  with (Sender as TMenuItem) do
  begin
    (GetParentComponent as TPopupMenu).Items[MenuIndex].Checked:= verificarGrilla(FGrilla, MenuIndex);
  end;
end;


//procedimiento para mostrar el popupmenu cuando me posiciono en el titulo de las columnas
procedure TEKFiltrarColumna.MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if y <= FAltoTituloColumna then //si estoy posicionado con el mouse en los titulos de la grilla
  begin           //asigno el PopUpMenu del filtrado
    if Assigned(FGrilla) then
      if Assigned(FPopUpMenu) then
        FGrilla.PopupMenu:= FPopUpMenu;
  end
  else  //si no, dejo el PopUpMenu que tenia por defecto
     FGrilla.PopupMenu:= FPopUpMenuOriginal;
end;

end.
