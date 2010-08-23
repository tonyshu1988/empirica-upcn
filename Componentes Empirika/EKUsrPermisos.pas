unit EKUsrPermisos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, Dialogs, Stdctrls;

type
  TEKUsrObjetoAccion = (EKVisible, EKEnabled, EKTabVisible, EKGrpEnabled);

  TEKUsrObjeto = class(TCollectionItem)
  private
    function GetDisplayName : string; override;
    function GetClave: String;
    procedure SetClave(const Value: String);
  protected
    FObjeto : TControl;
    FClave  : String;
    FAccion : TEKUsrObjetoAccion;
  public
  published
    Property Objeto : TControl read FObjeto write FObjeto;
    Property Clave : String read GetClave write SetClave;
    Property Accion : TEKUsrObjetoAccion read FAccion write FAccion;
  end;

  TEKUsrObjetos = class(TCollection)
  protected
   FOwner:TPersistent;
  public

  end;


  TEKUsrPermisos = class(TComponent)
  private
    { Private declarations }
    FObjetos  : TEKUsrObjetos;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor destroy; override;
    procedure Validar;
  published
    { Published declarations }
    property Objetos : TEKUsrObjetos read FObjetos write FObjetos;
  end;

procedure Register;

implementation

uses EKUsrLogin;

procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKUsrPermisos]);
end;

{ TEKUsrPermisos }

constructor TEKUsrPermisos.Create(AOwner: TComponent);
begin
  inherited;
  FObjetos := TEKUsrObjetos.Create(TEKUsrObjeto);
  FObjetos.FOwner := self;
end;

destructor TEKUsrPermisos.destroy;
begin
  FObjetos.Free;
  inherited;
end;

procedure TEKUsrPermisos.Validar;
var
  i, j : integer;
begin
  for i := 0 to FObjetos.Count-1 do
    case TEKUsrObjeto(FObjetos.items[i]).Accion of
      EKVisible:
        if EKUsrLogin1.PermisoAccion(TEKUsrObjeto(FObjetos.items[i]).Clave) then
          //TEKUsrObjeto(FObjetos.items[i]).FObjeto.Visible := true
        else
          TEKUsrObjeto(FObjetos.items[i]).FObjeto.Visible := false;
      EKEnabled:
        if EKUsrLogin1.PermisoAccion(TEKUsrObjeto(FObjetos.items[i]).Clave) then
          //TEKUsrObjeto(FObjetos.items[i]).FObjeto.Enabled := true
        else
          TEKUsrObjeto(FObjetos.items[i]).FObjeto.Enabled := false;
      EKTabVisible:
        if EKUsrLogin1.PermisoAccion(TEKUsrObjeto(FObjetos.items[i]).Clave) then
          //TTabSheet(TEKUsrObjeto(FObjetos.items[i]).FObjeto).TabVisible := true
        else
          TTabSheet(TEKUsrObjeto(FObjetos.items[i]).FObjeto).TabVisible := false;
      EKGrpEnabled:
        if EKUsrLogin1.PermisoAccion(TEKUsrObjeto(FObjetos.items[i]).Clave) then
        //begin
        //  for j := 0 to TGroupBox(TEKUsrObjeto(FObjetos.items[i]).FObjeto).ControlCount-1 do
        //      TGroupBox(TEKUsrObjeto(FObjetos.items[i]).FObjeto).Controls[j].Enabled := true;
        //end
        else
        begin
          for j := 0 to TGroupBox(TEKUsrObjeto(FObjetos.items[i]).FObjeto).ControlCount-1 do
              TGroupBox(TEKUsrObjeto(FObjetos.items[i]).FObjeto).Controls[j].Enabled := false;
        end;
    end;
end;

{ TEKUsrObjeto }

function TEKUsrObjeto.GetClave: String;
begin
  result := FClave;
end;

function TEKUsrObjeto.GetDisplayName: string;
var
  ac : string;
begin
  if Assigned(Fobjeto)  then
  begin
    case FAccion of
      EKVisible: ac := 'EKVisible';
      EKEnabled: ac := 'EKEnabled';
      EKTabVisible: ac := 'EKTabVisible';
      EKGrpEnabled: ac := 'EKGrpEnabled';
    else
      ac := '';
    end;

    result := FObjeto.Name+' : '+FClave+' : '+ac;
  end
  else
    result := ClassName+'['+inttostr(Index)+']';
end;

procedure TEKUsrObjeto.SetClave(const Value: String);
begin
  FClave := value;
end;

end.
