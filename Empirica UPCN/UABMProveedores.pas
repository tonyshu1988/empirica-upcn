unit UABMProveedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, StdCtrls, DBCtrls, Mask, ExtCtrls, Grids,
  DBGrids, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFABMProveedores = class(TForm)
    DBGridProveedores: TDBGrid;
    Panel_edicion: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label16: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBENombreApellido: TDBEdit;
    DBENombreFantasia: TDBEdit;
    DBETelefono: TDBEdit;
    DBEDireccion: TDBEdit;
    DBCBTipoDocumento: TDBComboBox;
    DBENroDocumento: TDBEdit;
    DBEEmail: TDBEdit;
    dxBarABM: TdxBarManager;
    BtNuevo: TdxBarLargeButton;
    BtModificar: TdxBarLargeButton;
    BtEliminar: TdxBarLargeButton;
    btAutoComit: TdxBarLargeButton;
    BtGuardar: TdxBarLargeButton;
    BtCancelar: TdxBarLargeButton;
    BtDuplicar: TdxBarLargeButton;
    Bt_Seleccionar: TdxBarLargeButton;
    btBajar: TdxBarLargeButton;
    bt_salir: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    GrupoModEspecial: TdxBarGroup;
    GrupoBuscar: TdxBarGroup;
    PanelContenedor: TPanel;
    ZQ_IE_Proveedores: TZQuery;
    DS_IE_Proveedores: TDataSource;
    ZQ_IE_ProveedoresNRO_PROVEEDOR: TIntegerField;
    ZQ_IE_ProveedoresAPELLIDO_Y_NOMBRE: TStringField;
    ZQ_IE_ProveedoresNOMBRE_FANTASIA: TStringField;
    ZQ_IE_ProveedoresDIRECCION: TStringField;
    ZQ_IE_ProveedoresTIPO_DOCUMENTO: TStringField;
    ZQ_IE_ProveedoresNRO_DOCUMENTO: TStringField;
    ZQ_IE_ProveedoresTELEFONOS: TStringField;
    ZQ_IE_ProveedoresEMAIL: TStringField;
    ZQ_IE_ProveedoresBAJA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABMProveedores: TFABMProveedores;

implementation

uses UDM;

{$R *.dfm}

end.
