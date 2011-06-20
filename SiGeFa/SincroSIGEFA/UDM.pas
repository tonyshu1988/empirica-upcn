unit UDM;

interface

uses
  SysUtils, Classes, ZConnection, ImgList, Controls, EKModelo;

type
  TDM = class(TDataModule)
    ZC_Remoto: TZConnection;
    ZC_Local: TZConnection;
    Iconos_Barra_32: TImageList;
    ModeloLocal: TEKModeloTransaccion;
    ModeloRemoto: TEKModeloTransaccion;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
