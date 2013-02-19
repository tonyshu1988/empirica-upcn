unit EKDbSuma;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB;

type
  TGroupOperation = (goSum,goCount);

  TEKDBSumaItem = class(TCollectionItem)
  private
   function GetDisplayName : string; override;
  protected
   FGroupOperation: TGroupOperation;
   FFieldName: String;
   ValorAnterior: Currency;
  public
   SumValue: Currency;
   procedure Assign(Source: TPersistent); override;
  published
   property Operacion:TGroupOperation read FGroupOperation write FGroupOperation;
   property NombreCampo:String read FFieldName write FFieldName;
  end;


  TEKDBSumaItems = class(TCollection)
  protected
   FOwner:TPersistent;
   function GetOwner:TPersistent; override;
   function GetItem(Index: Integer): TEKDBSumaItem;
   procedure SetItem(Index: Integer; Value: TEKDBSumaItem);
  public
    property Items[Index: Integer]: TEKDBSumaItem read GetItem write SetItem; default;
  end;


  TEKDbSuma = class(TComponent)
  private
  protected
    FSumCollection: TEKDBSumaItems;
    FDataSet: TDataSet;
    FSumListChanged: TNotifyEvent;

    Filtered: Boolean;
    Changing: Boolean;

    OldAfterEdit: TDataSetNotifyEvent;
    OldAfterInsert: TDataSetNotifyEvent;
    OldAfterOpen: TDataSetNotifyEvent;
    OldAfterPost: TDataSetNotifyEvent;
    OldAfterScroll: TDataSetNotifyEvent;
    OldBeforeDelete: TDataSetNotifyEvent;
    OldAfterClose: TDataSetNotifyEvent;

    procedure DataSetAfterEdit(DataSet: TDataSet);
    procedure DataSetAfterInsert(DataSet: TDataSet);
    procedure DataSetAfterOpen(DataSet: TDataSet);
    procedure DataSetAfterPost(DataSet: TDataSet);
    procedure DataSetAfterScroll(DataSet: TDataSet);
    procedure DataSetBeforeDelete(DataSet: TDataSet);
    procedure DataSetAfterClose(DataSet: TDataSet);

    procedure SetDataSet(Value:TDataSet);
    procedure Loaded; override;
    procedure SetSumCollection(const Value: TEKDBSumaItems);

    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure RecalcAll;
  published
    property SumCollection: TEKDBSumaItems read FSumCollection write SetSumCollection;
    property DataSet: TDataSet read FDataSet write SetDataSet;
    property SumListChanged: TNotifyEvent read FSumListChanged write FSumListChanged;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKDbSuma]);
end;

//-----------------------------------------------------------------
//      TEKDBSuma
//-----------------------------------------------------------------
constructor TEKDbSuma.Create(AOwner: TComponent);
begin
  inherited;
  FSumCollection:= TEKDBSumaItems.Create(TEKDBSumaItem);
  FSumCollection.FOwner:= Self;
end;


destructor TEKDbSuma.Destroy;
begin
  inherited;
  FSumCollection.Free;
end;


procedure TEKDbSuma.SetDataSet(Value:TDataSet);
begin
  if (csDesigning in ComponentState) or (csLoading in ComponentState) then
    FDataSet:= Value
  else
    Raise Exception.Create('No se puede asignar el DataSet en Tiempo de Ejecución');
end;


procedure TEKDbSuma.Loaded;
begin
  inherited;
  if not (csDesigning in ComponentState) and Assigned(FDataSet) then
  begin
    OldAfterEdit:= FDataSet.AfterEdit;
    OldAfterInsert:= FDataSet.AfterInsert;
    OldAfterOpen:= FDataSet.AfterOpen;
    OldAfterPost:= FDataSet.AfterPost;
    OldAfterScroll:= FDataSet.AfterScroll;
    OldBeforeDelete:= FDataSet.BeforeDelete;
    OldAfterClose:= FDataSet.AfterClose;

    FDataSet.AfterEdit:= DataSetAfterEdit;
    FDataSet.AfterInsert:= DataSetAfterInsert;
    FDataSet.AfterOpen:= DataSetAfterOpen;
    FDataSet.AfterPost:= DataSetAfterPost;
    FDataSet.AfterScroll:= DataSetAfterScroll;
    FDataSet.BeforeDelete:= DataSetBeforeDelete;
    FDataSet.AfterClose:= DataSetAfterClose;

    if (FDataSet.Active = True) then
      RecalcAll;

    if Assigned(SumListChanged) then
      SumListChanged(Self);
  end;
