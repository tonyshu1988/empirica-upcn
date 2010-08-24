//unit MCoP32bitImageList;
unit EKImageList32;
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
  SysUtils, Classes, ImgList, Graphics, Windows, CommCtrl, Controls;

type

  //TMCoPIconHeader = record
  TEKIconHeader = record
    Width,Height,ColorCount,Reserved:Byte;
    Planes,BitCount:Word;
    Size,Offset:Cardinal;
  end;

  //EMCoP32bitImageList = Exception;\
  Ex_EKImageList32 = Exception;

  //TMCoPDisabledStyle = (dsNone,dsColor,dsGrayScale,dsGhost,dsGrayScaleGhost,dsCustom);\
  TEKDisabledStyle = (dsNone,dsColor,dsGrayScale,dsGhost,dsGrayScaleGhost,dsCustom);

  //TMCoPCustomDisabledImage = procedure(Sender:TObject;X,Y:Integer;var aAlpha,aRed,aGreen,aBlue:Byte) of object;
  TEKCustomDisabledImage = procedure(Sender:TObject;X,Y:Integer;var aAlpha,aRed,aGreen,aBlue:Byte) of object;

  TEKImageList32 = class(TDragImageList)
  private
    fData:TMemoryStream;
    ImageInfo,fImgV:String;
    ItemSize:Integer;
    fDisStyle:TEKDisabledStyle;
    fDisColor,fBlendColor,fBkColor:TColor;
    fDisR,fDisG,fDisB,fBlenR,fBlenG,fBlenB:Byte;
    fDisEvent:TEKCustomDisabledImage;
    fOverlay:Array [TOverlay] of Integer;
    NoRef:Boolean;
    function FindIcon(Stream:TStream;Replace:Integer=-1):Integer;
    function GetCount:Integer;
    procedure SetDisColor(V:TColor);
    procedure SetBelnColor(V:TColor);
    function GetHomepage:String;
    procedure SetHomepage(V:String);
    procedure SetBkColor(V:TColor);
    procedure RefImgList;
    procedure ReadLeft(Reader: TReader);
    procedure ReadTop(Reader: TReader);
    procedure WriteLeft(Writer: TWriter);
    procedure WriteTop(Writer: TWriter);
  protected
    procedure AssignTo(Dest: TPersistent); override;
    procedure ReadData(Stream:TStream); override;
    procedure WriteData(Stream:TStream); override;
    procedure DefineProperties(Filer:TFiler); override;
    procedure DoDraw(Index:Integer;Canvas:TCanvas;X,Y:Integer;Style:Cardinal;Enabled:Boolean=True); override;
    procedure Change; override;
    procedure Initialize; override;
  public
    destructor Destroy; override;
    function AddIcon(Image:TIcon):Integer;
    function AddIconFromStream(Stream:TStream):Integer;
    function AddIconFromFile(FileName:TFileName):Integer;
    procedure Clear;
    procedure Delete(Index:Integer);
    procedure Move(CurIndex,NewIndex:Integer);
    procedure InsertIcon(Index:Integer;Image:TIcon);
    procedure InsertIconFromStream(Index:Integer;Stream:TStream);
    procedure InsertIconFromFile(Index:Integer;FileName:TFileName);
    procedure ReplaceIcon(Index:Integer;Image:TIcon);
    procedure ReplaceIconWithStream(Index:Integer;Stream:TStream);
    procedure ReplaceIconWithFile(Index:Integer;FileName:TFileName);
    function Overlay(ImageIndex:Integer;Overlay:TOverlay):Boolean;
    function Add(Image,Mask:Graphics.TBitmap):Integer;
    function AddMasked(Image:Graphics.TBitmap;MaskColor:TColor):Integer;
    procedure Insert(Index:Integer;Image,Mask:Graphics.TBitmap);
    procedure InsertMasked(Index:Integer;Image:Graphics.TBitmap;MaskColor:TColor);
    procedure Replace(Index:Integer;Image,Mask:Graphics.TBitmap);
    procedure ReplaceMasked(Index:Integer;NewImage:Graphics.TBitmap;MaskColor:TColor);
    function AddImage(Value:TCustomImageList;Index:Integer):Integer;
    procedure AddImages(Value:TCustomImageList);
    function GetBitmap(Index:Integer;Image:Graphics.TBitmap):Boolean;
    function ToBitmap(Index:Integer;Image,Mask:Graphics.TBitmap):Boolean;
    procedure GetIcon(Index:Integer;Image:TIcon); overload;
    procedure GetIcon(Index:Integer;Image:TIcon;ADrawingStyle:TDrawingStyle;AImageType:TImageType); overload;
    procedure Assign(Source:TPersistent); override;
    function GetImageBitmap:HBITMAP;
    function GetMaskBitmap:HBITMAP;

    property Count:Integer read GetCount;
    property Data:TMemoryStream read fData;
  published
    property DisabledStyle:TEKDisabledStyle read fDisStyle write fDisStyle default dsGrayScaleGhost;
    property DisabledColor:TColor read fDisColor write setDisColor default clBtnShadow;
    property BlendColor:TColor read fBlendColor write SetBelnColor default clNone;
    property Homepage:String read GetHomepage write SetHomepage stored False;
    property Images:String read fImgV write fImgV stored False;

    property OnDrawDisabledImage:TEKCustomDisabledImage read fDisEvent write fDisEvent;

    property OnChange; 
    property DrawingStyle;
    property ImageType;
    property Width;
    property Height;

    property BkColor read fBkColor write SetBkColor default clNone;
  end;

