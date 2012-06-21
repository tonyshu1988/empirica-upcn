unit EKMensajeMasDatoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFMensajeMasDato = class(TForm)
    btnAceptar: TButton;
    btnCancelar: TButton;
    lblMensaje: TLabel;
    lblTituloCampo: TLabel;
    Edit_Dato: TEdit;
    DateTimePicker_Dato: TDateTimePicker;
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure setTamanio(height, width: integer);
    procedure setFechaDateTime(fecha: TDateTime);
  end;

var
  FMensajeMasDato: TFMensajeMasDato;

implementation

{$R *.dfm}

procedure TFMensajeMasDato.btnAceptarClick(Sender: TObject);
begin
  ModalResult:= mrOK;
end;


procedure TFMensajeMasDato.btnCancelarClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;


procedure TFMensajeMasDato.setFechaDateTime(fecha: TDateTime);
begin
  DateTimePicker_Dato.DateTime:= fecha;
end;

procedure TFMensajeMasDato.setTamanio(height, width: integer);
begin
  FMensajeMasDato.Height:= height;
  FMensajeMasDato.Width:= width;  
end;

end.
