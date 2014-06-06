unit UCargarPreventa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, EKBusquedaAvanzada, dxBar, dxBarExtItems,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla, StdCtrls, ActnList, XPStyleActnCtrls, ActnMan;

type
  TFPreventa = class(TForm)
    Panel1: TPanel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnSeleccionar: TdxBarLargeButton;
    btnSeleccinarYSalir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnSeleccionarTodos: TdxBarLargeButton;
    EKBuscarPresupuesto: TEKBusquedaAvanzada;
    DBGrid: TDBGrid;
    ZQ_Comprobante: TZQuery;
    DS_Comprobante: TDataSource;
    EKOrdenarGrilla: TEKOrdenarGrilla;
    ZQ_ComprobanteID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteID_SUCURSAL: TIntegerField;
    ZQ_ComprobanteID_PROVEEDOR: TIntegerField;
    ZQ_ComprobanteID_CLIENTE: TIntegerField;
    ZQ_ComprobanteID_TIPO_CPB: TIntegerField;
    ZQ_ComprobanteID_VENDEDOR: TIntegerField;
    ZQ_ComprobanteID_COMP_ESTADO: TIntegerField;
    ZQ_ComprobanteCODIGO: TStringField;
    ZQ_ComprobanteFECHA: TDateTimeField;
    ZQ_ComprobanteOBSERVACION: TStringField;
    ZQ_ComprobanteBASE_IMPONIBLE: TFloatField;
    ZQ_ComprobanteSALDO: TFloatField;
    ZQ_ComprobanteIMPORTE_TOTAL: TFloatField;
    ZQ_ComprobantePORC_IVA: TFloatField;
    ZQ_ComprobanteIMPORTE_IVA: TFloatField;
    ZQ_ComprobantePORC_DESCUENTO: TFloatField;
    ZQ_ComprobanteIMPORTE_DESCUENTO: TFloatField;
    ZQ_ComprobanteENCABEZADO: TStringField;
    ZQ_ComprobantePIE: TStringField;
    ZQ_ComprobanteFECHA_COBRADA: TDateField;
    ZQ_ComprobanteFECHA_ENVIADA: TDateField;
    ZQ_ComprobanteFECHA_IMPRESA: TDateField;
    ZQ_ComprobanteFECHA_VENCIMIENTO: TDateField;
    ZQ_ComprobantePUNTO_VENTA: TIntegerField;
    ZQ_ComprobanteNUMERO_CPB: TIntegerField;
    ZQ_ComprobanteFECHA_ANULADO: TDateField;
    ZQ_ComprobanteID_TIPO_IVA: TIntegerField;
    ZQ_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_ComprobanteIMPORTE_VENTA: TFloatField;
    ZQ_ComprobanteSUC_: TStringField;
    ZQ_ComprobanteVENDEDOR_: TStringField;
    ZQ_ComprobanteTIVA_: TStringField;
    ZQ_ComprobanteCLIENTE_: TStringField;
    ZQ_ComprobanteIMAGEN: TBlobField;
    Label29: TLabel;
    ZQ_ComprobanteVENCIDA: TStringField;
    ZQ_ComprobanteSENIA_: TFloatField;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ASeccionar: TAction;
    procedure btnSeleccionarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBuscarClick(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridDblClick(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure ASeccionarExecute(Sender: TObject);

  Private
    { Private declarations }
  Public
    { Public declarations }
    OnSeleccionar: procedure() of object;
    vencida: string;
  end;

var
  FPreventa: TFPreventa;

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFPreventa.btnSeleccionarClick(Sender: TObject);
begin
  if ((not (DBGrid.SelectedRows.Count > 0)) and (not (ZQ_Comprobante.IsEmpty))) then
  begin
    if Assigned(OnSeleccionar) then
      OnSeleccionar
  end
  else
    Application.MessageBox(PChar('Debe seleccionar algún Comprobante.'), 'Datos Incompletos', MB_OK + MB_ICONWARNING);
end;


procedure TFPreventa.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFPreventa.FormCreate(Sender: TObject);
begin
  EKOrdenarGrilla.CargarConfigColumnas;

  if ZQ_Comprobante.IsEmpty then
  begin
    Application.ProcessMessages;
    ZQ_Comprobante.Close;
    ZQ_Comprobante.Open;
  end;
end;


procedure TFPreventa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenarGrilla.GuardarConfigColumnas;
end;


procedure TFPreventa.btnBuscarClick(Sender: TObject);
begin
  EKBuscarPresupuesto.Buscar;
end;


procedure TFPreventa.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillasConBajas(DBGrid, ZQ_ComprobanteVENCIDA.AsString, Rect, DataCol, Column, State)
end;


procedure TFPreventa.DBGridDblClick(Sender: TObject);
begin
  btnSeleccionar.Click;
end;

procedure TFPreventa.ABuscarExecute(Sender: TObject);
begin
btnBuscar.Click;
end;

procedure TFPreventa.ASeccionarExecute(Sender: TObject);
begin
btnSeleccionar.Click;
end;

end.