const
  ES_III='Invalid ImageList Index.';
  ES_II='Invalid Icon.';
  ES_NIII='No %s Image in Icon';
  ES_NI='No Image.';
  ES_IIS='Invalid Image Size.';

implementation

procedure TEKImageList32.Initialize;
var k:byte;
begin
if (Height>255) or (Width>255) then raise Ex_EKImageList32.Create(ES_IIS);
fData:=TMemoryStream.Create;
inherited Initialize;
ItemSize:=Width*Height*4;
ImageInfo:=IntToStr(Width)+'x'+IntToStr(Height)+'; 32bit; BI_RGB Compression;';
NoRef:=False;
fDisStyle:=dsGrayScaleGhost;
SetDisColor(clBtnShadow);
fDisEvent:=nil;
fBkColor:=clNone;
SetBelnColor(clNone);
for k:=0 to 3 do fOverlay[k]:=0;
end;

destructor TEKImageList32.Destroy;
begin
fData.Free;
inherited Destroy;
end;

function TEKImageList32.FindIcon(Stream:TStream;Replace:Integer=-1):Integer;
var
  c,t,i:Word;
  h:TEKIconHeader;
  p:Integer;
  o:Cardinal;
begin
Result:=-2;
Stream.Read(t,2);
Stream.Read(t,2);
Stream.Read(c,2);
if (t<1) or (t>2) or (c=0) then Exit;
Result:=-1;
if Replace=-1 then
  fData.Seek(0,soFromEnd)
else
  fData.Seek(Replace*ItemSize,soFromBeginning);
for i:=1 to c do
  begin
  Stream.Read(h,SizeOf(h));
  if (h.Width=Width) and (h.Height=Height) then
    begin
    p:=Stream.Position;
    Stream.Seek(h.Offset+14,soFromBeginning);
    Stream.Read(t,2);  //BitCount
    Stream.Read(o,4);  //Compression
    Stream.Seek(p,soFromBeginning);
    if o<>BI_RGB then Continue;
    if t=32 then
      begin
      if Result=-1 then Result:=fData.Position div ItemSize;
      Stream.Seek(h.Offset+40,soFromBeginning);
      fData.CopyFrom(Stream,ItemSize);
      end;
    Stream.Seek(i*16+6,soFromBeginning);
    end;
  end;
end;

function TEKImageList32.AddIcon(Image:TIcon):Integer;
var f:TMemoryStream;
begin
f:=TMemoryStream.Create;
Image.SaveToStream(f);
f.Seek(0,soFromBeginning);
Result:=FindIcon(f);
f.Free;
if (Result>=0) and (not NoRef) then RefImgList;
Change;
end;

function TEKImageList32.AddIconFromStream(Stream:TStream):Integer;
begin
Result:=FindIcon(Stream);
if Result>=0 then RefImgList;
Change;
end;

function TEKImageList32.AddIconFromFile(FileName:TFileName):Integer;
var f:TFileStream;
begin
f:=TFileStream.Create(FileName,fmOpenRead or fmShareDenyWrite);
Result:=FindIcon(f);
f.Free;
if Result>=0 then RefImgList;
Change;
end;

procedure TEKImageList32.Clear;
begin
fData.Clear;
inherited Clear;
end;

function TEKImageList32.GetCount:Integer;
begin
Result:=fData.Size div ItemSize;
end;

procedure TEKImageList32.Delete(Index:Integer);
var s:TMemoryStream;
begin
if Index<-1 then Clear;
if (Index<0) or (Index>=GetCount) then raise Ex_EKImageList32.Create(ES_III);
s:=TMemoryStream.Create;
fData.Seek(0,soFromBeginning);
if Index<>0 then s.CopyFrom(fData,Index*ItemSize);
fData.Seek(ItemSize,soFromCurrent);
if fData.Size<>fData.Position then s.CopyFrom(fData,fData.Size-fData.Position);
fData.Clear;
s.Seek(0,soFromBeginning);
fData.CopyFrom(s,s.Size);
s.Free;
inherited Delete(Index);
end;

procedure TEKImageList32.Move(CurIndex,NewIndex:Integer);
var
  s:TMemoryStream;
  k,j:Integer;
