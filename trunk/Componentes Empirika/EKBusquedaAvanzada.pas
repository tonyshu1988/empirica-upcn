{$I EmpiriKa.inc}

unit EKBusquedaAvanzada;
interface
uses
  SysUtils, Classes, StdCtrls, EKModelo, ZDataset, Dialogs, Forms, Controls,
  dateutils, DB, DBGrids, Windows, ZAbstractDataset, Messages, Mask,
{$IFDEF TDXBARS}
   dxBar,
{$ENDIF}
  Graphics;
type
  EKEventoAlFinal = procedure(AlFinal: Boolean) of object;
  EKEventoAlInicio = procedure(AlInicio: boolean) of object;
  TEKCriterioTipo = (EK_Texto, EK_Fecha, EK_Numero, EK_Blob);
  TEKUsarWhere = (EK_Con_Where, EK_Sin_Where);
  TEKTipoIngreso = (EK_Edit, EK_Combo);

  TEKCriterioBA = class(TCollectionItem)
  private
    procedure SetTipoCampo(const Value: TEKCriterioTipo);
    function  GetDisplayName : string; override;
    procedure SetTipoIngreso(const Value: TEKTipoIngreso);
    procedure SetTipoComboValores(const Value: TStrings);
    procedure SetTipoComboValoresReales(const Value: TStrings);
    procedure setTipoCampoIndice(const Value: Integer);
    procedure setTipoCampoIndiceTxt(const Value: string);
    procedure SetearCampo;
   protected
    Fcondicion1 : TComboBox;
    FTexto1 : TMaskEdit;
    FTextoCombo1 : TComboBox;
    Fyo : TComboBox;
    Fcondicion2 : TComboBox;
    FTexto2 : TMaskEdit;
    FTextoCombo2 : TComboBox;
    FTextoCheck2 : TCheckBox;
    FOrdenar : TCheckBox;
    FNombreCampo : TLabel;

    FBacCondicion1 : integer;
    FBacTexto1 : string;
    FBacTextoCombo1 : integer;
    FBactextoCheck1 : boolean;
    FBacyo : Integer;
    FBacCondicion2 : integer;
    FBacTextoCombo2 : integer;
    FBacTexto2 : string;
    FBacOrdenar : boolean;

    FTitulo : String;
    FTabla : String;
    FMascara : String;
    FCampo : String;
    FTipoComboValores : TStrings;
    FTipoComboValoresReales : TStrings;
    FTipoComboSQL : TDataSet;
    FTipoComboSQLCampoVer : String;
    FTipoComboSQLCampoReal : String;
    FTipoComboEditable : Boolean;
    FCambiarCondicion : Boolean;
    FTipoIngreso : TEKTipoIngreso;
    FTipoCampo : TEKCriterioTipo;
    FTipoCampoIndice : integer;
    FTipoCampoIndiceTxt : string;
    FVaciarValor : Boolean;
    FAnchoComboBox : integer;

  public
    constructor Create(Collection: TCollection); override;
    destructor destroy ; override;
  published
    Property Titulo : string read FTitulo write Ftitulo;
    Property Campo : String read FCampo write FCampo;
    Property Tabla : String read FTabla write FTabla;
    Property TipoCampo : TEKCriterioTipo read FTipoCampo write SetTipoCampo default EK_Texto;
    Property Mascara : string read Fmascara write FMascara;
    Property TipoCampoIngreso : TEKTipoIngreso read FTipoIngreso write SetTipoIngreso  default EK_Edit;
    Property TipoCampoIndice : Integer read FTipoCampoIndice write setTipoCampoIndice default 0;
    Property TipoCampoIndiceVer : string read FTipoCampoIndiceTxt write setTipoCampoIndiceTxt;


    Property TipoComboSQL : TDataSet read FTipoComboSQL write FTipoComboSQL;
    Property TipoComboSQLCampoVer : String read FTipoComboSQLCampoVer write FTipoComboSQLCampoVer;
    Property TipoComboSQLCampoReal : string read FTipoComboSQLCampoReal write FTipoComboSQLCampoReal;
    Property TipoComboEditable : Boolean read FTipoComboEditable write FTipoComboEditable;
    Property TipoComboValoresVer : TStrings read FTipoComboValores write SetTipoComboValores;
    Property TipoComboValoresReales : TStrings read FTipoComboValoresReales write SetTipoComboValoresReales;
    property TipoComboAncho: integer read FAnchoComboBox write FAnchoComboBox;
    Property CambiarCondicion : Boolean read FCambiarCondicion write FCambiarCondicion default true;

    Property Valor : string read  FBacTexto1 write FBacTexto1;
    Property ItemIndex : integer read FBacTextoCombo1 write FBacTextoCombo1;
    property VaciarValor: Boolean read FVaciarValor write FVaciarValor default true;
  end;

  TEKCriterioLocate = class(TCollectionItem)
  private
    function GetDisplayName : string; override;
   protected
    FTitulo : String;
    FCampo : String;
    FTipoBusqueda : TLocateOptions;
  public
    constructor Create(Collection: TCollection); override;
  published
    Property
      Titulo : string read FTitulo write Ftitulo;
    Property
      Campo : String read FCampo write FCampo;
    Property
      TipoBusqueda : TLocateOptions read FTipoBusqueda write FTipoBusqueda;
  end;

  TEKCriteriosBA = class(TCollection)
  private
  protected
   FOwner:TPersistent;
  public
  end;

  TEKCriteriosLocate = Class(TCollection)
  private
  protected
   FOwner:TPersistent;
  public
  end;

  TEKBusquedaAvanzada = class;

  TEKStandar = class(TPersistent)
  private
    FbotonSiguiente : TButton;
    FBotonAnterior : TButton;
    FLocateCombo : TComboBox;
    FLocateEdit : TEdit;
    FOwner : TEKbusquedaavanzada;
    procedure SetFBotonAnterior(const Value: TButton);
    procedure SetFbotonSiguiente(const Value: TButton);
  public
  published
    Property
      Boton_Siguiente : TButton read FbotonSiguiente write SetFbotonSiguiente;
    Property
      Boton_Anterior : TButton read FBotonAnterior write SetFBotonAnterior;
    Property
      LocateCombo : TComboBox read FLocateCombo write FLocateCombo;
    Property
      LocateEdit : Tedit read FLocateEdit write FLocateEdit;
  end;


 {$IFDEF TDXBARS}
    TEKTDXBar = class(TPersistent)
    private
      FDXBarbotonSiguiente : TdxBarButton;
      FDXBarBotonAnterior : TdxBarButton;
      FDXBarLocateCombo : TdxBarCombo;
      FDXBarLocateEdit : TEdit;
      FOwner : TEKbusquedaavanzada;
    procedure setFDXBarBotonAnterior(const Value: TdxBarButton);
    procedure setFDXBarbotonSiguiente(const Value: TdxBarButton);
    public
    published
      Property
        TDXBar_Siguiente : TdxBarButton read FDXBarbotonSiguiente write setFDXBarbotonSiguiente;
      Property
        TDXBar_Anterior : TdxBarButton read FDXBarBotonAnterior write setFDXBarBotonAnterior;
      Property
        TDXCombo : TdxBarCombo read FDXBarLocateCombo write FDXBarLocateCombo;
      Property
        TDXEdit : TEdit read FDXBarLocateEdit write FDXBarLocateEdit;
    end;
 {$ENDIF}

  TEKBusquedaAvanzada = class(TComponent)
  private
    { Private declarations }
    FRegistrosTotal : Integer;
    FRegistrosDesde : Integer;
    FRegistrosHasta : Integer;
    FCriterios : TEKCriteriosBA;
    FModelo : TEKModeloTransaccion;
    FDataset : TZQuery;
    FSQL : TStrings;
    FSQL_Select : TStrings;
    FSQL_From   : TStrings;
    FSQL_Where  : TStrings;
    FSQL_Orden  : TStrings;

    FSQL_Select_Copia : TStrings;
    FSQL_From_Copia   : TStrings;
    FSQL_Where_Copia  : TStrings;
    FSQL_Orden_Copia  : TStrings;
    FParametrosBuscados : String;
    FParametrosSeleccionados1 : TStrings;
    FparametrosSelecReales1 : TStrings;
    FParametrosSelecCondicion1 : TStrings;
    Consulta : TStrings;
    FPantalla_reducida : boolean;
    FMostrar_vaciar_valores : boolean;

    FLimite : Integer;
    FAlInicio : EKEventoAlInicio;
    FAlFinal : EKEventoAlFinal;
    Contador : Integer;
    //TextoLocateAnterior : string;
    //IndiceLocateAnterior : integer;
    CopiaGuardada : Boolean;
    FinalDataset : Boolean;
    FStandar : TEKStandar;

    {$IFDEF TDXBARS}
      FTDXBar : TEKTDXBar;
    {$ENDIF}
    FSetWhere : TEKUsarWhere;
    FCriteriosLocate : TEKCriteriosLocate;

    FOldOnCreate : TNotifyEvent;
    FInfoRegistros : Tlabel;
    procedure ComboBoxEnter(Sender: TObject);
    procedure llenarcombo(sender : TObject);
    procedure SetWhere(const Value: TEKUsarWhere);
    function GetFSQL: TStrings;
    procedure SetSQL(const Value: TStrings);
    procedure SetSQL_From(const Value: TStrings);
    procedure SetSQL_Orden(const Value: TStrings);
    procedure SetSQL_Select(const Value: TStrings);
    procedure SetSQL_Where(const Value: TStrings);
    function EjecutarSql(): boolean;
    procedure BlanquearDatosBusqueda(Sender: TObject);
    // funciones de armar la query  //
    function convertir_y_o (_Y: TComboBox) :String;
    function armartexto (x: integer; operador: TComboBox; campo: TEdit) : string;
    function armarfecha (x: integer; operador: TComboBox; campo: TEdit) : string;
    function armalinea (index : Integer): string;
    procedure fonclickanterior(sender: TObject);
    procedure fonclicksiguiente (sender : TObject);
    procedure ContarRegistros;
  protected
    { Protected declarations }
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    { Public declarations }
    function ArmarConsulta(): TStrings;
    function Abrir() : boolean;
    procedure Siguiente();
    procedure Anterior();
    function Buscar() : boolean;
    function BuscarSinEjecutar() : boolean;
    function Buscar1(ejecutar:boolean) : boolean;
    procedure VerConsultaOriginal();
    procedure ProcesarCambiosEnConsulta();
    procedure ProcesarCambiosSinEjecutar();
    procedure BuscarLocate();
    constructor Create(AOwner: TComponent); override;
    destructor destroy ; override;

  published
    { Published declarations }
    Property
      CriteriosBusqueda : TEKCriteriosBA read FCriterios write FCriterios;
    Property
      CriteriosLocate : TEKCriteriosLocate read FCriteriosLocate write FCriteriosLocate;
    Property
      Modelo : TEKModeloTransaccion read FModelo write FModelo;
    Property
      DataSet : TZQuery read FDataSet write FDataSet;
    Property
      SQL : TStrings read GetFSQL write SetSQL;
    Property
      SQL_Select : TStrings read FSQL_Select write SetSQL_Select;
    Property
      SQL_From : TStrings read FSQL_From write SetSQL_From;
    Property
      SQL_Where : TStrings read FSQL_Where write SetSQL_Where;
    Property
      SQL_Orden : TStrings read FSQL_Orden write SetSQL_Orden;
    Property
      LimiteRegistros : Integer read FLimite write FLimite default 0;
    Property
      AlInicio : EKEventoAlInicio read FAlInicio write FAlInicio;
    Property
      AlFinal : EKEventoAlFinal read FAlFinal write FAlFinal;
    Property
      UsarWhereOriginal : TEKUsarWhere read FSetWhere write SetWhere;
    Property
      InfoRegistros : TLabel read FInfoRegistros write FInfoRegistros;
    Property
      CtrStandar : TEKStandar read FStandar write FStandar;
    Property
      PantallaReducida : Boolean read FPantalla_reducida write FPantalla_reducida default False;
    Property
      MostrarVaciarvalores : boolean read FMostrar_vaciar_valores write FMostrar_vaciar_valores default true;
    Property
      ParametrosBuscados : String read FParametrosBuscados write FParametrosBuscados;
    Property
      ParametrosSelecCondicion1 : TStrings read FParametrosSelecCondicion1 write setsql;   // pongo SETSql esto porque es para todo lo mismo de solo lectura
    Property
      ParametrosSeleccionados1 : TStrings read FParametrosSeleccionados1 write setsql;
    Property
      ParametrosSelecReales1 : TStrings read FparametrosSelecReales1 write setsql;

   {$IFDEF TDXBARS}
      Property
        CtrTDXBar : TEKTDXBar read FTDXBar write FTDXBar;
   {$ENDIF}
  end;

