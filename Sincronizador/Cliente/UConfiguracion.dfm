object FConfiguracion: TFConfiguracion
  Left = 303
  Top = 172
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'FConfiguracion'
  ClientHeight = 461
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object memoConfiguracion: TMemo
    Left = 1
    Top = 4
    Width = 369
    Height = 453
    TabStop = False
    TabOrder = 0
  end
  object btnCargarIni: TButton
    Left = 376
    Top = 429
    Width = 129
    Height = 25
    Caption = 'Cargar'
    TabOrder = 6
    OnClick = btnCargarIniClick
  end
  object btnGuardarYSalir: TButton
    Left = 515
    Top = 429
    Width = 129
    Height = 25
    Caption = 'Guardar y Salir'
    TabOrder = 7
    OnClick = btnGuardarYSalirClick
  end
  object btnCancelarYSalir: TButton
    Left = 654
    Top = 429
    Width = 129
    Height = 25
    Caption = 'Cancelar y Salir'
    TabOrder = 8
    OnClick = btnCancelarYSalirClick
  end
  object GroupBoxDirectorios: TGroupBox
    Left = 374
    Top = 168
    Width = 408
    Height = 125
    Caption = ' Config Base Datos '
    TabOrder = 2
    object Label4: TLabel
      Left = 11
      Top = 16
      Width = 58
      Height = 13
      Caption = 'Base Datos:'
    end
    object Label3: TLabel
      Left = 11
      Top = 51
      Width = 22
      Height = 13
      Caption = 'Host'
    end
    object Label10: TLabel
      Left = 11
      Top = 85
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object Label11: TLabel
      Left = 212
      Top = 84
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object editDB_Name: TEdit
      Left = 11
      Top = 28
      Width = 358
      Height = 21
      Hint = 'Directorio y nombre de la base de datos del cliente'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 'editDB_Name'
    end
    object btnDestinoBases: TButton
      Left = 375
      Top = 29
      Width = 22
      Height = 18
      Caption = '...'
      TabOrder = 1
    end
    object editDB_Host: TEdit
      Left = 11
      Top = 63
      Width = 386
      Height = 21
      Hint = 'Host de la base de datos del cliente'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = 'editDB_Host'
    end
    object editDB_User: TEdit
      Left = 11
      Top = 97
      Width = 185
      Height = 21
      Hint = 'Usuarios de acceso a la base de datos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = 'editDB_User'
    end
    object editDB_Pass: TEdit
      Left = 212
      Top = 97
      Width = 185
      Height = 21
      Hint = 'Password de acceso a la base de datos'
      ParentShowHint = False
      PasswordChar = '*'
      ShowHint = True
      TabOrder = 4
      Text = 'editDB_Pass'
    end
  end
  object GroupBoxHora: TGroupBox
    Left = 673
    Top = 301
    Width = 110
    Height = 78
    Caption = ' Intervalo '
    TabOrder = 4
    object Label1: TLabel
      Left = 25
      Top = 24
      Width = 26
      Height = 13
      Caption = 'Hora:'
    end
    object Label2: TLabel
      Left = 11
      Top = 48
      Width = 40
      Height = 13
      Caption = 'Minutos:'
    end
    object editHora: TEdit
      Left = 59
      Top = 21
      Width = 24
      Height = 22
      AutoSize = False
      BiDiMode = bdLeftToRight
      MaxLength = 2
      ParentBiDiMode = False
      TabOrder = 0
      Text = '0'
      OnExit = editHoraExit
    end
    object UpDownHora: TUpDown
      Left = 83
      Top = 21
      Width = 16
      Height = 22
      Associate = editHora
      ArrowKeys = False
      Max = 23
      TabOrder = 1
      Wrap = True
    end
    object editMinutos: TEdit
      Left = 59
      Top = 45
      Width = 24
      Height = 22
      AutoSize = False
      BiDiMode = bdLeftToRight
      MaxLength = 2
      ParentBiDiMode = False
      TabOrder = 2
      Text = '0'
      OnExit = editMinutosExit
    end
    object UpDownMinuto: TUpDown
      Left = 83
      Top = 45
      Width = 16
      Height = 22
      Associate = editMinutos
      ArrowKeys = False
      Max = 59
      TabOrder = 3
      Wrap = True
    end
  end
  object GroupBoxBases: TGroupBox
    Left = 374
    Top = 301
    Width = 294
    Height = 78
    Caption = '  Archivos de Sincronizaci'#243'n  '
    TabOrder = 5
    object Label12: TLabel
      Left = 26
      Top = 26
      Width = 74
      Height = 13
      Caption = 'Archivo Cliente:'
    end
    object Label13: TLabel
      Left = 19
      Top = 53
      Width = 81
      Height = 13
      Caption = 'Archivo Servidor:'
    end
    object editFILE_Upload: TEdit
      Left = 106
      Top = 20
      Width = 175
      Height = 21
      Hint = 'Nombre de inicio de los archivos generados por el cliente'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 'editFILE_Upload'
    end
    object editFILE_Download: TEdit
      Left = 106
      Top = 47
      Width = 175
      Height = 21
      Hint = 'Nombre de inicio de los archivos generados por el servidor'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = 'editFILE_Download'
    end
  end
  object GroupBoxDias: TGroupBox
    Left = 374
    Top = 385
    Width = 409
    Height = 37
    Caption = '  Dias  '
    TabOrder = 3
    object CheckBoxLunes: TCheckBox
      Left = 4
      Top = 16
      Width = 66
      Height = 15
      Caption = 'Lunes'
      TabOrder = 0
    end
    object CheckBoxJueves: TCheckBox
      Left = 204
      Top = 16
      Width = 66
      Height = 15
      Caption = 'Jueves'
      TabOrder = 3
    end
    object CheckBoxMiercoles: TCheckBox
      Left = 133
      Top = 16
      Width = 66
      Height = 15
      Caption = 'Miercoles'
      TabOrder = 2
    end
    object CheckBoxViernes: TCheckBox
      Left = 271
      Top = 16
      Width = 66
      Height = 15
      Caption = 'Viernes'
      TabOrder = 4
    end
    object CheckBoxMartes: TCheckBox
      Left = 66
      Top = 16
      Width = 66
      Height = 15
      Caption = 'Martes'
      TabOrder = 1
    end
    object CheckBoxSabado: TCheckBox
      Left = 339
      Top = 16
      Width = 66
      Height = 15
      Caption = 'Sabado'
      TabOrder = 5
    end
  end
  object GroupBoxDatosEquipo: TGroupBox
    Left = 374
    Top = 3
    Width = 409
    Height = 162
    Caption = ' Config Servidor FTP '
    TabOrder = 1
    object Label7: TLabel
      Left = 11
      Top = 16
      Width = 22
      Height = 13
      Caption = 'Host'
    end
    object Label8: TLabel
      Left = 11
      Top = 50
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object Label9: TLabel
      Left = 212
      Top = 50
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object Label5: TLabel
      Left = 11
      Top = 86
      Width = 130
      Height = 13
      Caption = 'Directorio Servidor (Upload)'
    end
    object Label6: TLabel
      Left = 11
      Top = 122
      Width = 137
      Height = 13
      Caption = 'Directorio Cliente (Download)'
    end
    object editFTP_Host: TEdit
      Left = 11
      Top = 29
      Width = 386
      Height = 21
      Hint = 'Url del servidor FTP'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 'editFTP_Host'
    end
    object editFTP_User: TEdit
      Left = 11
      Top = 63
      Width = 185
      Height = 21
      Hint = 'Nombre de usuario del servidor FTP'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = 'editFTP_User'
    end
    object editFTP_Pass: TEdit
      Left = 212
      Top = 63
      Width = 185
      Height = 21
      Hint = 'Password del servidor FTP'
      ParentShowHint = False
      PasswordChar = '*'
      ShowHint = True
      TabOrder = 2
      Text = 'editFTP_Pass'
    end
    object editFTP_DirServer: TEdit
      Left = 11
      Top = 99
      Width = 386
      Height = 21
      Hint = 
        'Directorio donde se encuentran los archivos que suben los client' +
        'es'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = 'editFTP_DirServer'
    end
    object editFTP_DirPublic: TEdit
      Left = 11
      Top = 135
      Width = 386
      Height = 21
      Hint = 
        'Directorio donde se encuentran los archivos generados por el ser' +
        'vidor'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Text = 'editFTP_DirPublic'
    end
  end
  object EKInicio: TEKIni
    Archivo = 'configSincro.ini'
    Left = 32
    Top = 16
  end
end