begin
if (CurIndex<0) or (CurIndex>=GetCount) then raise Ex_EKImageList32.Create(ES_III);
if (NewIndex<0) or (NewIndex>=GetCount) then raise Ex_EKImageList32.Create(ES_III);
if CurIndex=NewIndex then Exit;
if CurIndex<NewIndex then k:=CurIndex else k:=NewIndex;
s:=TMemoryStream.Create;
fData.Seek(0,soFromBeginning);
if k<>0 then s.CopyFrom(fData,k*ItemSize);
if k=CurIndex then
  begin
  fData.Seek(ItemSize,soFromCurrent);
  s.CopyFrom(fData,(NewIndex-k)*ItemSize);
  j:=fData.Position;
  fData.Seek(k*ItemSize,soFromBeginning);
  s.CopyFrom(fData,ItemSize);
  end
else
  begin
  fData.Seek(CurIndex*ItemSize,soFromBeginning);
  s.CopyFrom(fData,ItemSize);
  j:=fData.Position;
  fData.Seek(k*ItemSize,soFromBeginning);
  s.CopyFrom(fData,(CurIndex-k)*ItemSize);
  end;
fData.Seek(j,soFromBeginning);
if fData.Size<>fData.Position then s.CopyFrom(fData,fData.Size-fData.Position);
fData.Clear;
s.Seek(0,soFromBeginning);
fData.CopyFrom(s,s.Size);
s.Free;
inherited Move(CurIndex,NewIndex);
end;

procedure TEKImageList32.InsertIcon(Index:Integer;Image:TIcon);
var
  f:TMemoryStream;
  r,k,c:Integer;
begin
if (Index<0) or (Index>GetCount) then raise Ex_EKImageList32.Create(ES_III);
f:=TMemoryStream.Create;
Image.SaveToStream(f);
f.Seek(0,soFromBeginning);
r:=FindIcon(f);
f.Free;
if r>=0 then RefImgList;
if r=-2 then
  raise Ex_EKImageList32.Create(ES_II)
else if r=-1 then
  raise Ex_EKImageList32.CreateFmt(ES_NIII,[ImageInfo])
else
  begin
  c:=GetCount-1;
  for k:=r to c do Move(c,Index);
  end;
Change;
end;

procedure TEKImageList32.InsertIconFromStream(Index:Integer;Stream:TStream);
var r,k,c:Integer;
begin
if (Index<0) or (Index>GetCount) then raise Ex_EKImageList32.Create(ES_III);
r:=FindIcon(Stream);
if r>=0 then RefImgList;
if r=-2 then
  raise Ex_EKImageList32.Create(ES_II)
else if r=-1 then
  raise Ex_EKImageList32.CreateFmt(ES_NIII,[ImageInfo])
else
  begin
  c:=GetCount-1;
  for k:=r to c do Move(c,Index);
  end;
Change;
end;

procedure TEKImageList32.InsertIconFromFile(Index:Integer;FileName:TFileName);
var
  f:TFileStream;
  r,k,c:Integer;
begin
if (Index<0) or (Index>GetCount) then raise Ex_EKImageList32.Create(ES_III);
f:=TFileStream.Create(FileName,fmOpenRead or fmShareDenyWrite);
r:=FindIcon(f);
f.Free;
if r>=0 then RefImgList;
if r=-2 then
  raise Ex_EKImageList32.Create(ES_II)
else if r=-1 then
  raise Ex_EKImageList32.CreateFmt(ES_NIII,[ImageInfo])
else
  begin
  c:=GetCount-1;
  for k:=r to c do Move(c,Index);
  end;
Change;
end;

procedure TEKImageList32.ReplaceIcon(Index:Integer;Image:TIcon);
var
  f:TMemoryStream;
  r:Integer;
begin
if Index<0 then
  begin
  AddIcon(Image);
  Exit;
  end;
if (Index<0) or (Index>=GetCount) then raise Ex_EKImageList32.Create(ES_III);
f:=TMemoryStream.Create;
Image.SaveToStream(f);
f.Seek(0,soFromBeginning);
r:=FindIcon(f,Index);
f.Free;
if r>=0 then RefImgList;
if r=-2 then raise Ex_EKImageList32.Create(ES_II);
if r=-1 then raise Ex_EKImageList32.CreateFmt(ES_NIII,[ImageInfo]);
Change;
end;

procedure TEKImageList32.ReplaceIconWithStream(Index:Integer;Stream:TStream);
var r:Integer;
begin
if Index<0 then
  begin
  AddIconFromStream(Stream);
  Exit;
  end;
if (Index<0) or (Index>=GetCount) then raise Ex_EKImageList32.Create(ES_III);
r:=FindIcon(Stream,Index);
if r>=0 then RefImgList;
if r=-2 then raise Ex_EKImageList32.Create(ES_II);
if r=-1 then raise Ex_EKImageList32.CreateFmt(ES_NIII,[ImageInfo]);
Change;
end;

