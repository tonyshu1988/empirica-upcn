unit EKCambioClave;

interface

uses
  Windows, Messages, Forms, EKUsrLogin, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls, Controls,
  Classes;

type
  Tcambioclave = class(TForm)
    Label1: TLabel;
    ca: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    cn1: TEdit;
    cn2: TEdit;
    Button1: TButton;
    usuario: TLabel;
    Label5: TLabel;
    nusuario: TLabel;
    btn_cancelar: TButton;
    ZQuery1: TZQuery;
    ZConnection1: TZConnection;
    procedure Button1Click(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cambioclave: Tcambioclave;

implementation

{$R *.dfm}


procedure Tcambioclave.Button1Click(Sender: TObject);
var
  nclv : string;
begin
{
  if dm.Coneccion.Protocol = 'mysql-4.0' then
  begin
    nclv := 'password';
    ZQuery1.Connection := dm.Coneccion;
  end
  else
  begin
    nclv := 'clave';
    ZQuery1.Connection := dm.Coneccion;
  end;
}

  nclv := 'clave';

  ZConnection1.HostName := EKUsrLogin1.ip;
  ZConnection1.Database := EKUsrLogin1.dbu;
  ZConnection1.User := EKUsrLogin1.usuariolog;
  ZConnection1.Password := EKUsrLogin1.passwordlog;
  ZConnection1.Connect;

  if ca.Text <> EKUsrLogin1.passwordsis then
    Application.MessageBox('Contraseña actual incorrecta', 'Error')
  else
    if (ca.Text = cn1.Text) or (cn1.Text <> cn2.Text) then
    begin
      if ca.Text = cn1.Text then
        Application.MessageBox('Contraseña incorrectas, La nueva Contraseña no puede ser igual a la actual', 'Error')
      else
        Application.MessageBox('Contraseña incorrectas, La nueva Contraseña no coincide con la verificación', 'Error');
      ZConnection1.Disconnect;
    end
    else
    begin
      zquery1.ParamByName('usr').AsString := usuario.Caption;
      zquery1.Open;
      ZQuery1.Edit;
      ZQuery1.FieldByName(nclv).AsString := cn1.Text;
      if zquery1.FieldList.Find('cambiarclave') <> nil then
        ZQuery1.FieldByName('cambiarclave').AsString := 'N';
      ZQuery1.Post;
      ZQuery1.Close;
      ModalResult := mrok;
      EKUsrLogin1.passwordsis := cn1.Text;
      ZConnection1.Disconnect;
      Release;
    end;

end;

procedure Tcambioclave.btn_cancelarClick(Sender: TObject);
begin
  ModalResult := mrok;
end;

procedure Tcambioclave.FormCreate(Sender: TObject);
begin
  usuario.Caption := EKUsrLogin1.usuariosis;
  nusuario.Caption := EKUsrLogin1.nusuariosis;
end;

end.
