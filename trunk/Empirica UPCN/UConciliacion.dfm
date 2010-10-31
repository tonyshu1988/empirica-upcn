object FConciliacion: TFConciliacion
  Left = 206
  Top = 46
  Width = 1041
  Height = 679
  Caption = 'Conciliaci'#243'n Bancaria'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PContenedor: TPanel
    Left = 0
    Top = 0
    Width = 1025
    Height = 593
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 3
    TabOrder = 0
    object DBGridListaErogacion: TDBGrid
      Left = 3
      Top = 56
      Width = 1019
      Height = 488
      Align = alClient
      Color = 16772842
      DataSource = DS_Conciliacion
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FECHA_PD'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha PD'
          Width = 84
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'NRO_MEDIO'
          Title.Alignment = taCenter
          Title.Caption = 'Nro Cheque'
          Width = 155
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROVEEDOR'
          Title.Alignment = taCenter
          Title.Caption = 'Proveedor'
          Width = 464
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HABER'
          Title.Alignment = taCenter
          Title.Caption = 'Importe'
          Width = 113
          Visible = True
        end>
    end
    object pDatos: TPanel
      Left = 3
      Top = 3
      Width = 1019
      Height = 53
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        1019
        53)
      object Shape1: TShape
        Left = 3
        Top = 4
        Width = 1014
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = clGray
        Pen.Color = clGray
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 3
        Top = 3
        Width = 1014
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = clTeal
        Shape = stRoundRect
      end
      object Label3: TLabel
        Left = 4
        Top = 33
        Width = 46
        Height = 13
        Caption = 'Cuenta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblNombreCuenta: TLabel
        Left = 51
        Top = 33
        Width = 317
        Height = 13
        AutoSize = False
        Caption = 'lblNombreCuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 372
        Top = 33
        Width = 110
        Height = 13
        Caption = 'Fecha Conciliaci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblFHasta: TLabel
        Left = 483
        Top = 33
        Width = 35
        Height = 13
        Caption = 'fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 1
        Top = 7
        Width = 1017
        Height = 18
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'CONCILIACION BANCARIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 0
        Top = 6
        Width = 1017
        Height = 18
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'CONCILIACION BANCARIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInfoBk
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 608
        Top = 33
        Width = 141
        Height = 13
        Caption = 'Saldo s/ Libro de Banco:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblSaldo: TLabel
        Left = 754
        Top = 33
        Width = 20
        Height = 13
        Caption = '$ 0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
    end
    object Panel1: TPanel
      Left = 3
      Top = 544
      Width = 1019
      Height = 46
      Align = alBottom
      BevelOuter = bvNone
      BorderStyle = bsSingle
      TabOrder = 2
      object Label6: TLabel
        Left = 604
        Top = 8
        Width = 90
        Height = 14
        Caption = 'Total Importe:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblTotalHaber: TLabel
        Left = 701
        Top = 8
        Width = 22
        Height = 14
        Caption = '$ 0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 47
        Top = 6
        Width = 152
        Height = 16
        Alignment = taRightJustify
        Caption = 'Saldo s/ Conciliaci'#243'n al'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblSaldoConciliacion: TLabel
        Left = 301
        Top = 6
        Width = 22
        Height = 16
        Caption = '$ 0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 7
        Top = 24
        Width = 192
        Height = 16
        Alignment = taRightJustify
        Caption = 'Saldo s/ Extracto Bancario al'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblSaldoExtracto: TLabel
        Left = 301
        Top = 24
        Width = 22
        Height = 16
        Caption = '$ 0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object lblDetalleExtracto: TLabel
        Left = 380
        Top = 36
        Width = 286
        Height = 13
        AutoSize = False
        Caption = 'fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Visible = False
      end
      object lblFechaConciliacion: TLabel
        Left = 208
        Top = 6
        Width = 81
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblFechaExtracto: TLabel
        Left = 208
        Top = 24
        Width = 81
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
    end
    object RepConciliacion: TQuickRep
      Tag = 99
      Left = 25
      Top = 36
      Width = 952
      Height = 1347
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = ZSP_Conciliacion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = A4
      Page.Values = (
        100.000000000000000000
        2970.000000000000000000
        100.000000000000000000
        2100.000000000000000000
        100.000000000000000000
        100.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.OutputBin = Auto
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrintIfEmpty = True
      ReportTitle = 'Reporte de Libro Banco'
      SnapToGrid = True
      Units = MM
      Zoom = 120
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      object QRBand5: TQRBand
        Tag = 99
        Left = 45
        Top = 45
        Width = 861
        Height = 218
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          480.659722222222200000
          1898.385416666667000000)
        BandType = rbPageHeader
        object QRDBImage1: TQRDBImage
          Left = 94
          Top = 18
          Width = 77
          Height = 77
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            169.333333333333300000
            206.375000000000000000
            39.687500000000000000
            169.333333333333300000)
          DataField = 'GRAFICO'
        end
        object QRLabel12: TQRLabel
          Left = 289
          Top = 73
          Width = 283
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.711805555555560000
            637.204861111111100000
            160.954861111111100000
            623.975694444444400000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'CONCILIACION BANCARIA'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object RepConciliacion_Reporte_Titulo_2: TQRLabel
          Left = 290
          Top = 44
          Width = 280
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            639.409722222222200000
            97.013888888888890000
            617.361111111111100000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepConciliacion_Reporte_Titulo_2'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 9
        end
        object RepConciliacion_Reporte_Titulo_1: TQRLabel
          Left = 249
          Top = 16
          Width = 362
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            549.010416666666700000
            35.277777777777780000
            798.159722222222200000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepConciliacion_Reporte_Titulo_1'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel3: TQRLabel
          Left = 24
          Top = 161
          Width = 155
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.097222222222220000
            52.916666666666670000
            354.982638888888900000
            341.753472222222200000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Fecha Conciliaci'#243'n:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object qrFecha: TQRLabel
          Left = 188
          Top = 161
          Width = 107
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.097222222222220000
            414.513888888888900000
            354.982638888888900000
            235.920138888888900000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '01/01/1900'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRLabel4: TQRLabel
          Left = 520
          Top = 161
          Width = 185
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.097222222222220000
            1146.527777777778000000
            354.982638888888900000
            407.899305555555600000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Saldo s/ Libro de Banco:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object qrSaldoLibroBanco: TQRLabel
          Left = 712
          Top = 161
          Width = 144
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.097222222222220000
            1569.861111111111000000
            354.982638888888900000
            317.500000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = '$0'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRLabel1: TQRLabel
          Left = 35
          Top = 118
          Width = 144
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.097222222222220000
            77.170138888888890000
            260.173611111111100000
            317.500000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Fondo de Cuenta:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText1: TQRDBText
          Left = 188
          Top = 118
          Width = 523
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            415.395833333333300000
            259.291666666666700000
            1153.583333333333000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuentas
          DataField = 'BUSQUEDA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel2: TQRLabel
          Left = 0
          Top = 198
          Width = 861
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.097222222222220000
            0.000000000000000000
            436.562500000000000000
            1898.385416666667000000)
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = False
          AutoStretch = False
          Caption = '  Cheques pendientes de cobro'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
      end
      object QRBandDetalle: TQRBand
        Tag = 99
        Left = 45
        Top = 281
        Width = 861
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ForceNewColumn = False
        ForceNewPage = False
        ParentFont = False
        Size.Values = (
          39.687500000000000000
          1898.385416666667000000)
        BandType = rbDetail
        object QRDBText2: TQRDBText
          Left = 11
          Top = 0
          Width = 110
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = True
          Size.Values = (
            37.482638888888890000
            24.253472222222220000
            0.000000000000000000
            242.534722222222200000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = ZSP_Conciliacion
          DataField = 'FECHA_PD'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRDBText3: TQRDBText
          Left = 125
          Top = 0
          Width = 123
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = True
          Size.Values = (
            37.482638888888890000
            275.607638888888900000
            0.000000000000000000
            271.197916666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = ZSP_Conciliacion
          DataField = 'NRO_MEDIO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRDBText4: TQRDBText
          Left = 250
          Top = 0
          Width = 322
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            551.215277777777800000
            0.000000000000000000
            709.965277777777800000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = ZSP_Conciliacion
          DataField = 'PROVEEDOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRDBText5: TQRDBText
          Left = 574
          Top = 0
          Width = 130
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            37.482638888888890000
            1265.590277777778000000
            0.000000000000000000
            286.631944444444400000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZSP_Conciliacion
          DataField = 'HABER'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
      end
      object QRChildBand2: TQRChildBand
        Tag = 99
        Left = 45
        Top = 263
        Width = 861
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        Color = clSilver
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          39.687500000000000000
          1898.385416666667000000)
        ParentBand = QRBand5
        object QRLabel5: TQRLabel
          Left = 30
          Top = 0
          Width = 76
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            66.145833333333330000
            0.000000000000000000
            167.569444444444400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Caption = 'Fecha PD'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 9
        end
        object QRLabel6: TQRLabel
          Left = 124
          Top = 0
          Width = 123
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            273.402777777777800000
            0.000000000000000000
            271.197916666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Caption = 'Nro Cheque'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 9
        end
        object QRLabel7: TQRLabel
          Left = 250
          Top = 0
          Width = 84
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            551.215277777777800000
            0.000000000000000000
            185.208333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Caption = 'Proveedor'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 9
        end
        object QRLabel8: TQRLabel
          Left = 574
          Top = 0
          Width = 129
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            1265.590277777778000000
            0.000000000000000000
            284.427083333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Caption = 'Importe'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 9
        end
      end
      object QRBand7: TQRBand
        Tag = 99
        Left = 45
        Top = 419
        Width = 861
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          41.892361111111110000
          1898.385416666667000000)
        BandType = rbPageFooter
        object QRLabel35: TQRLabel
          Left = 5
          Top = 1
          Width = 64
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            10.583333333333330000
            2.645833333333333000
            140.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Empirica -'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRlblFechaHoy: TQRLabel
          Left = 68
          Top = 1
          Width = 84
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            35.277777777777780000
            149.930555555555600000
            2.204861111111111000
            185.208333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'QRlblFechaHoy'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRLabel24: TQRLabel
          Left = 764
          Top = 1
          Width = 47
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            35.277777777777780000
            1684.513888888889000000
            2.204861111111111000
            103.628472222222200000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'P'#225'gina:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRSysData2: TQRSysData
          Left = 812
          Top = 1
          Width = 49
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            35.277777777777780000
            1790.347222222222000000
            2.204861111111111000
            108.038194444444400000)
          Alignment = taRightJustify
          AlignToBand = True
          AutoSize = False
          Color = clWhite
          Data = qrsPageNumber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          FontSize = 7
        end
      end
      object QRBand1: TQRBand
        Tag = 99
        Left = 45
        Top = 299
        Width = 861
        Height = 120
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          264.583333333333300000
          1898.385416666667000000)
        BandType = rbSummary
        object QRShape2: TQRShape
          Left = 0
          Top = 42
          Width = 861
          Height = 25
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.121527777777780000
            0.000000000000000000
            92.604166666666670000
            1898.385416666667000000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape5: TQRShape
          Left = 702
          Top = 42
          Width = 159
          Height = 25
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.121527777777780000
            1547.812500000000000000
            92.604166666666670000
            350.572916666666700000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape3: TQRShape
          Left = 0
          Top = 66
          Width = 861
          Height = 25
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.121527777777780000
            0.000000000000000000
            145.520833333333300000
            1898.385416666667000000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape4: TQRShape
          Left = 702
          Top = 66
          Width = 159
          Height = 25
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.121527777777780000
            1547.812500000000000000
            145.520833333333300000
            350.572916666666700000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape1: TQRShape
          Left = 702
          Top = 0
          Width = 159
          Height = 43
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            94.809027777777780000
            1547.812500000000000000
            0.000000000000000000
            350.572916666666700000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object qrsaldoC: TQRLabel
          Left = 456
          Top = 46
          Width = 236
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            1005.416666666667000000
            101.423611111111100000
            520.347222222222200000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Saldo s/ Conciliaci'#243'n a la Fecha'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 9
        end
        object qrsaldoEB: TQRLabel
          Left = 16
          Top = 71
          Width = 676
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            35.277777777777780000
            156.545138888888900000
            1490.486111111111000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Saldo s/ Extracto Bancario'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 9
        end
        object qrExtracto: TQRLabel
          Left = 713
          Top = 71
          Width = 144
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            1572.065972222222000000
            156.545138888888900000
            317.500000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = '$0'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 9
        end
        object QRLabel10: TQRLabel
          Left = 656
          Top = 12
          Width = 36
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.097222222222220000
            1446.388888888889000000
            26.458333333333330000
            79.375000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Total'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsItalic, fsUnderline]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 9
        end
        object qrTotalHaber: TQRLabel
          Left = 704
          Top = 12
          Width = 153
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.097222222222220000
            1552.222222222222000000
            26.458333333333330000
            337.343750000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = '$0'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 9
        end
        object qrSaldoConciliacion: TQRLabel
          Left = 713
          Top = 46
          Width = 144
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            1572.065972222222000000
            101.423611111111100000
            317.500000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = '$0'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 9
        end
      end
    end
  end
  object dxBarABM: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Backgrounds.Bar.Data = {
      66090000424D660900000000000036000000280000001C0000001C0000000100
      1800000000003009000000000000000000000000000000000000E0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48D}
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        BorderStyle = bbsNone
        Caption = 'barra'
        DockedDockingStyle = dsBottom
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsBottom
        FloatLeft = 276
        FloatTop = 216
        FloatClientWidth = 39
        FloatClientHeight = 38
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ItemLinks = <
          item
            Item = btnBuscar
            Visible = True
          end
          item
            BeginGroup = True
            Item = btImprimir
            Visible = True
          end
          item
            Item = btnSalir
            Visible = True
          end>
        Name = 'barra'
        OneOnRow = True
        Row = 0
        UseOwnFont = True
        UseRecentItems = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end>
    CanCustomize = False
    Categories.Strings = (
      'Edicion')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    HideFloatingBarsWhenInactive = False
    LargeImages = FPrincipal.Iconos_Barra_32
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    MenusShowRecentItemsFirst = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight]
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsOffice11
    UseF10ForMenu = False
    UseSystemFont = False
    Left = 40
    Top = 376
    DockControlHeights = (
      0
      0
      0
      52)
    object btnBuscar: TdxBarLargeButton
      Caption = 'Buscar'
      Category = 0
      Visible = ivAlways
      ImageIndex = 29
      ShortCut = 120
      OnClick = btnBuscarClick
      AutoGrayScale = False
    end
    object btnLibroBanco: TdxBarLargeButton
      Align = iaRight
      Caption = 'Libro Banco'
      Category = 0
      Hint = 'Libro Banco'
      Visible = ivAlways
      ImageIndex = 47
      AutoGrayScale = False
    end
    object btnSalir: TdxBarLargeButton
      Align = iaRight
      Caption = 'Salir'
      Category = 0
      Hint = 'Salir'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = btnSalirClick
      AutoGrayScale = False
    end
    object btn2: TdxBarLargeButton
      Caption = 'btn2'
      Category = 0
      Hint = 'btn2'
      Visible = ivAlways
      ImageIndex = 7
      AutoGrayScale = False
    end
    object btImprimir: TdxBarLargeButton
      Caption = 'Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      ImageIndex = 28
      OnClick = btImprimirClick
    end
    object GrupoEditando: TdxBarGroup
      Items = (
        'btImprimir'
        'btnLibroBanco'
        'btnSalir'
        'btn2')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
      Items = (
        'btnBuscar')
    end
  end
  object ZQ_Cuentas: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select c.*, c.nombre_cuenta||'#39' - '#39'|| coalesce ('#39'N'#176': '#39' || c.nro_c' +
        'uenta_bancaria, '#39'N'#176': S/N'#39') Busqueda'
      'from ie_cuentas c'
      'order by c.nombre_cuenta')
    Params = <>
    Left = 42
    Top = 320
    object ZQ_CuentasID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
    end
    object ZQ_CuentasNOMBRE_CUENTA: TStringField
      FieldName = 'NOMBRE_CUENTA'
      Size = 100
    end
    object ZQ_CuentasMEDIO_DE_PAGO: TStringField
      FieldName = 'MEDIO_DE_PAGO'
      Size = 50
    end
    object ZQ_CuentasNRO_CUENTA_BANCARIA: TStringField
      FieldName = 'NRO_CUENTA_BANCARIA'
      Size = 100
    end
    object ZQ_CuentasULTIMO_NRO: TIntegerField
      FieldName = 'ULTIMO_NRO'
    end
    object ZQ_CuentasAUTONUMERAR: TStringField
      FieldName = 'AUTONUMERAR'
      Size = 1
    end
    object ZQ_CuentasMEDIO_POR_DEFECTO: TIntegerField
      FieldName = 'MEDIO_POR_DEFECTO'
    end
    object ZQ_CuentasBUSQUEDA: TStringField
      FieldName = 'BUSQUEDA'
      ReadOnly = True
      Size = 245
    end
  end
  object DS_Cuentas: TDataSource
    DataSet = ZQ_Cuentas
    Left = 138
    Top = 320
  end
  object ZSP_LibroBanco: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_MOVIMIENTO'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'ORDEN'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'MOVIMIENTO'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NRO_PAGO_REC'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'MEDIO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_MEDIO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'DEBE'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'HABER'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'SALDO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'DESCRIPCION'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'CONCILIADO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NOMBRE_CONCEPTO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'TIPO_MOV'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA_PD'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'OTROS'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_FAC_REC'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NRO_ORDEN'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'E_ID_CUENTA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_HASTA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_ORDENAMIENTO'
        ParamType = ptInput
      end>
    StoredProcName = 'IE_VER_LIBRO_BANCO'
    Left = 40
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_MOVIMIENTO'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'ORDEN'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'MOVIMIENTO'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NRO_PAGO_REC'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'MEDIO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_MEDIO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'DEBE'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'HABER'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'SALDO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'DESCRIPCION'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'CONCILIADO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NOMBRE_CONCEPTO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'TIPO_MOV'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA_PD'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'OTROS'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_FAC_REC'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NRO_ORDEN'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'E_ID_CUENTA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_HASTA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_ORDENAMIENTO'
        ParamType = ptInput
      end>
    object ZSP_LibroBancoID_MOVIMIENTO: TIntegerField
      FieldName = 'ID_MOVIMIENTO'
    end
    object ZSP_LibroBancoORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object ZSP_LibroBancoFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZSP_LibroBancoMOVIMIENTO: TStringField
      FieldName = 'MOVIMIENTO'
      Size = 15
    end
    object ZSP_LibroBancoNRO_PAGO_REC: TIntegerField
      FieldName = 'NRO_PAGO_REC'
    end
    object ZSP_LibroBancoMEDIO: TStringField
      FieldName = 'MEDIO'
      Size = 50
    end
    object ZSP_LibroBancoNRO_MEDIO: TStringField
      FieldName = 'NRO_MEDIO'
      Size = 60
    end
    object ZSP_LibroBancoDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object ZSP_LibroBancoHABER: TFloatField
      FieldName = 'HABER'
    end
    object ZSP_LibroBancoSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object ZSP_LibroBancoCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Size = 1
    end
    object ZSP_LibroBancoNOMBRE_CONCEPTO: TStringField
      FieldName = 'NOMBRE_CONCEPTO'
      Size = 100
    end
    object ZSP_LibroBancoFECHA_PD: TDateField
      FieldName = 'FECHA_PD'
    end
    object ZSP_LibroBancoNRO_ORDEN: TIntegerField
      FieldName = 'NRO_ORDEN'
    end
    object ZSP_LibroBancoPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
  end
  object BuscarParametros: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Cuenta Bancaria'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoCombollenarSQL = ZQ_Cuentas
        TipoCombollenarCampo = 'BUSQUEDA'
        TipoCombollenarCampoReal = 'ID_CUENTA'
        TipoComboEditable = False
        CambiarCondicion = False
        ItemIndex = 0
      end
      item
        Titulo = 'Fecha Conciliaci'#243'n'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Monto Extr. Banc.'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Detalle Extr. Banc.'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        CambiarCondicion = False
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    UsarWhereOriginal = EK_Con_Where
    PantallaReducida = True
    Left = 40
    Top = 208
  end
  object DS_LibroBanco: TDataSource
    DataSet = ZSP_LibroBanco
    Left = 136
    Top = 264
  end
  object ZSP_Conciliacion: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_MOVIMIENTO'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'ORDEN'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'MOVIMIENTO'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NRO_PAGO_REC'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'MEDIO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_MEDIO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'DEBE'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'HABER'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'SALDO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'DESCRIPCION'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'CONCILIADO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NOMBRE_CONCEPTO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'TIPO_MOV'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA_PD'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'OTROS'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_FAC_REC'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NRO_ORDEN'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'E_FECHA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_ID_CUENTA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_ORDENAMIENTO'
        ParamType = ptInput
      end>
    StoredProcName = 'IE_CONCILIACION_FECHA'
    Left = 136
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_MOVIMIENTO'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'ORDEN'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'MOVIMIENTO'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NRO_PAGO_REC'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'MEDIO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_MEDIO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'DEBE'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'HABER'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'SALDO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'DESCRIPCION'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'CONCILIADO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NOMBRE_CONCEPTO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'TIPO_MOV'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA_PD'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'OTROS'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_FAC_REC'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NRO_ORDEN'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'E_FECHA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_ID_CUENTA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_ORDENAMIENTO'
        ParamType = ptInput
      end>
    object ZSP_ConciliacionID_MOVIMIENTO: TIntegerField
      FieldName = 'ID_MOVIMIENTO'
    end
    object ZSP_ConciliacionORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object ZSP_ConciliacionFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZSP_ConciliacionMOVIMIENTO: TStringField
      FieldName = 'MOVIMIENTO'
      Size = 15
    end
    object ZSP_ConciliacionNRO_PAGO_REC: TIntegerField
      FieldName = 'NRO_PAGO_REC'
    end
    object ZSP_ConciliacionMEDIO: TStringField
      FieldName = 'MEDIO'
      Size = 50
    end
    object ZSP_ConciliacionNRO_MEDIO: TStringField
      FieldName = 'NRO_MEDIO'
      Size = 60
    end
    object ZSP_ConciliacionDEBE: TFloatField
      FieldName = 'DEBE'
      currency = True
    end
    object ZSP_ConciliacionHABER: TFloatField
      FieldName = 'HABER'
      currency = True
    end
    object ZSP_ConciliacionSALDO: TFloatField
      FieldName = 'SALDO'
      currency = True
    end
    object ZSP_ConciliacionCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Size = 1
    end
    object ZSP_ConciliacionNOMBRE_CONCEPTO: TStringField
      FieldName = 'NOMBRE_CONCEPTO'
      Size = 100
    end
    object ZSP_ConciliacionTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 100
    end
    object ZSP_ConciliacionNRO_ORDEN: TIntegerField
      FieldName = 'NRO_ORDEN'
    end
    object ZSP_ConciliacionFECHA_PD: TDateField
      FieldName = 'FECHA_PD'
    end
    object ZSP_ConciliacionPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
  end
  object DS_Conciliacion: TDataSource
    DataSet = ZSP_Conciliacion
    Left = 40
    Top = 264
  end
  object EKDbSuma1: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'haber'
      end>
    DataSet = ZSP_Conciliacion
    Left = 40
    Top = 88
  end
  object EKVistaPreviaQR1: TEKVistaPreviaQR
    Reporte = RepConciliacion
    ShowModal = False
    VerExpImagen = False
    Left = 136
    Top = 88
  end
  object EKOrdenarGrilla1: TEKOrdenarGrilla
    Grilla = DBGridListaErogacion
    FuenteNormal = []
    NombreGuardarConfig = 'UConciliacion'
    Ordenar = False
    Left = 136
    Top = 144
  end
end
