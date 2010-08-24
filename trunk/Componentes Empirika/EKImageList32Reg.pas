//unit MCoP32bitImageListReg;
unit EKImageList32Reg;
{
     +-----------------------------------+
     \           32bitImageList          \
     \            Version 1.0            \
     \               2007                \
     \       http://www.dihav.com/       \
     \      vahid_you2004@yahoo.com      \
     +-----------------------------------+
                                                }

interface

uses
  EKImageList32, Classes, ExtDlgs, Dialogs, Controls, StdCtrls,
  ExtCtrls, Forms, DesignIntf, DesignEditors, Graphics, Windows, SysUtils,
  ImgList, ShellApi;

type
  TEKImageListImagesEditor = class(TForm)
    AddIcon: TButton;
    OpenD: TOpenPictureDialog;
    ImagesBox: TScrollBox;
    SelList: TListBox;
    AddBitmap: TButton;
    ExportIcon: TButton;
    ExportBitmap: TButton;
    Delete: TButton;
    Clear: TButton;
    OK: TButton;
    Cancel: TButton;
    SaveD: TSavePictureDialog;
    OpenDB: TOpenPictureDialog;
    SaveDB: TSavePictureDialog;
    PosShape: TShape;
    MoveLseft: TButton;
    MoveRight: TButton;
    procedure AddIconClick(Sender: TObject);
    procedure ImagesBoxClick(Sender: TObject);
    procedure ClearClick(Sender: TObject);
    procedure DeleteClick(Sender: TObject);
    procedure ExportIconClick(Sender: TObject);
    procedure AddBitmapClick(Sender: TObject);
    procedure ExportBitmapClick(Sender: TObject);
    procedure MoveLseftClick(Sender: TObject);
    procedure MoveRightClick(Sender: TObject);
  private
    IL:TEKImageList32;
    LastSel,MovTo:Integer;
    MDown:Boolean;
    procedure ItemMouseDown(Sender:TObject;Button:TMouseButton;Shift:TShiftState;X,Y:Integer);
    procedure ItemMouseUp(Sender:TObject;Button:TMouseButton;Shift:TShiftState;X,Y:Integer);
    procedure ItemMouseMove(Sender:TObject;Shift:TShiftState;X,Y:Integer);
    procedure Ref;
    procedure AddImage(Index:Integer);
  public
    class function Execute(const ACaption:String;AComp:TEKImageList32):Boolean;
  end;

  //TMCoP32bitImageListPropertyEditor = class(TStringProperty)
  TEKImageListPropertyEditor = class(TStringProperty)
  public
    procedure Edit; override;
    function GetValue:String; override;
    function GetAttributes:TPropertyAttributes; override;
  end;

  //TMCoP32bitImageListEditor = class(TDefaultEditor)
  TEKImageListEditor = class(TDefaultEditor)
  public
    procedure ExecuteVerb(Index:Integer); override;
    function GetVerb(Index:Integer):String; override;
    function GetVerbCount:Integer; override;
    procedure Edit; override;
  end;

  //TMCoPHomepageProperty = class(TStringProperty)
  TEKHomepageProperty = class(TStringProperty)
  public
    procedure Edit; override;
    function GetValue:String; override;
    function GetAttributes:TPropertyAttributes; override;
  end;

procedure Register;

implementation

{$R *.dfm}

{form}

procedure TEKImageListImagesEditor.AddIconClick(Sender: TObject);
var k,i:Integer;
begin
if not OpenD.Execute then Exit;
i:=IL.Count;
for k:=0 to OpenD.Files.Count-1 do
  IL.AddIconFromFile(OpenD.Files.Strings[k]);
if i<IL.Count then
  for k:=i to IL.Count-1 do
    AddImage(k);
end;

