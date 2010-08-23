unit EKEdit;


interface

uses
  SysUtils, Classes, Controls, StdCtrls, DB, Types, Graphics,
  Forms, messages, windows, Dialogs;

type

  TEKFieldType = ftUnknown..ftDateTime;

  TEKEdit = class(TEdit)
  private
    { Private declarations }
    FDataType : TEKFieldType;
    FCanvas : TControlCanvas;
    FFocused : Boolean;
    FAsFloat : Double;
    FAsInteger : Integer;
    function GetTextMargins: TPoint;
    function Validar : boolean;
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    procedure SetAsFloat(const Value: Double);
    procedure SetAsInteger(const Value: Integer);
    function GetAsFloat: Double;
    function GetAsInteger: Integer;
    procedure SetDataType(const Value: TEKFieldType);
    function GetAsCurrency: double;
    procedure SetAsCurrency(const Value: double);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure DoExit; override;
    procedure DoEnter; override;
    procedure Change; override;

 Published
    { Published declarations }
    Property
      DataType : TEKFieldType read FDataType write SetDataType;
  public
    Property
      AsFloat : Double read GetAsFloat write SetAsFloat;
    Property
      AsInteger : Integer read GetAsInteger write SetAsInteger;
    Property
      AsCurrency : double read GetAsCurrency write SetAsCurrency;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKEdit]);
end;

{ TEKEdit }

procedure TEKEdit.DoEnter;
begin

  FFocused := true;
  if DataType <> ftFloat then
  begin
    Text := trim(Text);
  end;
  inherited;
end;

procedure TEKEdit.DoExit;
begin
  if validar then
  begin
    FFocused := false;
    inherited;
  end
  else
  begin
    inherited;
    setfocus;
  end;
end;

procedure TEKEdit.Change;
begin
  inherited;
end;

function TEKEdit.Validar : boolean;
var
  f : double;
  i : integer;
  s : string;
  ds, ts : char;
  fs, fs1 : TFormatSettings;
begin
  validar:=true;

  if ((csDesigning in ComponentState) or (csLoading in ComponentState)) then
  begin
    exit;
  end;

  if (DataType = ftFloat) and (text <> '') then
  try
    GetLocaleFormatSettings(0,fs);
    GetLocaleFormatSettings(0,fs1);

    if pos('.', text)>0 then
    begin
      fs.DecimalSeparator := '.';
      fs.ThousandSeparator := ',';
      f :=  strtofloat(Text, fs);
      Text := '';
      Text := FormatFloat('0.00',	f, fs1);
    end
    else
    begin
      fs.DecimalSeparator := ',';
      fs.ThousandSeparator := '.';
      f :=  strtofloat(Text, fs);
      Text := '';
      Text := FormatFloat('0.00',	f, fs1);
    end;

  except
    ShowMessage('No es un número decimal válido');
    validar:=false;
  end;

  if (DataType = ftCurrency) and (text <> '') then
  try
    s:=Text;
    Text := '';
    Text := s;
  except
    ShowMessage('No es válido');
    validar:=false;
  end;

  if (DataType = ftInteger) and (text <> '') then
  try
    i:=strtoint(text);
    Text := '';
    Text := inttostr(i);
  except
    ShowMessage('No es un número entero válido');
    validar:=false;
  end;

end;

function TEKEdit.GetTextMargins: TPoint;
var
  DC: HDC;
  SaveFont: HFont;
  I: Integer;
  SysMetrics, Metrics: TTextMetric;
begin

  if NewStyleControls then
  begin
    if BorderStyle = bsNone then I := 0 else
      if Ctl3D then I := 1 else I := 2;
    Result.X := SendMessage(Handle, EM_GETMARGINS, 0, 0) and $0000FFFF + I;
    Result.Y := I;
  end else
  begin
    if BorderStyle = bsNone then I := 0 else
    begin
      DC := GetDC(0);
      GetTextMetrics(DC, SysMetrics);
      SaveFont := SelectObject(DC, Font.Handle);
      GetTextMetrics(DC, Metrics);
      SelectObject(DC, SaveFont);
      ReleaseDC(0, DC);
      I := SysMetrics.tmHeight;
      if I > Metrics.tmHeight then I := Metrics.tmHeight;
      I := I div 4;
    end;
    Result.X := I;
    Result.Y := I;
  end;