procedure TEKImageList32.ReplaceIconWithFile(Index:Integer;FileName:TFileName);
var
  f:TFileStream;
  r:Integer;
begin
if Index<0 then
  begin
  AddIconFromFile(FileName);
  Exit;
  end;
if (Index<0) or (Index>=GetCount) then raise Ex_EKImageList32.Create(ES_III);
f:=TFileStream.Create(FileName,fmOpenRead or fmShareDenyWrite);
r:=FindIcon(f,Index);
f.Free;
if r>=0 then RefImgList;
if r=-2 then raise Ex_EKImageList32.Create(ES_II);
if r=-1 then raise Ex_EKImageList32.CreateFmt(ES_NIII,[ImageInfo]);
Change;
end;

procedure TEKImageList32.DoDraw(Index:Integer;Canvas:TCanvas;X,Y:Integer;Style:Cardinal;Enabled:Boolean=True);
var
  c:Graphics.TBitmap;
  k,j,r,g,b,a,h:Byte;
  f:Pointer;
  p:PByteArray;
  i:Integer;

  function Read:Byte;
  begin
  CopyMemory(@Result,f,1);
  Inc(Integer(f));
  end;

begin
if (Index<0) or (Index>=GetCount) then Exit;
c:=Graphics.TBitmap.Create;
c.Width:=Width;
c.Height:=Height;
if ((Style and ILD_TRANSPARENT)<>ILD_TRANSPARENT) and (BkColor<>clNone) then
  begin
  c.Canvas.Brush.Color:=BkColor;
  c.Canvas.FloodFill(0,0,clWhite,fsSurface);
  end
else
  c.Canvas.CopyRect(c.Canvas.ClipRect,Canvas,Bounds(X,Y,Width,Height));
c.PixelFormat:=pf24bit;
f:=Ptr(Integer(fData.Memory)+Index*ItemSize);
for j:=Height-1 downto 0 do
  begin
  p:=c.ScanLine[j];
  for k:=0 to Width-1 do
    begin
    b:=Read;
    g:=Read;
    r:=Read;
    a:=Read;
    if (Style and ILD_MASK)=ILD_MASK then
      begin
      r:=0;
      g:=0;
      b:=0;
      end;
    if not Enabled then
      begin
      case fDisStyle of
        dsColor:
          begin
          r:=fDisR;
          g:=fDisG;
          b:=fDisB;
          end;
        dsGrayScale:
          begin
          r:=Round(r*0.3+g*0.59+b*0.11);
          g:=r;
          b:=r;
          end;
        dsGhost:
          a:=a*128 div 255;
        dsGrayScaleGhost:
          begin
          r:=Round(r*0.3+g*0.59+b*0.11);
          g:=r;
          b:=r;
          a:=a*128 div 255;
          end;
        dsCustom:
          if Assigned(fDisEvent) then
            fDisEvent(Self,k,j,a,r,g,b);
      end;
      end;
    if (((Style and ILD_FOCUS)=ILD_FOCUS) or ((Style and ILD_SELECTED)=ILD_SELECTED)) and (fBlendColor<>clNone) then
      begin
      h:=0;
      if (Style and ILD_FOCUS)=ILD_FOCUS then h:=64;
      if (Style and ILD_SELECTED)=ILD_SELECTED then h:=128;
      p^[k*3  ]:=p^[k*3  ]+(b-p^[k*3  ])*a div 255+(fBlenB-b)*a*h div 65025;
      p^[k*3+1]:=p^[k*3+1]+(g-p^[k*3+1])*a div 255+(fBlenG-g)*a*h div 65025;
      p^[k*3+2]:=p^[k*3+2]+(r-p^[k*3+2])*a div 255+(fBlenR-r)*a*h div 65025;
      end
    else
      begin
      p^[k*3  ]:=p^[k*3  ]+(b-p^[k*3  ])*a div 255;
      p^[k*3+1]:=p^[k*3+1]+(g-p^[k*3+1])*a div 255;
      p^[k*3+2]:=p^[k*3+2]+(r-p^[k*3+2])*a div 255;
      end;
    end;
  end;
Canvas.Draw(X,Y,c);
c.Free;
if (Style and ILD_OVERLAYMASK)=ILD_OVERLAYMASK then
  begin
  i:=Style and $FFFFFF00;
  Style:=(Style and ILD_MASK) or ILD_TRANSPARENT;
  DoDraw(fOverlay[i],Canvas,X,Y,Style,Enabled);
  end;
end;

procedure TEKImageList32.SetDisColor(V:TColor);
var c:TColor;
begin
fDisColor:=V;
c:=ColorToRGB(fDisColor);
fDisR:=GetRValue(c);
fDisG:=GetGValue(c);
fDisB:=GetBValue(c);
end;