procedure TEKImageListImagesEditor.AddImage(Index:Integer);
var b:Graphics.TBitmap;
begin
if Index<0 then Exit;
b:=Graphics.TBitmap.Create;
b.Width:=IL.Width;
b.Height:=IL.Height;
b.Canvas.Brush.Color:=clWindow;
b.Canvas.FloodFill(0,0,clWhite,fsSurface);
IL.Draw(b.Canvas,0,0,Index);
with TImage.Create(self) do
  begin
  Top:=8;
  Left:=Index*(IL.Width+8)+8-ImagesBox.HorzScrollBar.Position;
  Width:=IL.Width;
  Height:=IL.Height;
  Picture.Assign(b);
  Parent:=ImagesBox;
  Tag:=Index;
  OnMouseDown:=ItemMouseDown;
  OnMouseMove:=ItemMouseMove;
  OnMouseUp:=ItemMouseUp;
  end;
with TLabel.Create(Self) do
  begin
  Top:=IL.Height+16;
  Caption:=IntToStr(Index);
  Left:=Index*(IL.Width+8)+8+(IL.Width-Width) div 2-ImagesBox.HorzScrollBar.Position;
  AutoSize:=False;
  Width:=Width+1;
  Parent:=ImagesBox;
  Tag:=Index;
  OnMouseDown:=ItemMouseDown;
  OnMouseMove:=ItemMouseMove;
  OnMouseUp:=ItemMouseUp;
  end;
b.Free;
end;

procedure TEKImageListImagesEditor.ItemMouseDown(Sender:TObject;Button:TMouseButton;Shift:TShiftState;X,Y:Integer);
var
  s:String;
  i,j,k,n:Integer;
begin
MDown:=Button=mbLeft;
MovTo:=-1;
i:=(Sender as TComponent).Tag;
s:=IntToStr(i);
j:=SelList.Items.IndexOf(s);
if (not (ssCtrl in Shift)) and (j<0) then SelList.Clear;
if ssShift in Shift then
  begin
  n:=LastSel;
  if i>n then
    begin
    k:=n;
    n:=i;
    i:=k;
    end;
  for k:=i to n do
    if SelList.Items.IndexOf(IntToStr(k))=-1 then
      SelList.Items.Add(IntToStr(k));
  end
else if j=-1 then
  begin
  LastSel:=i;
  SelList.Items.Add(s);
  end
else if ssCtrl in Shift then
  begin
  SelList.Items.Delete(j);
  LastSel:=-1;
  end;
Ref;
end;

procedure TEKImageListImagesEditor.ImagesBoxClick(Sender: TObject);
begin
SelList.Clear;
Ref;
end;

procedure TEKImageListImagesEditor.Ref;
const
  t:array[Boolean] of TDrawingStyle=(dsTransparent,dsSelected);
var
  k,i:Integer;
  s:Boolean;
  b:Graphics.TBitmap;
begin
for k:=0 to ImagesBox.ControlCount-1 do
  begin
  if ImagesBox.Controls[k]=PosShape then Continue;
  i:=(ImagesBox.Controls[k] as TControl).Tag;
  s:=SelList.Items.IndexOf(IntToStr(i))>=0;
  if ImagesBox.Controls[k] is TImage then
    begin
    b:=Graphics.TBitmap.Create;
    b.Width:=IL.Width;
    b.Height:=IL.Height;
    b.Canvas.Brush.Color:=clWindow;
    b.Canvas.FloodFill(0,0,clWhite,fsSurface);
    IL.Draw(b.Canvas,0,0,i,t[s],itImage);
    (ImagesBox.Controls[k] as TImage).Canvas.Draw(0,0,b);
    b.Free;
    end;
  if (ImagesBox.Controls[k] is TLabel) and (s) then
    begin
    (ImagesBox.Controls[k] as TLabel).Color:=clHighLight;
    (ImagesBox.Controls[k] as TLabel).Font.Color:=clHighLightText;
    end;
  if (ImagesBox.Controls[k] is TLabel) and (not s) then
    begin
    (ImagesBox.Controls[k] as TLabel).Color:=clWindow;
    (ImagesBox.Controls[k] as TLabel).Font.Color:=clWindowText;
    end;
  end;
end;

procedure TEKImageListImagesEditor.ClearClick(Sender: TObject);
var k:Integer;
begin
IL.Clear;
for k:=ImagesBox.ControlCount-1 downto 0 do
  if ImagesBox.Controls[k]<>PosShape then
    ImagesBox.Controls[k].Free;