end;


procedure TEKEdit.WMPaint(var Message: TWMPaint);
var
  Left: Integer;
  Margins: TPoint;
  R: TRect;
  DC: HDC;
  PS: TPaintStruct;
  S: string;
  AAlignment: TAlignment;
  ExStyle: DWORD;
begin

  if FCanvas = nil then
  begin
    FCanvas := TControlCanvas.Create;
    FCanvas.Control := Self;
  end;
  DC := Message.DC;
  if DC = 0 then DC := BeginPaint(Handle, PS);
  FCanvas.Handle := DC;
  try
    FCanvas.Font := Font;
    with FCanvas do
    begin
      R := ClientRect;
      if not (NewStyleControls and Ctl3D) and (BorderStyle = bsSingle) then
      begin
        Brush.Color := clWindowFrame;
        FrameRect(R);
        InflateRect(R, -1, -1);
      end;
      Brush.Color := Color;
      if not Enabled then
        Font.Color := clGrayText;

      S := Text;
      if PasswordChar <> #0 then FillChar(S[1], Length(S), PasswordChar);
      Margins := GetTextMargins;

      if FFocused then
        Left := Margins.X
      else
        Left := ClientWidth - TextWidth(S) - Margins.X - 1;

//        Left := (ClientWidth - TextWidth(S)) div 2;

      if SysLocale.MiddleEast then UpdateTextFlags;
      TextRect(R, Left, Margins.Y, S);
    end;
  finally
    FCanvas.Handle := 0;
    if Message.DC = 0 then EndPaint(Handle, PS);
  end;


end;



procedure TEKEdit.SetAsFloat(const Value: Double);
var
  formato : TFormatSettings;

begin

  GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, formato);

  Text := FormatFloat('0.00', value, formato);

end;

procedure TEKEdit.SetAsInteger(const Value: Integer);
begin
  Text := inttostr(value);

end;

function TEKEdit.GetAsFloat: Double;
var
  formato : TFormatSettings;

begin
  if ftFloat = FDataType then
  try
    GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, formato);
    formato.DecimalSeparator:='.';
    formato.ThousandSeparator:=',';
    try
      result := strtofloat(text, formato);
    except
      formato.DecimalSeparator:=',';
      formato.ThousandSeparator:='.';
      result := strtofloat(text, formato);
    end;
  finally
  end;
end;

function TEKEdit.GetAsInteger: Integer;
begin
  if ftInteger = FDataType then
  try
    result := strtoint(text);
  finally
  end;
end;

procedure TEKEdit.SetDataType(const Value: TEKFieldType);
begin
  if (Value = ftFloat)

     or (Value = ftCurrency)
     or (Value = ftInteger)
     or (Value = ftUnknown) then
  begin
    FDataType := Value;
    text:='';
  end
  else
    ShowMessage('Tipo de dato no implementado');
end;

function TEKEdit.GetAsCurrency: double;
var
  formato : TFormatSettings;

begin
  if ftFloat = FDataType then
  try
    GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, formato);
    formato.DecimalSeparator:='.';
    formato.ThousandSeparator:=',';
    try
      result := strtofloat(text, formato);
    except
      formato.DecimalSeparator:=',';
      formato.ThousandSeparator:='.';
      result := strtofloat(text, formato);
    end;
  finally
  end;

end;

procedure TEKEdit.SetAsCurrency(const Value: double);
var
  formato : TFormatSettings;

begin

  GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, formato);

  Text := FormatCurr('$ 0.00',FloatToCurr(value), formato);

end;

constructor TEKEdit.Create(AOwner: TComponent);
begin
  inherited;
  Tag:=99;
end;

end.
