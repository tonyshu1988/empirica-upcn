unit UDM;

interface

uses
  Forms, SysUtils, Classes, ZConnection, WinSkinData, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, EKUsrLogin, EKInformacion, EKModelo,
  EKAppEvnts, EKEventos;

type
  TDM = class(TDataModule)
    Conexion: TZConnection;
    SkinData1: TSkinData;
    EKEventos1: TEKEventos;
    EKModelo: TEKModeloTransaccion;
    EKInformacion1: TEKInformacion;
    EKUsrLogin1: TEKUsrLogin;
    procedure LoginLogin(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TDM.LoginLogin(Sender: TObject);
begin
  Application.CreateForm(TFPrincipal, FPrincipal);
end;

end.