procedure Register;

implementation
uses EKUBusqueda;

procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKBusquedaAvanzada]);
end;

{ TEKCriterioBA }

constructor TEKCriterioBA.Create(Collection: TCollection);
begin
  inherited;
  FTipoComboValores := TStringList.Create;
  FTipoComboValoresReales := TStringList.Create;
  FTipoCampo := EK_Texto;
  FTipoIngreso := EK_Edit;
  FBacTextoCombo1 := -1;
  FBacTextoCombo2 := -1;
  FTitulo := 'Sin Titulo';
  FTipoCampoIndice := 0;
  FCambiarCondicion := true;
  FVaciarValor := true;
  FTipoCampoIndiceTxt := 'Contiene';
  FAnchoComboBox := 200;
end;

destructor TEKCriterioBA.destroy;
begin
  inherited;
  FTipoComboValores.Free;
  FTipoComboValoresReales.Free;
end;

function TEKCriterioBA.GetDisplayName: string;
begin
    result := FTitulo;
end;

procedure TEKCriterioBA.SetearCampo;
begin
  if FTipoCampo = EK_Fecha then
    FMascara := '##/##/####';
//  else
 //   FMascara := '';


  if ((FTipoCampo = EK_Numero) or (FTipoCampo = EK_Fecha)) then
    case FTipoCampoIndice of
      0: FTipoCampoIndiceTxt := '=';
      1: FTipoCampoIndiceTxt := '>';
      2: FTipoCampoIndiceTxt := '>=';
      3: FTipoCampoIndiceTxt := '<';
      4: FTipoCampoIndiceTxt := '<=';
      5: FTipoCampoIndiceTxt := '<>';
      6: FTipoCampoIndiceTxt := 'Desde - Hasta';
    else
      FTipoCampoIndicetxt := '=';
      FTipoCampoIndice := 0;
    end;

  if FTipoCampo = EK_Blob then
  begin
      FTipoCampoIndiceTxt := 'Contiene';
      FTipoCampoIndice := 0;
  end;

  if (FTipoCampo = EK_Texto)  then
    case FTipoCampoIndice of
      0: FTipoCampoIndiceTxt := 'Contiene';
      1: FTipoCampoIndiceTxt := 'Igual';
      2: FTipoCampoIndiceTxt := 'Empieza';
      3: FTipoCampoIndiceTxt := 'Termina';
      4: FTipoCampoIndiceTxt := 'Distinto';
      5: FTipoCampoIndiceTxt := 'No Contiene';      
    else
      FTipoCampoIndicetxt := 'Contiene';
      FTipoCampoIndice := 0;
    end;

  FBacCondicion1 := FTipoCampoIndice;
  FBacCondicion2 := FTipoCampoIndice;

  if ((FTipoCampoIndice = 6) AND ((FTipoCampo = EK_Numero) or (FTipoCampo = EK_Fecha)) ) then
  begin
    FBacCondicion1 := 2;
    FBacCondicion2 := 4;
  end;