procedure TEKImageList32.SetBelnColor(V:TColor);
var c:TColor;
begin
fBlendColor:=V;
c:=ColorToRGB(fBlendColor);
fBlenR:=GetRValue(c);
fBlenG:=GetGValue(c);
fBlenB:=GetBValue(c);
inherited BlendColor:=V;
end;

function TEKImageList32.GetHomepage:String;
begin
Result:='http://www.dihav.com/';
end;

procedure TEKImageList32.SetHomepage(V:String);
begin
//
end;

function TEKImageList32.Overlay(ImageIndex:Integer;Overlay:TOverlay):Boolean;
begin
fOverlay[Overlay]:=ImageIndex;
Result:=True;
inherited Overlay(ImageIndex,Overlay);
end;

function TEKImageList32.Add(Image,Mask:Graphics.TBitmap):Integer;
var
  x,y,c,t:Integer;
  i,m:PByteArray;
  im,ma:Graphics.TBitmap;
begin
Result:=-2;
if not Assigned(Image) then Exit;
Result:=-1;
if (Image.Width<Width) or (Image.Height<>Height) then Exit;
im:=Graphics.TBitmap.Create;
im.Assign(Image);
im.PixelFormat:=pf24bit;
ma:=Graphics.TBitmap.Create;
if Assigned(Mask) then ma.Assign(Mask);
ma.Width:=im.Width;
ma.Height:=Height;
ma.PixelFormat:=pf24bit;
fData.Seek(0,soFromEnd);
Result:=GetCount;
c:=Image.Width div Width;
for t:=0 to c-1 do
  for y:=Height-1 downto 0 do
    begin
    i:=im.ScanLine[y];
    m:=ma.ScanLine[y];
    for x:=t*Width to (t+1)*Width-1 do
      begin
      fData.Write(i[x*3],3);
      fData.Write(m[x*3],1);
      end;
    end;
im.Free;
ma.Free;
if Result>=0 then RefImgList;
end;

function TEKImageList32.AddMasked(Image:Graphics.TBitmap;MaskColor:TColor):Integer;
var
  x,y,o,t:Integer;
  i:PByteArray;
  im:Graphics.TBitmap;
  c,m:Cardinal;
  b:Byte;
begin
Result:=-2;
if not Assigned(Image) then Exit;
Result:=-1;
if (Image.Width<Width) or (Image.Height<>Height) then Exit;
im:=Graphics.TBitmap.Create;
im.Assign(Image);
im.PixelFormat:=pf24bit;
m:=ColorToRGB(MaskColor);
fData.Seek(0,soFromEnd);
Result:=GetCount;
o:=Image.Width div Width;
for t:=0 to o-1 do
  for y:=Height-1 downto 0 do
    begin
    i:=im.ScanLine[y];
    for x:=t*Width to (t+1)*Width-1 do
      begin
      c:=RGB(i[x*3+2],i[x*3+1],i[x*3]);
      if c=m then b:=0 else b:=255;
      fData.Write(i[x*3],3);
      fData.Write(b,1);
      end;
    end;
im.Free;
if Result>=0 then RefImgList;
end;

procedure TEKImageList32.Insert(Index:Integer;Image,Mask:Graphics.TBitmap);
var r,k,c:Integer;
begin
if (Index<0) or (Index>GetCount) then raise Ex_EKImageList32.Create(ES_III);
r:=Add(Image,Mask);
if r>=0 then RefImgList;
if r=-2 then
  raise Ex_EKImageList32.Create(ES_NI)
else if r=-1 then
  raise Ex_EKImageList32.Create(ES_IIS)
else
  begin
  c:=GetCount-1;
  for k:=r to c do Move(c,Index);
  end;
end;

procedure TEKImageList32.InsertMasked(Index:Integer;Image:Graphics.TBitmap;MaskColor:TColor);
var r,c,k:Integer;
begin
if (Index<0) or (Index>GetCount) then raise Ex_EKImageList32.Create(ES_III);
r:=AddMasked(Image,MaskColor);
if r>=0 then RefImgList;
if r=-2 then
  raise Ex_EKImageList32.Create(ES_NI)
else if r=-1 then
  raise Ex_EKImageList32.Create(ES_IIS)
else
  begin
  c:=GetCount-1;
  for k:=r to c do Move(c,Index);
  end;
end;

procedure TEKImageList32.Replace(Index:Integer;Image,Mask:Graphics.TBitmap);
var
  x,y,t,c:Integer;
  i,m:PByteArray;
  im,ma:Graphics.TBitmap;
begin
if Index<0 then
  begin
  Add(Image,Mask);
  Exit;
  end;
if (Index<0) or (Index>=GetCount) then
  raise Ex_EKImageList32.Create(ES_III);
if not Assigned(Image) then
  raise Ex_EKImageList32.Create(ES_NI);
if (Image.Width<Width) or (Image.Height<>Height) then
  raise Ex_EKImageList32.Create(ES_IIS);
