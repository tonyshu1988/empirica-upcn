unit UDM;

interface

uses
  SysUtils, Classes, ZConnection, ImgList, Controls, EKModelo, WinSkinData,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP;

type
  TDM = class(TDataModule)
    ZC_Local: TZConnection;
    Iconos_Barra_32: TImageList;
    ModeloLocal: TEKModeloTransaccion;
    SkinData1: TSkinData;
    IdFTP1: TIdFTP;
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
