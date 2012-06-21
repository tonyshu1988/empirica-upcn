object FMensajeMasDato: TFMensajeMasDato
  Left = 601
  Top = 357
  BorderStyle = bsSingle
  Caption = 'FMensajeMasDato'
  ClientHeight = 85
  ClientWidth = 417
  Color = clBtnFace
  Constraints.MinHeight = 123
  Constraints.MinWidth = 433
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    417
    85)
  PixelsPerInch = 96
  TextHeight = 13
  object lblMensaje: TLabel
    Left = 8
    Top = 7
    Width = 401
    Height = 18
    Anchors = [akLeft, akTop, akRight, akBottom]
    AutoSize = False
    Caption = 
      'Aca va el mensaje que se quiere mostrar. Aca va el mensaje que s' +
      'e quiere mostrar. Aca va el mensaje que se quiere mostrar'
    Color = clGradientActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object lblTituloCampo: TLabel
    Left = 8
    Top = 28
    Width = 160
    Height = 16
    Alignment = taRightJustify
    Anchors = [akLeft, akBottom]
    AutoSize = False
    Caption = 'lblTituloCampo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object btnAceptar: TButton
    Left = 8
    Top = 54
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Aceptar'
    TabOrder = 0
    OnClick = btnAceptarClick
  end
  object btnCancelar: TButton
    Left = 334
    Top = 54
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btnCancelarClick
  end
  object Edit_Dato: TEdit
    Left = 177
    Top = 26
    Width = 130
    Height = 21
    Anchors = [akLeft, akBottom]
    TabOrder = 2
    Text = 'Edit_Dato'
  end
  object DateTimePicker_Dato: TDateTimePicker
    Left = 177
    Top = 26
    Width = 130
    Height = 21
    Anchors = [akLeft, akBottom]
    Date = 41081.416645173610000000
    Time = 41081.416645173610000000
    TabOrder = 3
  end
end
