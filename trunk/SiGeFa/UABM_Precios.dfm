object FABM_Precios: TFABM_Precios
  Left = 115
  Top = 171
  Width = 1127
  Height = 580
  Caption = 'ABM Precios'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PArchivoPrecios: TPanel
    Left = 576
    Top = 176
    Width = 321
    Height = 121
    BevelInner = bvLowered
    BevelWidth = 2
    BorderStyle = bsSingle
    TabOrder = 5
    Visible = False
    object LeerCodBar: TLabel
      Left = 4
      Top = 4
      Width = 309
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Exportar / Importar Lista de Precios'
      Color = 12648448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      WordWrap = True
    end
    object btnArchivoAceptar: TBitBtn
      Left = 16
      Top = 82
      Width = 101
      Height = 25
      Caption = 'Aceptar'
      TabOrder = 0
      OnClick = btnArchivoAceptarClick
    end
    object btnArchivoCancelar: TBitBtn
      Left = 202
      Top = 82
      Width = 101
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnArchivoCancelarClick
    end
    object radExportar: TRadioButton
      Left = 48
      Top = 35
      Width = 232
      Height = 17
      Caption = ' Exportar Listado a un Archivo'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
    object radImportar: TRadioButton
      Left = 48
      Top = 57
      Width = 232
      Height = 17
      Caption = ' Importar Listado desde un Archivo'
      TabOrder = 3
    end
  end
  object PanelContenedor: TPanel
    Left = 0
    Top = 0
    Width = 1119
    Height = 501
    Align = alClient
    TabOrder = 0
    object RepListaPrecios: TQuickRep
      Tag = 99
      Left = -23
      Top = 89
      Width = 1123
      Height = 794
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = CDSZQ_Productos
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
      Page.Orientation = poLandscape
      Page.PaperSize = A4
      Page.Values = (
        100.000000000000000000
        2100.000000000000000000
        100.000000000000000000
        2970.000000000000000000
        100.000000000000000000
        100.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.OutputBin = Auto
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrinterSettings.PrintQuality = 0
      PrinterSettings.Collate = 0
      PrinterSettings.ColorOption = 0
      PrintIfEmpty = True
      ReportTitle = 'Reporte de Libro Banco'
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      PrevInitialZoom = qrZoomToFit
      PreviewDefaultSaveType = stQRP
      object QRBand5: TQRBand
        Tag = 99
        Left = 38
        Top = 38
        Width = 1047
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          190.500000000000000000
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageHeader
        object QRDBLogo: TQRDBImage
          Left = 174
          Top = 2
          Width = 64
          Height = 64
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            169.333333333333300000
            460.375000000000000000
            5.291666666666667000
            169.333333333333300000)
          DataField = 'LOGO'
          Stretch = True
        end
        object QRLabel11: TQRLabel
          Left = 454
          Top = 47
          Width = 138
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1201.208333333333000000
            124.354166666666700000
            365.125000000000000000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'Lista de Precios'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 12
        end
        object RepListaPrecios_Subtitulo: TQRLabel
          Left = 435
          Top = 26
          Width = 176
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            1150.937500000000000000
            68.791666666666680000
            465.666666666666700000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepListaPrecios_Subtitulo'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 9
        end
        object RepListaPrecios_Titulo: TQRLabel
          Left = 423
          Top = 2
          Width = 201
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            1119.187500000000000000
            5.291666666666667000
            531.812500000000000000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepListaPrecios_Titulo'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 12
        end
      end
      object QRBandDetalle: TQRBand
        Tag = 99
        Left = 38
        Top = 179
        Width = 1047
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
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
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRDBTextCoefGanancia: TQRDBText
          Left = 942
          Top = 0
          Width = 100
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            2492.375000000000000000
            0.000000000000000000
            264.583333333333400000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = CDSZQ_Productos
          DataField = 'coef_ganancia'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText1: TQRDBText
          Left = 4
          Top = 0
          Width = 140
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            10.583333333333330000
            0.000000000000000000
            370.416666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = CDSZQ_Productos
          DataField = 'cod_corto'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBTextPrecioCosto: TQRDBText
          Left = 839
          Top = 0
          Width = 100
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            2219.854166666667000000
            0.000000000000000000
            264.583333333333400000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = CDSZQ_Productos
          DataField = 'PRECIO_COSTO'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBTextPrecioVenta: TQRDBText
          Left = 736
          Top = 0
          Width = 100
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            1947.333333333334000000
            0.000000000000000000
            264.583333333333400000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = CDSZQ_Productos
          DataField = 'importe_venta_cliente'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText6: TQRDBText
          Left = 604
          Top = 0
          Width = 128
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            1598.083333333333000000
            0.000000000000000000
            338.666666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = CDSZQ_Productos
          DataField = 'MEDIDA'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText7: TQRDBText
          Left = 393
          Top = 0
          Width = 205
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            1039.812500000000000000
            0.000000000000000000
            542.395833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = CDSZQ_Productos
          DataField = 'ARTICULO'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText5: TQRDBText
          Left = 150
          Top = 0
          Width = 235
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            396.875000000000000000
            0.000000000000000000
            621.770833333333200000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = CDSZQ_Productos
          DataField = 'nombre_producto'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
      end
      object QRChildBandCleinte: TQRChildBand
        Tag = 99
        Left = 38
        Top = 110
        Width = 1047
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clSilver
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          140.229166666666700000
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        ParentBand = QRBand5
        PrintOrder = cboAfterParent
        object QRLabel1: TQRLabel
          Left = 1
          Top = 0
          Width = 109
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2.645833333333333000
            0.000000000000000000
            288.395833333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Nombre Cliente:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText8: TQRDBText
          Left = 113
          Top = 0
          Width = 206
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            298.979166666666700000
            0.000000000000000000
            545.041666666666800000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Clientes
          DataField = 'NOMBRE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRLabel5: TQRLabel
          Left = 2
          Top = 17
          Width = 69
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            5.291666666666667000
            44.979166666666670000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Direcci'#243'n:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText2: TQRDBText
          Left = 76
          Top = 18
          Width = 243
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            201.083333333333300000
            47.625000000000000000
            642.937500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Clientes
          DataField = 'DIRECCION'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRLabel6: TQRLabel
          Left = 671
          Top = 17
          Width = 69
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1775.354166666667000000
            44.979166666666670000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Provincia:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText3: TQRDBText
          Left = 744
          Top = 18
          Width = 184
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            1968.500000000000000000
            47.625000000000000000
            486.833333333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Clientes
          DataField = 'NOMBRE_PROVINCIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRLabel7: TQRLabel
          Left = 322
          Top = 17
          Width = 67
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            851.958333333333400000
            44.979166666666670000
            177.270833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Localidad:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText4: TQRDBText
          Left = 392
          Top = 18
          Width = 195
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            1037.166666666667000000
            47.625000000000000000
            515.937500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Clientes
          DataField = 'LOCALIDAD'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText9: TQRDBText
          Left = 590
          Top = 18
          Width = 77
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            1561.041666666667000000
            47.625000000000000000
            203.729166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Clientes
          DataField = 'CODIGO_POSTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRLabel8: TQRLabel
          Left = 322
          Top = 0
          Width = 66
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            851.958333333333400000
            0.000000000000000000
            174.625000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Tel'#233'fono:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText10: TQRDBText
          Left = 391
          Top = 0
          Width = 274
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            1034.520833333333000000
            0.000000000000000000
            724.958333333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Clientes
          DataField = 'TELEFONO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRLabel10: TQRLabel
          Left = 672
          Top = 0
          Width = 43
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1778.000000000000000000
            0.000000000000000000
            113.770833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Email:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText11: TQRDBText
          Left = 718
          Top = 0
          Width = 315
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            1899.708333333333000000
            0.000000000000000000
            833.437500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Clientes
          DataField = 'EMAIL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRLabel12: TQRLabel
          Left = 1
          Top = 36
          Width = 73
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2.645833333333333000
            95.250000000000000000
            193.145833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Tipo I.V.A.:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText13: TQRDBText
          Left = 77
          Top = 37
          Width = 132
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            203.729166666666700000
            97.895833333333340000
            349.250000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Clientes
          DataField = 'NOMBRE_PROVINCIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRLabel13: TQRLabel
          Left = 215
          Top = 36
          Width = 69
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            568.854166666666800000
            95.250000000000000000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Cuit-Cuil:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText12: TQRDBText
          Left = 288
          Top = 36
          Width = 184
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            762.000000000000000000
            95.250000000000000000
            486.833333333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Clientes
          DataField = 'CUIT_CUIL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRLabel14: TQRLabel
          Left = 479
          Top = 36
          Width = 80
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1267.354166666667000000
            95.250000000000000000
            211.666666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Documento:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText14: TQRDBText
          Left = 563
          Top = 36
          Width = 93
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            1489.604166666667000000
            95.250000000000000000
            246.062500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Clientes
          DataField = 'NOMBRE_TIPO_DOC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText15: TQRDBText
          Left = 659
          Top = 36
          Width = 118
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            1743.604166666667000000
            95.250000000000000000
            312.208333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Clientes
          DataField = 'NUMERO_DOC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRLabel15: TQRLabel
          Left = 787
          Top = 35
          Width = 122
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2082.270833333333000000
            92.604166666666680000
            322.791666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Coef. Desc./Rec.:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText16: TQRDBText
          Left = 912
          Top = 36
          Width = 112
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            2413.000000000000000000
            95.250000000000000000
            296.333333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Clientes
          DataField = 'DESCUENTO_ESPECIAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
      end
      object QRBand7: TQRBand
        Tag = 99
        Left = 38
        Top = 212
        Width = 1047
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          63.500000000000000000
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageFooter
        object QRlblPieDePagina: TQRLabel
          Left = 4
          Top = 3
          Width = 81
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            10.583333333333330000
            7.937500000000000000
            214.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'QRlblPieDePagina'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRLabel43: TQRLabel
          Left = 957
          Top = 3
          Width = 39
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            2532.062500000000000000
            7.937500000000000000
            103.187500000000000000)
          Alignment = taLeftJustify
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
          ExportAs = exptText
          FontSize = 7
        end
        object QRSysData1: TQRSysData
          Left = 999
          Top = 3
          Width = 45
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            2643.187500000000000000
            7.937500000000000000
            119.062500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
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
          ExportAs = exptText
          FontSize = 7
        end
      end
      object QRBand1: TQRBand
        Tag = 99
        Left = 38
        Top = 194
        Width = 1047
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          47.625000000000000000
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbSummary
        object QRExpr15: TQRExpr
          Left = 855
          Top = 2
          Width = 192
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2262.187500000000000000
            5.291666666666667000
            508.000000000000000000)
          Alignment = taRightJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = #39'Cantidad de Registros: '#39'+COUNT'
          ExportAs = exptText
          FontSize = 8
        end
      end
      object ChildBand1: TQRChildBand
        Tag = 99
        Left = 38
        Top = 163
        Width = 1047
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clSilver
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          42.333333333333340000
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        ParentBand = QRChildBandCleinte
        PrintOrder = cboAfterParent
        object QRLabel2: TQRLabel
          Left = 4
          Top = 0
          Width = 140
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            10.583333333333330000
            0.000000000000000000
            370.416666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'C'#243'd. Corto'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel3: TQRLabel
          Left = 150
          Top = 0
          Width = 220
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            396.875000000000000000
            0.000000000000000000
            582.083333333333200000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Nombre Producto'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel4: TQRLabel
          Left = 604
          Top = 0
          Width = 81
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1598.083333333333000000
            0.000000000000000000
            214.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Medida'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabelimporteVenta: TQRLabel
          Left = 736
          Top = 0
          Width = 100
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1947.333333333334000000
            0.000000000000000000
            264.583333333333400000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Precio Venta'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel9: TQRLabel
          Left = 393
          Top = 0
          Width = 205
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1039.812500000000000000
            0.000000000000000000
            542.395833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Articulo'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabelmporteCosto: TQRLabel
          Left = 839
          Top = 0
          Width = 100
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2219.854166666667000000
            0.000000000000000000
            264.583333333333400000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Precio Costo'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabelCoefGanancia: TQRLabel
          Left = 942
          Top = 0
          Width = 100
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2492.375000000000000000
            0.000000000000000000
            264.583333333333400000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Coef. Ganancia'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
      end
    end
    object DBGridProductos: TDBGrid
      Left = 1
      Top = 19
      Width = 1117
      Height = 279
      Align = alClient
      Color = 14606012
      DataSource = DS_Productos
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnColEnter = DBGridProductosColEnter
      OnDrawColumnCell = DBGridProductosDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_CORTO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Cod. Corto'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_PRODUCTO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Nombre Producto'
          Width = 135
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_ARTICULO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Tipo Articulo'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ARTICULO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Articulo'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MEDIDA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Medida'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_MARCA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Marca'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECIO_COSTO'
          Title.Alignment = taCenter
          Title.Caption = 'Precio Costo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPUESTO_IVA'
          Title.Alignment = taCenter
          Title.Caption = 'Coef. IVA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPUESTO_INTERNO'
          Title.Alignment = taCenter
          Title.Caption = 'Imp. Interno'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPUESTO_ADICIONAL1'
          Title.Alignment = taCenter
          Title.Caption = 'Imp. Adicional 1'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'IMPUESTO_ADICIONAL2'
          Title.Alignment = taCenter
          Title.Caption = 'Imp. Adicional 2'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PRECIO_COSTO_CIMPUESTOS'
          Title.Alignment = taCenter
          Title.Caption = 'Precio Costo c/Imp.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COEF_GANANCIA'
          Title.Alignment = taCenter
          Title.Caption = 'Coef. Ganancia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COEF_DESCUENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Coef. Descuento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECIO_VENTA'
          Title.Alignment = taCenter
          Title.Caption = 'Precio Venta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECIO1'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PRECIO2'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PRECIO3'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PRECIO4'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PRECIO5'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COLOR'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Color'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Sucursal'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_BARRA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Barra'
          Visible = True
        end>
    end
    object PanelEdicion: TPanel
      Left = 1
      Top = 298
      Width = 1117
      Height = 202
      Hint = '`'
      Align = alBottom
      TabOrder = 1
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 1115
        Height = 53
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 0
        object Label1: TLabel
          Left = 4
          Top = 4
          Width = 1107
          Height = 13
          Align = alTop
          Caption = 'Seleccione el tipo de calculo para actualizar los precio:'
        end
        object RadioGroupTipoUpdate: TRadioGroup
          Left = 4
          Top = 17
          Width = 1107
          Height = 32
          Align = alClient
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Reemplazar Precios'
            'Actualizar Precios')
          TabOrder = 0
          OnClick = RadioGroupTipoUpdateClick
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 132
        Width = 1115
        Height = 69
        Align = alBottom
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 1
        object Label5: TLabel
          Left = 4
          Top = 4
          Width = 1107
          Height = 13
          Align = alTop
          Caption = 'Seleccione si desea actualizar los diferentes impuestos:'
        end
        object RadioGroupImpuestos: TRadioGroup
          Left = 4
          Top = 17
          Width = 188
          Height = 48
          Align = alLeft
          Caption = ' Tipo  '
          Columns = 2
          ItemIndex = 1
          Items.Strings = (
            'SI'
            'NO')
          TabOrder = 0
          OnClick = RadioGroupImpuestosClick
        end
        object GboxImpuestos: TGroupBox
          Left = 192
          Top = 17
          Width = 919
          Height = 48
          Align = alClient
          Caption = ' Impuestos  '
          Enabled = False
          TabOrder = 1
          object Label4: TLabel
            Left = 7
            Top = 22
            Width = 61
            Height = 13
            Caption = 'Coef. IVA:'
          end
          object lblImpAdicional1: TLabel
            Left = 135
            Top = 22
            Width = 162
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Impuesto Adicional 1:'
            Visible = False
          end
          object lblImpAdicional2: TLabel
            Left = 368
            Top = 22
            Width = 162
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Impuesto Adicional 2:'
            Visible = False
          end
          object EditIVA: TEdit
            Left = 69
            Top = 18
            Width = 50
            Height = 21
            AutoSize = False
            TabOrder = 0
            Text = '0'
          end
          object EditImpAdicional1: TEdit
            Left = 298
            Top = 18
            Width = 50
            Height = 21
            AutoSize = False
            TabOrder = 1
            Text = '0'
            Visible = False
          end
          object EditImpAdicional2: TEdit
            Left = 531
            Top = 18
            Width = 50
            Height = 21
            AutoSize = False
            TabOrder = 2
            Text = '0'
            Visible = False
          end
        end
      end
      object Panel3: TPanel
        Left = 1
        Top = 54
        Width = 1115
        Height = 78
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 2
        object RadioGroupTipoCalculo: TRadioGroup
          Left = 4
          Top = 4
          Width = 185
          Height = 70
          Align = alLeft
          Caption = ' Tipo Actualizaci'#243'n '
          ItemIndex = 0
          Items.Strings = (
            'Dinero ($)'
            'Porcentaje (%)')
          TabOrder = 0
          OnClick = RadioGroupTipoCalculoClick
        end
        object GBoxIncDecImportes: TGroupBox
          Left = 189
          Top = 4
          Width = 922
          Height = 70
          Align = alClient
          Caption = ' Precios  '
          TabOrder = 1
          object Label2: TLabel
            Left = 13
            Top = 20
            Width = 90
            Height = 13
            Caption = 'S/Precio Costo:'
          end
          object Label3: TLabel
            Left = 13
            Top = 46
            Width = 90
            Height = 13
            Alignment = taRightJustify
            BiDiMode = bdLeftToRight
            Caption = 'S/Precio Venta:'
            ParentBiDiMode = False
          end
          object LabelTipo2: TLabel
            Left = 105
            Top = 46
            Width = 7
            Height = 13
            Caption = '$'
          end
          object LabelTipo1: TLabel
            Left = 105
            Top = 20
            Width = 7
            Height = 13
            Caption = '$'
          end
          object lblPrecio1: TLabel
            Left = 186
            Top = 20
            Width = 120
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'S/Precio Venta:'
            Visible = False
          end
          object lblPrecio2: TLabel
            Left = 186
            Top = 47
            Width = 120
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'S/Precio Venta:'
            Visible = False
          end
          object lblPrecio3: TLabel
            Left = 385
            Top = 20
            Width = 120
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'S/Precio Venta:'
            Visible = False
          end
          object lblPrecio4: TLabel
            Left = 385
            Top = 44
            Width = 120
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'S/Precio Venta:'
            Visible = False
          end
          object lblPrecio5: TLabel
            Left = 583
            Top = 20
            Width = 113
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            BiDiMode = bdLeftToRight
            Caption = 'S/Precio Venta:'
            ParentBiDiMode = False
            Visible = False
          end
          object LabelTipoP2: TLabel
            Left = 308
            Top = 46
            Width = 7
            Height = 13
            Caption = '$'
            Visible = False
          end
          object LabelTipoP1: TLabel
            Left = 307
            Top = 20
            Width = 7
            Height = 13
            Caption = '$'
            Visible = False
          end
          object LabelTipoP3: TLabel
            Left = 507
            Top = 20
            Width = 7
            Height = 13
            Caption = '$'
            Visible = False
          end
          object LabelTipoP4: TLabel
            Left = 507
            Top = 46
            Width = 7
            Height = 13
            Caption = '$'
            Visible = False
          end
          object LabelTipoP5: TLabel
            Left = 697
            Top = 20
            Width = 7
            Height = 13
            Caption = '$'
            Visible = False
          end
          object EditCosto: TEdit
            Left = 121
            Top = 16
            Width = 60
            Height = 21
            Hint = 'Valor con el que se incrementa/decrementa el precio de costo'
            AutoSize = False
            TabOrder = 0
            Text = '0'
          end
          object EditVenta: TEdit
            Left = 121
            Top = 42
            Width = 60
            Height = 21
            Hint = 'Valor con el que se incrementa/decrementa el precio de venta'
            AutoSize = False
            TabOrder = 1
            Text = '0'
            OnExit = EditVentaExit
          end
          object EditPrecio1: TEdit
            Left = 321
            Top = 16
            Width = 60
            Height = 21
            Hint = 'Valor con el que se incrementa/decrementa el precio de venta'
            AutoSize = False
            TabOrder = 2
            Text = '0'
            Visible = False
          end
          object EditPrecio2: TEdit
            Left = 321
            Top = 41
            Width = 60
            Height = 21
            Hint = 'Valor con el que se incrementa/decrementa el precio de venta'
            AutoSize = False
            TabOrder = 3
            Text = '0'
            Visible = False
          end
          object EditPrecio3: TEdit
            Left = 521
            Top = 16
            Width = 60
            Height = 21
            Hint = 'Valor con el que se incrementa/decrementa el precio de venta'
            AutoSize = False
            TabOrder = 4
            Text = '0'
            Visible = False
          end
          object EditPrecio4: TEdit
            Left = 521
            Top = 40
            Width = 60
            Height = 21
            Hint = 'Valor con el que se incrementa/decrementa el precio de venta'
            AutoSize = False
            TabOrder = 5
            Text = '0'
            Visible = False
          end
          object EditPrecio5: TEdit
            Left = 712
            Top = 16
            Width = 60
            Height = 21
            Hint = 'Valor con el que se incrementa/decrementa el precio de venta'
            AutoSize = False
            TabOrder = 6
            Text = '0'
            Visible = False
          end
        end
      end
    end
    object PBusqueda: TPanel
      Left = 1
      Top = 1
      Width = 1117
      Height = 18
      Align = alTop
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      object lblCantidadRegistros: TLabel
        Left = 1
        Top = 1
        Width = 134
        Height = 16
        Align = alLeft
        Caption = 'lblCantidadRegistros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object lblModoSeleccion: TLabel
        Left = 1020
        Top = 1
        Width = 96
        Height = 16
        Align = alRight
        Caption = 'modoSeleccion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
    end
  end
  object dxBarABM: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
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
            Item = btnModificar
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnSeleccionar
            Visible = True
          end
          item
            Item = btnEditarGrilla
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnProcesarImportes
            Visible = True
          end
          item
            Item = btnExpImp
            Visible = True
          end
          item
            Item = btnCopiarPrecios
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnGuardar
            Visible = True
          end
          item
            Item = btnCancelar
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnImprimir
            Visible = True
          end
          item
            Item = btnImprimirEtiquetas
            Visible = True
          end
          item
            Item = btnExcel
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnBuscarGoogle
            Visible = True
          end
          item
            BeginGroup = True
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
        BackgroundBitmap.Data = {
          7A220000424D7A22000000000000360000002800000039000000330000000100
          1800000000004422000000000000000000000000000000000000999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999009C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C
          9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C
          9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B
          9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C
          9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C
          9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B009999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999009999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999990099999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999990099999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9900999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999900999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999900999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999009999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999009999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999009999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999990099999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999990099999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9900999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999900999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999900999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999009696969696969696969696969696969696969696969696969696
          9696969696969696969696969696969696969696969696969696969696969696
          9696969696969696969696969696969696969696969696969696969696969696
          9696969696969696969696969696969696969696969696969696969696969696
          9696969696969696969696969696969696969696969696969696969696969696
          9696969696969696969696969696969696009293929293929293929293929293
          9292939292939292939292939292939292939292939292939292939292939292
          9392929392929392929392929392929392929392929392929392929392929392
          9293929293929293929293929293929293929293929293929293929293929293
          9292939292939292939292939292939292939292939292939292939292939292
          9392929392929392929392929392929392929392929392929392929392008E8F
          8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E
          8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F
          8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F
          8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E
          8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F
          8E8F8F8E8F8F8E8F8F008A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A
          8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B
          8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C
          8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A
          8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B
          8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B0086898786898786898786
          8987868987868987868987868987868987868987868987868987868987868987
          8689878689878689878689878689878689878689878689878689878689878689
          8786898786898786898786898786898786898786898786898786898786898786
          8987868987868987868987868987868987868987868987868987868987868987
          8689878689878689878689878689878689878689878689878689878689878689
          8700838583838583838583838583838583838583838583838583838583838583
          8385838385838385838385838385838385838385838385838385838385838385
          8383858383858383858383858383858383858383858383858383858383858383
          8583838583838583838583838583838583838583838583838583838583838583
          8385838385838385838385838385838385838385838385838385838385838385
          83838583838583838583838583007F82807F82807F82807F82807F82807F8280
          7F82807F82807F82807F82807F82807F82807F82807F82807F82807F82807F82
          807F82807F82807F82807F82807F82807F82807F82807F82807F82807F82807F
          82807F82807F82807F82807F82807F82807F82807F82807F82807F82807F8280
          7F82807F82807F82807F82807F82807F82807F82807F82807F82807F82807F82
          807F82807F82807F82807F82807F82807F82807F82807F8280007B7E7C7B7E7C
          7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E
          7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B
          7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C
          7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E
          7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B
          7E7C7B7E7C00797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D
          7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A79
          7D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A
          797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D
          7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A79
          7D7A797D7A797D7A797D7A797D7A797D7A007579767579767579767579767579
          7675797675797675797675797675797675797675797675797675797675797675
          7976757976757976757976757976757976757976757976757976757976757976
          7579767579767579767579767579767579767579767579767579767579767579
          7675797675797675797675797675797675797675797675797675797675797675
          7976757976757976757976757976757976757976757976757976757976007176
          7371767371767371767371767371767371767371767371767371767371767371
          7673717673717673717673717673717673717673717673717673717673717673
          7176737176737176737176737176737176737176737176737176737176737176
          7371767371767371767371767371767371767371767371767371767371767371
          7673717673717673717673717673717673717673717673717673717673717673
          717673717673717673006D726F6D726F6D726F6D726F6D726F6D726F6D726F6D
          726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F
          6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D72
          6F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D
          726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F
          6D726F6D726F6D726F6D726F6D726F6D726F6D726F006A6F6B6A6F6B6A6F6B6A
          6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B
          6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F
          6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A
          6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B
          6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F
          6B00666C67666C67666C67666C67666C67666C67666C67666C67666C67666C67
          666C67666C67666C67666C67666C67666C67666C67666C67666C67666C67666C
          67666C67666C67666C67666C67666C67666C67666C67666C67666C67666C6766
          6C67666C67666C67666C67666C67666C67666C67666C67666C67666C67666C67
          666C67666C67666C67666C67666C67666C67666C67666C67666C67666C67666C
          67666C67666C67666C67666C6700626864626864626864626864626864626864
          6268646268646268646268646268646268646268646268646268646268646268
          6462686462686462686462686462686462686462686462686462686462686462
          6864626864626864626864626864626864626864626864626864626864626864
          6268646268646268646268646268646268646268646268646268646268646268
          64626864626864626864626864626864626864626864626864005E65605E6560
          5E65605E65605E65605E65605E65605E65605E65605E65605E65605E65605E65
          605E65605E65605E65605E65605E65605E65605E65605E65605E65605E65605E
          65605E65605E65605E65605E65605E65605E65605E65605E65605E65605E6560
          5E65605E65605E65605E65605E65605E65605E65605E65605E65605E65605E65
          605E65605E65605E65605E65605E65605E65605E65605E65605E65605E65605E
          65605E6560005A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A61
          5C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A
          615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C
          5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A61
          5C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A
          615C5A615C5A615C5A615C5A615C5A615C00565E59565E59565E59565E59565E
          59565E59565E59565E59565E59565E59565E59565E59565E59565E59565E5956
          5E59565E59565E59565E59565E59565E59565E59565E59565E59565E59565E59
          565E59565E59565E59565E59565E59565E59565E59565E59565E59565E59565E
          59565E59565E59565E59565E59565E59565E59565E59565E59565E59565E5956
          5E59565E59565E59565E59565E59565E59565E59565E59565E59565E5900525B
          55525B55525B55525B55525B55525B55525B55525B55525B55525B55525B5552
          5B55525B55525B55525B55525B55525B55525B55525B55525B55525B55525B55
          525B55525B55525B55525B55525B55525B55525B55525B55525B55525B55525B
          55525B55525B55525B55525B55525B55525B55525B55525B55525B55525B5552
          5B55525B55525B55525B55525B55525B55525B55525B55525B55525B55525B55
          525B55525B55525B55004F57514F57514F57514F57514F57514F57514F57514F
          57514F57514F57514F57514F57514F57514F57514F57514F57514F57514F5751
          4F57514F57514F57514F57514F57514F57514F57514F57514F57514F57514F57
          514F57514F57514F57514F57514F57514F57514F57514F57514F57514F57514F
          57514F57514F57514F57514F57514F57514F57514F57514F57514F57514F5751
          4F57514F57514F57514F57514F57514F57514F5751004B544D4B544D4B544D4B
          544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D
          4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B54
          4D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B
          544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D
          4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B54
          4D0047504A47504A47504A47504A47504A47504A47504A47504A47504A47504A
          47504A47504A47504A47504A47504A47504A47504A47504A47504A47504A4750
          4A47504A47504A47504A47504A47504A47504A47504A47504A47504A47504A47
          504A47504A47504A47504A47504A47504A47504A47504A47504A47504A47504A
          47504A47504A47504A47504A47504A47504A47504A47504A47504A47504A4750
          4A47504A47504A47504A47504A00434D46434D46434D46434D46434D46434D46
          434D46434D46434D46434D46434D46434D46434D46434D46434D46434D46434D
          46434D46434D46434D46434D46434D46434D46434D46434D46434D46434D4643
          4D46434D46434D46434D46434D46434D46434D46434D46434D46434D46434D46
          434D46434D46434D46434D46434D46434D46434D46434D46434D46434D46434D
          46434D46434D46434D46434D46434D46434D46434D46434D4600434C46434C46
          434C46434C46434C46434C46434C46434C46434C46434C46434C46434C46434C
          46434C46434C46434C46434C46434C46434C46434C46434C46434C46434C4643
          4C46434C46434C46434C46434C46434C46434C46434C46434C46434C46434C46
          434C46434C46434C46434C46434C46434C46434C46434C46434C46434C46434C
          46434C46434C46434C46434C46434C46434C46434C46434C46434C46434C4643
          4C46434C4600444C47444C47444C47444C47444C47444C47444C47444C47444C
          47444C47444C47444C47444C47444C47444C47444C47444C47444C47444C4744
          4C47444C47444C47444C47444C47444C47444C47444C47444C47444C47444C47
          444C47444C47444C47444C47444C47444C47444C47444C47444C47444C47444C
          47444C47444C47444C47444C47444C47444C47444C47444C47444C47444C4744
          4C47444C47444C47444C47444C47444C4700454C47454C47454C47454C47454C
          47454C47454C47454C47454C47454C47454C47454C47454C47454C47454C4745
          4C47454C47454C47454C47454C47454C47454C47454C47454C47454C47454C47
          454C47454C47454C47454C47454C47454C47454C47454C47454C47454C47454C
          47454C47454C47454C47454C47454C47454C47454C47454C47454C47454C4745
          4C47454C47454C47454C47454C47454C47454C47454C47454C47454C4700464C
          48464C48464C48464C48464C48464C48464C48464C48464C48464C48464C4846
          4C48464C48464C48464C48464C48464C48464C48464C48464C48464C48464C48
          464C48464C48464C48464C48464C48464C48464C48464C48464C48464C48464C
          48464C48464C48464C48464C48464C48464C48464C48464C48464C48464C4846
          4C48464C48464C48464C48464C48464C48464C48464C48464C48464C48464C48
          464C48464C48464C4800474C48474C48474C48474C48474C48474C48474C4847
          4C48474C48474C48474C48474C48474C48474C48474C48474C48474C48474C48
          474C48474C48474C48474C48474C48474C48474C48474C48474C48474C48474C
          48474C48474C48474C48474C48474C48474C48474C48474C48474C48474C4847
          4C48474C48474C48474C48474C48474C48474C48474C48474C48474C48474C48
          474C48474C48474C48474C48474C48474C48474C4800474C49474C49474C4947
          4C49474C49474C49474C49474C49474C49474C49474C49474C49474C49474C49
          474C49474C49474C49474C49474C49474C49474C49474C49474C49474C49474C
          49474C49474C49474C49474C49474C49474C49474C49474C49474C49474C4947
          4C49474C49474C49474C49474C49474C49474C49474C49474C49474C49474C49
          474C49474C49474C49474C49474C49474C49474C49474C49474C49474C49474C
          4900484C49484C49484C49484C49484C49484C49484C49484C49484C49484C49
          484C49484C49484C49484C49484C49484C49484C49484C49484C49484C49484C
          49484C49484C49484C49484C49484C49484C49484C49484C49484C49484C4948
          4C49484C49484C49484C49484C49484C49484C49484C49484C49484C49484C49
          484C49484C49484C49484C49484C49484C49484C49484C49484C49484C49484C
          49484C49484C49484C49484C4900494C4A494C4A494C4A494C4A494C4A494C4A
          494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C
          4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A49
          4C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A
          494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C
          4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A004A4C4A4A4C4A
          4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C
          4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A
          4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A
          4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C
          4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A
          4C4A4A4C4A004B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C
          4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B
          4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B
          4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C
          4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B
          4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B004C4C4C4C4C4C4C4C4C4C4C4C4C4C
          4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C
          4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C
          4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C
          4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C
          4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C00}
      end>
    CanCustomize = False
    Categories.Strings = (
      'Edicion')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    HideFloatingBarsWhenInactive = False
    Images = FPrincipal.Iconos_Barra_32
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
    Left = 384
    Top = 176
    DockControlHeights = (
      0
      0
      0
      52)
    object btnBuscar: TdxBarLargeButton
      Caption = 'F1 - Buscar'
      Category = 0
      Hint = 'F1 - Buscar'
      Visible = ivAlways
      ImageIndex = 29
      OnClick = btnBuscarClick
      AutoGrayScale = False
    end
    object btnModificar: TdxBarLargeButton
      Caption = 'F3 - Modificar'
      Category = 0
      Hint = 'Modificar el precio de los productos'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btnModificarClick
      AutoGrayScale = False
    end
    object btnSeleccionar: TdxBarLargeButton
      Caption = 'Seleccionar'
      Category = 0
      Hint = 'Seleccionar de la grilla los productos a actualizar'
      Visible = ivAlways
      ImageIndex = 5
      OnClick = btnSeleccionarClick
      AutoGrayScale = False
    end
    object btnEditarGrilla: TdxBarLargeButton
      Caption = 'Editar Grilla'
      Category = 0
      Hint = 'Edita Los importes desde la grilla'
      Visible = ivAlways
      ImageIndex = 79
      OnClick = btnEditarGrillaClick
      AutoGrayScale = False
    end
    object btnProcesarImportes: TdxBarLargeButton
      Caption = 'Procesar'
      Category = 0
      Hint = 'Comenzar el proceso de actualizacion de importes'
      Visible = ivAlways
      ImageIndex = 35
      OnClick = btnProcesarImportesClick
      AutoGrayScale = False
    end
    object btnExpImp: TdxBarLargeButton
      Caption = 'Exportar/Importar'
      Category = 0
      Hint = 'Exportar/Importar Precios'
      Visible = ivAlways
      ImageIndex = 45
      OnClick = btnExpImpClick
      AutoGrayScale = False
    end
    object btnExcel: TdxBarLargeButton
      Align = iaRight
      Caption = 'Excel'
      Category = 0
      Hint = 'Exportar a Excel'
      Visible = ivAlways
      ImageIndex = 77
      OnClick = btnExcelClick
      AutoGrayScale = False
    end
    object btnGuardar: TdxBarLargeButton
      Caption = 'F11 - Guardar'
      Category = 0
      Enabled = False
      Hint = 'Guarda los cambios'
      Visible = ivAlways
      ImageIndex = 3
      OnClick = btnGuardarClick
      AutoGrayScale = False
    end
    object btnCancelar: TdxBarLargeButton
      Caption = 'F12 - Cancelar'
      Category = 0
      Hint = 'Cancela los cambios'
      Visible = ivAlways
      ImageIndex = 4
      OnClick = btnCancelarClick
      AutoGrayScale = False
    end
    object btnImprimir: TdxBarLargeButton
      Caption = 'Lista de Precios'
      Category = 0
      Hint = 'Lista de Precios'
      Visible = ivAlways
      ImageIndex = 28
      OnClick = btnImprimirClick
    end
    object btnImprimirEtiquetas: TdxBarLargeButton
      Caption = 'Etiquetas'
      Category = 0
      Hint = 'Etiquetas'
      Visible = ivAlways
      ImageIndex = 28
      OnClick = btnImprimirEtiquetasClick
      AutoGrayScale = False
    end
    object btnBuscarGoogle: TdxBarLargeButton
      Caption = 'Google'
      Category = 0
      Hint = 'Google'
      Visible = ivAlways
      ImageIndex = 80
      OnClick = btnBuscarGoogleClick
      AutoGrayScale = False
    end
    object btnSalir: TdxBarLargeButton
      Align = iaRight
      Caption = 'Salir'
      Category = 0
      Hint = 'Salir sin seleccionar'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = btnSalirClick
      AutoGrayScale = False
    end
    object btnCopiarPrecios: TdxBarLargeButton
      Caption = 'Copiar Precios'
      Category = 0
      Hint = 'Copiar Precios de los productos seleccionados a mi sucursal'
      Visible = ivAlways
      ImageIndex = 22
      OnClick = btnCopiarPreciosClick
      AutoGrayScale = False
    end
    object GrupoEditando: TdxBarGroup
      Items = (
        'btnEditarGrilla'
        'btnProcesarImportes'
        'btnBuscar'
        'btnExcel'
        'btnSeleccionar'
        'btnSalir'
        'btnModificar'
        'btnImprimir'
        'btnImprimirEtiquetas'
        'btnBuscarGoogle'
        'btnExpImp'
        'btnCopiarPrecios')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
      Items = (
        'btnGuardar'
        'btnCancelar')
    end
  end
  object ZQ_Productos: TZQuery
    Connection = DM.Conexion
    OnCalcFields = ZQ_ProductosCalcFields
    UpdateObject = ZU_Productos
    SQL.Strings = (
      
        'select pc.nombre as nombre_producto, m.medida, a.descripcion as ' +
        'articulo,'
      
        '       ta.descripcion as tipo_articulo, ma.nombre_marca,p.id_pro' +
        'ducto, p.cod_corto,'
      
        '       p.descripcion, pr.precio_costo, pr.precio_venta, pr.coef_' +
        'ganancia,'
      '       pr.coef_descuento, pr.impuesto_interno, pr.impuesto_iva,'
      
        '       p.codigo_barra, pr.precio_costo_cimpuestos, pr.impuesto_a' +
        'dicional1,'
      
        '       pr.impuesto_adicional2, pr.precio1, pr.precio2, pr.precio' +
        '3, pr.precio4,'
      
        '       pr.precio5, co.nombre as Color, s.nombre, pr.id_precio, p' +
        'r.id_sucursal'
      'from producto p'
      'left join medida m on (p.id_medida = m.id_medida)'
      
        'left join producto_cabecera pc on (p.id_prod_cabecera = pc.id_pr' +
        'od_cabecera)'
      'left join articulo a on (pc.id_articulo = a.id_articulo)'
      
        'left join tipo_articulo ta on (a.id_tipo_articulo = ta.id_tipo_a' +
        'rticulo)'
      'left join marca ma on (pc.id_marca = ma.id_marca)'
      'left join color co on (pc.color = co.id_color)'
      'left join precio pr on (p.id_producto = pr.id_producto)'
      'left join sucursal s on (pr.id_sucursal = s.id_sucursal)'
      'where (pc.baja <> '#39'S'#39')'
      '  and  (p.Baja <> '#39'S'#39')'
      'and pr.id_sucursal is not null'
      '')
    Params = <>
    Left = 168
    Top = 120
    object ZQ_ProductosNOMBRE_PRODUCTO: TStringField
      FieldName = 'NOMBRE_PRODUCTO'
      Size = 100
    end
    object ZQ_ProductosMEDIDA: TStringField
      FieldName = 'MEDIDA'
      Size = 30
    end
    object ZQ_ProductosARTICULO: TStringField
      FieldName = 'ARTICULO'
      Size = 200
    end
    object ZQ_ProductosTIPO_ARTICULO: TStringField
      FieldName = 'TIPO_ARTICULO'
      Size = 200
    end
    object ZQ_ProductosNOMBRE_MARCA: TStringField
      FieldName = 'NOMBRE_MARCA'
      Size = 50
    end
    object ZQ_ProductosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 500
    end
    object ZQ_ProductosCOD_CORTO: TStringField
      FieldName = 'COD_CORTO'
    end
    object ZQ_ProductosCODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Size = 40
    end
    object ZQ_ProductosID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
    end
    object ZQ_Productosimporte_venta_cliente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'importe_venta_cliente'
      currency = True
      Calculated = True
    end
    object ZQ_ProductosCOEF_DESCUENTO: TFloatField
      FieldName = 'COEF_DESCUENTO'
      OnChange = ZQ_ProductosCOEF_DESCUENTOChange
    end
    object ZQ_ProductosIMPUESTO_INTERNO: TFloatField
      FieldName = 'IMPUESTO_INTERNO'
    end
    object ZQ_ProductosPRECIO_COSTO_CIMPUESTOS: TFloatField
      FieldName = 'PRECIO_COSTO_CIMPUESTOS'
      currency = True
    end
    object ZQ_ProductosPRECIO_VENTA: TFloatField
      FieldName = 'PRECIO_VENTA'
      OnChange = ZQ_ProductosPRECIO_VENTAChange
      currency = True
    end
    object ZQ_ProductosCOEF_GANANCIA: TFloatField
      FieldName = 'COEF_GANANCIA'
      OnChange = ZQ_ProductosCOEF_GANANCIAChange
    end
    object ZQ_ProductosPRECIO_COSTO: TFloatField
      FieldName = 'PRECIO_COSTO'
      OnChange = ZQ_ProductosPRECIO_COSTOChange
      currency = True
    end
    object ZQ_ProductosIMPUESTO_IVA: TFloatField
      FieldName = 'IMPUESTO_IVA'
      OnChange = ZQ_ProductosIMPUESTO_IVAChange
    end
    object ZQ_ProductosIMPUESTO_ADICIONAL1: TFloatField
      FieldName = 'IMPUESTO_ADICIONAL1'
      OnChange = ZQ_ProductosIMPUESTO_ADICIONAL1Change
    end
    object ZQ_ProductosIMPUESTO_ADICIONAL2: TFloatField
      FieldName = 'IMPUESTO_ADICIONAL2'
      OnChange = ZQ_ProductosIMPUESTO_ADICIONAL2Change
    end
    object ZQ_ProductosPRECIO1: TFloatField
      FieldName = 'PRECIO1'
      currency = True
    end
    object ZQ_ProductosPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      currency = True
    end
    object ZQ_ProductosPRECIO3: TFloatField
      FieldName = 'PRECIO3'
      currency = True
    end
    object ZQ_ProductosPRECIO4: TFloatField
      FieldName = 'PRECIO4'
      currency = True
    end
    object ZQ_ProductosPRECIO5: TFloatField
      FieldName = 'PRECIO5'
      currency = True
    end
    object ZQ_ProductosCOLOR: TStringField
      FieldName = 'COLOR'
      Size = 30
    end
    object ZQ_ProductosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_ProductosID_PRECIO: TIntegerField
      FieldName = 'ID_PRECIO'
    end
    object ZQ_ProductosID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
  end
  object DS_Productos: TDataSource
    DataSet = ZQ_Productos
    Left = 168
    Top = 176
  end
  object EKBusquedaAvanzada1: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Sucursal'
        Campo = 'id_sucursal'
        Tabla = 's'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboSQL = ZQ_Sucursal
        TipoComboSQLCampoVer = 'nombre'
        TipoComboSQLCampoReal = 'id_sucursal'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'C'#243'd. Barra'
        Campo = 'codigo_barra'
        Tabla = 'producto'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Cod. Corto'
        Campo = 'cod_corto'
        Tabla = 'producto'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Nombre Producto'
        Campo = 'nombre'
        Tabla = 'producto_cabecera'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Medida'
        Campo = 'medida'
        Tabla = 'medida'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Color'
        Campo = 'nombre'
        Tabla = 'color'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Marca'
        Campo = 'nombre_marca'
        Tabla = 'marca'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Tipo Articulo'
        Campo = 'descripcion'
        Tabla = 'tipo_articulo'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Articulo'
        Campo = 'descripcion'
        Tabla = 'articulo'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Precio Costo'
        Campo = 'precio_costo'
        Tabla = 'producto'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Precio Venta'
        Campo = 'precio_venta'
        Tabla = 'producto'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Coef. Ganancia'
        Campo = 'coef_ganancia'
        Tabla = 'producto'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = ZQ_Productos
    SQL.Strings = (
      
        'select pc.nombre as nombre_producto, m.medida, a.descripcion as ' +
        'articulo,'
      
        '       ta.descripcion as tipo_articulo, ma.nombre_marca,p.id_pro' +
        'ducto, p.cod_corto,'
      
        '       p.descripcion, pr.precio_costo, pr.precio_venta, pr.coef_' +
        'ganancia,'
      '       pr.coef_descuento, pr.impuesto_interno, pr.impuesto_iva,'
      
        '       p.codigo_barra, pr.precio_costo_cimpuestos, pr.impuesto_a' +
        'dicional1,'
      
        '       pr.impuesto_adicional2, pr.precio1, pr.precio2, pr.precio' +
        '3, pr.precio4,'
      
        '       pr.precio5, co.nombre as Color, s.nombre, pr.id_precio, p' +
        'r.id_sucursal'
      'from producto p'
      'left join medida m on (p.id_medida = m.id_medida)'
      
        'left join producto_cabecera pc on (p.id_prod_cabecera = pc.id_pr' +
        'od_cabecera)'
      'left join articulo a on (pc.id_articulo = a.id_articulo)'
      
        'left join tipo_articulo ta on (a.id_tipo_articulo = ta.id_tipo_a' +
        'rticulo)'
      'left join marca ma on (pc.id_marca = ma.id_marca)'
      'left join color co on (pc.color = co.id_color)'
      'left join precio pr on (p.id_producto = pr.id_producto)'
      'left join sucursal s on (pr.id_sucursal = s.id_sucursal)'
      'where (pc.baja <> '#39'S'#39')'
      '  and  (p.Baja <> '#39'S'#39')'
      '  and pr.id_sucursal is not null')
    SQL_Select.Strings = (
      
        'select pc.nombre as nombre_producto, m.medida, a.descripcion as ' +
        'articulo,'
      
        '       ta.descripcion as tipo_articulo, ma.nombre_marca,p.id_pro' +
        'ducto, p.cod_corto,'
      
        '       p.descripcion, pr.precio_costo, pr.precio_venta, pr.coef_' +
        'ganancia,'
      '       pr.coef_descuento, pr.impuesto_interno, pr.impuesto_iva,'
      
        '       p.codigo_barra, pr.precio_costo_cimpuestos, pr.impuesto_a' +
        'dicional1,'
      
        '       pr.impuesto_adicional2, pr.precio1, pr.precio2, pr.precio' +
        '3, pr.precio4,'
      
        '       pr.precio5, co.nombre as Color, s.nombre, pr.id_precio, p' +
        'r.id_sucursal')
    SQL_From.Strings = (
      'from producto p'
      'left join medida m on (p.id_medida = m.id_medida)'
      
        'left join producto_cabecera pc on (p.id_prod_cabecera = pc.id_pr' +
        'od_cabecera)'
      'left join articulo a on (pc.id_articulo = a.id_articulo)'
      
        'left join tipo_articulo ta on (a.id_tipo_articulo = ta.id_tipo_a' +
        'rticulo)'
      'left join marca ma on (pc.id_marca = ma.id_marca)'
      'left join color co on (pc.color = co.id_color)'
      'left join precio pr on (p.id_producto = pr.id_producto)'
      'left join sucursal s on (pr.id_sucursal = s.id_sucursal)')
    SQL_Where.Strings = (
      'where (pc.baja <> '#39'S'#39')'
      '  and  (p.Baja <> '#39'S'#39')'
      '  and pr.id_sucursal is not null')
    UsarWhereOriginal = EK_Con_Where
    PantallaReducida = True
    Left = 56
    Top = 120
  end
  object EKOrdenarGrilla1: TEKOrdenarGrilla
    Grilla = DBGridProductos
    Filtros = <
      item
        TituloColumna = 'Cod. Corto'
        Visible = True
      end
      item
        TituloColumna = 'Nombre Producto'
        Visible = True
      end
      item
        TituloColumna = 'Tipo Articulo'
        Visible = True
      end
      item
        TituloColumna = 'Articulo'
        Visible = True
      end
      item
        TituloColumna = 'Medida'
        Visible = True
      end
      item
        TituloColumna = 'Marca'
        Visible = True
      end
      item
        TituloColumna = 'Precio Costo'
        Visible = True
      end
      item
        TituloColumna = 'Coef. IVA'
        Visible = True
      end
      item
        TituloColumna = 'Imp. Interno'
        Visible = True
      end
      item
        TituloColumna = 'Imp. Adicional 1'
        Visible = False
      end
      item
        TituloColumna = 'Imp. Adicional 2'
        Visible = False
      end
      item
        TituloColumna = 'Precio Costo c/Imp.'
        Visible = True
      end
      item
        TituloColumna = 'Coef. Ganancia'
        Visible = True
      end
      item
        TituloColumna = 'Coef. Descuento'
        Visible = True
      end
      item
        TituloColumna = 'Precio Venta'
        Visible = True
      end
      item
        TituloColumna = 'PRECIO1'
        Visible = False
      end
      item
        TituloColumna = 'PRECIO2'
        Visible = False
      end
      item
        TituloColumna = 'PRECIO3'
        Visible = False
      end
      item
        TituloColumna = 'PRECIO4'
        Visible = False
      end
      item
        TituloColumna = 'PRECIO5'
        Visible = False
      end
      item
        TituloColumna = 'Color'
        Visible = True
      end
      item
        TituloColumna = 'Sucursal'
        Visible = True
      end
      item
        TituloColumna = 'C'#243'd. Barra'
        Visible = True
      end>
    NombreGuardar = 'ABM_Precios'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    Left = 384
    Top = 120
  end
  object ZQ_Clientes: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select p.cuit_cuil, p.nombre, p.direccion, p.telefono, p.email, ' +
        'p.codigo_postal, p.localidad, pr.nombre_provincia, td.nombre_tip' +
        'o_doc, p.numero_doc, ti.nombre_tipo_iva, p.descuento_especial'
      'from persona p'
      'left join tipo_iva ti on (p.id_tipo_iva = ti.id_tipo_iva)'
      'left join tipo_documento td on (p.id_tipo_doc = td.id_tipo_doc)'
      'left join provincia pr on (p.id_provincia = pr.id_provincia)'
      'where p.id_persona = :ID_PERSONA')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_PERSONA'
        ParamType = ptUnknown
      end>
    Left = 264
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_PERSONA'
        ParamType = ptUnknown
      end>
    object ZQ_ClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_ClientesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 200
    end
    object ZQ_ClientesTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 100
    end
    object ZQ_ClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object ZQ_ClientesCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
    end
    object ZQ_ClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 200
    end
    object ZQ_ClientesNOMBRE_PROVINCIA: TStringField
      FieldName = 'NOMBRE_PROVINCIA'
      Size = 50
    end
    object ZQ_ClientesNOMBRE_TIPO_DOC: TStringField
      FieldName = 'NOMBRE_TIPO_DOC'
    end
    object ZQ_ClientesNUMERO_DOC: TStringField
      FieldName = 'NUMERO_DOC'
      Size = 50
    end
    object ZQ_ClientesNOMBRE_TIPO_IVA: TStringField
      FieldName = 'NOMBRE_TIPO_IVA'
      Size = 50
    end
    object ZQ_ClientesDESCUENTO_ESPECIAL: TFloatField
      FieldName = 'DESCUENTO_ESPECIAL'
    end
    object ZQ_ClientesCUIT_CUIL: TStringField
      FieldName = 'CUIT_CUIL'
      Size = 30
    end
  end
  object EKVistaPreviaListaPrecios: TEKVistaPreviaQR
    Reporte = RepListaPrecios
    ShowModal = False
    Left = 57
    Top = 177
  end
  object CDSZQ_Productos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 169
    Top = 65
    object CDSZQ_Productosnombre_producto: TStringField
      FieldName = 'nombre_producto'
      Size = 50
    end
    object CDSZQ_Productostipo_articulo: TStringField
      FieldName = 'tipo_articulo'
      Size = 50
    end
    object CDSZQ_Productosarticulo: TStringField
      FieldName = 'articulo'
      Size = 50
    end
    object CDSZQ_Productosmedida: TStringField
      FieldName = 'medida'
      Size = 30
    end
    object CDSZQ_Productosimporte_venta_cliente: TFloatField
      FieldName = 'importe_venta_cliente'
      currency = True
    end
    object CDSZQ_Productosprecio_costo: TFloatField
      FieldName = 'precio_costo'
      currency = True
    end
    object CDSZQ_Productoscoef_ganancia: TFloatField
      FieldName = 'coef_ganancia'
    end
    object CDSZQ_Productoscod_corto: TStringField
      FieldName = 'cod_corto'
    end
  end
  object ZQ_ImprimirEtiquetas: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from imprimir_etiquetas ie')
    Params = <>
    Left = 264
    Top = 232
    object ZQ_ImprimirEtiquetasID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
    end
    object ZQ_ImprimirEtiquetasCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
    end
    object ZQ_ImprimirEtiquetasID_PRECIO: TIntegerField
      FieldName = 'ID_PRECIO'
    end
  end
  object ZU_Productos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM PRECIO'
      'WHERE'
      '  PRECIO.ID_PRECIO = :OLD_ID_PRECIO')
    InsertSQL.Strings = (
      'INSERT INTO PRECIO'
      
        '  (PRECIO.PRECIO_COSTO, PRECIO.PRECIO_VENTA, PRECIO.COEF_GANANCI' +
        'A, PRECIO.COEF_DESCUENTO, '
      
        '   PRECIO.IMPUESTO_INTERNO, PRECIO.IMPUESTO_IVA, PRECIO.PRECIO_C' +
        'OSTO_CIMPUESTOS, '
      
        '   PRECIO.IMPUESTO_ADICIONAL1, PRECIO.IMPUESTO_ADICIONAL2, PRECI' +
        'O.PRECIO1, '
      
        '   PRECIO.PRECIO2, PRECIO.PRECIO3, PRECIO.PRECIO4, PRECIO.PRECIO' +
        '5)'
      'VALUES'
      
        '  (:PRECIO_COSTO, :PRECIO_VENTA, :COEF_GANANCIA, :COEF_DESCUENTO' +
        ', :IMPUESTO_INTERNO, '
      
        '   :IMPUESTO_IVA, :PRECIO_COSTO_CIMPUESTOS, :IMPUESTO_ADICIONAL1' +
        ', :IMPUESTO_ADICIONAL2, '
      '   :PRECIO1, :PRECIO2, :PRECIO3, :PRECIO4, :PRECIO5)')
    ModifySQL.Strings = (
      'UPDATE PRECIO SET'
      '  PRECIO.PRECIO_COSTO = :PRECIO_COSTO,'
      '  PRECIO.PRECIO_VENTA = :PRECIO_VENTA,'
      '  PRECIO.COEF_GANANCIA = :COEF_GANANCIA,'
      '  PRECIO.COEF_DESCUENTO = :COEF_DESCUENTO,'
      '  PRECIO.IMPUESTO_INTERNO = :IMPUESTO_INTERNO,'
      '  PRECIO.IMPUESTO_IVA = :IMPUESTO_IVA,'
      '  PRECIO.PRECIO_COSTO_CIMPUESTOS = '
      ':PRECIO_COSTO_CIMPUESTOS,'
      '  PRECIO.IMPUESTO_ADICIONAL1 = :IMPUESTO_ADICIONAL1,'
      '  PRECIO.IMPUESTO_ADICIONAL2 = :IMPUESTO_ADICIONAL2,'
      '  PRECIO.PRECIO1 = :PRECIO1,'
      '  PRECIO.PRECIO2 = :PRECIO2,'
      '  PRECIO.PRECIO3 = :PRECIO3,'
      '  PRECIO.PRECIO4 = :PRECIO4,'
      '  PRECIO.PRECIO5 = :PRECIO5'
      'WHERE'
      '  PRECIO.ID_PRECIO = :OLD_ID_PRECIO')
    UseSequenceFieldForRefreshSQL = False
    Left = 168
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PRECIO_COSTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_VENTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COEF_GANANCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COEF_DESCUENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPUESTO_INTERNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPUESTO_IVA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_COSTO_CIMPUESTOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPUESTO_ADICIONAL1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPUESTO_ADICIONAL2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID_PRECIO'
        ParamType = ptUnknown
      end>
  end
  object ATeclasRapidas: TActionManager
    Left = 56
    Top = 234
    StyleName = 'XP Style'
    object ABuscar: TAction
      Caption = 'ABuscar'
      ShortCut = 112
      OnExecute = ABuscarExecute
    end
    object AGuardar: TAction
      Caption = 'AGuardar'
      ShortCut = 122
      OnExecute = AGuardarExecute
    end
    object ACancelar: TAction
      Caption = 'ACancelar'
      ShortCut = 123
      OnExecute = ACancelarExecute
    end
    object AModificar: TAction
      Caption = 'AModificar'
      ShortCut = 114
      OnExecute = AModificarExecute
    end
  end
  object ZQ_Sucursal: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select s.nombre, s.id_sucursal'
      'from sucursal s'
      'where (s.baja <> '#39'S'#39') and (s.id_sucursal > 0)')
    Params = <>
    Left = 560
    Top = 64
    object ZQ_SucursalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_SucursalID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
      Required = True
    end
  end
  object ZSPActualizarImporte: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'SALIDA'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'COEF_AUMENTO_COSTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COEF_AUMENTO_VENTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PRECIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TIPOCALCULO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACTUALIZAR_IMPUESTOS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPUESTO_IVA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPUESTO_ADICIONAL1'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPUESTO_ADICIONAL2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRECIO1'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRECIO2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRECIO3'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRECIO4'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRECIO5'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TIPO_UPDATE'
        ParamType = ptInput
      end>
    StoredProcName = 'ACTUALIZAR_IMPORTES'
    Left = 264
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SALIDA'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'COEF_AUMENTO_COSTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COEF_AUMENTO_VENTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PRECIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TIPOCALCULO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACTUALIZAR_IMPUESTOS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPUESTO_IVA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPUESTO_ADICIONAL1'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IMPUESTO_ADICIONAL2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRECIO1'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRECIO2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRECIO3'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRECIO4'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRECIO5'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TIPO_UPDATE'
        ParamType = ptInput
      end>
  end
  object CD_Precios: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 648
    Top = 112
    Data = {
      5B0100009619E0BD01000000180000000F0000000000030000005B010B69645F
      70726F647563746F04000100000000000C70726563696F5F636F73746F080004
      00000000000C70726563696F5F76656E746108000400000000000D636F65665F
      67616E616E636961080004000000000010696D70756573746F5F696E7465726E
      6F08000400000000000C696D70756573746F5F69766108000400000000001770
      726563696F5F636F73746F5F63696D70756573746F7308000400000000001369
      6D70756573746F5F61646963696F6E616C320800040000000000077072656369
      6F3108000400000000000770726563696F320800040000000000077072656369
      6F3308000400000000000770726563696F340800040000000000077072656369
      6F3508000400000000000E636F65665F6465736375656E746F08000400000000
      0013696D70756573746F5F61646963696F6E616C3108000400000000000000}
    object CD_Preciosid_producto: TIntegerField
      FieldName = 'id_producto'
    end
    object CD_Preciosprecio_costo: TFloatField
      FieldName = 'precio_costo'
    end
    object CD_Preciosprecio_venta: TFloatField
      FieldName = 'precio_venta'
    end
    object CD_Precioscoef_ganancia: TFloatField
      FieldName = 'coef_ganancia'
    end
    object CD_Preciosimpuesto_interno: TFloatField
      FieldName = 'impuesto_interno'
    end
    object CD_Preciosimpuesto_iva: TFloatField
      FieldName = 'impuesto_iva'
    end
    object CD_Preciosprecio_costo_cimpuestos: TFloatField
      FieldName = 'precio_costo_cimpuestos'
    end
    object CD_Preciosimpuesto_adicional2: TFloatField
      FieldName = 'impuesto_adicional2'
    end
    object CD_Preciosprecio1: TFloatField
      FieldName = 'precio1'
    end
    object CD_Preciosprecio2: TFloatField
      FieldName = 'precio2'
    end
    object CD_Preciosprecio3: TFloatField
      FieldName = 'precio3'
    end
    object CD_Preciosprecio4: TFloatField
      FieldName = 'precio4'
    end
    object CD_Preciosprecio5: TFloatField
      FieldName = 'precio5'
    end
    object CD_Precioscoef_descuento: TFloatField
      FieldName = 'coef_descuento'
    end
    object CD_Preciosimpuesto_adicional1: TFloatField
      FieldName = 'impuesto_adicional1'
    end
  end
  object GuardarArchivo: TSaveDialog
    DefaultExt = 'xml'
    Filter = 'XML|*.xml'
    InitialDir = 'C:\'
    Title = 'Exportar Lista de Precios'
    Left = 808
    Top = 112
  end
  object AbrirArchivo: TOpenDialog
    DefaultExt = 'xml'
    Filter = 'XML|*.xml'
    InitialDir = 'C:\'
    Title = 'Importar Lista de Precios'
    Left = 896
    Top = 104
  end
  object ZQ_ActualizarPrecios: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'update precio p'
      'set p.id_producto = :id_prod,'
      '    p.id_sucursal = :id_suc,'
      '    p.precio_costo = :precio_costo,'
      '    p.precio_venta = :precio_venta,'
      '    p.coef_ganancia = :coef_ganancia,'
      '    p.coef_descuento = :coef_descuento,'
      '    p.impuesto_interno = :impuesto_interno,'
      '    p.impuesto_iva = :impuesto_iva,'
      '    p.precio_costo_cimpuestos = :precio_costo_cimpuestos,'
      '    p.impuesto_adicional1 = :impuesto_adicional1,'
      '    p.impuesto_adicional2 = :impuesto_adicional2,'
      '    p.precio1 = :precio1,'
      '    p.precio2 = :precio2,'
      '    p.precio3 = :precio3,'
      '    p.precio4 = :precio4,'
      '    p.precio5 = :precio5'
      'where (p.id_producto = :id_prod)and(p.id_sucursal = :id_suc)'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_prod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_suc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio_costo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio_venta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'coef_ganancia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'coef_descuento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'impuesto_interno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'impuesto_iva'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio_costo_cimpuestos'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'impuesto_adicional1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'impuesto_adicional2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio5'
        ParamType = ptUnknown
      end>
    Left = 536
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_prod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_suc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio_costo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio_venta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'coef_ganancia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'coef_descuento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'impuesto_interno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'impuesto_iva'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio_costo_cimpuestos'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'impuesto_adicional1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'impuesto_adicional2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'precio5'
        ParamType = ptUnknown
      end>
  end
  object ZP_UpdateInsert_Precios: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'CANT_U'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'CANT_I'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'ID_SUC_ORIGEN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SUC_DESTINO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PRODUCTO_IN'
        ParamType = ptInput
      end>
    StoredProcName = 'COPIAR_PRECIOS_SUCURSAL'
    Left = 528
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CANT_U'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'CANT_I'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'ID_SUC_ORIGEN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SUC_DESTINO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PRODUCTO_IN'
        ParamType = ptInput
      end>
  end
end