im:=Graphics.TBitmap.Create;
im.Assign(Image);
im.PixelFormat:=pf24bit;
ma:=Graphics.TBitmap.Create;
if Assigned(Mask) then ma.Assign(Mask);
ma.Width:=im.Width;
ma.Height:=Height;
ma.PixelFormat:=pf24bit;
fData.Seek(Index*ItemSize,soFromBeginning);
c:=Image.Width div Width;
for t:=0 to c-1 do
  for y:=Height-1 downto 0 do
    begin
    i:=im.ScanLine[y];
    m:=ma.ScanLine[y];
    for x:=t*Width to (t+1)*Width-1 do
      begin
      fData.Write(i[x*3],3);
      fData.Write(m[x*3],1);
      end;
    end;
im.Free;
ma.Free;
RefImgList;
end;

procedure TEKImageList32.ReplaceMasked(Index:Integer;NewImage:Graphics.TBitmap;MaskColor:TColor);
var
  x,y,t,o:Integer;
  i:PByteArray;
  im:Graphics.TBitmap;
  c,m:Cardinal;
  b:Byte;
begin
if Index<0 then
  begin
  AddMasked(NewImage,MaskColor);
  Exit;
  end;
if (Index<0) or (Index>=GetCount) then
  raise Ex_EKImageList32.Create(ES_III);
if not Assigned(NewImage) then
  raise Ex_EKImageList32.Create(ES_NI);
if (NewImage.Width<Width) or (NewImage.Height<>Height) then
  raise Ex_EKImageList32.Create(ES_IIS);
im:=Graphics.TBitmap.Create;
im.Assign(NewImage);
im.PixelFormat:=pf24bit;
m:=ColorToRGB(MaskColor);
fData.Seek(Index*ItemSize,soFromBeginning);
o:=NewImage.Width div Width;
for t:=0 to o-1 do
  for y:=Height-1 downto 0 do
    begin
    i:=im.ScanLine[y];
    for x:=t*Width to (t+1)*Width-1 do
      begin
      c:=RGB(i[x*3+2],i[x*3+1],i[x*3]);
      if c=m then b:=0 else b:=255;
      fData.Write(i[x*3],3);
      fData.Write(b,1);
      end;
    end;
im.Free;
RefImgList;
end;            

function TEKImageList32.AddImage(Value:TCustomImageList;Index:Integer):Integer;
var i:TIcon;
begin
if not Assigned(Value) then
  begin
  Result:=-1;
  Exit;
  end;
i:=TIcon.Create;
if Value is TEKImageList32 then
  (Value as TEKImageList32).GetIcon(Index,i,dsTransparent,itImage)
else
  Value.GetIcon(Index,i,dsTransparent,itImage);
Result:=AddIcon(i);
i.Free;
end;

procedure TEKImageList32.AddImages(Value:TCustomImageList);
var
  i:TIcon;
  k:Integer;
begin
if not Assigned(Value) then Exit;
NoRef:=True;
i:=TIcon.Create;
for k:=0 to Value.Count-1 do
  begin
  if Value is TEKImageList32 then
    (Value as TEKImageList32).GetIcon(k,i,dsTransparent,itImage)
  else
    Value.GetIcon(k,i,dsTransparent,itImage);
  AddIcon(i);
  end;
i.Free;
NoRef:=False;
RefImgList;
end;

function TEKImageList32.GetBitmap(Index:Integer;Image:Graphics.TBitmap):Boolean;
begin
Result:=(Image<>nil) and (Index>-1) and (Index<GetCount);
if not Result then Exit;
Image.Width:=Width;
Image.Height:=Height;
Draw(Image.Canvas,0,0,Index);
end;

function TEKImageList32.ToBitmap(Index:Integer;Image,Mask:Graphics.TBitmap):Boolean;
var
  x,y,r,g,b,a:Byte;
  i,m:PByteArray;
  f:Pointer;

  function Read:Byte;
  begin
  CopyMemory(@Result,f,1);
  Inc(Integer(f));
  end;

begin
Result:=((Image<>nil) or (Mask<>nil)) and (Index>-1) and (Index<GetCount);
if not Result then Exit;
i:=nil;
m:=nil;
if Assigned(Image) then
  begin
  Image.Width:=Width;
  Image.Height:=Height;
  Image.PixelFormat:=pf24bit;
  end;
if Assigned(Mask) then
  begin
  Mask.Width:=Width;
  Mask.Height:=Height;
  Mask.PixelFormat:=pf24bit;
  end;
f:=Ptr(Integer(fData.Memory)+Index*ItemSize);
for y:=Height-1 downto 0 do
  begin
  if Assigned(Image) then i:=Image.ScanLine[y];
  if Assigned(Mask) then m:=Mask.ScanLine[y];
  for x:=0 to Width-1 do
    begin
    b:=Read;
    g:=Read;
    r:=Read;
    a:=Read;
    if Assigned(Image) then
      begin
      i^[x*3  ]:=b;
      i^[x*3+1]:=g;
      i^[x*3+2]:=r;
      end;
    if Assigned(Mask) then
      begin
      m^[x*3  ]:=a;
      m^[x*3+1]:=a;
      m^[x*3+2]:=a;
      end;
    end;
  end;