end;

procedure TEKCriterioBA.SetTipoCampo(const Value: TEKCriterioTipo);
begin
  FTipoCampo := Value;
  SetearCampo;
end;

procedure TEKCriterioBA.setTipoCampoIndice(const Value: Integer);
begin
  FTipoCampoIndice := Value;
  SetearCampo;
end;

procedure TEKCriterioBA.setTipoCampoIndiceTxt(const Value: string);
begin
  //FTipoCampoIndiceTxt := Value;
  SetearCampo;
end;

procedure TEKCriterioBA.SetTipoComboValores(const Value: TStrings);
begin
  FTipoComboValores.Assign(Value);
end;

procedure TEKCriterioBA.SetTipoComboValoresReales(const Value: TStrings);
begin
  FTipoComboValoresReales.Assign(Value);
end;

procedure TEKCriterioBA.SetTipoIngreso(const Value: TEKTipoIngreso);
begin
  FTipoIngreso := Value;
end;

{ TEKCriterioLocate }

constructor TEKCriterioLocate.Create(Collection: TCollection);
begin
  inherited;
  ftitulo := 'Sin Titulo';
end;

function TEKCriterioLocate.GetDisplayName: string;
begin
    result := FTitulo;
end;

{ TEKBusquedaAvanzada }

constructor TEKBusquedaAvanzada.Create(AOwner: TComponent);
begin
	inherited;
  FRegistrosTotal := 0;
  FRegistrosDesde := 0;
  FRegistrosHasta := 0;

  FCriterios := TEKCriteriosBA.Create(TEKCriterioBA);
  //FCriterios.FContenedor := self;
  FCriteriosLocate := TEKCriteriosLocate.Create(TEKCriterioLocate);
  //FCriteriosLocate.FContenedor := self;

  FStandar := TEKStandar.Create;
  FStandar.FOwner := self;
 {$IFDEF TDXBARS}
    FTDXBar := TEKTDXBar.create;
    FTDXBar.FOwner := self;
 {$ENDIF}
  FSQL := TStringList.Create;
  FSQL_Select := TStringList.Create;
  FSQL_From := TStringList.Create;
  FSQL_Where := TStringList.Create;
  FSQL_Orden := TStringList.Create;
  FParametrosSeleccionados1 := TStringList.Create;
  FParametrosSelecCondicion1 := TStringList.Create;
  FparametrosSelecReales1 := TStringList.Create;
  FSQL_Select_Copia := TStringList.Create;
  FSQL_From_Copia := TStringList.Create;
  FSQL_Where_Copia := TStringList.Create;
  FSQL_Orden_Copia := TStringList.Create;

  Consulta := TStringList.Create;

  contador := 0;
  CopiaGuardada := false;
  FPantalla_reducida := false;
  FMostrar_vaciar_valores := true;
  FLimite := 0;
  if not ((csDesigning in ComponentState) or (csLoading in ComponentState)) then
  begin
    if Assigned(TForm(AOwner).OnCreate) then
      FOldOnCreate := TForm(AOwner).OnCreate;

    TForm(AOwner).OnCreate := llenarcombo;
  end;
end;

destructor TEKBusquedaAvanzada.destroy;
begin
  FCriterios.Free;
  FCriteriosLocate.Free;
  FStandar.Free;
 {$IFDEF TDXBARS}
    FTDXBar.Free;
 {$ENDIF}
  FSQL.Free;
  FSQL_Select.Free;
  FSQL_From.Free;
  FSQL_Where.Free;
  FSQL_Orden.Free;
  FParametrosSeleccionados1.Free;
  FParametrosSelecCondicion1.Free;
  FparametrosSelecReales1.Free;
  FSQL_Select_Copia.Free;
  FSQL_From_Copia.Free;
  FSQL_Where_Copia.Free;
  FSQL_Orden_Copia.Free;

  Consulta.Free;
  inherited;
end;

procedure TEKBusquedaAvanzada.SetWhere(const Value: TEKUsarWhere);
begin
  FSetWhere := Value;
end;

procedure TEKBusquedaAvanzada.SetSQL(const Value: TStrings);
begin
  ShowMessage('La propiedad  es de solo lectura.');
end;

procedure TEKBusquedaAvanzada.SetSQL_From(const Value: TStrings);
begin
  FSQL_From.Assign(Value);
end;

procedure TEKBusquedaAvanzada.SetSQL_Orden(const Value: TStrings);
begin
  FSQL_Orden.Assign(Value);
end;

procedure TEKBusquedaAvanzada.SetSQL_Select(const Value: TStrings);
begin
  FSQL_Select.Assign(Value);
end;

procedure TEKBusquedaAvanzada.SetSQL_Where(const Value: TStrings);
begin
  FSQL_Where.Assign(Value);
end;

function TEKBusquedaAvanzada.GetFSQL: TStrings;
var
  select: string;
  s : string;
begin
  FSQL.Clear;
  if LimiteRegistros > 0 then
  begin
    s := FSQL_Select.Text;
    select :=  stringreplace(s, 'SELECT','' , [rfIgnoreCase]);
    s :=  'SELECT FIRST '+inttostr(LimiteRegistros)+' SKIP '+IntToStr(contador);
    select := s+#13+ select;
    FSQL.Text := select;
  end
  else
    FSQL.AddStrings(FSQL_Select);

  FSQL.AddStrings(FSQL_From);
  FSQL.AddStrings(FSQL_Where);
  FSQL.AddStrings(FSQL_Orden);
  result := FSQL;
end;