Ref;
end;

procedure TEKImageListImagesEditor.DeleteClick(Sender: TObject);
var
  k,j:Integer;
  s:String;
begin
if SelList.Count>1 then
  for k:=0 to SelList.Count-2 do
    for j:=k+1 to SelList.Count-1 do
      if StrToInt(SelList.Items.Strings[k])<StrToInt(SelList.Items.Strings[j]) then
        begin
        s:=SelList.Items.Strings[k];
        SelList.Items.Strings[k]:=SelList.Items.Strings[j];
        SelList.Items.Strings[j]:=s;
        end;
for k:=0 to SelList.Count-1 do
  IL.Delete(StrToInt(SelList.Items.Strings[k]));
SelList.Clear;
for k:=ImagesBox.ControlCount-1 downto 0 do
  if (ImagesBox.Controls[k] as TControl).Tag>=IL.Count then
    if ImagesBox.Controls[k]<>PosShape then
      ImagesBox.Controls[k].Free;
Ref;
end;

procedure TEKImageListImagesEditor.ExportIconClick(Sender: TObject);
var
  k:Integer;
  i:TIcon;
  s:String;
  f:TFileStream;
  m,n:TMemoryStream;
  w:Word;
  o:Cardinal;
label
  a;
begin
if SelList.Count=0 then Exit;
a:
if not SaveD.Execute then Exit;
s:=SaveD.FileName;
if UpperCase(ExtractFileExt(s))<>'.ICO' then s:=s+'.ico';
if FileExists(s) then
  if MessageDlg(s+' already exists.'#13'Do you want to replace it?',mtWarning,[mbYes,mbNo],0)=mrNo then
    goto a;
i:=TIcon.Create;
f:=TFileStream.Create(s,fmCreate);
w:=0;
f.Write(w,2);
w:=1;
f.Write(w,2);
w:=SelList.Count;
f.Write(w,2);
m:=TMemoryStream.Create;
n:=TMemoryStream.Create;
o:=SelList.Count*16+6;
for k:=0 to SelList.Count-1 do
  begin
  IL.GetIcon(StrToInt(SelList.Items.Strings[k]),i);
  m.Seek(0,soFromBeginning);
  i.SaveToStream(m);
  m.Seek(6,soFromBeginning);
  f.CopyFrom(m,12);
  f.Write(o,4);
  m.Seek(4,soFromCurrent);
  Inc(o,m.Size-m.Position);
  n.CopyFrom(m,m.Size-m.Position);
  end;
n.Seek(0,soFromBeginning);
f.CopyFrom(n,n.Size);
m.Free;
n.Free;
f.Free;
i.Free;
end;

procedure TEKImageListImagesEditor.AddBitmapClick(Sender: TObject);
var
  k,j,n:Integer;
  l,o:TStringList;
  i,m:Graphics.TBitmap;
begin
OpenDB.Title:='Add Bitmaps (Images)';
if not OpenDB.Execute then Exit;
l:=TStringList.Create;
l.Assign(OpenDB.Files);
OpenDB.Title:='Add Bitmaps (Masks)';
o:=TStringList.Create;
if OpenDB.Execute then o.Assign(OpenDB.Files);
for k:=0 to l.Count-1 do
  begin
  i:=Graphics.TBitmap.Create;
  i.LoadFromFile(l.Strings[k]);
  if k<o.Count then
    begin
    m:=Graphics.TBitmap.Create;
    m.LoadFromFile(o.Strings[k]);
    end
  else
    m:=nil;
  j:=IL.Count;
  IL.Add(i,m);
  for n:=j to IL.Count-1 do AddImage(n);
  i.Free;
  if m<>nil then m.Free;
  end;
end;

procedure TEKImageListImagesEditor.ExportBitmapClick(
  Sender: TObject);
var
  k:Integer;
  b,m,v,n:Graphics.TBitmap;
  s:String;
label
  a,c;
begin
if SelList.Count=0 then Exit;
b:=Graphics.TBitmap.Create;
b.Width:=IL.Width*SelList.Count;
b.Height:=IL.Height;
m:=Graphics.TBitmap.Create;
m.Width:=IL.Width*SelList.Count;
m.Height:=IL.Height;
v:=Graphics.TBitmap.Create;
n:=Graphics.TBitmap.Create;
for k:=0 to SelList.Count-1 do
  begin
  IL.ToBitmap(StrToInt(SelList.Items.Strings[k]),v,n);
  b.Canvas.Draw(k*IL.Width,0,v);
  m.Canvas.Draw(k*IL.Width,0,n);
  end;
v.Free;
n.Free;
SaveDB.Title:='Export Bitmaps (Image)';
a:
if SaveDB.Execute then
  begin
  s:=SaveDB.FileName;
  if UpperCase(ExtractFileExt(s))<>'.BMP' then s:=s+'.bmp';
  if FileExists(s) then
    if MessageDlg(s+' already exists.'#13'Do you want to replace it?',mtWarning,[mbYes,mbNo],0)=mrNo then
      goto a;
  b.SaveToFile(s);
  end
else
  begin
  b.Free;
  m.Free;
  Exit;
  end;
b.Free;
SaveDB.Title:='Export Bitmaps (Mask)';
c:
if SaveDB.Execute then
  begin
  s:=SaveDB.FileName;
  if UpperCase(ExtractFileExt(s))<>'.BMP' then s:=s+'.bmp';
  if FileExists(s) then
    if MessageDlg(s+' already exists.'#13'Do you want to replace it?',mtWarning,[mbYes,mbNo],0)=mrNo then
      goto c;
  m.SaveToFile(s);
  end;
m.Free;   
end;

procedure TEKImageListImagesEditor.ItemMouseUp(Sender:TObject;Button:TMouseButton;Shift:TShiftState;X,Y:Integer);
begin
MDown:=False;
PosShape.Hide;
if MovTo=-1 then Exit;
IL.Move((Sender as TControl).Tag,MovTo);
SelList.Clear;
SelList.Items.Add(IntToStr(MovTo));
Ref;
end;

procedure TEKImageListImagesEditor.ItemMouseMove(Sender:TObject;Shift:TShiftState;X,Y:Integer);
begin
if not MDown then Exit;
if SelList.Count<>1 then Exit;
X:=X+(Sender as TControl).Left+ImagesBox.HorzScrollBar.Position;
MovTo:=(X-8) div (IL.Width+8);
if MovTo>=IL.Count then MovTo:=IL.Count-1;
PosShape.Left:=MovTo*(IL.Width+8)+4-ImagesBox.HorzScrollBar.Position;;
PosShape.Show;
end;

procedure TEKImageListImagesEditor.MoveLseftClick(Sender: TObject);
var
  k,j:Integer;
  s:String;
begin
if SelList.Count>1 then
  for k:=0 to SelList.Count-2 do
    for j:=k+1 to SelList.Count-1 do
      if StrToInt(SelList.Items.Strings[k])>StrToInt(SelList.Items.Strings[j]) then
        begin
        s:=SelList.Items.Strings[k];
        SelList.Items.Strings[k]:=SelList.Items.Strings[j];
        SelList.Items.Strings[j]:=s;
        end;
for k:=0 to SelList.Count-1 do
  begin
  j:=StrToInt(SelList.Items.Strings[k]);
  if j=0 then Continue;
  if SelList.Items.IndexOf(IntToStr(j-1))>=0 then Continue;
  IL.Move(j,j-1);
  SelList.Items.Strings[k]:=IntToStr(j-1);
  end;
Ref;
end;

procedure TEKImageListImagesEditor.MoveRightClick(Sender: TObject);
var
  k,j:Integer;
  s:String;
begin
if SelList.Count>1 then
  for k:=0 to SelList.Count-2 do
    for j:=k+1 to SelList.Count-1 do
      if StrToInt(SelList.Items.Strings[k])<StrToInt(SelList.Items.Strings[j]) then
        begin
        s:=SelList.Items.Strings[k];
        SelList.Items.Strings[k]:=SelList.Items.Strings[j];
        SelList.Items.Strings[j]:=s;
        end;
for k:=0 to SelList.Count-1 do
  begin
  j:=StrToInt(SelList.Items.Strings[k]);
  if j=IL.Count-1 then Continue;
  if SelList.Items.IndexOf(IntToStr(j+1))>=0 then Continue;
  IL.Move(j,j+1);
  SelList.Items.Strings[k]:=IntToStr(j+1);
  end;
Ref;
end;

class function TEKImageListImagesEditor.Execute(const ACaption:String;AComp:TEKImageList32):Boolean;
var k:Integer;
begin
with Create(Application) do
  begin
  Caption:=ACaption;
  IL:=TEKImageList32.CreateSize(AComp.Width,AComp.Height);
  IL.AddImages(AComp);
  IL.DrawingStyle:=dsTransparent;
  IL.BlendColor:=clHighLight;
  for k:=0 to IL.Count-1 do AddImage(k);
  Constraints.MinWidth:=IL.Width*2+48+Width-ClientWidth;
  if IL.Width<140 then Constraints.MinWidth:=329+Width-ClientWidth;
  Constraints.MinHeight:=IL.Height+130+Height-ClientHeight;
  PosShape.Width:=IL.Width+8;
  PosShape.Height:=IL.Height+8;
  Result:=ShowModal=mrOK;
  if Result then
    begin
    AComp.Clear;
    AComp.AddImages(IL);
    end;
  IL.Free;
  Free;
  end;
end;

{editor}

function TEKImageListPropertyEditor.GetAttributes:TPropertyAttributes;
begin
Result:=[paDialog,paReadOnly];
end;

function TEKImageListPropertyEditor.GetValue:String;
begin
Result:='(Images)';
end;

procedure TEKImageListPropertyEditor.Edit;
var c:TEKImageList32;
begin
c:=TEKImageList32(GetComponent(0));
if TEKImageListImagesEditor.Execute(c.GetNamePath,c) then Modified;
end;

{menu}

procedure TEKImageListEditor.ExecuteVerb(Index:Integer);
begin
case Index of
  0:Edit;
  1:MessageDlg('TEKImageList32 v1.0'#10#13'By Mohammad Yousefi'#10#13'vahid_you2004@yahoo.com'#10#13'2007'#10#13'http://www.dihav.com/',mtInformation,[mbOK],0);
  2:ShellExecute(0,'Open','http://www.dihav.com/','','',SW_SHOW);
  3:ShellExecute(0,'Open','http://www.dihav.com/donate.html?id=TEKImageList32','','',SW_SHOW);
end;
end;

function TEKImageListEditor.GetVerb(Index:Integer):String;
begin
case Index of
  0:Result:='Edit Images...';
  1:Result:='About...';
  2:Result:='Visit Homepage';
  3:Result:='Donate';
end;
end;

function TEKImageListEditor.GetVerbCount:Integer;
begin
Result:=4;
end;

procedure TEKImageListEditor.Edit;
var c:TEKImageList32;
begin
c:=TEKImageList32(Component);
if TEKImageListImagesEditor.Execute(c.GetNamePath,c) then Designer.Modified;
end;

{homepage}

function TEKHomepageProperty.GetAttributes:TPropertyAttributes;
begin
Result:=[paDialog,paReadOnly];
end;

function TEKHomepageProperty.GetValue:String;
begin
Result:='http://www.dihav.com/';
end;

procedure TEKHomepageProperty.Edit;
begin
ShellExecute(0,'Open','http://www.dihav.com/','','',SW_SHOW);
end;

procedure Register;
begin
  RegisterComponents('EmpiriKa',[TEKImageList32]);
  RegisterComponentEditor(TEKImageList32,TEKImageListEditor);
  RegisterPropertyEditor(TypeInfo(String),TEKImageList32,'Images',TEKImageListPropertyEditor);
  RegisterPropertyEditor(TypeInfo(String),TEKImageList32,'Homepage',TEKHomepageProperty);
end;

end.
