unit EKLlenarCombo;

interface

uses
  SysUtils, Classes, ZDataset, ZAbstractDataset, StdCtrls, Dialogs, DB;

type
  EKOnCambio = procedure(valor: string) of object;
type
  TEKLlenarCombo = class(TComponent)
  private
    { Private declarations }
    FDataset : TZQuery;
    FCampoVer : string;
    FCampoClave : string;
    FSelecClave : string;
    FCombo : TcomboBox;
    FOnCambio : EKOnCambio;
    procedure FNewOnChange (sender : TObject);
    procedure setcombo(const Value: TComboBox);
  protected
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    { Public declarations }
    procedure CargarCombo;
  published
    { Published declarations }
    property dataset : TZQuery read FDataset write FDataset;
    property combo : TComboBox read FCombo write setcombo;
    property OnCambio : EKOnCambio read FOnCambio write FOnCambio;
    property CampoClave : String read FCampoClave write FCampoClave;
    property CampoVer : String read FCampoVer write FCampoVer;
    property SelectClave : String read FSelecClave write FSelecClave;

    procedure SetItem(item : integer);
    procedure setItemNombre(nombre: string);
    procedure setItemID(id: integer);
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKLlenarCombo]);
end;

{ TEKLlenarCombo }

procedure TEKLlenarCombo.CargarCombo;
  var x : integer;
begin
  if ((not Assigned (FDataset)) or (not Assigned (FCombo))) then
    exit;

  if FDataset.Active then
    FDataset.Refresh
  else
    FDataset.Active := true;

  FCombo.Items.Clear;
  FDataset.First;
  for x := 1 to FDataset.RecordCount do
  begin
    FCombo.Items.Add(FDataset.fieldbyname(FCampoVer).AsString);
    FDataset.Next;
  end;
  FCombo.Text := '';
  FCombo.ItemIndex := -1;
end;


procedure TEKLlenarCombo.FNewOnChange(sender: TObject);
begin
  if FDataset.FieldByName(FCampoVer).ClassType = tdatefield then
  begin
    if FDataset.Locate(FCampoVer,strtodate(FCombo.Items[FCombo.ItemIndex]),[]) then
    begin
      FSelecClave := FDataset.fieldbyname(FCampoClave).AsString;
      if Assigned(FonCambio) then
         FOnCambio(FSelecClave);
    end;
  end
  else
  if FDataset.Locate(FCampoVer,FCombo.Items[FCombo.ItemIndex],[]) then
  begin
    FSelecClave := FDataset.fieldbyname(FCampoClave).AsString;
    if Assigned(FonCambio) then
       FOnCambio(FSelecClave);
  end
  else
  begin
    if NOT(FCombo.Items[FCombo.ItemIndex]  = 'TODOS') then
       ShowMessage('Valor no Encontrado en la Lista');
    FSelecClave := '';
    if Assigned(FonCambio) then
       FOnCambio(FSelecClave);
  end;
end;


procedure TEKLlenarCombo.setcombo(const Value: TComboBox);
begin
  FCombo := Value;
  FCombo.OnChange := FNewOnChange;
end;


procedure TEKLlenarCombo.SetItem(item: integer);
begin
  combo.ItemIndex:=item;
  FNewOnChange(nil);
end;


procedure TEKLlenarCombo.SetItemID(id: integer);
var
  nombre: string;
begin
  nombre:= '';
  if dataset.Locate(FCampoClave, id, []) then
    nombre:= FDataset.fieldbyname(FCampoVer).AsString;

  if nombre <> '' then
    combo.ItemIndex:= combo.Items.IndexOf(nombre);
  FNewOnChange(nil);
end;


procedure TEKLlenarCombo.setItemNombre(nombre: string);
begin
  combo.ItemIndex:= combo.Items.IndexOf(nombre);
  FNewOnChange(nil);
end;


procedure TEKLlenarCombo.Notification(AComponent: TComponent; Operation: TOperation);
var
  I: Integer;
  NeedLayout: Boolean;
begin
  inherited Notification(AComponent, Operation);

  if (Operation = opRemove) then
  begin
    if (AComponent is TComboBox) then
    begin
      if Assigned(FCombo) and (AComponent.Name = FCombo.Name) then
        FCombo:= nil;
    end
  end;
end;

end.
 