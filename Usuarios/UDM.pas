unit UDM;

interface

uses
  Forms, SysUtils, Classes, EKUsrLogin, EKInformacion, EKAppEvnts, EKEventos,
  EKModelo, WinSkinData, ZConnection, ImgList, Controls;

type
  TDM = class(TDataModule)
    Conexion: TZConnection;
    SkinData: TSkinData;
    ConexionDB: TZConnection;
    EKModelo: TEKModeloTransaccion;
    EKEventos: TEKEventos;
    EKInformacion: TEKInformacion;
    EKUsrLogin: TEKUsrLogin;
    Iconos_Barra_32: TImageList;
    procedure EKUsrLoginLogin(Sender: TObject);
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

procedure TDM.EKUsrLoginLogin(Sender: TObject);
begin
  Application.CreateForm(TFPrincipal, FPrincipal);
end;

end.
