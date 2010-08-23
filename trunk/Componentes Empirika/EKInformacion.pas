unit EKInformacion;

interface

uses
  SysUtils, Classes, ComCtrls;

type
  TEKInformacion = class(TComponent)
  private
    { Private declarations }
    FStatusBar : TStatusBar;
    FIndiceUsuario    : integer;
    FIndiceTransaccion: integer;
    FIndiceVersion    : integer;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor create(AOwner: TComponent); override;
    destructor destroy; override;
  published
    { Published declarations }
    property
      StatusBar : TStatusBar read FStatusBar write FStatusBar;
    property
      IndiceUsuario : integer read FIndiceUsuario write FIndiceUsuario default -1;
    property
      IndiceTransaccion : integer read FIndiceTransaccion write FIndiceTransaccion default -1;
    property
      IndiceVersion : integer read FIndiceVersion write FIndiceVersion default -1;
  end;

var EKInformacion1 : TEKInformacion;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKInformacion]);
end;

{ TEKInformacion }

constructor TEKInformacion.create(AOwner: TComponent);
begin
  inherited;
  EKInformacion1 := self;
  FIndiceUsuario := -1;
  FIndiceTransaccion := -1;
  FIndiceVersion := -1;
end;

destructor TEKInformacion.destroy;
begin

  inherited;
end;

end.
 