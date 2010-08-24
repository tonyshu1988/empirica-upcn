unit UABMProveedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, StdCtrls, DBCtrls, Mask, ExtCtrls, Grids,
  DBGrids;

type
  TFABMProveedores = class(TForm)
    DBGridProveedores: TDBGrid;
    Panel_edicion: TPanel;
    Shape5: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape4: TShape;
    Shape2: TShape;
    Shape1: TShape;
    Shape3: TShape;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABMProveedores: TFABMProveedores;

implementation

{$R *.dfm}

end.
