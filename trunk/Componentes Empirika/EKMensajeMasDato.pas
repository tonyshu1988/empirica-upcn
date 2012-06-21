unit EKMensajeMasDato;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, DB, Types, Graphics,
  Forms, messages, windows, Dialogs;

type
  TEKFieldType = (ftFloat, ftInteger, ftString, FtDate, FtDateTime);
  TEKMensajeMasDato = class(TComponent)
  private
    FTipoDato: TEKFieldType;
    FMensaje: string;
    FTituloForm: string;
    FTituloCampo: string;
    FFormHeight: integer;
    FFormWidth: integer;
    procedure SetTipoDato(const Value: TEKFieldType);
  protected
    fechaDateTime: TDateTime;
  public
    DatoFecha: TDateTime;
    DatoInteger: integer;
    DatoString: string;
    DatoFloat: Double;
    constructor Create(AOwner: TComponent); override;
    destructor destroy; override;
    function mostrarFormulario: boolean;
    procedure setFecha(fecha: TDateTime);
  published
    property TipoDato: TEKFieldType read FTipoDato write SetTipoDato;
    property Mensaje: String read FMensaje write FMensaje;
    property TituloForm: String read FTituloForm write FTituloForm;
    property TituloCampo: String read FTituloCampo write FTituloCampo;
    property FormHeight: integer read FFormHeight write FFormHeight;
    property FormWidth: integer read FFormWidth write FFormWidth;
  end;

procedure Register;

implementation

uses EKMensajeMasDatoForm;

procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKMensajeMasDato]);
end;


constructor TEKMensajeMasDato.Create(AOwner: TComponent);
begin
  inherited;
  TipoDato:= ftString;
  TituloForm:= 'Titulo';
  TituloCampo:= 'Valor:';
  Mensaje:= 'Ingrese un valor';
  FormHeight:= 123;
  FormWidth:= 433;

  DatoFecha:= -1;
  DatoInteger:= -1;
  DatoFloat:= -1;
  DatoString:= '';

  fechaDateTime:= Now;
end;


destructor TEKMensajeMasDato.destroy;
begin
  inherited;
end;


function TEKMensajeMasDato.mostrarFormulario: boolean;
begin
  Result:= false;

  Application.CreateForm(TFMensajeMasDato, FMensajeMasDato);
  with FMensajeMasDato do
  begin
    setTamanio(FormHeight, FormWidth);
    setFechaDateTime(fechaDateTime);
    lblMensaje.Caption:= Mensaje;
    lblTituloCampo.Caption:= TituloCampo;
    FMensajeMasDato.Caption:= TituloForm;
    Edit_Dato.Visible:= false;
    DateTimePicker_Dato.Visible:= false;
    if (FTipoDato = ftFloat) or (FTipoDato = ftInteger) or (FTipoDato = ftString) then
      Edit_Dato.Visible:= true
    else
      if (FTipoDato = FtDate) or (FTipoDato = FtDateTime) then
        DateTimePicker_Dato.Visible:= true;

    if FMensajeMasDato.ShowModal = mrOK then
    begin
      Result:= true;
      try
        if (FTipoDato = ftFloat) then
          DatoFloat:= StrToFloat(Edit_Dato.Text)
        else
        if (FTipoDato = ftInteger) then
          DatoInteger:= StrToInt(Edit_Dato.Text)
        else
        if (FTipoDato = ftString) then
          DatoString:= Edit_Dato.Text
        else
        if (FTipoDato = FtDate) or (FTipoDato = FtDateTime) then
          DatoFecha:= DateTimePicker_Dato.DateTime;
      except
        Result:= false;
        Application.MessageBox('El Valor ingresado es incorrecto, verifique', 'Error Tipo Dato')
      end;
    end;
  end;

  FMensajeMasDato.Release;
end;

procedure TEKMensajeMasDato.setFecha(fecha: TDateTime);
begin
  fechaDateTime:= fecha;
end;

procedure TEKMensajeMasDato.SetTipoDato(const Value: TEKFieldType);
begin
  if (Value = ftFloat) or (Value = ftInteger) then
    FTipoDato:= Value
  else
    if (Value = ftString) then
      FTipoDato:= Value
    else
      if (Value = FtDate) or (Value = FtDateTime) then
        FTipoDato:= Value;
end;


end.