end;


procedure TEKDbSuma.RecalcAll;
var
  i: Integer;
  item:TEKDBSumaItem;
begin
  FDataSet.DisableControls;
  for i := 0 to FSumCollection.Count - 1 do //pongo en cero cada uno de los items
    TEKDBSumaItem(FSumCollection.Items[i]).SumValue:= 0;

  Changing := True;

  FDataSet.First; //me paro en el primer registro de la query
  while FDataSet.Eof = False do //mientas no sea el ultimo
  begin
    for i := 0 to FSumCollection.Count - 1 do //recorro uno por uno los items cargados
    begin
      item:= TEKDBSumaItem(FSumCollection.Items[i]);
      if (item.FGroupOperation = goCount) or (item.FFieldName <> '') then //si es una cuenta
      begin
        case Item.FGroupOperation of
          goSum:    begin //si es sumar
                      if (FDataSet.FieldByName(Item.FFieldName).IsNull = False) then //si el campo a sumar no es null
                        Item.SumValue:= Item.SumValue + FDataSet.FieldByName(Item.FFieldName).AsFloat;
                    end;
          goCount:  begin //si es contar
                      Item.SumValue:= Item.SumValue + 1;
                    end;
        end;
      end;
    end;

    FDataSet.Next;
  end;

  FDataSet.First;
  FDataSet.EnableControls;
  Filtered:= FDataSet.Filtered; //VER QUE HACE ACA
  Changing:= False;
end;

//DESPUES DE EDITAR
procedure TEKDbSuma.DataSetAfterEdit(DataSet: TDataSet);
var
  i: Integer;
  item:TEKDBSumaItem;
begin
  if (Assigned(OldAfterEdit)) then
    OldAfterEdit(DataSet);

  for i := 0 to FSumCollection.Count - 1 do
  begin
    item:= TEKDBSumaItem(FSumCollection.Items[i]);
    if (item.FGroupOperation = goCount) or (item.FFieldName <> '') then begin
      case Item.FGroupOperation of
        goSum:  begin
                  if (FDataSet.FieldByName(Item.FFieldName).IsNull = False) then //si el campo a sumar no es null
                    Item.ValorAnterior:= FDataSet.FieldByName(Item.FFieldName).AsFloat
                  else
                    Item.ValorAnterior:= 0;
                end;
        goCount: Item.ValorAnterior := 0;
      end;
    end;
  end;
end;

//DESPUES DE INSERTAR
procedure TEKDbSuma.DataSetAfterInsert(DataSet: TDataSet);
var
  i: Integer;
  item:TEKDBSumaItem;
begin
  if (Assigned(OldAfterInsert)) then
    OldAfterInsert(DataSet);

  for i := 0 to FSumCollection.Count - 1 do
  begin
    item := TEKDBSumaItem(FSumCollection.Items[i]);
    if (item.FGroupOperation = goCount) or (item.FFieldName <> '') then begin
      case Item.FGroupOperation of
        goSum: Item.ValorAnterior:= 0;
        goCount: Item.ValorAnterior:= 1;
      end;
    end;
  end;
end;

//DESPUES DE ABRIR
procedure TEKDbSuma.DataSetAfterOpen(DataSet: TDataSet);
begin
  if (Assigned(OldAfterOpen)) then
    OldAfterOpen(DataSet);

  RecalcAll;
  if Assigned(SumListChanged) then
    SumListChanged(Self);
end;

//DESPUES DE POSTEAR
procedure TEKDbSuma.DataSetAfterPost(DataSet: TDataSet);
var
  i: Integer;
  item:TEKDBSumaItem;