end;

procedure TEKImageList32.GetIcon(Index:Integer;Image:TIcon);
begin
GetIcon(Index,Image,DrawingStyle,ImageType);
end;

procedure TEKImageList32.GetIcon(Index:Integer;Image:TIcon;ADrawingStyle:TDrawingStyle;AImageType:TImageType);
var
  s:TMemoryStream;
  h:TEKIconHeader;
  w:Word;
  u:TBitmapInfoHeader;
  o,x,y,r,g,b,a:Byte;
  t:Graphics.TBitmap;
  p:PByteArray;
  n,c:Integer;
begin
if (Index<0) or (Index>=GetCount) then Exit;
if not Assigned(Image) then Exit;
s:=TMemoryStream.Create;
w:=0;
s.Write(w,2);
w:=1;
s.Write(w,2);
s.Write(w,2);
FillChar(h,SizeOf(h),0);
h.Width:=Width;
h.Height:=Height;
h.Planes:=1;
h.BitCount:=32;
n:=Width div 8;
if Width mod 8<>0 then Inc(n);
if n mod 4<>0 then Inc(n,4-(n mod 4));
h.Size:=40+ItemSize+n*Height;
h.Offset:=22;
s.Write(h,SizeOf(h));
FillChar(u,SizeOf(u),0);
u.biSize:=SizeOf(u);
u.biWidth:=Width;
u.biHeight:=Height*2;
u.biPlanes:=1;
u.biBitCount:=32;
s.Write(u,SizeOf(u));
fData.Seek(Index*ItemSize,soFromBeginning);
if (ADrawingStyle<>dsTransparent) and (BkColor<>clNone) then
  begin
  t:=Graphics.TBitmap.Create;
  t.Width:=Width;
  t.Height:=Height;
  Draw(t.Canvas,0,0,Index,ADrawingStyle,AImageType);
  t.PixelFormat:=pf24bit;
  o:=255;
  for y:=Height-1 downto 0 do
    begin
    p:=t.ScanLine[y];
    for x:=0 to Width-1 do
      begin
      s.Write(p^[x*3],3);
      s.Write(o,1);
      end;
    end;
  t.Free;
  end
else if (ADrawingStyle in [dsFocus,dsSelected]) and (fBlendColor<>clNone) then
  begin
  o:=0;
  case ADrawingStyle of
    dsFocus:o:=64;
    dsSelected:o:=128;
  end;
  for y:=Height-1 downto 0 do
    for x:=0 to Width-1 do
      begin
      fData.Read(b,1);
      fData.Read(g,1);
      fData.Read(r,1);
      fData.Read(a,1);
      b:=b+(fBlenB-b)*o div 255;
      g:=g+(fBlenG-g)*o div 255;
      r:=r+(fBlenR-r)*o div 255;
      s.Write(b,1);
      s.Write(g,1);
      s.Write(r,1);
      s.Write(a,1);
      end;
  end
else
  s.CopyFrom(fData,ItemSize);
b:=0;
for c:=1 to n*Height do s.Write(b,1);
s.Seek(0,soFromBeginning);
Image.LoadFromStream(s);
s.Free;
end;

procedure TEKImageList32.Assign(Source:TPersistent);
var
  c:TCustomImageList;
  m:TEKImageList32;
  b:Boolean;
begin
b:=True;
if Source=nil then
  begin
  b:=False;
  Clear;
  end
else if Source is TEKImageList32 then
  begin
  b:=False;
  m:=Source as TEKImageList32;
  BkColor:=m.BkColor;
  BlendColor:=m.BlendColor;
  DisabledColor:=m.DisabledColor;
  DisabledStyle:=m.DisabledStyle;
  DrawingStyle:=m.DrawingStyle;
  Height:=m.Height;
  ImageType:=m.ImageType;
  Width:=m.Width;
  Clear;
  AddImages(m);
  end
else if Source is TCustomImageList then
  begin
  b:=False;
  c:=Source as TCustomImageList;
  BkColor:=c.BkColor;
  BlendColor:=c.BlendColor;
  DrawingStyle:=c.DrawingStyle;
  Height:=c.Height;
  ImageType:=c.ImageType;
  Width:=c.Width;
  Masked:=c.Masked;
  ShareImages:=c.ShareImages;
  Clear;
  AddImages(c);
  end;
if b then inherited Assign(Source);
end;

procedure TEKImageList32.AssignTo(Dest:TPersistent);
var
  c:TCustomImageList;
  m:TEKImageList32;
  b:Boolean;
