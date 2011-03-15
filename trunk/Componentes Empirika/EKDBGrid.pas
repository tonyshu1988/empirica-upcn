

{ ####  DO NOT REMOVE THIS COPYRIGHT NOTICE PLEASE ... ###}

{ EKDBGrid Ver. 2.1
  Copyright (C) 2004, written by Eko Schuscanto
  E-Mail:  eko@schuscanto.com
  WEB: http://www.schuscanto.com
  Address : Sonosewu Baru 422 Yogyakarta, INDONESIA 55182
  tel: +62 274 377777 / +62 815 687 2416
}

{COPYRIGHT NOTICE}
{EKDBGrid is distributed as FREEWARE, but remains the COPYRIGHT of
 Estech Mediasoft (INA) (web www.schuscanto.com, email eko@schuscanto.com). Estech Mediasoft grants you the right
to include this compiled component in your DELPHI application, whether COMMERCIAL, SHAREWARE, or
FREEWARE, BUT YOU MAY NOT DISTRIBUTE THIS SOURCE CODE OR ITS COMPILED .DCU  IN ANY FORM OTHER
THAN AS IT EXISTS HERE; COMPLETE WITH THIS NOTICE AND ALL THE TEXT BELOW. EKDBGrid may be included
in any shareware or freeware libraries or compilation disks, provided no charge other than the
usual media cost recovery is made.}

{IF YOU HAVE ANY DOUBTS ABOUT WHETHER YOU MAY LEGALLY USE OR DISTRIBUTE THIS COMPONENT,
CONTACT ESTECH MEDIASOFT BY E-MAIL.}

unit EKDBGrid;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, Grids, DBGrids,DB;

type
Tcellstyle=(csRaised,csLowered,csNone);

type
  TEKDBGrid = class(TDBGrid)
  private
    FTitleHeight: Integer;
    Fcellstyle:Tcellstyle;
    FOnMouseDown:TMouseEvent;
    FOnMouseUp:TMouseEvent;
    FRowHeight:Integer;
    FShowImages:boolean;
    FShowMemoText:boolean;
    procedure setcellstyle(value:Tcellstyle);
    procedure setcellspacing(value:integer);
    function getcellspacing:integer;
    procedure setshowimages(value:boolean);
    procedure setshowmemotext(value:boolean);

  protected
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure DrawColumnCell(const Rect:TRect;DataCol:Integer;Column:TColumn;
              State:TGridDrawState); override;
    procedure DrawCell(ACol, ARow: Longint;ARect: TRect; AState: TGridDrawState); override;
    procedure setdefaultrowheight(value:integer);
    function getdefaultrowheight:integer;
    procedure LayoutChanged; override;
    procedure RowHeightsChanged; override;
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure SetTitleHeight(Value: Integer);

  public
    constructor Create(AOwner : TComponent); override;
    property Row;
      property Col;
    destructor destroy; override;

  published
    property Cellstyle:tcellstyle read fcellstyle write setcellstyle;
    property OnMouseDown read FOnMouseDown write FOnMouseDown;
    property OnMouseUp read FOnMouseUp write FOnMouseUp;
    property CellSpacing:Integer read getcellspacing write setcellspacing default 1;
    property DefaultRowHeight:Integer read GetDefaultRowHeight write SetDefaultRowHeight;
    property ShowImages:boolean read Fshowimages write setshowimages default true;
    property ShowMemoText:boolean read FShowMemoText write setShowMemoText default true;
     property TitleHeight: Integer read FTitleHeight write SetTitleHeight;
      property OnMouseMove;

  end;

procedure Register;

implementation

uses EKUsrPermisos;
const
imagetypes=[ftblob,ftgraphic,ftTypedBinary,ftParadoxOle,ftDBaseOle];
memotypes=[ftmemo,ftfmtmemo];

Type
TCustomGridHack = class(TCustomGrid)
Public
Property Options;
end;

constructor TEKDBGrid.Create(AOwner : TComponent);
begin
inherited Create(AOwner);
TCustomGridHack(Self).Options:=TCustomGridHack(Self).Options+[goRowSizing];
cellstyle:=csNone;
FRowheight:=25;
FTitleHeight:=30;
Fshowimages:=true;
FShowMemoText:=true;
end;

function BreakStr(ACanvas: TCanvas; StrWidth: Integer; Str: String): TStringList;
const Dividers=' ,.<>:;-*/+"''$#()=';
var i: Integer;
    tmp: String;
    Words: TStringList;
begin
  Words:=TStringList.Create;
  Result:=TStringList.Create;
  tmp:='';
  for i:=1 to Length(Str) do
  begin
    tmp:=tmp+Str[i];
    if Pos(Str[i],Dividers)>0 then begin Words.Add(tmp); tmp:='' end;
  end;
  Words.Add(tmp);
  tmp:='';
  Result.Add(Words[0]);
  for i:=1 to Words.Count-1 do
  begin
    if (ACanvas.TextWidth(Result[Result.Count-1]+Words[i])>StrWidth) then
    begin
      Result[Result.Count-1]:=Trim(Result[Result.Count-1]); //trim the blanks at the line's edges
      Result.Add(Words[i]);
    end
    else
      Result[Result.Count-1]:=Result[Result.Count-1]+Words[i];
  end;
end;


procedure TEKDBGrid.WMSize(var Message: TWMSize);
begin
inherited;
invalidate;
end;

procedure TEKDBGrid.CMFontChanged(var Message: TMessage);
var h:integer;
begin
inherited;
canvas.font.assign(font);
h:=canvas.textheight('Wg');
if FRowHeight<h then setdefaultrowheight(h);
if (csdesigning in componentstate) then invalidate;
end;

procedure TEKDBGrid.DrawColumnCell(const Rect:TRect;DataCol:Integer;
Column: TColumn; State: TGridDrawState);
var f:TField;

procedure imagecell;
var
r:trect;
w,h:integer;
pic:TPicture;
x:single;
begin
with rect,canvas do
  begin
  r:=rect;
  fillrect(rect);
  pic:=tpicture.create;
   try
   pic.assign(f);
   if not ((pic.Graphic=nil) or (pic.Graphic.Empty)) then
      begin
      x:=(pic.width/pic.height);{aspect ratio}
      h:=r.bottom-r.top;
      w:=trunc(h*x);
      if w>(right-left) then  {re-proportion pic}
         begin
         w:=(right-left);
         h:=trunc(w/x);
         end;
      r.left:=(right+left-w) shr 1;
      r.right:=r.left+w;
      r.top:=(bottom+top-h) shr 1;
      r.bottom:=r.top+h;
      inflaterect(r,-1,-1);
      stretchdraw(r,pic.graphic);
      end;
   finally
   pic.free;
   end;
  end;
end;

{draw multi-line text in memo fields}
procedure memocell;
var
r:Trect;
s:string;
begin
with canvas do
  begin
  fillrect(rect);
  s:=f.asstring;
  if s='' then exit;
  r:=rect;
  inflaterect(r,-1,-1);
  r.right:=r.right-getsystemmetrics(SM_CXVSCROLL);
  drawtext(canvas.handle,pchar(s),-1,r,DT_WORDBREAK or DT_NOPREFIX);
  end;
end;

begin
inherited drawcolumncell(rect,datacol,column,state);
if (gdFixed in state) then exit;
f:=column.field;
if (f.datatype in imagetypes) and Fshowimages then imagecell;
if (f.datatype in memotypes) and FShowmemotext then memocell;
end;


procedure TEKDBGrid.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
var
    MasterCol,Column: TColumn;
    TitleRect: TRect;
    LeftPoint,i, LineHeight: Integer;
    Strs: TStringList;
 procedure drawrect(l,t,r,b:integer;p1,p2:Tcolor);
 begin
 with ARect,canvas do
  begin
  Pen.Color :=p1 ;
  PolyLine([Point(l,b),Point(l,t),Point(r,t)]);
  Pen.Color :=p2;
  PolyLine([Point(l,b),Point(r,b),Point(r,t)]);
  end;
 end;

begin
inherited;
 if (dgTitles in Options) and (ARow=0) and ((ACol>0) or (not (dgIndicator in Options))) then
  begin
    if dgIndicator in Options then Column:=Columns[ACol-1] else Column:=Columns[ACol];
    TitleRect:=CalcTitleRect(Column, ARow, MasterCol);
    if MasterCol = nil then
    begin
      Canvas.Brush.Color := FixedColor;
      Canvas.FillRect(ARect);
      Exit;
    end;
    Canvas.Font := MasterCol.Title.Font;
    Canvas.Brush.Color := MasterCol.Title.Color;
    Canvas.FillRect(TitleRect);
    Strs:=BreakStr(Canvas,ARect.Right-ARect.Left-4,MasterCol.Title.Caption);
    LineHeight:=Canvas.TextHeight('Wg');
//    Strs:=BreakStr(Canvas,ARect.Right-ARect.Left-4,'asdfgad adsfgdffff gfdfg dfgdfgdg');
    for i:=0 to Strs.Count-1 do
    begin
      case Column.Title.Alignment of
        taLeftJustify:
          LeftPoint:=ARect.Left+2;
        taRightJustify:
          LeftPoint:=ARect.Right-Canvas.TextWidth(Strs[i])-3;
        taCenter:
          LeftPoint:=ARect.Left+(ARect.Right-ARect.Left) shr 1 - (Canvas.TextWidth(Strs[i]) shr 1);
      else
        LeftPoint:=0;
      end;
      Canvas.TextRect(ARect,LeftPoint,ARect.Top+2,Strs[i]);
      ARect.Top:=ARect.Top+LineHeight+2;
    end;
    Strs.Free;
    if [dgRowLines, dgColLines]*Options=[dgRowLines, dgColLines] then
    begin
      DrawEdge(Canvas.Handle, TitleRect, BDR_RAISEDINNER, BF_BOTTOMRIGHT);
      DrawEdge(Canvas.Handle, TitleRect, BDR_RAISEDINNER, BF_TOPLEFT);
    end;
  end
  else inherited;


with ARect do
  begin
   case fcellstyle of
   csRaised:  drawrect(left,top,right,bottom-1,clWindow,clBtnShadow);
   csLowered: drawrect(left,top,right,bottom,clBtnShadow,clWindow);
   end;
  end;
end;


procedure TEKDBGrid.Setcellstyle(Value:Tcellstyle);
begin
if (fcellstyle<>value) then fcellstyle:=value;
if (csDesigning in componentstate) then invalidate;
end;

procedure TEKDBGrid.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if Assigned(FOnMouseDown) then FOnMouseDown(Self, Button, Shift, X, Y);
inherited MouseDown(Button, Shift, X, Y);
end;

procedure TEKDBGrid.MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if Assigned(FOnMouseUp) then FOnMouseUp(Self, Button, Shift, X, Y);
inherited MouseUp(Button, Shift, X, Y);
end;

procedure TEKDBGrid.Setcellspacing(value:integer);
begin
if (value>=-1) and (value<=32) then gridlinewidth:=value;
if (csDesigning in ComponentState) then invalidate;
end;

function TEKDBGrid.getcellspacing:integer;
begin
result:=gridlinewidth;
end;

procedure TEKDBGrid.setshowimages(value:boolean);
begin
if Fshowimages<>value then
 begin
 Fshowimages:=value;
 invalidate;
 end;
end;

procedure TEKDBGrid.setshowmemotext(value:boolean);
begin
if FShowMemoText<>value then
 begin
 FShowMemoText:=value;
 invalidate;
 end;
end;

function TEKDBGrid.GetDefaultRowHeight:Integer;
begin
Result:=Inherited DefaultRowHeight;
end;

procedure TEKDBGrid.SetDefaultRowHeight(Value: Integer);
begin
FRowHeight:=value;
inherited defaultrowheight:=FRowHeight;
if (dgTitles in Options) then
   begin
   Canvas.Font:=TitleFont;
   RowHeights[0]:=Canvas.TextHeight('Wg')+4;
   end;
end;

procedure TEKDBGrid.LayoutChanged;
begin
Inherited;
SetDefaultRowHeight(FRowHeight);
if dgTitles in Options then RowHeights[0]:=FTitleHeight;
end;

procedure TEKDBGrid.RowHeightsChanged;
var
i,h:Integer;
begin
if (csDestroying in ComponentState) then exit;
h:=DefaultRowHeight;
for i:=Ord(dgTitles in Options) to pred(RowCount) do If RowHeights[i]<>h then break;
if RowHeights[i]<>h then
   begin
   SetDefaultRowHeight(RowHeights[i]);
   recreatewnd;
   end;
inherited;
end;

destructor TEKDBGrid.destroy;
begin
inherited destroy;
end;

procedure Register;
begin
RegisterComponents('EmpiriKa', [TEKDBGrid]);
end;


procedure TEKDBGrid.SetTitleHeight(Value: Integer);
begin
  if FTitleHeight<>Value then
  begin
    FTitleHeight:=Value;
    LayoutChanged;
  end;
end;

end.

