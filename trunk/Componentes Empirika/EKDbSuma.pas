unit EKDbSuma;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB;

type
  TGroupOperation = (goSum,goCount);

  TEKDBSumaItem = class(TCollectionItem)
  protected
   FGroupOperation:TGroupOperation;
   FFieldName:String;
   Value:Currency;
  public
   SumValue:Currency;
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
    { Private declarations }
  protected
    FSumCollection:TEKDBSumaItems;
    FDataSet:TDataSet;
    FSumListChanged:TNotifyEvent;

    Filtered:Boolean;
    Changing:Boolean;

    OldAfterEdit :TDataSetNotifyEvent;
    OldAfterInsert :TDataSetNotifyEvent;
    OldAfterOpen :TDataSetNotifyEvent;
    OldAfterPost :TDataSetNotifyEvent;
    OldAfterScroll :TDataSetNotifyEvent;
    OldBeforeDelete :TDataSetNotifyEvent;
    OldAfterClose :TDataSetNotifyEvent;

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
    { Protected declarations }
  public

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure RecalcAll;
    { Public declarations }
  published
    property SumCollection:TEKDBSumaItems read FSumCollection write SetSumCollection;

    property DataSet: TDataSet read FDataSet write SetDataSet;
    property SumListChanged: TNotifyEvent read FSumListChanged write FSumListChanged;
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKDbSuma]);
end;

constructor TEKDbSuma.Create(AOwner: TComponent);
begin
  inherited;
  FSumCollection := TEKDBSumaItems.Create(TEKDBSumaItem);
  FSumCollection.FOwner := Self;
end;

destructor TEKDbSuma.Destroy;
begin
  inherited;
  FSumCollection.Free;
end;

procedure TEKDbSuma.SetDataSet(Value:TDataSet);
begin
  if (csDesigning in ComponentState) or (csLoading in ComponentState) then
    FDataSet := Value
  else
    Raise Exception.Create(' Assigning DataSet at runtime not available ');
end;

procedure TEKDbSuma.Loaded;
begin
  inherited;
  if not (csDesigning in ComponentState) and Assigned(FDataSet) then begin
    OldAfterEdit := FDataSet.AfterEdit;
    OldAfterInsert := FDataSet.AfterInsert;
    OldAfterOpen := FDataSet.AfterOpen;
    OldAfterPost := FDataSet.AfterPost;
    OldAfterScroll := FDataSet.AfterScroll;
    OldBeforeDelete := FDataSet.BeforeDelete;
    OldAfterClose := FDataSet.AfterClose;

    FDataSet.AfterEdit := DataSetAfterEdit;
    FDataSet.AfterInsert := DataSetAfterInsert;
    FDataSet.AfterOpen := DataSetAfterOpen;
    FDataSet.AfterPost := DataSetAfterPost;
    FDataSet.AfterScroll := DataSetAfterScroll;
    FDataSet.BeforeDelete := DataSetBeforeDelete;
    FDataSet.AfterClose := DataSetAfterClose;

    if (FDataSet.Active = True) then RecalcAll;
    if Assigned(SumListChanged) then SumListChanged(Self);

  end;
end;

procedure TEKDbSuma.RecalcAll;
var i: Integer;
    item:TEKDBSumaItem;
begin

  FDataSet.DisableControls;
  for i := 0 to FSumCollection.Count - 1 do
    TEKDBSumaItem(FSumCollection.Items[i]).SumValue := 0;

  Changing := True;

  FDataSet.First;
  while FDataSet.Eof = False do begin
    for i := 0 to FSumCollection.Count - 1 do begin
      item := TEKDBSumaItem(FSumCollection.Items[i]);
      if (item.FGroupOperation = goCount) or (item.FFieldName <> '') then begin
        case Item.FGroupOperation of
          goSum:
          begin
            if (FDataSet.FieldByName(Item.FFieldName).IsNull = False) then
              Item.SumValue := Item.SumValue + FDataSet.FieldByName(Item.FFieldName).AsFloat;
          end;
          goCount: Item.SumValue := Item.SumValue + 1;
        end;
      end;
    end;
    FDataSet.Next;
  end;
  FDataSet.First;

  FDataSet.EnableControls;
//  Form1.Edit1.Text := FormatFloat('#,##0.0',cur);
//  SumValue := Cur;
  Filtered := FDataSet.Filtered;
  Changing := False;

end;

procedure TEKDbSuma.DataSetAfterEdit(DataSet: TDataSet);
var i: Integer;
    item:TEKDBSumaItem;
