program seteo;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FSeteo};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Seteo';
  Application.CreateForm(TFSeteo, FSeteo);
  Application.Run;
end.
