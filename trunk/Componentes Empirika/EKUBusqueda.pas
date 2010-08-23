unit EKUBusqueda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

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
    procedure BuscarClick(Sender: TObject);
    procedure SalirClick(Sender: TObject);
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

end.
