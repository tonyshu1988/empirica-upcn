unit UConciliacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, StdCtrls, ExtCtrls, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFConciliacion = class(TForm)
    PContenedor: TPanel;
    DBGridListaErogacion: TDBGrid;
    pDatos: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    lblNombreCuenta: TLabel;
    Label4: TLabel;
    lblFechaDesde: TLabel;
    lblFechaHasta: TLabel;
    Label7: TLabel;
    StaticText1: TStaticText;
    dxBarABM: TdxBarManager;
    btnListadoErogaciones: TdxBarLargeButton;
    btnLibroBanco: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btn2: TdxBarLargeButton;
    btImprimir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    ZQ_Cuentas: TZQuery;
    ZQ_CuentasID_CUENTA: TIntegerField;
    ZQ_CuentasNOMBRE_CUENTA: TStringField;
    ZQ_CuentasMEDIO_DE_PAGO: TStringField;
    ZQ_CuentasNRO_CUENTA_BANCARIA: TStringField;
    ZQ_CuentasULTIMO_NRO: TIntegerField;
    ZQ_CuentasAUTONUMERAR: TStringField;
    ZQ_CuentasMEDIO_POR_DEFECTO: TIntegerField;
    ZQ_CuentasBUSQUEDA: TStringField;
    DS_Cuentas: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConciliacion: TFConciliacion;

implementation

uses UDM;

{$R *.dfm}

procedure TFConciliacion.FormCreate(Sender: TObject);
begin

  dm.EKModelo.abrir(ZQ_Cuentas);
//  TEKCriterioBA(EKBAvanzadaListadoErog.CriteriosBusqueda.Items[1]).Valor := DateToStr(StartOfAMonth(YearOf(DM.EKModelo.Fecha),MonthOf(DM.EKModelo.Fecha)));
//  TEKCriterioBA(EKBAvanzadaListadoErog.CriteriosBusqueda.Items[2]).Valor := DateToStr(EndOfAMonth(YearOf(DM.EKModelo.Fecha),MonthOf(DM.EKModelo.Fecha)));
//
//  lblNombreCuenta.Caption:= '';
//  lblFechaDesde.Caption:= '';
//  lblFechaHasta.Caption:= '';
end;

end.
