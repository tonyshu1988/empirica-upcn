unit EKUBusqueda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ActnList, XPStyleActnCtrls, ActnMan;

type
  TFBusqueda = class(TForm)
    c_nro: TComboBox;
    c_texto: TComboBox;
    c_yo: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    labelyo: TLabel;
    labelcondicion2: TLabel;
    Buscar: TButton;
    Salir: TButton;
    Shape1: TShape;
    Bot_Vaciar: TButton;
    ActionManager1: TActionManager;
    ABuscar: TAction;
    AVaciar: TAction;
    ACancelar: TAction;
    procedure BuscarClick(Sender: TObject);
    procedure SalirClick(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure AVaciarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBusqueda: TFBusqueda;

implementation
uses EKBusquedaAvanzada;
{$R *.dfm}

procedure TFBusqueda.BuscarClick(Sender: TObject);
begin
  ModalResult := mrOK
end;

procedure TFBusqueda.SalirClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFBusqueda.ABuscarExecute(Sender: TObject);
begin
  if Buscar.Visible then
    Buscar.Click;
end;

procedure TFBusqueda.AVaciarExecute(Sender: TObject);
begin
  if Bot_Vaciar.Visible then
    Bot_Vaciar.Click;
end;

procedure TFBusqueda.ACancelarExecute(Sender: TObject);
begin
  if Salir.Visible then
    Salir.Click;
end;

end.