//  inicio funciones de busqueda

function TEKBusquedaAvanzada.ArmarConsulta: TStrings;
var
  select: string;
  s : string;
begin
  if Not (CopiaGuardada) then
  begin
    //ShowMessage('haciendo copia');
    FSQL_Select_Copia.Clear;
    FSQL_From_Copia.Clear;
    FSQL_Where_Copia.Clear;
    FSQL_Orden_Copia.Clear;
    FSQL_Select_Copia.AddStrings(FSQL_Select);
    FSQL_From_Copia.AddStrings(FSQL_From);
    FSQL_Where_Copia.AddStrings(FSQL_Where);
    FSQL_Orden_Copia.AddStrings(FSQL_Orden);
    CopiaGuardada := true;
  end;

  Consulta.Clear;
  if LimiteRegistros > 0 then
  begin
    s := FSQL_Select_Copia.Text;
    select :=  stringreplace(s, 'SELECT','' , [rfIgnoreCase]);
    s :=  'SELECT FIRST '+inttostr(LimiteRegistros)+' SKIP '+IntToStr(contador);
    select := s+#13+ select;
    Consulta.Text := select;
  end
  else
    Consulta.AddStrings(FSQL_Select_Copia);

  Consulta.AddStrings(FSQL_From_Copia);
  Consulta.AddStrings(FSQL_Where_Copia);
  Consulta.AddStrings(FSQL_Orden_Copia);
  result := Consulta;
end;

function TEKBusquedaAvanzada.EjecutarSql;
var SavedParams : TParams;
    SavedConsulta : TStrings;
    abierto : boolean;