begin
b:=True;
if Dest is TEKImageList32 then
  begin
  b:=False;
  m:=Dest as TEKImageList32;
  m.BkColor:=BkColor;
  m.BlendColor:=BlendColor;
  m.DisabledColor:=DisabledColor;
  m.DisabledStyle:=DisabledStyle;
  m.DrawingStyle:=DrawingStyle;
  m.Height:=Height;
  m.ImageType:=ImageType;
  m.Width:=Width;
  m.Clear;
  m.AddImages(Self);
  end
else if Dest is TCustomImageList then
  begin
  b:=False;
  c:=Dest as TCustomImageList;
  c.BkColor:=BkColor;
  c.BlendColor:=BlendColor;
  c.DrawingStyle:=DrawingStyle;
  c.Height:=Height;
  c.ImageType:=ImageType;
  c.Width:=Width;
  c.Masked:=Masked;
  c.ShareImages:=ShareImages;
  c.Clear;
  c.AddImages(Self);
  end;
if b then inherited AssignTo(Dest);
end;

function TEKImageList32.GetImageBitmap:HBITMAP;
var
  r,b:Graphics.TBitmap;
  k,c:Integer;
begin
r:=Graphics.TBitmap.Create;
c:=GetCount;
r.Width:=Width*c;
r.Height:=Height;
r.Canvas.Brush.Color:=clBlack;
r.Canvas.FloodFill(0,0,clWhite,fsSurface);
b:=Graphics.TBitmap.Create;
for k:=0 to c-1 do
  begin
  ToBitmap(k,b,nil);
  r.Canvas.Draw(k*Width,0,b);
  end;
b.Free;
Result:=r.Handle;
end;

function TEKImageList32.GetMaskBitmap:HBITMAP;
var
  r,b:Graphics.TBitmap;
  k,c:Integer;
begin
r:=Graphics.TBitmap.Create;
c:=GetCount;
r.Width:=Width*c;
r.Height:=Height;
r.Canvas.Brush.Color:=clBlack;
r.Canvas.FloodFill(0,0,clWhite,fsSurface);
b:=Graphics.TBitmap.Create;
for k:=0 to c-1 do
  begin
  ToBitmap(k,nil,b);
  r.Canvas.Draw(k*Width,0,b);
  end;
b.Free;
Result:=r.Handle;
end;

procedure TEKImageList32.ReadData(Stream:TStream);
begin
fData.LoadFromStream(Stream);
RefImgList;
end;

procedure TEKImageList32.WriteData(Stream:TStream);
begin
fData.SaveToStream(Stream);
end;

procedure TEKImageList32.Change;
var i:Integer;
begin
if Width<1 then Width:=1;
if Height<1 then Height:=1;
if Width>255 then Width:=255;
if Height>255 then Height:=255;
i:=ItemSize;
ItemSize:=Width*Height*4;
ImageInfo:=IntToStr(Width)+'x'+IntToStr(Height)+'; 32bit; BI_RGB Compression;';
if i<>ItemSize then fData.Clear;
inherited Change;
end;

procedure TEKImageList32.RefImgList;
var
  k:Integer;
  i:TIcon;
begin
inherited Clear;
i:=TIcon.Create;
for k:=0 to GetCount-1 do
  begin
  GetIcon(k,i,dsTransparent,itImage);
  ImageList_AddIcon(Handle,i.Handle);
  end;
i.Free;
end;

procedure TEKImageList32.SetBkColor(V:TColor);
begin
fBkColor:=V;
inherited BkColor:=V;
end;

procedure TEKImageList32.DefineProperties(Filer:TFiler);
var
  Ancestor:TComponent;
  Info:Longint;
begin
Info:=0;
Ancestor:=TComponent(Filer.Ancestor);
if Ancestor<>nil then Info:=Ancestor.DesignInfo;
Filer.DefineProperty('Left',ReadLeft,WriteLeft,LongRec(DesignInfo).Lo<>LongRec(Info).Lo);
Filer.DefineProperty('Top',ReadTop,WriteTop,LongRec(DesignInfo).Hi<>LongRec(Info).Hi);
Filer.DefineBinaryProperty('Bitmap',ReadData,WriteData,GetCount>0);
end;

procedure TEKImageList32.ReadLeft(Reader:TReader);
var FDesignInfo:Longint;
begin
FDesignInfo:=DesignInfo;
LongRec(FDesignInfo).Lo:=Reader.ReadInteger;
DesignInfo:=FDesignInfo;
end;

procedure TEKImageList32.ReadTop(Reader:TReader);
var FDesignInfo:Longint;
begin
FDesignInfo:=DesignInfo;
LongRec(FDesignInfo).Hi:=Reader.ReadInteger;
DesignInfo:=FDesignInfo;
end;

procedure TEKImageList32.WriteLeft(Writer:TWriter);
begin
Writer.WriteInteger(LongRec(DesignInfo).Lo);
end;

procedure TEKImageList32.WriteTop(Writer:TWriter);
begin
Writer.WriteInteger(LongRec(DesignInfo).Hi);
end;

end.
