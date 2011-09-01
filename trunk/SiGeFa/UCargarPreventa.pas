unit UCargarPreventa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, EKBusquedaAvanzada, dxBar, dxBarExtItems,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla;

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
    ZQ_ComprobanteCODIGO: TStringField;
    ZQ_ComprobanteID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteFECHA: TDateTimeField;
    ZQ_ComprobantePORC_IVA: TFloatField;
    ZQ_ComprobanteSUC_: TStringField;
    ZQ_ComprobanteVENDEDOR_: TStringField;
    ZQ_ComprobanteTIVA_: TStringField;
    ZQ_ComprobanteCLIENTE_: TStringField;
    ZQ_ComprobanteIMPORTETOTAL: TFloatField;
    DS_Comprobante: TDataSource;
    EKOrdenarGrilla: TEKOrdenarGrilla;
    procedure btnSeleccionarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
    OnSeleccionar : procedure() of object;
  end;

var
  FPreventa: TFPreventa;

implementation

uses UDM;

{$R *.dfm}

procedure TFPreventa.btnSeleccionarClick(Sender: TObject);
begin
if ((not(DBGrid.SelectedRows.Count > 0)) and (not(ZQ_Comprobante.IsEmpty))) then
  begin
    if Assigned(OnSeleccionar) then
      OnSeleccionar
  end
  else
    Application.MessageBox(PChar('Debe seleccionar algún Comprobante.'),'Datos Incompletos',MB_OK+MB_ICONWARNING);
end;

procedure TFPreventa.btnSalirClick(Sender: TObject);
begin
close;
end;

procedure TFPreventa.FormCreate(Sender: TObject);
begin
 if ZQ_Comprobante.IsEmpty then
  begin
    Application.ProcessMessages;
    btnBuscar.Click;
  end;
end;

procedure TFPreventa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
EKOrdenarGrilla.GuardarConfigColumnas;
end;

end.
