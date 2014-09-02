object FPrincipal: TFPrincipal
  Left = 415
  Top = 138
  Width = 611
  Height = 584
  Caption = 'Modulo Impresi'#243'n Fiscal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 595
    Height = 546
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 49
      Width = 71
      Height = 13
      Caption = 'Parametros:'
    end
    object lblErrorDriver: TLabel
      Left = 1
      Top = 527
      Width = 593
      Height = 18
      Align = alBottom
      Alignment = taCenter
      Caption = 'lblErrorDriver'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lblFactura: TLabel
      Left = 256
      Top = 211
      Width = 61
      Height = 16
      Caption = 'Factura:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblFactura_OS: TLabel
      Left = 256
      Top = 243
      Width = 61
      Height = 16
      Caption = 'Factura:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNC: TLabel
      Left = 256
      Top = 275
      Width = 61
      Height = 16
      Caption = 'Factura:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 593
      Height = 30
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 12
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 591
        Height = 28
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'MODULO FISCAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object editParametros: TEdit
      Left = 80
      Top = 42
      Width = 509
      Height = 21
      TabOrder = 0
    end
    object btnCierreZ: TButton
      Left = 9
      Top = 108
      Width = 113
      Height = 25
      Caption = 'Cierre Z'
      TabOrder = 3
      OnClick = btnCierreZClick
    end
    object btnCierreX: TButton
      Left = 9
      Top = 140
      Width = 113
      Height = 25
      Caption = 'Cierre X'
      TabOrder = 4
      OnClick = btnCierreXClick
    end
    object btnAuditoria: TButton
      Left = 9
      Top = 172
      Width = 113
      Height = 25
      Caption = 'Auditoria'
      TabOrder = 5
      OnClick = btnAuditoriaClick
    end
    object editNumeroComprobante: TEdit
      Left = 128
      Top = 206
      Width = 121
      Height = 21
      TabOrder = 10
    end
    object btnFactura: TButton
      Left = 9
      Top = 204
      Width = 113
      Height = 25
      Caption = 'Factura'
      TabOrder = 9
      OnClick = btnFacturaClick
    end
    object btnAbrirPuerto: TBitBtn
      Left = 9
      Top = 76
      Width = 113
      Height = 25
      Caption = 'Abrir Puerto'
      TabOrder = 1
      OnClick = btnAbrirPuertoClick
    end
    object btnCerrarPuerto: TBitBtn
      Left = 128
      Top = 76
      Width = 113
      Height = 25
      Caption = 'Cerrar Puerto'
      TabOrder = 2
      OnClick = btnCerrarPuertoClick
    end
    object DateTimeFechaDesde: TDateTimePicker
      Left = 128
      Top = 174
      Width = 121
      Height = 21
      Date = 41068.667614293980000000
      Time = 41068.667614293980000000
      TabOrder = 6
    end
    object DateTimeFechaHasta: TDateTimePicker
      Left = 251
      Top = 174
      Width = 121
      Height = 21
      Date = 41068.667614293980000000
      Time = 41068.667614293980000000
      TabOrder = 7
    end
    object ComboBoxTipoAuditoria: TComboBox
      Left = 375
      Top = 174
      Width = 214
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 8
      Text = 'T = Reporte total general'
      Items.Strings = (
        'T = Reporte total general'
        'D = Reporte detallado')
    end
    object btnCancelarFactura: TButton
      Left = 9
      Top = 346
      Width = 113
      Height = 25
      Caption = 'Cancelar Factura'
      TabOrder = 11
      Visible = False
      OnClick = btnCancelarFacturaClick
    end
    object gBoxImpresora: TGroupBox
      Left = 248
      Top = 72
      Width = 341
      Height = 83
      Caption = ' Impresora '
      TabOrder = 13
      object Label3: TLabel
        Left = 32
        Top = 16
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Marca:'
      end
      object Label5: TLabel
        Left = 11
        Top = 60
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = 'Velocidad:'
      end
      object Label4: TLabel
        Left = 29
        Top = 38
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Puerto:'
      end
      object Label6: TLabel
        Left = 183
        Top = 16
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Modelo:'
      end
      object cBoxImpresora_Marca: TComboBox
        Left = 74
        Top = 12
        Width = 104
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'EPSON'
        OnChange = cBoxImpresora_MarcaChange
        Items.Strings = (
          'EPSON'
          'HASAR')
      end
      object cBoxImpresora_Velocidad: TComboBox
        Left = 74
        Top = 56
        Width = 104
        Height = 21
        ItemHeight = 13
        ItemIndex = 2
        TabOrder = 3
        Text = '9600'
        OnChange = cBoxImpresora_VelocidadChange
        Items.Strings = (
          '2400'
          '4800'
          '9600'
          '19200')
      end
      object cBoxImpresora_Puerto: TComboBox
        Left = 74
        Top = 34
        Width = 104
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = '1'
        OnChange = cBoxImpresora_PuertoChange
        Items.Strings = (
          '1'
          '2')
      end
      object cBoxImpresora_Modelo: TComboBox
        Left = 231
        Top = 12
        Width = 104
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = 'TM-U220AF'
        OnChange = cBoxImpresora_ModeloChange
        Items.Strings = (
          'TM-U220AF'
          'P-330F'
          'P-715F')
      end
    end
    object MemoLog: TMemo
      Left = 1
      Top = 389
      Width = 593
      Height = 138
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 14
      WordWrap = False
    end
    object btnFactura_OS: TButton
      Left = 9
      Top = 236
      Width = 113
      Height = 25
      Caption = 'Factura OS'
      TabOrder = 15
      OnClick = btnFactura_OSClick
    end
    object editNumeroComprobante_OS: TEdit
      Left = 128
      Top = 238
      Width = 121
      Height = 21
      TabOrder = 16
    end
    object Hasar: THASAR
      Left = 168
      Top = 120
      Width = 32
      Height = 32
      OnImpresoraNoResponde = HasarImpresoraNoResponde
      OnErrorImpresora = HasarErrorImpresora
      OnErrorFiscal = HasarErrorFiscal
      OnFaltaPapel = HasarFaltaPapel
      ControlData = {000300004F0300004F030000}
    end
    object btnNC: TButton
      Left = 9
      Top = 268
      Width = 113
      Height = 25
      Caption = 'Nota Cr'#233'dito'
      TabOrder = 18
      OnClick = btnNCClick
    end
    object editNumeroComprobNC: TEdit
      Left = 128
      Top = 270
      Width = 121
      Height = 21
      TabOrder = 19
    end
  end
end
