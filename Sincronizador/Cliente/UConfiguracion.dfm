object FConfiguracion: TFConfiguracion
  Left = 324
  Top = 196
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Configuraci'#243'n Sistema'
  ClientHeight = 544
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
  object Panel1: TPanel
    Left = 761
    Top = 0
    Width = 25
    Height = 12
    BevelOuter = bvNone
    TabOrder = 12
    OnClick = Panel1Click
  end
  object memoConfiguracion: TMemo
    Left = 1
    Top = 4
    Width = 369
    Height = 533
    TabStop = False
    TabOrder = 0
  end
  object btnCargarIni: TButton
    Left = 375
    Top = 512
    Width = 129
    Height = 25
    Caption = 'Cargar'
    TabOrder = 9
    OnClick = btnCargarIniClick
  end
  object btnGuardarYSalir: TButton
    Left = 514
    Top = 512
    Width = 129
    Height = 25
    Caption = 'Guardar y Salir'
    TabOrder = 10
    OnClick = btnGuardarYSalirClick
  end
  object btnCancelarYSalir: TButton
    Left = 653
    Top = 512
    Width = 129
    Height = 25
    Cancel = True
    Caption = 'Cancelar y Salir'
    TabOrder = 11
    OnClick = btnCancelarYSalirClick
  end
  object GroupBoxBD: TGroupBox
    Left = 374
    Top = 251
    Width = 408
    Height = 125
    Caption = ' Config Base Datos '
    TabOrder = 5
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
    object btnDestinoBases: TSpeedButton
      Left = 373
      Top = 27
      Width = 23
      Height = 22
      Hint = 'Buscar base de datos'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD0B0B0B0B
        0B0B0B0B0B0BFDFDFDFDFD1E1E1E1E1E1E1E1E1E1E1E0BFDFDFD1E1EBFFBFBFB
        FBFBFBFBFBFB1E01FDFD1E1EFBBFFBFBFBFBFBFBFBFB2F01FDFD1E2737BFFBFB
        FBFBFBFBFBFB3701FDFD1E2F27BF7F7F7F7F7F7F7F7F373701FD1EFB1E7FBFBF
        BFBFBFBFBFBF377F01FD1EFB1E37FFFFFFFFFFFFFFFFFBFF01FD1EFB371E1E1E
        1E1E1E1E1E1E1E1E01FD1EBF7F7F7F7F7FFFFFFFFFFF1E0BFDFD1EFFBFBFBFBF
        FF1E1E1E1E1E1EFDFDFDFD27FFFFFFFF1EFDFDFDFDFDFDFDFDFDFDFD27272727
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnDestinoBasesClick
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
    object editDB_Host: TEdit
      Left = 11
      Top = 63
      Width = 386
      Height = 21
      Hint = 'Host de la base de datos del cliente'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
      TabOrder = 2
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
      TabOrder = 3
      Text = 'editDB_Pass'
    end
  end
  object GroupBoxIntervalo: TGroupBox
    Left = 673
    Top = 377
    Width = 110
    Height = 78
    Caption = ' Intervalo '
    TabOrder = 7
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
  object GroupBoxArchivos: TGroupBox
    Left = 374
    Top = 377
    Width = 294
    Height = 78
    Caption = '  Archivos de Sincronizaci'#243'n  '
    TabOrder = 6
    object Label12: TLabel
      Left = 12
      Top = 26
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label13: TLabel
      Left = 5
      Top = 53
      Width = 42
      Height = 13
      Caption = 'Servidor:'
    end
    object Label14: TLabel
      Left = 189
      Top = 26
      Width = 66
      Height = 13
      Caption = 'Tama'#241'o Lote:'
    end
    object Label15: TLabel
      Left = 198
      Top = 53
      Width = 57
      Height = 13
      Caption = 'Antiguedad:'
    end
    object editFILE_Upload: TEdit
      Left = 48
      Top = 20
      Width = 132
      Height = 21
      Hint = 'Nombre de inicio de los archivos generados por el cliente'
      CharCase = ecUpperCase
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 'EDITFILE_UPLOAD'
    end
    object editFILE_Download: TEdit
      Left = 48
      Top = 47
      Width = 132
      Height = 21
      Hint = 'Nombre de inicio de los archivos generados por el servidor'
      CharCase = ecUpperCase
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = 'EDITFILE_DOWNLOAD'
    end
    object editTamanioLote: TEdit
      Left = 259
      Top = 20
      Width = 32
      Height = 21
      TabOrder = 2
      Text = 'editTamanioLote'
    end
    object editAntiguedadArchivo: TEdit
      Left = 259
      Top = 47
      Width = 32
      Height = 21
      TabOrder = 3
      Text = 'editAntiguedadArchivo'
    end
  end
  object GroupBoxDias: TGroupBox
    Left = 374
    Top = 456
    Width = 409
    Height = 52
    Caption = '  Dias  '
    TabOrder = 8
    object CheckBoxLunes: TCheckBox
      Left = 36
      Top = 14
      Width = 66
      Height = 15
      Caption = 'Lunes'
      TabOrder = 0
    end
    object CheckBoxJueves: TCheckBox
      Left = 316
      Top = 14
      Width = 66
      Height = 15
      Caption = 'Jueves'
      TabOrder = 3
    end
    object CheckBoxMiercoles: TCheckBox
      Left = 222
      Top = 14
      Width = 66
      Height = 15
      Caption = 'Miercoles'
      TabOrder = 2
    end
    object CheckBoxViernes: TCheckBox
      Left = 36
      Top = 32
      Width = 66
      Height = 15
      Caption = 'Viernes'
      TabOrder = 4
    end
    object CheckBoxMartes: TCheckBox
      Left = 129
      Top = 14
      Width = 66
      Height = 15
      Caption = 'Martes'
      TabOrder = 1
    end
    object CheckBoxSabado: TCheckBox
      Left = 176
      Top = 32
      Width = 66
      Height = 15
      Caption = 'Sabado'
      TabOrder = 5
    end
    object CheckBoxDomingo: TCheckBox
      Left = 316
      Top = 32
      Width = 66
      Height = 15
      Caption = 'Domingo'
      TabOrder = 6
    end
  end
  object GroupBoxFTP: TGroupBox
    Left = 374
    Top = 88
    Width = 409
    Height = 162
    Caption = ' Config Servidor FTP '
    TabOrder = 4
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
  object RadioGroupModo: TRadioGroup
    Left = 374
    Top = 4
    Width = 203
    Height = 44
    Caption = ' Modo Funcionamiento Sistema '
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'CLIENTE'
      'SERVIDOR')
    TabOrder = 1
  end
  object GroupBoxConfigPassword: TGroupBox
    Left = 582
    Top = 4
    Width = 201
    Height = 44
    Caption = ' Password Configurac'#243'n '
    TabOrder = 2
    object editConfig_Pass: TEdit
      Left = 8
      Top = 16
      Width = 185
      Height = 21
      Hint = 'Password de ingreso a la pantalla de Configuraci'#243'n'
      ParentShowHint = False
      PasswordChar = '*'
      ShowHint = True
      TabOrder = 0
      Text = 'editConfig_Pass'
    end
  end
  object GroupBoxGeneral: TGroupBox
    Left = 374
    Top = 48
    Width = 409
    Height = 40
    Caption = '  Configuraci'#243'n General  '
    TabOrder = 3
    object CheckBoxMinimizar: TCheckBox
      Left = 14
      Top = 18
      Width = 132
      Height = 15
      Caption = 'Minimizar al iniciar'
      TabOrder = 0
    end
    object CheckBoxWindows: TCheckBox
      Left = 174
      Top = 18
      Width = 137
      Height = 15
      Caption = 'Iniciar con Windows'
      TabOrder = 1
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'InterBase Databases (*.GDB)|*.gdb|All Files (*.*)|*.*'
    Left = 64
    Top = 69
  end
  object ZQ_VerificarBase: TZQuery
    Connection = DM.ConexionLectura
    SQL.Strings = (
      'select first 1 id_comprobante'
      'from comprobante')
    Params = <>
    Left = 64
    Top = 128
    object ZQ_VerificarBaseID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
  end
end
