unit UOP_CargarOrden;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, StdCtrls, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, EKBusquedaAvanzada,
  ActnList, XPStyleActnCtrls, ActnMan;

type
  TFOP_CargarOrden = class(TForm)
    PContenedor: TPanel;
    DBGrid: TDBGrid;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnSeleccionar: TdxBarLargeButton;
    btnSeleccinarYSalir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnSeleccionarTodos: TdxBarLargeButton;
    ZQ_Optica_Orden: TZQuery;
    DS_Optica_Orden: TDataSource;
    ZQ_Optica_OrdenID_ORDEN: TIntegerField;
    ZQ_Optica_OrdenCODIGO_CLI: TStringField;
    ZQ_Optica_OrdenID_CLIENTE: TIntegerField;
    ZQ_Optica_OrdenID_ESTADO: TIntegerField;
    ZQ_Optica_OrdenFECHA_ORDEN: TDateField;
    ZQ_Optica_OrdenFECHA_PROMETIDO: TDateField;
    ZQ_Optica_OrdenCOD_BARRAS: TStringField;
    ZQ_Optica_OrdenOBSERVACIONES: TStringField;
    ZQ_Optica_OrdenNRO_FACTURA: TStringField;
    ZQ_Optica_OrdenENTREGADO_POR: TIntegerField;
    ZQ_Optica_OrdenFACTURADO_POR: TIntegerField;
    ZQ_Optica_OrdenMONTO_TOTAL: TFloatField;
    ZQ_Optica_OrdenMONTO_ENTREGADO: TFloatField;
    ZQ_Optica_OrdenSALDO: TFloatField;
    ZQ_Optica_OrdenCLIENTE: TStringField;
    ZQ_Optica_OrdenENTREGADO: TStringField;
    ZQ_Optica_OrdenFACTURADO: TStringField;
    ZQ_Optica_OrdenESTADO: TStringField;
    EKBusquedaAvanzadaOrden: TEKBusquedaAvanzada;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ASeccionar: TAction;
    ZQ_Optica_OrdenAVISAR: TStringField;
    ZQ_Optica_OrdenMONTO_RECONOCIDO: TFloatField;
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSeleccionarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure ASeccionarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    OnSeleccionar: procedure() of object;
    { Public declarations }
  end;

var
  FOP_CargarOrden: TFOP_CargarOrden;

implementation

uses UDM;

{$R *.dfm}

procedure TFOP_CargarOrden.btnBuscarClick(Sender: TObject);
begin
EKBusquedaAvanzadaOrden.Buscar;
end;

procedure TFOP_CargarOrden.btnSeleccionarClick(Sender: TObject);
begin
  if ((not (DBGrid.SelectedRows.Count > 0)) and (not (ZQ_Optica_Orden.IsEmpty))) then
  begin
    if Assigned(OnSeleccionar) then
      OnSeleccionar
  end
  else
    Application.MessageBox(PChar('Debe seleccionar algún Comprobante.'), 'Datos Incompletos', MB_OK + MB_ICONWARNING);
end;

procedure TFOP_CargarOrden.btnSalirClick(Sender: TObject);
begin
close;
end;

procedure TFOP_CargarOrden.ABuscarExecute(Sender: TObject);
begin
btnBuscar.Click;
end;

procedure TFOP_CargarOrden.ASeccionarExecute(Sender: TObject);
begin
btnSeleccionar.Click;
end;

end.
