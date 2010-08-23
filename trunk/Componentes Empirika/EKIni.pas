unit EKIni;

interface

uses
  SysUtils, Classes, IniFiles, EKEncriptado, Registry, Qforms;

type
  TEKIni = class(TComponent)
  private
    { Private declarations }
    FArchivo : String;
    FPath : String;
    FIni : TIniFile;
    FTextoEncriptar : string;
    FTextoDesencriptar : String;
    FTextoClave : String;
    procedure SetArchivo(const Value: String);
    procedure SetPath(const Value: String);
    procedure SetFTextoDesencriptar(const Value: String);
    procedure SetFTextoEncriptar(const Value: String);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor destroy; override;
    function Encripta(texto: string): string;
    function Desencripta(texto: string): string;
    function abrir : Boolean;
    procedure cerrar;
    function EsribirRegEntero(nombre_clave:string ;valor_entero : integer): boolean;
    function EsribirRegString(nombre_clave:string ;cadena_string : string): boolean;
    function LeerRegString(nombre_clave:string): string;
    function LeerRegnumero(nombre_clave:string): integer;

  published
    { Published declarations }
    property Archivo : String read FArchivo write SetArchivo;
    property Path : String read FPath write SetPath;
    property Ini : TIniFile read FIni;
    property TextoEncriptar : String read FTextoEncriptar write SetFTextoEncriptar;
    property TextoDesencriptar : String read FTextoDesencriptar write SetFTextoDesencriptar;
    property TextoClave : String read FTextoClave write FTextoClave;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKIni]);
end;

{ TEKIni }

function TEKIni.abrir: Boolean;
begin
  try
    if FPath = '' then
      FPath := GetCurrentDir+'\';

    if Assigned(FIni) then
      cerrar;
    FIni := TIniFile.Create(FPath+FArchivo);
    if FIni.SectionExists('SISTEMA') then
      result := true
    else
      Fini.WriteString('SISTEMA', 'IniVer','EK-1.0');
  except
    FIni := nil;
    result := false;
  end
end;

procedure TEKIni.cerrar;
begin
  if Assigned(FIni) then
  begin
    FIni.Free;
    FIni := nil;
  end;
end;

constructor TEKIni.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TEKIni.destroy;
begin
  inherited;
end;

function TEKIni.Desencripta(texto: string): string;
begin
  if FTextoClave = '' then
//    result := Desencriptar('momiamun',pchar(texto),length(texto))
    result := Desencriptar('empirika',pchar(texto),length(texto))
  else
    result := Desencriptar(pchar(FtextoClave) ,pchar(texto),length(texto));
end;

function TEKIni.Encripta(texto: string): string;
begin
  if FTextoClave = '' then
//    result := Encriptar('momiamun',pchar(texto),length(texto))
  result := Encriptar('empirika',pchar(texto),length(texto))
  else
    result := Encriptar(pchar(FTextoClave),pchar(texto),length(texto));
end;

procedure TEKIni.SetArchivo(const Value: String);
begin
  FArchivo := Value;
end;

procedure TEKIni.SetFTextoDesencriptar(const Value: String);
begin
  FTextoDesencriptar := Value;
  FTextoEncriptar := Desencripta(Value);
end;

procedure TEKIni.SetFTextoEncriptar(const Value: String);
begin
  FTextoEncriptar := Value;
  FTextoDesencriptar := Encripta(value);
end;

procedure TEKIni.SetPath(const Value: String);
begin
  FPath := Value;
end;

function TEKIni.EsribirRegEntero(nombre_clave: string;
  valor_entero: integer): boolean;
  var registro : TRegistry;
  var openkey : string;
  var resultado : boolean;
begin
    Registro:=TRegistry.Create;
    resultado := true;
    try
      openkey := '\Software\EmpiriKa\'+ ExtractFileName(Application.ExeName) + '\Configuraciones';
      Registro.OpenKey(openkey,True);
      Registro.WriteInteger(nombre_clave, valor_entero);
    except
      resultado := false;
    end;
    registro.Free;
    EsribirRegEntero := resultado;
end;

function TEKIni.EsribirRegString(nombre_clave,
  cadena_string: string): boolean;
  var registro : TRegistry;
  var openkey : string;
  var resultado : boolean;
begin
    Registro:=TRegistry.Create;
    resultado := true;
    try
      openkey := '\Software\EmpiriKa\'+ ExtractFileName(Application.ExeName) + '\Configuraciones';
      Registro.OpenKey(openkey,True);
      Registro.Writestring(nombre_clave, cadena_string);
    except
      resultado := false;
    end;
    registro.Free;
    EsribirRegString := resultado;
end;

function TEKIni.LeerRegnumero(nombre_clave: string): integer;
  var registro : TRegistry;
  var openkey : string;
  var resultado : integer;
begin
    Registro:=TRegistry.Create;
    resultado := 0;
    try
      openkey := '\Software\EmpiriKa\'+ ExtractFileName(Application.ExeName) + '\Configuraciones';
      Registro.OpenKey(openkey,False);
      if Registro.ValueExists(nombre_clave) then
        resultado:=Registro.ReadInteger(nombre_clave);
    except
    end;
    registro.Free;
    LeerRegnumero := resultado;
end;

function TEKIni.LeerRegString(nombre_clave: string): string;
  var registro : TRegistry;
  var openkey : string;
  var resultado : string;
begin
    Registro:=TRegistry.Create;
    resultado := '';
    try
      openkey := '\Software\EmpiriKa\'+ ExtractFileName(Application.ExeName) + '\Configuraciones';
      Registro.OpenKey(openkey,False);
      if Registro.ValueExists(nombre_clave) then
        resultado:=Registro.ReadString(nombre_clave);
    except
    end;
    registro.Free;
    LeerRegString := resultado;
end;

end.