begin
    abierto := FDataset.Active;
    result := false;
    SavedParams := TParams.Create;
    SavedConsulta := TStringList.Create;
    try
      SavedParams.Assign(FDataset.Params);
      SavedConsulta.Assign(FDataset.SQL);
      DataSet.Active := false;
      FDataset.SQL.Clear;
      FDataset.SQL := ArmarConsulta;
      FDataset.Params.AssignValues(SavedParams);
    finally
    end;

    try
      modelo.abrir(DataSet);
    except
      ShowMessage('Hay un error en los parámetros ingresados'+#13+#13+'Verifique los campos numéricos o los campos fecha');
      FDataset.SQL.Assign(SavedConsulta);
      FDataset.Params.AssignValues(SavedParams);
      if abierto then
         Modelo.abrir(Dataset);
      result := false;
      exit;
    end;

    SavedParams.Free;
    SavedConsulta.Free;
    if contador = 0 then
    begin
      if Assigned(AlInicio) then
        AlInicio(True);
      if assigned(CtrStandar.Boton_Anterior) then
        CtrStandar.Boton_Anterior.Enabled := False;
      {$IFDEF TDXBARS}
        IF Assigned(CtrTDXBar.TDXBar_Anterior) then
          CtrTDXBar.TDXBar_Anterior.Enabled := false;
      {$ENDIF}
    end
    else
    begin
      if Assigned(AlInicio) then
        AlInicio(False);
      if assigned(CtrStandar.Boton_Anterior) then
        CtrStandar.Boton_Anterior.Enabled := True;
      {$IFDEF TDXBARS}
        IF Assigned(CtrTDXBar.TDXBar_Anterior) then
          CtrTDXBar.TDXBar_Anterior.Enabled := True;
      {$ENDIF}
    end;

    if DataSet.RecordCount < LimiteRegistros then
    begin
      if Assigned(AlFinal) then
        AlFinal(True);
      FinalDataset := true;
      if assigned(CtrStandar.Boton_Siguiente) then
        CtrStandar.Boton_Siguiente.Enabled := false;
      {$IFDEF TDXBARS}
        IF Assigned(CtrTDXBar.TDXBar_Siguiente) then
          CtrTDXBar.TDXBar_Siguiente.Enabled := false;
      {$ENDIF}
    end
    else
    begin
      if Assigned(AlFinal) then
        AlFinal(False);
      FinalDataset := false;
      if assigned(CtrStandar.Boton_Siguiente) then
        CtrStandar.Boton_Siguiente.Enabled := True;
      {$IFDEF TDXBARS}
        IF Assigned(CtrTDXBar.TDXBar_Siguiente) then
          CtrTDXBar.TDXBar_Siguiente.Enabled := True;
      {$ENDIF}
    end;
    result := true;
end;

function TEKBusquedaAvanzada.Abrir;
begin
  if (Assigned(FModelo) and Assigned(FDataset)) then
  begin
    contador := 0;
    if EjecutarSql() then
    begin
      if Assigned(InfoRegistros) then
        begin
          ContarRegistros;
          if FLimite > 0 then
            InfoRegistros.Caption := 'Total de Registros: '+inttostr(FRegistrosTotal)+'  -  Visualizando rango: [ 1 - '+ IntToStr(FLimite)+' ]'
          else
            InfoRegistros.Caption := 'Total de Registros: '+inttostr(FRegistrosTotal);
        end;
      result := true;
    end
    else
      result := false;
  end
  else
  begin
    ShowMessage('Debe Asignar el Modelo y el Dataset');
    result := false;
  end;
end;

procedure TEKBusquedaAvanzada.Siguiente;
begin
  if (Assigned(FModelo) and Assigned(FDataset)) then
  begin
    if not FinalDataset then
    begin
      if DataSet.Active then // si ya estaba abierto y sigo
        contador := contador + LimiteRegistros
      else
      begin                   // sino es como el abrir
        contador := 0;
      end;
      EjecutarSql();
      if Assigned(InfoRegistros) then
      begin
        if FLimite > 0 then
          InfoRegistros.Caption := 'Total de Registros: '+inttostr(FRegistrosTotal)+'  -  Visualizando rango: [ ' + IntToStr(contador + 1) + ' - ' + IntToStr(Contador + FLimite)+' ]'
        else
          InfoRegistros.Caption := 'Total de Registros: '+inttostr(FRegistrosTotal);
      end;
    end;
  end
  else
    ShowMessage('Debe Asignar el Modelo y el Dataset');
end;

procedure TEKBusquedaAvanzada.Anterior;
begin
  if (Assigned(FModelo) and Assigned(FDataset)) then
  begin
    if not (contador = 0) then
    begin
      if DataSet.Active then // si ya estaba abierto y sigo
        contador := contador - LimiteRegistros
      else                   // sino es como el abrir
      begin
        contador := 0;
      end;
      if Contador < 0  then    // por las dudas
        contador := 0;
      EjecutarSql();
      if Assigned(InfoRegistros) then
      begin
        if FLimite > 0 then
          InfoRegistros.Caption := 'Total de Registros: '+inttostr(FRegistrosTotal)+'  -  Visualizando rango: [ ' + IntToStr(contador + 1) + ' - ' + IntToStr(Contador + FLimite)+' ]'
        else
          InfoRegistros.Caption := 'Total de Registros: '+inttostr(FRegistrosTotal);
      end;
    end;
  end
  else
    ShowMessage('Debe Asignar el Modelo y el Dataset');
end;

procedure TEKBusquedaAvanzada.VerConsultaOriginal;
begin
  if (Assigned(FModelo) and Assigned(FDataset)) then
  begin
    FSQL_Select_Copia.Clear;
    FSQL_Select_Copia.AddStrings(FSQL_Select);
    FSQL_From_Copia.Clear;
    FSQL_From_Copia.AddStrings(FSQL_From);
    FSQL_Where_Copia.Clear;
    FSQL_Where_Copia.AddStrings(FSQL_Where);
    FSQL_Orden_Copia.Clear;
    FSQL_Orden_Copia.AddStrings(FSQL_Orden);
    contador := 0;
    EjecutarSql();
    if Assigned(InfoRegistros) then
    begin
      ContarRegistros;
      if FLimite > 0 then
        InfoRegistros.Caption := 'Total de Registros: '+inttostr(FRegistrosTotal)+'  -  Visualizando rango: [ 1 - '+ IntToStr(FLimite)+' ]'
      else
        InfoRegistros.Caption := 'Total de Registros: '+inttostr(FRegistrosTotal);
    end;

  end
  else
    ShowMessage('Debe Asignar el Modelo y el Dataset');
end;

procedure TEKBusquedaAvanzada.ProcesarCambiosEnConsulta;
begin
    CopiaGuardada := false;
    Abrir();
end;

 //  fin funciones de busqueda

function TEKBusquedaAvanzada.Buscar() : Boolean;
begin
  result := buscar1(true);
end;

function TEKBusquedaAvanzada.BuscarSinEjecutar() : Boolean;
begin
  result := buscar1(false);
end;

function TEKBusquedaAvanzada.Buscar1(ejecutar:boolean) : Boolean;
var
  i, x :integer ;
  top, ofset : integer;
  orden : string;
  ParamBuscados : String;
begin
  top := 0;
  if FCriterios.Count > 0 then
  begin
    Application.CreateForm(TFBusqueda, FBusqueda);
    ofset := 25;
    for i := 0 to FCriterios.Count-1 do
    begin
      top := 48 +(i*ofset);
      with TEKCriterioBA(FCriterios.Items[i]) do
      begin
        FNombreCampo := TLabel.Create(Self);
        FNombreCampo.Width := 157;
        FNombreCampo.AutoSize := False;
        FNombreCampo.Font.Style := [fsBold];
        FNombreCampo.Alignment := taRightJustify;
        FNombreCampo.Parent := Fbusqueda;
        FNombreCampo.Caption := FTitulo+':';
        FNombreCampo.Top := top+3;
        FNombreCampo.Left := 16;

        Fcondicion1 := TComboBox.Create(self);
        Fcondicion1.Parent := FBusqueda;
        Fcondicion1.Style := csDropDownList;
        Fcondicion1.Top := top;
        Fcondicion1.Left := 184;
        Fcondicion1.Width := 73;
        if TipoCampo = EK_Texto then
          Fcondicion1.Items := FBusqueda.c_texto.Items;
        if ((TipoCampo = EK_Fecha) OR (TipoCampo = EK_Numero)) then
          Fcondicion1.Items := FBusqueda.c_nro.Items;
        if TipoCampo = EK_Blob then
          Fcondicion1.Items.Add('Contiene');
        Fcondicion1.ItemIndex := FBacCondicion1;
        if not FCambiarCondicion then
           Fcondicion1.Enabled := false;

        if ((FTipoIngreso = EK_Edit)) then
        begin
          FTexto1 := TmaskEdit.Create(self);
          FTexto1.parent := Fbusqueda;
          FTexto1.Top := top;
          FTexto1.Left := 264;
          If FPantalla_reducida then
            FTexto1.Width := 221
          else
            FTexto1.Width := 121;
          if FMascara > '' then
            FTexto1.EditMask := FMascara;
          FTexto1.Text := FBacTexto1;
        end;

        if FTipoIngreso = EK_Combo then
        Begin
          FTextoCombo1 := TComboBox.Create(self);
          FTextoCombo1.parent := Fbusqueda;
          FTextoCombo1.Top := top;
          FTextoCombo1.Left := 264;
          if FPantalla_reducida then
            FTextoCombo1.Width := 221
          else
            FTextoCombo1.Width := 121;
          if FTipoComboEditable then
            FTextoCombo1.Style := csDropDown
          else
            FTextoCombo1.Style := csDropDownList;
          if (Assigned(FTipoComboSQL) and (FTipoComboSQLCampoVer > ''))then
          begin
            if not (TipoComboSQL.Active) then
              TipoComboSQL.Active := true;
            TipoComboSQL.First;
            FTipoComboValores.Clear;
            FTipoComboValoresReales.Clear;
            for x := 1 to TipoComboSQL.recordcount do
            begin
              FTipoComboValores.Add((TipoComboSQL.Fieldbyname(FTipoComboSQLCampoVer).asstring));
              if FTipoComboSQLCampoReal > '' then
                FTipoComboValoresReales.Add((TipoComboSQL.Fieldbyname(FTipoComboSQLCampoReal).asstring));
              FTextoCombo1.Items.Add(TipoComboSQL.Fieldbyname(FTipoComboSQLCampoVer).asstring);
              TipoComboSQL.Next;
            end;
          end
          else
            if Assigned(FTipoComboValores) then
              FTextoCombo1.Items := FTipoComboValores;

          FTextoCombo1.ItemIndex := FBacTextoCombo1;
          FTextoCombo1.OnEnter := ComboBoxEnter;
          FTextoCombo1.Tag:= TipoComboAncho;
        End;

        Fyo := TComboBox.Create(self);
        Fyo.parent := Fbusqueda;
        Fyo.Style := csDropDownList;
        fyo.Items := FBusqueda.c_yo.Items;
        Fyo.Top := top;
        Fyo.Left := 400;
        Fyo.Width := 49;
        Fyo.ItemIndex := FBacyo;
        if FPantalla_reducida then
          fyo.Visible := false;

        if not FCambiarCondicion then
           Fyo.Enabled := false;

        Fcondicion2 := TComboBox.Create(self);
        Fcondicion2.Parent := FBusqueda;
        Fcondicion2.Style := csDropDownList;
        Fcondicion2.Top := top;
        Fcondicion2.Left := 464;
        Fcondicion2.Width := 73;
        if not FCambiarCondicion then
           Fcondicion2.Enabled := false;

        if TipoCampo = EK_Texto then
          Fcondicion2.Items := FBusqueda.c_texto.Items;
        if ((TipoCampo = EK_Fecha) OR (TipoCampo = EK_Numero)) then
          Fcondicion2.Items := FBusqueda.c_nro.Items;
        if TipoCampo = EK_Blob then
          Fcondicion2.Items.Add('Contiene');
        Fcondicion2.ItemIndex := FBacCondicion2;
        if FPantalla_reducida then
          Fcondicion2.Visible := false;

        if FTipoIngreso = EK_Edit then
        Begin
          FTexto2 := TMaskEdit.Create(self);
          FTexto2.parent := Fbusqueda;
          FTexto2.Top := top;
          FTexto2.Left := 544;
          FTexto2.Width := 121;
          if FMascara > '' then
            FTexto2.EditMask := FMascara;
          FTexto2.Text := FBacTexto2;
          if FPantalla_reducida then
            FTexto2.Visible := false;
        end;

        if FTipoIngreso = EK_Combo then
        Begin
          FTextoCombo2 := TComboBox.Create(self);
          FTextoCombo2.parent := Fbusqueda;
          FTextoCombo2.Top := top;
          FTextoCombo2.Left := 544;
          FTextoCombo2.Width := 121;
          if FPantalla_reducida then
            FTextoCombo2.Visible := false;
          if FTipoComboEditable then
            FTextoCombo2.Style := csDropDown
          else
            FTextoCombo2.Style := csDropDownList;
          if (Assigned(FTipoComboSQL) and (FTipoComboSQLCampoVer > ''))then
          begin
            if not (TipoComboSQL.Active) then
              TipoComboSQL.Active := true;
            TipoComboSQL.First;
            for x := 1 to TipoComboSQL.recordcount do
            begin
              FTextoCombo2.Items.Add(TipoComboSQL.Fieldbyname(FTipoComboSQLCampoVer).asstring);
              TipoComboSQL.Next;
            end;
          end
          else
            if Assigned(FTipoComboValores) then
              FTextoCombo2.Items := FTipoComboValores;

          FTextoCombo2.ItemIndex := FBacTextoCombo2;
          FTextoCombo2.OnEnter := ComboBoxEnter;
          FTextoCombo2.Tag:= TipoComboAncho;
        End;

        FOrdenar := TCheckBox.Create(self);
        FOrdenar.Visible := false;
        FOrdenar.parent := Fbusqueda;
        FOrdenar.Top := top;
        FOrdenar.Left := 688;
        FOrdenar.Width := 17;
        FOrdenar.Height := 17;
        FOrdenar.Checked := FBacOrdenar;

      end;
    end;

    FBusqueda.Height := top+100;
    FBusqueda.Bot_Vaciar.OnClick := BlanquearDatosBusqueda;
    if TEKCriterioBA(FCriterios.Items[0]).Fcondicion1.enabled then
      FBusqueda.ActiveControl := TEKCriterioBA(FCriterios.Items[0]).Fcondicion1
    else
      FBusqueda.ActiveControl := TEKCriterioBA(FCriterios.Items[0]).FTexto1;

    if FPantalla_reducida then
    begin
//      FBusqueda.Bot_Vaciar.Left := 136;
//      FBusqueda.Salir.Left := 302;
//      FBusqueda.Width := 409;
      FBusqueda.Bot_Vaciar.Left := 186;
      FBusqueda.Salir.Left := 402;
      FBusqueda.Width := 509;
      FBusqueda.labelyo.Visible := false;
      FBusqueda.labelcondicion2.Visible := false;
    end;
    if not FMostrar_vaciar_valores then
      FBusqueda.Bot_Vaciar.Visible := false;
    if FBusqueda.ShowModal = mrOK then
    begin
      if NOT(CopiaGuardada) then
        ArmarConsulta;    //lo llamo para que guarde la copia antes de armar la query

      orden := '';
      FSQL_Where_Copia.Clear;
      if UsarWhereOriginal = EK_Sin_Where then
        FSQL_Where_Copia.Add('WHERE 1 = 1');

      if UsarWhereOriginal = EK_Con_Where then
        if (FSQL_Where.Count) > 0 then
          FSQL_Where_Copia.AddStrings(FSQL_Where)
        else
        FSQL_Where_Copia.Add('WHERE 1 = 1');

      FParametrosBuscados := '';
      FParametrosSeleccionados1.Clear;
      FParametrosSelecCondicion1.Clear;
      FparametrosSelecReales1.Clear;
      for i := 0 to FCriterios.Count-1 do
      begin
        with TEKCriterioBA(FCriterios.Items[i]) do
        begin
          // guardo los valores  y genero el ParametrosBuscado////
          ParamBuscados := '';
          FBacCondicion1 := Fcondicion1.ItemIndex;
          if FTipoIngreso = EK_Edit then
          begin
            FBacTexto1 := FTexto1.Text;
            FBacTexto2 := FTexto2.text;
            FTexto1.EditMask := '';  //  saco la mascara para que no me detecte por ej ../../.... como lleno
            FTexto2.EditMask := '';
            if FTexto1.Text <> '' then   // armo el Param Buscado
            begin
              ParamBuscados := FTitulo + ' ' + Fcondicion1.Items[Fcondicion1.ItemIndex] + ' ' +FBacTexto1;
              if FTexto2.Text <> '' then
                ParamBuscados := ParamBuscados + ' ' + Fyo.Items[Fyo.ItemIndex] + ' ' + FTitulo + ' ' + Fcondicion2.Items[Fcondicion2.ItemIndex] + ' ' +FBacTexto2;
            end;
            FTexto1.EditMask := Mascara;    // vuelvo a poner la mascara
            FTexto2.EditMask := Mascara;

          end;
          if FTipoIngreso = EK_Combo then
          Begin
            FBacTextoCombo1 := FTextoCombo1.ItemIndex;
            FBacTextoCombo2 := FTextoCombo2.ItemIndex;
            if FTextoCombo1.Text <> '' then   // armo el Param Buscado
            begin
              ParamBuscados := FTitulo + ' ' + Fcondicion1.Items[Fcondicion1.ItemIndex] + ' ' +FTextoCombo1.Text;
              if FTextoCombo2.Text <> '' then
                ParamBuscados := ParamBuscados + ' ' + Fyo.Items[Fyo.ItemIndex] + ' ' + FTitulo + ' ' + Fcondicion2.Items[Fcondicion2.ItemIndex] + ' ' +FTextoCombo2.Text;
            end;

          End;
          FBacyo := Fyo.ItemIndex;
          FBacCondicion2 := Fcondicion2.ItemIndex;
          FBacOrdenar := FOrdenar.Checked;

          // Armo las lineas //
           FSQL_Where_Copia.Add( armalinea(i));

          if ParamBuscados > '' then
            FParametrosBuscados := FParametrosBuscados + ParamBuscados + #13;
        end;
      end;

      if ejecutar then
      begin
        if Abrir() then
          result := true
        else
          result := false;
      end
      else
        result := true;

    end
    else
      result := false;
    FBusqueda.Release;
  end;
end;

// funciones de armar las query

function TEKBusquedaAvanzada.armalinea(index : integer): string;
var
  x: integer;
  txt : string;
  textovalor1 : Tedit;
  textovalor2 : Tedit;
  textovalor3 : Tedit;
  parambuscados : string;
begin
  parambuscados := '';
  x:= index;
  txt:= '';
  textovalor1 := TEdit.Create(nil);
  textovalor2 := TEdit.Create(nil);
  textovalor3 := TEdit.Create(nil);
  with TEKCriterioBA(FCriterios.Items[x]) do
  begin
      textovalor1.Text := '';
      textovalor2.Text := '';
      textovalor3.Text := '';

      if FTipoIngreso = EK_Edit then
      begin
        if Mascara > '' then
        begin
          FTexto1.EditMask := '';
          FTexto2.EditMask := '';
          if FTexto1.Text > '' then
          begin
            FTexto1.EditMask := Mascara;
            textovalor1.Text := FTexto1.Text;
            textovalor3.Text := FTexto1.Text;
          end;
          if FTexto2.Text > '' then
          begin
            FTexto2.EditMask := Mascara;
            textovalor2.Text := FTexto2.Text;
          end;
        end
        else
        begin
          textovalor1.Text := FTexto1.Text;
          textovalor2.Text := FTexto2.Text;
          textovalor3.Text := FTexto1.Text;
        end;
      end;

      if FTipoIngreso = EK_Combo then
      begin
//        if (FTextoCombo1.Items[FTextoCombo1.ItemIndex] > '') then
        if (FTextoCombo1.Text > '') then
        begin
          if FTextoCombo1.Style = csDropDown  then    //  si esta en editable pongo lo que escribio la persona
            textovalor1.Text := FTextoCombo1.Text
          else
           textovalor1.Text := FTextoCombo1.Items[FTextoCombo1.ItemIndex];
          textovalor3.Text := textovalor1.Text;
          if Assigned(FTipoComboValoresReales) then
            if FTipoComboValoresReales.Count > 0 then
              textovalor1.Text := FTipoComboValoresReales[FTextoCombo1.ItemIndex];
        end;

//        if (FTextoCombo2.Items[FTextoCombo2.ItemIndex] > '') then
        if (FTextoCombo2.Text > '') then
        begin
          if FTextoCombo2.Style = csDropDown  then    //  si esta en editable pongo lo que escribio la persona
            textovalor2.Text := FTextoCombo2.Text
          else
            textovalor2.Text := FTextoCombo2.Items[FTextoCombo2.ItemIndex];
          if Assigned(FTipoComboValoresReales) then
            if FTipoComboValoresReales.Count > 0 then
              textovalor2.Text := FTipoComboValoresReales[FTextoCombo2.ItemIndex];
        end;
      end;

      FParametrosSelecCondicion1.Add(Fcondicion1.Items[Fcondicion1.ItemIndex]);
      FParametrosSeleccionados1.Add (textovalor1.Text);
      FparametrosSelecReales1.Add(textovalor3.text);

      if (textovalor1.Text > '') then
      begin
          if TipoCampo = EK_Texto then
          begin
              txt:= txt + ' AND ((' + armartexto(x, FCondicion1, textovalor1)+')';
              if  (textovalor2.Text > '') then
                txt:=txt +' '+ convertir_y_o(Fyo) + ' ('+ armartexto(x, FCondicion2, textovalor2)+')';
          end;

          if TipoCampo = EK_Fecha then
          begin
              txt:= txt + ' AND ((' + armarfecha(x, FCondicion1, textovalor1)+')';
              if  (textovalor2.Text > '') then
                txt:=txt +' '+ convertir_y_o(Fyo) + ' ('+ armarfecha(x, FCondicion2, textovalor2)+')';
          end;

          if TipoCampo = EK_Numero then
          begin
            txt := ' AND (('+FTabla+'.'+FCampo +' ';
            txt:= txt+FCondicion1.Items[FCondicion1.ITEMINDEX]  +' '+textovalor1.Text+') ';
            if  (textovalor2.Text > '') then
              txt:= txt+ convertir_y_o(Fyo) + ' ('+ FTabla+'.'+FCampo +' ' + FCondicion2.Items[FCondicion2.ITEMINDEX]  +' '+textovalor2.Text+') '
          end;

          if TipoCampo = EK_Blob then
          begin
              txt:= txt + ' AND ((' + FTabla+'.'+FCampo +' CONTAINING '+ ''''+ textovalor1.Text+'''' +')';
              if  (textovalor2.Text > '') then
                txt:=txt +' '+ convertir_y_o(Fyo) + ' (' + FTabla+'.'+FCampo +' CONTAINING '+ ''''+ textovalor2.Text+'''' +')';
          end;

          txt:=txt +')';
      end;

    if FTabla = '' then  // Para usar valores en memoria
      txt := '';
  end;
  textovalor1.Free;
  textovalor2.Free;
  textovalor3.Free;
  armalinea := txt;
