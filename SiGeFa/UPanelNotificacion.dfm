object FPanelNotificacion: TFPanelNotificacion
  Left = 768
  Top = 601
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 92
  ClientWidth = 228
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 228
    Height = 92
    Align = alClient
    BorderWidth = 10
    Caption = 'Panel1'
    TabOrder = 0
    object memoMensaje: TMemo
      Left = 11
      Top = 11
      Width = 206
      Height = 70
      Align = alClient
      Lines.Strings = (
        'memoMensaje')
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Actualizar: TTimer
    Interval = 10000
    OnTimer = ActualizarTimer
    Left = 126
    Top = 32
  end
end
