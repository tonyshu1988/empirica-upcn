unit EKDBDateTimePicker;
(*
TDBDateTimePicker,(c) 2000-2006 Brad Prendergast (bradp@bpsoftware.com),
                  http://www.bpsoftware.com/products/delphi.htm

Version: 1.6.1.0, Jan 04, 2006

TDBDateTimePicker is a data-aware descendant of native TDateTimepicker control.
This TDBDateTimePicker control also displays a blank value for a no date value.


New:
  Properties -
    DataField: String - Specifies the field which the DBDateTimePicker control displays data.
    DataSource: TDataSource - Links the DBDateTimePickerControl to the dataset that contains
                              the field it represents.


There is no guarantee or warranty, expressed or implied, concerning the applicability of
code and techniques included in this example.  This example code is supplied AS IS.  If
you wish to use this code or technique, it is your responsibility to test and certify
the code in your project.
*)
interface

uses
  SysUtils, Classes, Controls, ComCtrls,Messages,DB, DBCtrls,
  CommCtrl,
  {$IFDEF WIN32}
    Windows, Graphics, Forms, Dialogs{$IFDEF VER170}, Variants{$ENDIF}
   {$ELSE}
  System.ComponentModel, Borland.Vcl.Variants
   {$ENDIF}
  ;

type
  TEKDBDateTimePicker = class(TDateTimePicker)
  private
    { Private declarations }
    FDataLink: TFieldDataLink;
    FFocused: Boolean;

   Function GetDataField: string;
   Function GetDataSource: TDataSource;
   Procedure SetDataField(const Value: string);
   Procedure SetDataSource(Value: TDataSource);
   Procedure DataChange(Sender: TObject);
   Procedure DataUpdate(Sender: TObject);
   procedure CMExit(var Message: TCMExit); message CM_EXIT;
   procedure CMEnter(var Message: TCMEnter); message CM_ENTER;

  protected
    { Protected declarations }
    procedure Change; override;
    procedure Reset;
    procedure ResetDateFormat;
  public
    { Public declarations }
  Constructor Create(AOwner: TComponent); override;
  Destructor Destroy; override;
  published
    { Published declarations }
    Property DataField: string read GetDataField write SetDataField;
    Property DataSource: TDataSource read GetDataSource write SetDataSource;
  end;

procedure Register;  

implementation

{ TEKDBDateTimePicker }
  
procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKDBDateTimePicker]);
end;


Constructor TEKDBDateTimePicker.Create(AOwner: TComponent);
Begin
  inherited Create(AOwner);
  FDataLink:= TFieldDataLink.Create;
  FDataLink.Control:= Self;
  FDataLink.OnDataChange:= DataChange;
  FDataLink.OnUpdateData:= DataUpdate;
End;

Destructor TEKDBDateTimePicker.Destroy;
Begin
  FDataLink.OnDataChange:= nil;
  FDataLink.OnUpdateData:= nil;
  FDataLink.Free;
  FDataLink:= nil;
  inherited Destroy;
End;

Function TEKDBDateTimePicker.GetDataField: string;
Begin
  Result:= FDataLink.FieldName;
End;

Function TEKDBDateTimePicker.GetDataSource: TDataSource;
Begin
  Result:= FDataLink.DataSource;
End;

Procedure TEKDBDateTimePicker.SetDataField(const value: string);
Begin
  FDataLink.FieldName:= Value;
End;

Procedure TEKDBDateTimePicker.SetDataSource(Value: TDataSource);
Begin
  FDataLink.DataSource:= Value;
End;

Procedure TEKDBDateTimePicker.DataChange(Sender: TObject);
Begin
  if (FDataLink.field <> nil) then
    begin
      if (FFocused and FDataLink.CanModify) or (fDataLink.DataSource.State = dsBrowse) then
        DateTime:= FDataLink.Field.AsDateTime;
    end
  else
    begin
      DateTime_SetFormat(Handle,'''''');
      DateTime:= Now();
      //DateTime:= StrToDateTime(FDataLink.Field.AsString);
      if FDataLink.Editing then
        FDataLink.Modified;
    end;

  if ((FDataLink.Field <> nil) and (FDataLink.Field.AsString = '')
       and (Kind = dtkDate)) then
    begin
      DateTime_SetFormat(Handle,'''''');
      DateTime:= Now(); { and Now date in calendar is actual suggested by Jan Tobolík  [tobolik@email.cz]}
    end
  else
    ResetDateFormat;
End;

Procedure TEKDBDateTimePicker.DataUpdate(Sender: TObject);
Begin
  if FDataLink.CanModify then
    FDataLink.field.AsDateTime:= DateTime;
End;

Procedure TEKDBDateTimePicker.Change;
Begin
  if not(FDataLink.Editing) then
    FDataLink.Edit;
  FDataLink.Modified;
  ResetDateFormat;
  inherited;
End;

procedure TEKDBDateTimePicker.CMExit(var Message: TCMExit);
begin
   try
      FDataLink.UpdateRecord;
      FFocused:= False;
   except
    SetFocus;
    raise;
   end;
   inherited;
end;

procedure TEKDBDateTimePicker.CMEnter(var Message: TCMEnter);
begin
  FFocused:= True;
  inherited;
  FDataLink.CanModify;
end;

procedure TEKDBDateTimePicker.Reset;
begin
  FDataLink.Reset;
end;

procedure TEKDBDateTimePicker.ResetDateFormat;
begin
  case DateFormat of
    {$IFDEF WIN32}
    dfShort: DateTime_SetFormat(Handle,PChar(ShortDateFormat));
    dfLong: DateTime_SetFormat(Handle,PChar(LongDateFormat));
    {$ELSE}
    dfShort: DateTime_SetFormat(Handle,ShortDateFormat);
    dfLong: DateTime_SetFormat(Handle,LongDateFormat);
    {$ENDIF}
  end;
end;

end.
