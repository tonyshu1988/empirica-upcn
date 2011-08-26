unit UEstadisticaDisponibilidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZStoredProcedure,
  EKBusquedaAvanzada, StdCtrls;

type
  TFEstadisticaDisponibilidades = class(TForm)
    PanelContenedor: TPanel;
    PageControl: TPageControl;
    TabSaldosCuentas: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnVerDetalle: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBaja: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    ZP_SaldosCuentas: TZStoredProc;
    DS_SaldosCuentas: TDataSource;
    DBGridSaldoCuentas: TDBGrid;
    ZP_SaldosCuentasID_CUENTA: TIntegerField;
    ZP_SaldosCuentasCODIGO: TStringField;
    ZP_SaldosCuentasNOMBRE_CUENTA: TStringField;
    ZP_SaldosCuentasNRO_CTA_BANCO: TStringField;
    ZP_SaldosCuentasIMPORTE: TFloatField;
    EKBuscarSaldo: TEKBusquedaAvanzada;
    ZQ_Sucursal: TZQuery;
    ZQ_SucursalID_SUCURSAL: TIntegerField;
    ZQ_SucursalNOMBRE: TStringField;
    ZQ_SucursalDIRECCION: TStringField;
    ZQ_SucursalLOCALIDAD: TStringField;
    ZQ_SucursalCODIGO_POSTAL: TStringField;
    ZQ_SucursalTELEFONO: TStringField;
    ZQ_SucursalEMAIL: TStringField;
    ZQ_SucursalBAJA: TStringField;
    ZQ_SucursalLOGO: TBlobField;
    ZQ_SucursalREPORTE_TITULO: TStringField;
    ZQ_SucursalREPORTE_SUBTITULO: TStringField;
    ZQ_SucursalCOMPROBANTE_TITULO: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON1: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON2: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON3: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON4: TStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    lblSaldo_Total: TLabel;
    lblSaldo_Encabezado2: TLabel;
    lblSaldo_Encabezado1: TLabel;
    Panel3: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Label4: TLabel;
    Panel6: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid2: TDBGrid;
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEstadisticaDisponibilidades: TFEstadisticaDisponibilidades;

implementation

uses UDM;

{$R *.dfm}

procedure TFEstadisticaDisponibilidades.FormCreate(Sender: TObject);
begin
  PageControl.ActivePageIndex:= 0;
  dm.EKModelo.abrir(ZQ_Sucursal);

  lblSaldo_Total.Caption:= '';
  lblSaldo_Encabezado1.Caption:= '';
  lblSaldo_Encabezado2.Caption:= '';

  TEKCriterioBA(EKBuscarSaldo.CriteriosBusqueda.Items[1]).Valor := DateToStr(dm.EKModelo.FechayHora);
end;


procedure TFEstadisticaDisponibilidades.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFEstadisticaDisponibilidades.btnBuscarClick(Sender: TObject);
begin
  if PageControl.ActivePage.Name = 'TabSaldosCuentas' then
  begin
    if  EKBuscarSaldo.BuscarSinEjecutar then
      if EKBuscarSaldo.ParametrosSeleccionados1[1] = '' then
      begin
        Application.MessageBox('No se ha cargado la fecha', 'Verifique', MB_OK + MB_ICONINFORMATION);
        btnBuscar.Click;
      end
      else
      begin
        ZP_SaldosCuentas.Close;
        if EKBuscarSaldo.ParametrosSeleccionados1[0] = '' then
          ZP_SaldosCuentas.ParamByName('id_sucursal').AsInteger:= -1
        else
          ZP_SaldosCuentas.ParamByName('id_sucursal').AsInteger:= StrToInt(EKBuscarSaldo.ParametrosSeleccionados1[0]);
        ZP_SaldosCuentas.ParamByName('fecha_hasta').AsDate := StrToDate(EKBuscarSaldo.ParametrosSeleccionados1[1]);
        ZP_SaldosCuentas.Open;

        lblSaldo_Encabezado1.Caption:= 'Saldo Cuentas al '+EKBuscarSaldo.ParametrosSeleccionados1[1];
        lblSaldo_Encabezado2.Caption:= 'Sucursal: '+EKBuscarSaldo.ParametrosSelecReales1[0];
      end;
  end;
end;




end.