begin
  if (Assigned(OldAfterEdit)) then
   OldAfterEdit(DataSet);

  for i := 0 to FSumCollection.Count - 1 do begin
    item := TEKDBSumaItem(FSumCollection.Items[i]);
    if (item.FGroupOperation = goCount) or (item.FFieldName <> '') then begin
      case Item.FGroupOperation of
        goSum:
          if (FDataSet.FieldByName(Item.FFieldName).IsNull = False) then
            Item.Value := FDataSet.FieldByName(Item.FFieldName).AsFloat
          else
            Item.Value := 0;
        goCount: Item.Value := 0;
      end;
    end;
  end;

end;

procedure TEKDbSuma.DataSetAfterInsert(DataSet: TDataSet);
var i: Integer;
    item:TEKDBSumaItem;
begin
  if (Assigned(OldAfterInsert)) then
   OldAfterInsert(DataSet);

  for i := 0 to FSumCollection.Count - 1 do begin
    item := TEKDBSumaItem(FSumCollection.Items[i]);
    if (item.FGroupOperation = goCount) or (item.FFieldName <> '') then begin
      case Item.FGroupOperation of
        goSum: Item.Value := 0;
        goCount: Item.Value := 1;
      end;
    end;
  end;

end;

procedure TEKDbSuma.DataSetAfterOpen(DataSet: TDataSet);
begin
  if (Assigned(OldAfterOpen)) then
   OldAfterOpen(DataSet);

  RecalcAll;
  if Assigned(SumListChanged) then SumListChanged(Self);

end;

procedure TEKDbSuma.DataSetAfterPost(DataSet: TDataSet);
var i: Integer;
    item:TEKDBSumaItem;
begin
  if (Assigned(OldAfterPost)) then
   OldAfterPost(DataSet);

  for i := 0 to FSumCollection.Count - 1 do begin
    item := TEKDBSumaItem(FSumCollection.Items[i]);
    if (item.FGroupOperation = goCount) or (item.FFieldName <> '') then begin
      case Item.FGroupOperation of
        goSum:
          if (FDataSet.FieldByName(Item.FFieldName).IsNull = False) then
            Item.SumValue := Item.SumValue - Item.Value + FDataSet.FieldByName(Item.FFieldName).AsFloat
          else
            Item.SumValue := Item.SumValue - Item.Value;
        goCount:
          Item.SumValue := Item.SumValue + Item.Value;
      end;
    end;
  end;

  if Assigned(SumListChanged) then SumListChanged(Self);

end;

procedure TEKDbSuma.DataSetAfterScroll(DataSet: TDataSet);
begin
  if (Assigned(OldAfterScroll)) then
   OldAfterScroll(DataSet);

  if (Filtered <> DataSet.Filtered) and (Changing = False) then  begin
    RecalcAll;
    if Assigned(SumListChanged) then SumListChanged(Self);
  end;
end;

procedure TEKDbSuma.DataSetBeforeDelete(DataSet: TDataSet);
var i: Integer;
    item:TEKDBSumaItem;
begin
  if (Assigned(OldBeforeDelete)) then
   OldBeforeDelete(DataSet);

  for i := 0 to FSumCollection.Count - 1 do begin
    item := TEKDBSumaItem(FSumCollection.Items[i]);
    if (item.FGroupOperation = goCount) or (item.FFieldName <> '') then begin
      case Item.FGroupOperation of
        goSum: Item.SumValue := Item.SumValue - FDataSet.FieldByName(Item.FFieldName).AsFloat;
        goCount: Item.SumValue := Item.SumValue - 1;
      end;
    end;
  end;

  if Assigned(SumListChanged) then SumListChanged(Self);

end;

procedure TEKDbSuma.DataSetAfterClose(DataSet: TDataSet);
var i: Integer;
    item:TEKDBSumaItem;
begin
  if (Assigned(OldAfterClose)) then
   OldAfterClose(DataSet);

  for i := 0 to FSumCollection.Count - 1 do begin
    item := TEKDBSumaItem(FSumCollection.Items[i]);
    item.SumValue := 0;
    item.Value := 0;
  end;

  if Assigned(SumListChanged) then SumListChanged(Self);

  Changing := False;
end;

procedure TEKDbSuma.SetSumCollection(const Value: TEKDBSumaItems);
begin
   FSumCollection.Assign(Value);
end;


//
//  TDBSum
//

procedure TEKDBSumaItem.Assign(Source: TPersistent);
begin
  if Source is TCheckConstraint then
  begin
   FGroupOperation := TEKDBSumaItem(Source).FGroupOperation;
   FFieldName := TEKDBSumaItem(Source).FFieldName;
   Value := TEKDBSumaItem(Source).Value;
   SumValue := TEKDBSumaItem(Source).SumValue;
  end;
  inherited Assign(Source);
end;

//
//  TDBSumCollection
//

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


end.

