object FConfiguracion: TFConfiguracion
  Left = 449
  Top = 255
  Width = 528
  Height = 276
  Caption = 'Configuracion'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 520
    Height = 113
    Align = alTop
    Caption = 'Configuracion'
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 26
      Width = 70
      Height = 13
      Caption = 'Ejecutar en:'
    end
    object Label2: TLabel
      Left = 173
      Top = 26
      Width = 56
      Height = 13
      Caption = 'Segundos'
    end
    object Label3: TLabel
      Left = 13
      Top = 66
      Width = 63
      Height = 13
      Caption = 'Ruta Base:'
    end
    object btnDestinoBases: TSpeedButton
      Left = 457
      Top = 62
      Width = 20
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
    object ETiempo: TEdit
      Left = 93
      Top = 22
      Width = 73
      Height = 21
      TabOrder = 0
      Text = '10'
    end
    object ERutaBase: TEdit
      Left = 88
      Top = 64
      Width = 361
      Height = 21
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 113
    Width = 520
    Height = 41
    Align = alTop
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 19
      Top = 8
      Width = 121
      Height = 25
      Caption = 'Guardar Cambios'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object Button3: TButton
      Left = 160
      Top = 8
      Width = 75
      Height = 25
      Caption = 'SALIR'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 154
    Width = 520
    Height = 95
    Align = alClient
    TabOrder = 2
    object lbTIEMPO: TLabel
      Left = 195
      Top = 40
      Width = 120
      Height = 32
      Caption = 'TIEMPO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 192
      Top = 16
      Width = 84
      Height = 13
      Caption = 'Se ejecuta en:'
    end
    object Button1: TButton
      Left = 24
      Top = 11
      Width = 161
      Height = 73
      Caption = 'Ejecutar Shoot Down'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 386
      Top = 16
      Width = 75
      Height = 65
      Caption = 'PARAR'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 368
    Top = 16
  end
  object EKIni1: TEKIni
    Archivo = 'sistema.ini'
    Left = 304
    Top = 16
  end
  object OpenDialog: TOpenDialog
    Filter = 'InterBase Databases (*.GDB)|*.gdb|All Files (*.*)|*.*'
    Left = 328
    Top = 189
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 456
    Top = 194
  end
end