end;

function TEKBusquedaAvanzada.armarfecha(x: integer; operador: TComboBox;
  campo: TEdit): string;
  VAR   fecha : tdate;
        txt : string;
begin
    try
      fecha := strtodate(campo.Text);
    except
      ShowMessage('Hay un error en los parametros ingresados');
      exit;
    end;
    txt := inttostr(monthof(fecha))+'/'+ inttostr(dayof(fecha))+'/'+inttostr(yearof(fecha));
    armarfecha :=  ' '+ TEKCriterioBA(FCriterios.Items[x]).FTabla+'.'+TEKCriterioBA(FCriterios.Items[x]).FCampo +' '+operador.Items[operador.ItemIndex]+' '''+txt+'''';
end;

function TEKBusquedaAvanzada.armartexto(x: integer; operador: TComboBox;
  campo: TEdit): string;
begin
  if operador.Items[operador.ItemIndex] = 'Igual' then
    armartexto :=  ' UPPER('+ TEKCriterioBA(FCriterios.Items[x]).FTabla+'.'+TEKCriterioBA(FCriterios.Items[x]).FCampo +')  = '''+UpperCase(campo.Text)+'''';
  if operador.Items[operador.ItemIndex] = 'Distinto' then
    armartexto :=  ' UPPER('+ TEKCriterioBA(FCriterios.Items[x]).FTabla+'.'+TEKCriterioBA(FCriterios.Items[x]).FCampo +')  <> '''+UpperCase(campo.Text)+'''';
  if operador.Items[operador.ItemIndex] = 'Empieza' then
    armartexto :=  ' UPPER('+ TEKCriterioBA(FCriterios.Items[x]).FTabla+'.'+TEKCriterioBA(FCriterios.Items[x]).FCampo +')  LIKE '''+UpperCase(campo.Text)+'%''';
  if operador.Items[operador.ItemIndex] = 'Termina' then
    armartexto :=  ' UPPER('+ TEKCriterioBA(FCriterios.Items[x]).FTabla+'.'+TEKCriterioBA(FCriterios.Items[x]).FCampo +')  LIKE ''%'+UpperCase(campo.Text)+'''';
  if operador.Items[operador.ItemIndex] = 'Contiene' then
    armartexto :=  ' UPPER('+ TEKCriterioBA(FCriterios.Items[x]).FTabla+'.'+TEKCriterioBA(FCriterios.Items[x]).FCampo +')  LIKE ''%'+UpperCase(campo.Text)+'%''';
  if operador.Items[operador.ItemIndex] = 'No Contiene' then
    armartexto :=  ' UPPER('+ TEKCriterioBA(FCriterios.Items[x]).FTabla+'.'+TEKCriterioBA(FCriterios.Items[x]).FCampo +')  NOT LIKE ''%'+UpperCase(campo.Text)+'%''';

