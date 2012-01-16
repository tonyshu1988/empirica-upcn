unit UDM;

interface

uses
  Forms,SysUtils, Classes, ZConnection, ImgList, Controls, EKModelo,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, WinSkinData,
  IdExplicitTLSClientServerBase, IdFTP, Graphics, MidasLib;

type
  TDM = class(TDataModule)
    ConexionDB: TZConnection;
    Iconos_Barra_32: TImageList;
    ModeloDB: TEKModeloTransaccion;
    SkinData1: TSkinData;
    IdFTP: TIdFTP;
    ConexionLogin: TZConnection;
    ModeloLogin: TEKModeloTransaccion;
    procedure IdFTPWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

const
//  DOMINGO    = 1;
//  LUNES      = 2;
//  MARTES     = 3;
//  MIERCOLES  = 4;
//  JUEVES     = 5;
//  VIERNES    = 6;
//  SABADO     = 7;

  LUNES      = 1;
  MARTES     = 2;
  MIERCOLES  = 3;
  JUEVES     = 4;
  VIERNES    = 5;
  SABADO     = 6;
  DOMINGO    = 7;

  ESTADO_SIN_PROCESAR = 'NO';
  ESTADO_PROCESADO = 'SI';  

implementation

uses UPrincipal;

{$R *.dfm}

procedure TDM.IdFTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  FPrincipal.pBar_Ftp.Position:= AWorkCount div 1024;
  Application.ProcessMessages;
end;

end.
