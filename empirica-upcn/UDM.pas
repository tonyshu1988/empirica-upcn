unit UDM;

interface

uses
  SysUtils, Classes, ZConnection, EK_Modelo, EK_UsrLogin;

type
  TDataModule2 = class(TDataModule)
    EK_Login: TEK_UsrLogin;
    EK_Modelo: TEK_ModeloTransaccion;
    Conexion: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.