end;

function TEKBusquedaAvanzada.convertir_y_o(_Y: TComboBox): String;
var txt: string;
begin
  if ( _Y.Items[_y.itemindex] = 'Y') then
    txt:= 'AND';
  if ( _y.Items[_y.itemindex] = 'O') then
    txt:= 'OR';

      convertir_y_o := txt;
end;

// fin funciones armar query

procedure TEKBusquedaAvanzada.BlanquearDatosBusqueda(Sender: TObject);
var i : integer;
begin
    for i := 0 to FCriterios.Count-1 do
    begin
      with TEKCriterioBA(FCriterios.Items[i]) do
      begin
        if FVaciarValor then
        begin
          FBacCondicion1 := 0;
          if FTipoCampoIndice = 6 then // desde hasta
          begin
            Fcondicion1.ItemIndex := 2;
            Fcondicion2.ItemIndex := 4;
          end
          else
          begin
            Fcondicion1.ItemIndex := FTipoCampoIndice;
            Fcondicion2.ItemIndex := FTipoCampoIndice;
          end;

          if FTipoIngreso = EK_Edit then
          begin
            FTexto1.Text := '';
            FTexto2.Text := '';
            FBacTexto1 := '';
            FBacTexto2 := '';
          end;

          if FTipoIngreso = EK_Combo then
          begin
            FTextoCombo1.ItemIndex := -1;
            FBacTextoCombo1 := -1;
            FTextoCombo2.ItemIndex := -1;
            FBacTextoCombo2 := -1;
          end;

          FBacyo := 0;
          Fyo.ItemIndex := 0;
          FBacCondicion2 := 0;
          FBacOrdenar := false;
          FOrdenar.Checked := false;
        end;
      end;
    end;
