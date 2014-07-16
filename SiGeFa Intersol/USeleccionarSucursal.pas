unit USeleccionarSucursal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKLlenarCombo;

type
  TFSeleccionarSucursal = class(TForm)
    btnAceptar: TButton;
    cBoxSucursales: TComboBox;
    ZQ_Sucursal: TZQuery;
    Label1: TLabel;
    ZQ_SucursalID_SUCURSAL: TIntegerField;
    ZQ_SucursalNOMBRE: TStringField;
    ZQ_SucursalDIRECCION: TStringField;
    ZQ_SucursalLOCALIDAD: TStringField;
    ZQ_SucursalCODIGO_POSTAL: TStringField;
    ZQ_SucursalTELEFONO: TStringField;
    ZQ_SucursalEMAIL: TStringField;
    ZQ_SucursalBAJA: TStringField;
    EKLlenarCombo: TEKLlenarCombo;
    btnSalir: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSeleccionarSucursal: TFSeleccionarSucursal;

implementation

{$R *.dfm}

Uses Udm, UPrincipal;

procedure TFSeleccionarSucursal.FormCreate(Sender: TObject);
var
  i: integer;
begin
//  if Ansipos('/', sucursales) <> 0 then //si existe mas de una caja cargada
//    StringReplace(sucursales, '/', ' or id_sucursal = ', [rfReplaceAll, rfIgnoreCase])
//  else

  EKLlenarCombo.CargarCombo;
  EKLlenarCombo.SetItem(0);
end;


procedure TFSeleccionarSucursal.btnAceptarClick(Sender: TObject);
begin
  if EKLlenarCombo.SelectClave <> '' then
  begin
    SUCURSAL_LOGUEO:= StrToInt(EKLlenarCombo.SelectClave);
    ModalResult:= mrOk;
  end
  else
    ShowMessage('Debe seleccionar una sucursal');
end;


procedure TFSeleccionarSucursal.btnSalirClick(Sender: TObject);
begin
  SUCURSAL_LOGUEO:= -1;
end;

end.