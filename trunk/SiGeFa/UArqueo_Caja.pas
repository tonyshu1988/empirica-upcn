unit UArqueo_Caja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, ExtCtrls, dxBar,
  dxBarExtItems;

type
  TFArqueo_Caja = class(TForm)
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnExportarXLS: TdxBarLargeButton;
    btnEditarGrilla: TdxBarLargeButton;
    btnProcesarImportes: TdxBarLargeButton;
    btnSeleccionar: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btBuscarGoogle: TdxBarLargeButton;
    btImprimirEtiquetas: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PanelContenedor: TPanel;
    Panel5: TPanel;
    Splitter1: TSplitter;
    Panel1: TPanel;
    lblComprobantes: TLabel;
    DBGridProducto: TDBGrid;
    Panel2: TPanel;
    Splitter2: TSplitter;
    Panel3: TPanel;
    DBGridListadoProductos: TDBGrid;
    Panel4: TPanel;
    DBGridFormaPago: TDBGrid;
    PanelFiltro: TPanel;
    BtnFiltro_Todos: TSpeedButton;
    BtnFiltro_Hoy: TSpeedButton;
    BtnFiltro_EstaSemana: TSpeedButton;
    Label39: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FArqueo_Caja: TFArqueo_Caja;

implementation

{$R *.dfm}

end.