end;

procedure TEKBusquedaAvanzada.llenarcombo(sender : TObject);
var i : integer;
begin

  if Assigned(FOldOnCreate) then
    FOldOnCreate(Sender);

  if Assigned(FStandar.FLocateCombo) then
  begin
    FStandar.FLocateCombo.Items.Clear;
    for i := 0 to FCriteriosLocate.Count-1 do
      FStandar.FLocateCombo.Items.Add(TEKCriterioLocate(FCriteriosLocate.Items[i]).Titulo);
  end;
  {$IFDEF TDXBARS}
      if Assigned(FTDXBar.FDXBarLocateCombo) then
      begin
        FTDXBar.FDXBarLocateCombo.Items.Clear;
        for i := 0 to FCriteriosLocate.Count-1 do
          FTDXBar.FDXBarLocateCombo.Items.Add(TEKCriterioLocate(FCriteriosLocate.Items[i]).Titulo);
      end;
  {$ENDIF}
end;

procedure TEKBusquedaAvanzada.BuscarLocate;
var i : integer;
begin
  if (Assigned(FModelo) and Assigned(FDataset)) then
  begin
      if (Assigned(FStandar.FLocateEdit) and Assigned(FStandar.FLocateCombo) and (FStandar.FLocateCombo.ItemIndex >= 0))then
      begin
        i := FStandar.FLocateCombo.ItemIndex;
        if not (FDataset.Locate(TEKCriterioLocate(FCriteriosLocate.Items[i]).FCampo, FStandar.FLocateEdit.Text, TEKCriterioLocate(FCriteriosLocate.Items[i]).TipoBusqueda)) then
          ShowMessage('El Valor '+ FStandar.FLocateEdit.Text +' no se encuentra en el campo '+TEKCriterioLocate(FCriteriosLocate.Items[i]).FCampo+#13+'En los registros que esta visualizando en la ventana');
      end;

      {$IFDEF TDXBARS}
          if (Assigned(FTDXBar.FDXBarLocateEdit) and Assigned(FTDXBar.FDXBarLocateCombo) and (FTDXBar.FDXBarLocateCombo.ItemIndex >= 0))then
          begin
            i := FTDXBar.FDXBarLocateCombo.ItemIndex;
            if not (FDataset.Locate(TEKCriterioLocate(FCriteriosLocate.Items[i]).FCampo, FTDXBar.FDXBarLocateEdit.Text, TEKCriterioLocate(FCriteriosLocate.Items[i]).TipoBusqueda)) then
              ShowMessage('El Valor '+ FTDXBar.FDXBarLocateEdit.Text +' no se encuentra en el campo '+TEKCriterioLocate(FCriteriosLocate.Items[i]).FCampo+#13+'En los registros que esta visualizando en la ventana');
          end;
      {$ENDIF}
  end
  else
    ShowMessage('Debe Asignar el Modelo y el Dataset');
end;

procedure TEKBusquedaAvanzada.fonclickanterior(sender: TObject);
begin
  anterior;
end;

procedure TEKBusquedaAvanzada.fonclicksiguiente(sender: TObject);
begin
  siguiente;
end;

procedure TEKBusquedaAvanzada.ContarRegistros;
  var cons : TZQuery;
begin
  cons:= TZQuery.Create(self);
  cons.Connection := FModelo.Coneccion;
  cons.SQL.Text := 'Select count (*) as total';
  cons.SQL.AddStrings(FSQL_From_Copia);
  cons.SQL.AddStrings(FSQL_Where_Copia);
  cons.Active := true;
  FRegistrosTotal := cons.fieldbyname('total').asinteger;
  cons.Close;
  cons.Free;
end;

procedure TEKBusquedaAvanzada.ProcesarCambiosSinEjecutar;
begin
  CopiaGuardada := false;
end;

procedure TEKBusquedaAvanzada.ComboBoxEnter(Sender: TObject);
begin
  TComboBox(sender).Perform(CB_SetDroppedWidth, TComboBox(sender).Tag, 0);
end;

{ TEKStandar }
procedure TEKStandar.SetFBotonAnterior(const Value: TButton);
begin
  FBotonAnterior := Value;
  if not (Assigned(FBotonAnterior.onclick)) then
    FBotonAnterior.OnClick := FOwner.fonclickanterior ;
end;

procedure TEKStandar.SetFbotonSiguiente(const Value: TButton);
begin
  FbotonSiguiente := Value;
  if not (Assigned(FbotonSiguiente.onclick)) then
    FbotonSiguiente.OnClick := FOwner.fonclicksiguiente;
end;

{ TEKTDXBar }
{$IFDEF TDXBARS}
    procedure TEKTDXBar.setFDXBarBotonAnterior(const Value: TdxBarButton);
    begin
      FDXBarBotonAnterior := Value;
      if not (Assigned(FDXBarBotonAnterior.onclick)) then
        FDXBarBotonAnterior.OnClick := FOwner.fonclickanterior;
    end;

    procedure TEKTDXBar.setFDXBarbotonSiguiente(const Value: TdxBarButton);
    begin
      FDXBarbotonSiguiente := Value;
      if not (Assigned(FDXBarbotonSiguiente.onclick)) then
        FDXBarbotonSiguiente.OnClick := FOwner.fonclicksiguiente;
    end;
{$ENDIF}

procedure TEKBusquedaAvanzada.Notification(AComponent: TComponent; Operation: TOperation);
var
  I: Integer;
  NeedLayout: Boolean;
begin
  inherited Notification(AComponent, Operation);

  if (Operation = opRemove) then
  begin
    if (AComponent is TLabel) then
    begin
      FInfoRegistros:= nil;
    end
  end;
end;

end.