begin
  if (Assigned(OldAfterPost)) then
    OldAfterPost(DataSet);

  for i := 0 to FSumCollection.Count - 1 do
  begin
    item := TEKDBSumaItem(FSumCollection.Items[i]);
    if (item.FGroupOperation = goCount) or (item.FFieldName <> '') then begin
      case Item.FGroupOperation of
        goSum:  begin
                  if (FDataSet.FieldByName(Item.FFieldName).IsNull = False) then
                    Item.SumValue := Item.SumValue - Item.ValorAnterior + FDataSet.FieldByName(Item.FFieldName).AsFloat
                  else
                    Item.SumValue := Item.SumValue - Item.ValorAnterior;
                end;
        goCount: Item.SumValue := Item.SumValue + Item.ValorAnterior;
      end;
    end;
  end;

  if Assigned(SumListChanged) then
    SumListChanged(Self);
end;

//DESPUES DE MOVERSE
procedure TEKDbSuma.DataSetAfterScroll(DataSet: TDataSet);
begin
  if (Assigned(OldAfterScroll)) then
    OldAfterScroll(DataSet);

  if (Filtered <> DataSet.Filtered) and (Changing = False) then
  begin
    RecalcAll;
    if Assigned(SumListChanged) then
      SumListChanged(Self);
  end;
end;

//DESPUES DE BORRAR
procedure TEKDbSuma.DataSetBeforeDelete(DataSet: TDataSet);
var
  i: Integer;
  item:TEKDBSumaItem;
begin
  if (Assigned(OldBeforeDelete)) then
    OldBeforeDelete(DataSet);

  for i := 0 to FSumCollection.Count - 1 do
  begin
    item := TEKDBSumaItem(FSumCollection.Items[i]);
    if (item.FGroupOperation = goCount) or (item.FFieldName <> '') then
    begin
      case Item.FGroupOperation of
        goSum:   Item.SumValue:= Item.SumValue - FDataSet.FieldByName(Item.FFieldName).AsFloat;
        goCount: Item.SumValue:= Item.SumValue - 1;
      end;
    end;
  end;

  if Assigned(SumListChanged) then
    SumListChanged(Self);
end;

//DESPUES DE CERRAR
procedure TEKDbSuma.DataSetAfterClose(DataSet: TDataSet);
var
  i: Integer;
  item:TEKDBSumaItem;
begin
  if (Assigned(OldAfterClose)) then
    OldAfterClose(DataSet);

  for i := 0 to FSumCollection.Count - 1 do
  begin
    item:= TEKDBSumaItem(FSumCollection.Items[i]);
    item.SumValue := 0;
    item.ValorAnterior := 0;
  end;

  if Assigned(SumListChanged) then
    SumListChanged(Self);

  Changing:= False;
end;


procedure TEKDbSuma.SetSumCollection(const Value: TEKDBSumaItems);
begin
  FSumCollection.Assign(Value);
end;


procedure TEKDbSuma.Notification(AComponent: TComponent; Operation: TOperation);
var
  I: Integer;
  NeedLayout: Boolean;
begin
  inherited Notification(AComponent, Operation);

  if (Operation = opRemove) then
  begin
    if (AComponent is TDataSet) then
    begin
      if Assigned(FDataSet) and (AComponent.Name = FDataSet.Name) then
        FDataSet:= nil;
    end
  end;
end;
//-----------------------------------------------------------------
//      TEKDBSumaItem
//-----------------------------------------------------------------
procedure TEKDBSumaItem.Assign(Source: TPersistent);
begin
  if Source is TCheckConstraint then
  begin
   FGroupOperation:= TEKDBSumaItem(Source).FGroupOperation;
   FFieldName:= TEKDBSumaItem(Source).FFieldName;
   ValorAnterior:= TEKDBSumaItem(Source).ValorAnterior;
   SumValue:= TEKDBSumaItem(Source).SumValue;
  end;
  
  inherited Assign(Source);
end;

//Procedimento para mostrar el nombre que se carga en la lista de filtros
function TEKDBSumaItem.GetDisplayName: string;
begin
  result:= FFieldName;
  if Result = '' then
    Result := inherited GetDisplayName;
end;


function TEKDBSumaItems.GetOwner:TPersistent;
begin
  Result := FOwner;
end;


function TEKDBSumaItems.GetItem(Index: Integer): TEKDBSumaItem;
begin
 Result := TEKDBSumaItem(inherited GetItem(Index));
end;


procedure TEKDBSumaItems.SetItem(Index: Integer; Value: TEKDBSumaItem);
begin
 inherited SetItem(Index, Value);
end;
//-----------------------------------------------------------------
//      TEKDBSumaItems
//-----------------------------------------------------------------


end.

