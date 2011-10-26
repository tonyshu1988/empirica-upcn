object FEstadisticaVentas: TFEstadisticaVentas
  Left = 282
  Top = 131
  Width = 1217
  Height = 781
  Caption = 'Estadisticas Ventas'
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
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 1201
    Height = 691
    ActivePage = TabHorarioGrafico
    Align = alClient
    TabOrder = 4
    object TabFacturacion: TTabSheet
      Caption = 'Facturaci'#243'n'
      object PanelContenedor: TPanel
        Left = 0
        Top = 33
        Width = 1193
        Height = 630
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object RepDetalleMov: TQuickRep
          Tag = 99
          Left = 38
          Top = 57
          Width = 1123
          Height = 794
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = ZQ_Comprobante
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
          ReportTitle = '+'
          SnapToGrid = True
          Units = MM
          Zoom = 100
          PrevFormStyle = fsNormal
          PreviewInitialState = wsNormal
          PrevInitialZoom = qrZoomToFit
          PreviewDefaultSaveType = stQRP
          object QRBand2: TQRBand
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
              Left = 194
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
                513.291666666666700000
                5.291666666666667000
                169.333333333333300000)
              DataField = 'LOGO'
              DataSet = ZQ_Sucursal
              Stretch = True
            end
            object QRLabel8: TQRLabel
              Left = 475
              Top = 47
              Width = 96
              Height = 19
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                50.270833333333330000
                1256.770833333333000000
                124.354166666666700000
                254.000000000000000000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'FACTURAS'
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
            object RepDetalleMov_Subtitulo: TQRLabel
              Left = 438
              Top = 26
              Width = 170
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                1158.875000000000000000
                68.791666666666670000
                449.791666666666700000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'RepDetalleMov_Subtitulo'
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
            object RepDetalleMov_Titulo: TQRLabel
              Left = 427
              Top = 2
              Width = 193
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                1129.770833333333000000
                5.291666666666667000
                510.645833333333300000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'RepDetalleMov_Titulo'
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
          object QRBand3: TQRBand
            Tag = 99
            Left = 38
            Top = 159
            Width = 1047
            Height = 16
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
              42.333333333333330000
              2770.187500000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText18: TQRDBText
              Left = 172
              Top = 0
              Width = 302
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                455.083333333333300000
                0.000000000000000000
                799.041666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZQ_Comprobante
              DataField = 'CLIENTE_'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText7: TQRDBText
              Left = 481
              Top = 0
              Width = 224
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1272.645833333333000000
                0.000000000000000000
                592.666666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZQ_Comprobante
              DataField = 'SUC_'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText16: TQRDBText
              Left = 918
              Top = 0
              Width = 126
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2428.875000000000000000
                0.000000000000000000
                333.375000000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZQ_Comprobante
              DataField = 'IMPORTEVENTA_'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText17: TQRDBText
              Left = 713
              Top = 0
              Width = 200
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1886.479166666667000000
                0.000000000000000000
                529.166666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZQ_Comprobante
              DataField = 'NOMBRE_TIPO_IVA'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText20: TQRDBText
              Left = 2
              Top = 0
              Width = 80
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                5.291666666666667000
                0.000000000000000000
                211.666666666666700000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZQ_Comprobante
              DataField = 'FECHA'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText21: TQRDBText
              Left = 88
              Top = 0
              Width = 80
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                232.833333333333300000
                0.000000000000000000
                211.666666666666700000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZQ_Comprobante
              DataField = 'CODIGO'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
          end
          object QRBand6: TQRBand
            Tag = 99
            Left = 38
            Top = 110
            Width = 1047
            Height = 31
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
              82.020833333333330000
              2770.187500000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRlblRepDetMov_CritBusqueda: TQRLabel
              Left = 5
              Top = 16
              Width = 973
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                13.229166666666670000
                42.333333333333330000
                2574.395833333333000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'QRlblRepDetMov_CritBusqueda'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRLabel22: TQRLabel
              Left = 5
              Top = 2
              Width = 126
              Height = 13
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                13.229166666666670000
                5.291666666666667000
                333.375000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Criterios de B'#250'squeda:'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              Transparent = False
              WordWrap = False
              ExportAs = exptText
              FontSize = 7
            end
          end
          object PageFooterBand2: TQRBand
            Tag = 99
            Left = 38
            Top = 201
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
            object QRlblRepDetalleMov_PieDePagina: TQRLabel
              Left = 4
              Top = 3
              Width = 155
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
                410.104166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'QRlblRepDetalleMov_PieDePagina'
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
            object QRLabel18: TQRLabel
              Left = 959
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
                2537.354166666667000000
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
            object QRSysData2: TQRSysData
              Left = 1001
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
                2648.479166666667000000
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
          object ColumnHeaderBand1: TQRBand
            Tag = 99
            Left = 38
            Top = 141
            Width = 1047
            Height = 18
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
              47.625000000000000000
              2770.187500000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRLabel25: TQRLabel
              Left = 930
              Top = 2
              Width = 114
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2460.625000000000000000
                5.291666666666667000
                301.625000000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Importe'
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
            object QRLabel28: TQRLabel
              Left = 172
              Top = 2
              Width = 46
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                455.083333333333300000
                5.291666666666667000
                121.708333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Cliente'
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
            object QRLabel23: TQRLabel
              Left = 713
              Top = 2
              Width = 92
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1886.479166666667000000
                5.291666666666667000
                243.416666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Tipo Iva'
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
            object QRLabel26: TQRLabel
              Left = 481
              Top = 2
              Width = 80
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1272.645833333333000000
                5.291666666666667000
                211.666666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Sucursal'
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
            object QRLabel31: TQRLabel
              Left = 88
              Top = 2
              Width = 80
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                232.833333333333300000
                5.291666666666667000
                211.666666666666700000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'C'#243'digo'
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
            object QRLabel27: TQRLabel
              Left = 2
              Top = 2
              Width = 80
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                5.291666666666667000
                5.291666666666667000
                211.666666666666700000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Fecha'
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
          object QRBand1: TQRBand
            Tag = 99
            Left = 38
            Top = 175
            Width = 1047
            Height = 26
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
              68.791666666666670000
              2770.187500000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRlblImporteTotal: TQRLabel
              Left = 706
              Top = 4
              Width = 338
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1867.958333333333000000
                10.583333333333330000
                894.291666666666700000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Importe Total: XXX'
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
        object PanelFacturacion: TPanel
          Left = 0
          Top = 0
          Width = 1193
          Height = 630
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 0
          object Splitter1: TSplitter
            Left = 2
            Top = 500
            Width = 1189
            Height = 6
            Cursor = crVSplit
            Align = alBottom
          end
          object PanelComprobante: TPanel
            Left = 2
            Top = 2
            Width = 1189
            Height = 498
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object lblTotalComprobantes: TLabel
              Left = 0
              Top = 477
              Width = 1189
              Height = 21
              Align = alBottom
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total Comprobante: $ 0.00 '
              Color = 16729670
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
              Layout = tlCenter
            end
            object DBGridComprobantes: TDBGrid
              Left = 0
              Top = 0
              Width = 1189
              Height = 477
              Align = alClient
              Color = 14606012
              DataSource = DS_Comprobante
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = []
              OnDrawColumnCell = DrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CODIGO'
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'digo'
                  Width = 85
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FECHA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Fecha'
                  Width = 72
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TIPOCOMPR_'
                  Title.Alignment = taCenter
                  Title.Caption = 'Tipo'
                  Width = 113
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CLIENTE_'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cliente'
                  Width = 168
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'IMPORTEVENTA_'
                  Title.Alignment = taCenter
                  Title.Caption = 'Importe Venta'
                  Width = 95
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SUC_'
                  Title.Alignment = taCenter
                  Title.Caption = 'Sucursal'
                  Width = 163
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TIVA_'
                  Title.Alignment = taCenter
                  Title.Caption = 'Tipo IVA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VENDEDOR_'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vendedor'
                  Width = 193
                  Visible = True
                end>
            end
          end
          object PanelFPagoYProd: TPanel
            Left = 2
            Top = 506
            Width = 1189
            Height = 122
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object Splitter2: TSplitter
              Left = 607
              Top = 0
              Width = 6
              Height = 122
            end
            object PanelProducto: TPanel
              Left = 613
              Top = 0
              Width = 576
              Height = 122
              Align = alClient
              BevelOuter = bvNone
              Caption = 'PanelProducto'
              TabOrder = 0
              object lblTotalProducto: TLabel
                Left = 0
                Top = 101
                Width = 576
                Height = 21
                Align = alBottom
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Total Producto: $ 0.00 '
                Color = 16729670
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Transparent = False
                Layout = tlCenter
              end
              object DBGridListadoProductos: TDBGrid
                Left = 0
                Top = 0
                Width = 576
                Height = 101
                Align = alClient
                Color = 14606012
                DataSource = DS_ComprobanteDetalle
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Verdana'
                TitleFont.Style = []
                OnDrawColumnCell = DrawColumnCell
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ID_PRODUCTO'
                    Title.Alignment = taCenter
                    Title.Caption = 'Id'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DETALLE_PROD'
                    Title.Alignment = taCenter
                    Title.Caption = 'Producto'
                    Width = 240
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CANTIDAD'
                    Title.Alignment = taCenter
                    Title.Caption = 'Cant.'
                    Width = 53
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'IMPORTE_VENTA'
                    Title.Alignment = taCenter
                    Title.Caption = 'Importe'
                    Width = 101
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CODIGO_BARRA'
                    Title.Alignment = taCenter
                    Title.Caption = 'C'#243'd. Barra'
                    Width = 80
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'COLOR'
                    Title.Alignment = taCenter
                    Title.Caption = 'Color'
                    Width = 67
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MEDIDA'
                    Title.Alignment = taCenter
                    Title.Caption = 'Medida'
                    Width = 75
                    Visible = True
                  end>
              end
            end
            object PanelFpago: TPanel
              Left = 0
              Top = 0
              Width = 607
              Height = 122
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'PanelFpago'
              TabOrder = 1
              object lblTotalFPago: TLabel
                Left = 0
                Top = 101
                Width = 607
                Height = 21
                Align = alBottom
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Total Forma Pago: $ 0.00 '
                Color = 16729670
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Transparent = False
                Layout = tlCenter
              end
              object DBGridFormaPago: TDBGrid
                Left = 0
                Top = 0
                Width = 607
                Height = 101
                Align = alClient
                Color = 14606012
                DataSource = DS_Comprobante_FormaPago
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Verdana'
                TitleFont.Style = []
                OnDrawColumnCell = DrawColumnCell
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'TFORMAPAGO_'
                    Title.Alignment = taCenter
                    Title.Caption = 'Forma de Pago'
                    Width = 149
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'IMPORTE_REAL'
                    Title.Alignment = taCenter
                    Title.Caption = 'Importe'
                    Width = 81
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MDCP_FECHA'
                    Title.Alignment = taCenter
                    Title.Caption = 'MDP Fecha'
                    Width = 105
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MDCP_BANCO'
                    Title.Alignment = taCenter
                    Title.Caption = 'Banco'
                    Width = 188
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MDCP_CHEQUE'
                    Title.Alignment = taCenter
                    Title.Caption = 'N'#250'mero'
                    Width = 113
                    Visible = True
                  end>
              end
            end
          end
        end
      end
      object PanelFiltro: TPanel
        Left = 0
        Top = 0
        Width = 1193
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        object BtnFiltro_Todos: TSpeedButton
          Left = 55
          Top = 7
          Width = 94
          Height = 18
          GroupIndex = 1
          Down = True
          Caption = 'Todos'
          Layout = blGlyphBottom
          OnClick = AplicarFiltro
        end
        object BtnFiltro_Fiscal: TSpeedButton
          Left = 151
          Top = 7
          Width = 94
          Height = 18
          GroupIndex = 1
          Caption = 'Fiscal'
          Layout = blGlyphBottom
          OnClick = AplicarFiltro
        end
        object BtnFiltro_NoFiscal: TSpeedButton
          Left = 247
          Top = 7
          Width = 94
          Height = 18
          GroupIndex = 1
          Caption = 'No Fiscal'
          Layout = blGlyphBottom
          OnClick = AplicarFiltro
        end
        object Label39: TLabel
          Left = 19
          Top = 9
          Width = 25
          Height = 13
          Caption = 'Filtro:'
        end
      end
    end
    object TabHorarioVentas: TTabSheet
      Caption = 'Horario Ventas'
      ImageIndex = 1
      object PanelMes: TPanel
        Left = 0
        Top = 0
        Width = 1193
        Height = 663
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object DBGridHorario: TDBGrid
          Left = 0
          Top = 46
          Width = 1193
          Height = 617
          Align = alClient
          Color = 14606012
          DataSource = DS_Horario
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DrawColumnCell
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'HORA_DESDE'
              Title.Alignment = taCenter
              Title.Caption = 'Desde'
              Width = 142
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'HORA_HASTA'
              Title.Alignment = taCenter
              Title.Caption = 'Hasta'
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Title.Caption = 'Cantidad Ventas'
              Width = 256
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Importe Total'
              Width = 151
              Visible = True
            end>
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 1193
          Height = 46
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 4
          TabOrder = 1
          object lblHorarioFecha: TLabel
            Left = 4
            Top = 4
            Width = 102
            Height = 13
            Align = alTop
            Caption = 'lblHorarioFecha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object lblHorarioSucursal: TLabel
            Left = 4
            Top = 17
            Width = 120
            Height = 13
            Align = alTop
            Caption = 'lblHorarioSucursal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object lblHorarioIntervalo: TLabel
            Left = 4
            Top = 30
            Width = 126
            Height = 13
            Align = alTop
            Caption = 'lblHorarioIntervalo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
        end
      end
    end
    object TabHorarioGrafico: TTabSheet
      Caption = 'Horario Ventas (Grafico)'
      ImageIndex = 2
      object DBChartHorario: TDBChart
        Left = 0
        Top = 0
        Width = 1193
        Height = 384
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Color = clSilver
        Gradient.EndColor = 14737632
        Gradient.StartColor = 5987163
        Gradient.Visible = True
        LeftWall.Brush.Color = clWhite
        Title.Brush.Color = clWhite
        Title.Brush.Style = bsClear
        Title.Color = clWhite
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.Text.Strings = (
          'Horario Ventas')
        BackColor = clSilver
        LeftAxis.Grid.Color = 13290186
        LeftAxis.MinorTickLength = 1
        LeftAxis.Ticks.Color = clSilver
        LeftAxis.TicksInner.Color = clSilver
        Legend.Frame.Visible = False
        Legend.ResizeChart = False
        Legend.ShadowSize = 1
        Legend.TextStyle = ltsPlain
        Legend.TopPos = 11
        View3D = False
        View3DOptions.Elevation = 315
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Align = alClient
        BevelOuter = bvNone
        BevelWidth = 0
        TabOrder = 0
        object Splitter4: TSplitter
          Left = 0
          Top = 380
          Width = 1193
          Height = 4
          Cursor = crVSplit
          Align = alBottom
        end
        object Series1: TFastLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          DataSource = ZP_Horario
          SeriesColor = clRed
          ShowInLegend = False
          XLabelsSource = 'HORA_DESDE'
          LinePen.Color = clRed
          LinePen.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'HORA_DESDE'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'CANTIDAD'
        end
        object Series5: TFastLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = ZP_Horario
          SeriesColor = clBlue
          ShowInLegend = False
          Title = 'horario linea'
          LinePen.Color = clBlue
          LinePen.Width = 2
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'HORA_PERIODO'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'CANTIDAD'
        end
        object Series3: TPointSeries
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = False
          DataSource = ZP_Horario
          SeriesColor = clLime
          ShowInLegend = False
          Title = 'horario ptos'
          Pointer.Brush.Color = clBlue
          Pointer.Draw3D = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'HORA_PERIODO'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'CANTIDAD'
        end
      end
      object DBChart1: TDBChart
        Left = 0
        Top = 384
        Width = 1193
        Height = 279
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Color = clSilver
        Gradient.EndColor = 6381663
        Gradient.StartColor = clSilver
        Gradient.Visible = True
        LeftWall.Brush.Color = clWhite
        Title.Brush.Color = clWhite
        Title.Brush.Style = bsClear
        Title.Color = clWhite
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.Text.Strings = (
          'Totales Ventas')
        BackColor = clSilver
        LeftAxis.AxisValuesFormat = '$ #,##0.###'
        LeftAxis.Grid.Color = 13290186
        LeftAxis.MinorTickLength = 1
        LeftAxis.Ticks.Color = clSilver
        LeftAxis.TicksInner.Color = clSilver
        Legend.Frame.Visible = False
        Legend.ResizeChart = False
        Legend.ShadowSize = 1
        Legend.TextStyle = ltsPlain
        Legend.TopPos = 11
        View3DOptions.Elevation = 315
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Align = alBottom
        BevelOuter = bvNone
        BevelWidth = 0
        TabOrder = 1
        object FastLineSeries2: TBarSeries
          ColorEachPoint = True
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = ZP_Horario
          SeriesColor = clBlue
          ShowInLegend = False
          Title = 'horario linea'
          ValueFormat = '$ #,##0.###'
          BarStyle = bsRectGradient
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'HORA_PERIODO'
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'IMPORTE'
        end
      end
    end
    object TabVentasDiarias: TTabSheet
      Caption = 'Ventas Diarias'
      ImageIndex = 3
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1193
        Height = 663
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object RepVentasDiarias: TQuickRep
          Tag = 99
          Left = 102
          Top = 57
          Width = 952
          Height = 1347
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = ZQ_ProductosVendidos
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
          ReportTitle = '+'
          SnapToGrid = True
          Units = MM
          Zoom = 120
          PrevFormStyle = fsNormal
          PreviewInitialState = wsNormal
          PrevInitialZoom = qrZoomToFit
          PreviewDefaultSaveType = stQRP
          object QRBand4: TQRBand
            Tag = 99
            Left = 45
            Top = 45
            Width = 861
            Height = 86
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
              189.618055555555600000
              1898.385416666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbPageHeader
            object QRDBImage1: TQRDBImage
              Left = 57
              Top = 2
              Width = 77
              Height = 77
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                169.774305555555600000
                125.677083333333300000
                4.409722222222222000
                169.774305555555600000)
              DataField = 'LOGO'
              Stretch = True
            end
            object QRLabel1: TQRLabel
              Left = 338
              Top = 56
              Width = 185
              Height = 23
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                50.711805555555560000
                745.243055555555600000
                123.472222222222200000
                407.899305555555600000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'VENTAS DIARIAS'
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
            object RepVentasDiarias_Subtitulo: TQRLabel
              Left = 317
              Top = 31
              Width = 226
              Height = 24
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                698.940972222222200000
                68.350694444444440000
                498.298611111111100000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'RepVentasDiarias_Subtitulo'
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
            object RepVentasDiarias_Titulo: TQRLabel
              Left = 300
              Top = 2
              Width = 260
              Height = 24
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                661.458333333333300000
                4.409722222222222000
                573.263888888888900000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'RepVentasDiarias_Titulo'
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
          object QRBand5: TQRBand
            Tag = 99
            Left = 45
            Top = 190
            Width = 861
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
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
              35.277777777777780000
              1898.385416666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText1: TQRDBText
              Left = 96
              Top = 0
              Width = 602
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = True
              Size.Values = (
                33.072916666666670000
                211.666666666666700000
                0.000000000000000000
                1327.326388888889000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Color = clWhite
              DataSet = ZQ_ProductosVendidos
              DataField = 'DETALLE_PROD'
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText3: TQRDBText
              Left = 744
              Top = 0
              Width = 114
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = True
              Frame.DrawRight = False
              Size.Values = (
                33.072916666666670000
                1640.416666666667000000
                0.000000000000000000
                251.354166666666700000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Color = clWhite
              DataSet = ZQ_ProductosVendidos
              DataField = 'SUMAVENTA'
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText4: TQRDBText
              Left = 702
              Top = 0
              Width = 39
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                33.072916666666670000
                1547.812500000000000000
                0.000000000000000000
                85.989583333333330000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Color = clWhite
              DataSet = ZQ_ProductosVendidos
              DataField = 'CANTIDAD'
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText5: TQRDBText
              Left = 2
              Top = 0
              Width = 91
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = True
              Size.Values = (
                33.072916666666670000
                4.409722222222222000
                0.000000000000000000
                200.642361111111100000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Color = clWhite
              DataSet = ZQ_ProductosVendidos
              DataField = 'FECHAC'
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
          end
          object QRBand7: TQRBand
            Tag = 99
            Left = 45
            Top = 131
            Width = 861
            Height = 37
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
              81.579861111111110000
              1898.385416666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRlbRepVentasDiarias_CritBusqueda: TQRLabel
              Left = 6
              Top = 19
              Width = 1168
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                34.395833333333330000
                13.229166666666670000
                42.333333333333330000
                2574.395833333333000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'QRlblRepDetMov_CritBusqueda'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRLabel5: TQRLabel
              Left = 6
              Top = 2
              Width = 151
              Height = 16
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                35.277777777777780000
                13.229166666666670000
                4.409722222222222000
                332.934027777777800000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Criterios de B'#250'squeda:'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              Transparent = False
              WordWrap = False
              ExportAs = exptText
              FontSize = 7
            end
          end
          object QRBand8: TQRBand
            Tag = 99
            Left = 45
            Top = 233
            Width = 861
            Height = 29
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
              63.940972222222220000
              1898.385416666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbPageFooter
            object QRlblRepVentasDiarias_PieDePagina: TQRLabel
              Left = 5
              Top = 4
              Width = 186
              Height = 24
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                11.024305555555560000
                8.819444444444444000
                410.104166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'QRlblRepDetalleMov_PieDePagina'
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
            object QRLabel7: TQRLabel
              Left = 786
              Top = 4
              Width = 47
              Height = 24
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                1733.020833333333000000
                8.819444444444444000
                103.628472222222200000)
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
              Left = 836
              Top = 4
              Width = 54
              Height = 24
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                1844.145833333333000000
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
          object QRBand9: TQRBand
            Tag = 99
            Left = 45
            Top = 168
            Width = 861
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clSilver
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              48.506944444444440000
              1898.385416666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRLabel9: TQRLabel
              Left = 752
              Top = 2
              Width = 106
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.482638888888890000
                1658.055555555556000000
                4.409722222222222000
                233.715277777777800000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Importe'
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
            object QRLabel10: TQRLabel
              Left = 97
              Top = 2
              Width = 144
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.482638888888890000
                213.871527777777800000
                4.409722222222222000
                317.500000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Producto/Servicio'
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
            object QRLabel11: TQRLabel
              Left = 687
              Top = 2
              Width = 70
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.482638888888890000
                1514.739583333333000000
                4.409722222222222000
                154.340277777777800000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Cantidad'
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
            object QRLabel14: TQRLabel
              Left = 2
              Top = 2
              Width = 87
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.482638888888890000
                4.409722222222222000
                4.409722222222222000
                191.822916666666700000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Fecha'
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
          object QRBand10: TQRBand
            Tag = 99
            Left = 45
            Top = 206
            Width = 861
            Height = 27
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
              59.531250000000000000
              1898.385416666667000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRExpr1: TQRExpr
              Left = 752
              Top = 2
              Width = 106
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.482638888888890000
                1658.055555555556000000
                4.409722222222222000
                233.715277777777800000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'FORMATNUMERIC('#39'$#,##0.00'#39',SUM(ZQ_ProductosVendidos.SUMAVENTA))'
              ExportAs = exptText
              FontSize = 8
            end
            object QRExpr2: TQRExpr
              Left = 696
              Top = 2
              Width = 44
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.482638888888890000
                1534.583333333333000000
                4.409722222222222000
                97.013888888888890000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(ZQ_ProductosVendidos.CANTIDAD)'
              ExportAs = exptText
              FontSize = 8
            end
            object QRLabel4: TQRLabel
              Left = 527
              Top = 2
              Width = 167
              Height = 18
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1161.961805555556000000
                4.409722222222222000
                368.211805555555600000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Totales Ventas :'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              Transparent = False
              WordWrap = False
              ExportAs = exptText
              FontSize = 8
            end
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1193
          Height = 663
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 0
          object Panel3: TPanel
            Left = 2
            Top = 2
            Width = 1189
            Height = 659
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object lblProdsVendidos: TLabel
              Left = 0
              Top = 638
              Width = 1189
              Height = 21
              Align = alBottom
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total Productos/Servicios: $ 0.00 '
              Color = 16729670
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
              Layout = tlCenter
            end
            object Splitter3: TSplitter
              Left = 1181
              Top = 0
              Width = 8
              Height = 638
              Align = alRight
            end
            object DBGridProdVendidos: TDBGrid
              Left = 0
              Top = 0
              Width = 1181
              Height = 638
              Align = alClient
              Color = 14606012
              DataSource = DS_ProductosVendidos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = []
              OnDrawColumnCell = DrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'FECHAC'
                  Title.Caption = 'Fecha'
                  Width = 96
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DETALLE_PROD'
                  Title.Caption = 'Producto/Servicio'
                  Width = 469
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CANTIDAD'
                  Title.Caption = 'Cantidad'
                  Width = 69
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SUMAVENTA'
                  Title.Caption = 'Importe'
                  Width = 111
                  Visible = True
                end>
            end
          end
        end
      end
    end
  end
  object DS_Comprobante: TDataSource
    DataSet = ZQ_Comprobante
    Left = 61
    Top = 199
  end
  object ZQ_Comprobante_FormaPago: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select cfp.*, tfp.descripcion as tFormaPago_,tfp."IF"'
      'from comprobante_forma_pago cfp'
      
        'left join tipo_formapago tfp on (tfp.id_tipo_formapago=cfp.id_ti' +
        'po_formapag)'
      'where (cfp.id_comprobante = :id_comprobante)'
      '  and ((tfp."IF" = :fiscal) or (:fiscal = '#39'T'#39'))')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fiscal'
        ParamType = ptUnknown
      end>
    Left = 225
    Top = 95
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fiscal'
        ParamType = ptUnknown
      end>
    object ZQ_Comprobante_FormaPagoID_COMPROB_FP: TIntegerField
      FieldName = 'ID_COMPROB_FP'
      Required = True
    end
    object ZQ_Comprobante_FormaPagoID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_Comprobante_FormaPagoID_TIPO_FORMAPAG: TIntegerField
      FieldName = 'ID_TIPO_FORMAPAG'
      Required = True
    end
    object ZQ_Comprobante_FormaPagoMDCP_FECHA: TDateField
      FieldName = 'MDCP_FECHA'
    end
    object ZQ_Comprobante_FormaPagoMDCP_BANCO: TStringField
      FieldName = 'MDCP_BANCO'
      Size = 50
    end
    object ZQ_Comprobante_FormaPagoMDCP_CHEQUE: TStringField
      FieldName = 'MDCP_CHEQUE'
      Size = 50
    end
    object ZQ_Comprobante_FormaPagoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
    object ZQ_Comprobante_FormaPagoCONCILIADO: TDateField
      FieldName = 'CONCILIADO'
    end
    object ZQ_Comprobante_FormaPagoCUENTA_INGRESO: TIntegerField
      FieldName = 'CUENTA_INGRESO'
    end
    object ZQ_Comprobante_FormaPagoCUENTA_EGRESO: TIntegerField
      FieldName = 'CUENTA_EGRESO'
    end
    object ZQ_Comprobante_FormaPagoFECHA_FP: TDateTimeField
      FieldName = 'FECHA_FP'
    end
    object ZQ_Comprobante_FormaPagoIMPORTE_REAL: TFloatField
      FieldName = 'IMPORTE_REAL'
      currency = True
    end
    object ZQ_Comprobante_FormaPagoTFORMAPAGO_: TStringField
      FieldName = 'TFORMAPAGO_'
      Size = 50
    end
    object ZQ_Comprobante_FormaPagoIF: TStringField
      FieldName = 'IF'
      Size = 1
    end
  end
  object ZQ_ComprobanteDetalle: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select cd.*, pc.nombre||'#39' - COD: '#39'||coalesce(p.cod_corto,'#39#39') DET' +
        'ALLE_PROD,'
      '       p.codigo_barra, c.nombre as color, m.medida,'
      '       (cd.importe_venta - cd.importe_if) as importe_noFiscal'
      'from comprobante_detalle cd'
      'left join producto p on (cd.id_producto=p.id_producto)'
      
        'left join producto_cabecera pc on (pc.id_prod_cabecera=p.id_prod' +
        '_cabecera)'
      'left join color c on (pc.color = c.id_color)'
      'left join medida m on (p.id_medida = m.id_medida)'
      'where (cd.id_comprobante = :id_comprobante)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    Left = 385
    Top = 95
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    object ZQ_ComprobanteDetalleID_COMPROBANTE_DETALLE: TIntegerField
      FieldName = 'ID_COMPROBANTE_DETALLE'
    end
    object ZQ_ComprobanteDetalleID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_ComprobanteDetalleID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
    end
    object ZQ_ComprobanteDetalleID_STOCK_PRODUCTO: TIntegerField
      FieldName = 'ID_STOCK_PRODUCTO'
    end
    object ZQ_ComprobanteDetalleDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 200
    end
    object ZQ_ComprobanteDetalleCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object ZQ_ComprobanteDetalleCANTIDAD_RECIBIDA: TFloatField
      FieldName = 'CANTIDAD_RECIBIDA'
    end
    object ZQ_ComprobanteDetalleCANTIDAD_ALMACENADA: TFloatField
      FieldName = 'CANTIDAD_ALMACENADA'
    end
    object ZQ_ComprobanteDetalleDETALLE_PROD: TStringField
      FieldName = 'DETALLE_PROD'
      Size = 128
    end
    object ZQ_ComprobanteDetalleCODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Size = 40
    end
    object ZQ_ComprobanteDetalleCOLOR: TStringField
      FieldName = 'COLOR'
      Size = 30
    end
    object ZQ_ComprobanteDetalleMEDIDA: TStringField
      FieldName = 'MEDIDA'
      Size = 30
    end
    object ZQ_ComprobanteDetalleBASE_IMPONIBLE: TFloatField
      FieldName = 'BASE_IMPONIBLE'
      currency = True
    end
    object ZQ_ComprobanteDetalleIMPORTE_UNITARIO: TFloatField
      FieldName = 'IMPORTE_UNITARIO'
    end
    object ZQ_ComprobanteDetalleIMPORTE_FINAL: TFloatField
      FieldName = 'IMPORTE_FINAL'
      DisplayFormat = '$ #,###,##0.00'
      currency = True
    end
    object ZQ_ComprobanteDetalleIMPORTE_IVA: TFloatField
      FieldName = 'IMPORTE_IVA'
      DisplayFormat = '$ #,###,##0.00'
      currency = True
    end
    object ZQ_ComprobanteDetalleIMPORTE_IF: TFloatField
      FieldName = 'IMPORTE_IF'
      currency = True
    end
    object ZQ_ComprobanteDetalleIMPORTE_VENTA: TFloatField
      FieldName = 'IMPORTE_VENTA'
      currency = True
    end
    object ZQ_ComprobanteDetalleIMPORTE_NOFISCAL: TFloatField
      FieldName = 'IMPORTE_NOFISCAL'
      currency = True
    end
    object ZQ_ComprobanteDetallePORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
    end
    object ZQ_ComprobanteDetallePORC_DESCUENTO: TFloatField
      FieldName = 'PORC_DESCUENTO'
    end
    object ZQ_ComprobanteDetalleIMPUESTO_INTERNO: TFloatField
      FieldName = 'IMPUESTO_INTERNO'
    end
  end
  object ZQ_Comprobante: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_ComprobanteAfterScroll
    SQL.Strings = (
      
        'select c.codigo, c.id_comprobante, cast(c.fecha as date) as Fech' +
        'a, c.porc_iva,'
      
        '       sum(cfp.importe_real) as importeVenta_, s.nombre as suc_,' +
        ' p1.nombre as Vendedor_,'
      '       iva.abreviatura as tiva_, iva.nombre_tipo_iva,'
      '       tc.nombre_tipo_cpb as tipoCompr_, p2.nombre as cliente_'
      'from comprobante c'
      
        'join comprobante_forma_pago cfp on (cfp.id_comprobante = c.id_co' +
        'mprobante)'
      
        'join tipo_formapago tfp on (tfp.id_tipo_formapago = cfp.id_tipo_' +
        'formapag)'
      'join sucursal s on (c.id_sucursal = s.id_sucursal)'
      'join persona p1 on (p1.id_persona = c.id_vendedor)'
      'join tipo_iva iva on (iva.id_tipo_iva = c.id_tipo_iva)'
      'join tipo_comprobante tc on (tc.id_tipo_cpb = c.id_tipo_cpb)'
      'join persona p2 on (p2.id_persona = c.id_cliente)'
      'where (c.id_tipo_cpb = 11)'
      'group by c.codigo, c.id_comprobante, c.fecha, c.importe_total,'
      '         c.porc_iva, s.nombre, p1.nombre, iva.abreviatura,'
      '         iva.nombre_tipo_iva, tc.nombre_tipo_cpb, p2.nombre')
    Params = <>
    Left = 66
    Top = 144
    object ZQ_ComprobanteCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 50
    end
    object ZQ_ComprobanteID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object ZQ_ComprobanteFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object ZQ_ComprobantePORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
    end
    object ZQ_ComprobanteIMPORTEVENTA_: TFloatField
      FieldName = 'IMPORTEVENTA_'
      ReadOnly = True
      currency = True
    end
    object ZQ_ComprobanteSUC_: TStringField
      FieldName = 'SUC_'
      ReadOnly = True
      Size = 200
    end
    object ZQ_ComprobanteVENDEDOR_: TStringField
      FieldName = 'VENDEDOR_'
      ReadOnly = True
      Size = 200
    end
    object ZQ_ComprobanteTIVA_: TStringField
      FieldName = 'TIVA_'
      ReadOnly = True
      Size = 10
    end
    object ZQ_ComprobanteTIPOCOMPR_: TStringField
      FieldName = 'TIPOCOMPR_'
      ReadOnly = True
      Size = 50
    end
    object ZQ_ComprobanteCLIENTE_: TStringField
      FieldName = 'CLIENTE_'
      ReadOnly = True
      Size = 200
    end
    object ZQ_ComprobanteNOMBRE_TIPO_IVA: TStringField
      FieldName = 'NOMBRE_TIPO_IVA'
      ReadOnly = True
      Size = 50
    end
  end
  object DS_Comprobante_FormaPago: TDataSource
    DataSet = ZQ_Comprobante_FormaPago
    Left = 221
    Top = 143
  end
  object DS_ComprobanteDetalle: TDataSource
    DataSet = ZQ_ComprobanteDetalle
    Left = 389
    Top = 143
  end
  object EKDbSumaComprobante: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'importeVenta_'
      end>
    DataSet = ZQ_Comprobante
    SumListChanged = EKDbSumaComprobanteSumListChanged
    Left = 61
    Top = 303
  end
  object EKBuscarComprobantes: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Sucursal'
        Campo = 'id_sucursal'
        Tabla = 'sucursal'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboSQL = ZQ_Sucursal
        TipoComboSQLCampoVer = 'nombre'
        TipoComboSQLCampoReal = 'id_sucursal'
        TipoComboEditable = False
        TipoComboAncho = 350
        ItemIndex = -1
      end
      item
        Titulo = 'Fecha'
        Campo = 'fecha'
        Tabla = 'comprobante'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'C'#243'digo'
        Campo = 'codigo'
        Tabla = 'comprobante'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Tipo Iva'
        Campo = 'ID_TIPO_IVA'
        Tabla = 'tipo_iva'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboSQL = ZQ_TipoIVA
        TipoComboSQLCampoVer = 'NOMBRE_TIPO_IVA'
        TipoComboSQLCampoReal = 'ID_TIPO_IVA'
        TipoComboEditable = False
        TipoComboAncho = 350
        ItemIndex = -1
      end
      item
        Titulo = 'Cliente'
        Campo = 'nombre'
        Tabla = 'p2'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Vendedor'
        Campo = 'nombre'
        Tabla = 'p1'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Importe'
        Campo = 'importe_venta'
        Tabla = 'comprobante'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = ZQ_Comprobante
    SQL.Strings = (
      
        'select c.codigo, c.id_comprobante, cast(c.fecha as date) as Fech' +
        'a, c.porc_iva,'
      
        '       sum(cfp.importe_real) as importeVenta_, s.nombre as suc_,' +
        ' p1.nombre as Vendedor_,'
      '       iva.abreviatura as tiva_, iva.nombre_tipo_iva,'
      '       tc.nombre_tipo_cpb as tipoCompr_, p2.nombre as cliente_'
      'from comprobante c'
      
        'join comprobante_forma_pago cfp on (cfp.id_comprobante = c.id_co' +
        'mprobante)'
      
        'join tipo_formapago tfp on (tfp.id_tipo_formapago = cfp.id_tipo_' +
        'formapag)'
      'join sucursal s on (c.id_sucursal = s.id_sucursal)'
      'join persona p1 on (p1.id_persona = c.id_vendedor)'
      'join tipo_iva iva on (iva.id_tipo_iva = c.id_tipo_iva)'
      'join tipo_comprobante tc on (tc.id_tipo_cpb = c.id_tipo_cpb)'
      'join persona p2 on (p2.id_persona = c.id_cliente)'
      'where (c.id_tipo_cpb = 11)'
      'group by c.codigo, c.id_comprobante, c.fecha, c.importe_total,'
      '         c.porc_iva, s.nombre, p1.nombre, iva.abreviatura,'
      '         iva.nombre_tipo_iva, tc.nombre_tipo_cpb, p2.nombre')
    SQL_Select.Strings = (
      
        'select c.codigo, c.id_comprobante, cast(c.fecha as date) as Fech' +
        'a, c.porc_iva,'
      
        '       sum(cfp.importe_real) as importeVenta_, s.nombre as suc_,' +
        ' p1.nombre as Vendedor_,'
      '       iva.abreviatura as tiva_, iva.nombre_tipo_iva,'
      '       tc.nombre_tipo_cpb as tipoCompr_, p2.nombre as cliente_')
    SQL_From.Strings = (
      'from comprobante c'
      
        'join comprobante_forma_pago cfp on (cfp.id_comprobante = c.id_co' +
        'mprobante)'
      
        'join tipo_formapago tfp on (tfp.id_tipo_formapago = cfp.id_tipo_' +
        'formapag)'
      'join sucursal s on (c.id_sucursal = s.id_sucursal)'
      'join persona p1 on (p1.id_persona = c.id_vendedor)'
      'join tipo_iva iva on (iva.id_tipo_iva = c.id_tipo_iva)'
      'join tipo_comprobante tc on (tc.id_tipo_cpb = c.id_tipo_cpb)'
      'join persona p2 on (p2.id_persona = c.id_cliente)')
    SQL_Where.Strings = (
      'where (c.id_tipo_cpb = 11)')
    SQL_Orden.Strings = (
      'group by c.codigo, c.id_comprobante, c.fecha, c.importe_total,'
      '         c.porc_iva, s.nombre, p1.nombre, iva.abreviatura,'
      '         iva.nombre_tipo_iva, tc.nombre_tipo_cpb, p2.nombre')
    UsarWhereOriginal = EK_Con_Where
    Left = 64
    Top = 95
  end
  object ZQ_TipoIVA: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from tipo_IVA')
    Params = <>
    Left = 509
    Top = 96
    object ZQ_TipoIVAID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
      Required = True
    end
    object ZQ_TipoIVANOMBRE_TIPO_IVA: TStringField
      FieldName = 'NOMBRE_TIPO_IVA'
      Size = 50
    end
    object ZQ_TipoIVAABREVIATURA: TStringField
      FieldName = 'ABREVIATURA'
      Size = 10
    end
    object ZQ_TipoIVADISCRIMINAR: TStringField
      FieldName = 'DISCRIMINAR'
      Size = 1
    end
    object ZQ_TipoIVALETRA: TStringField
      FieldName = 'LETRA'
      Size = 1
    end
    object ZQ_TipoIVAFISCAL: TStringField
      FieldName = 'FISCAL'
      Size = 1
    end
    object ZQ_TipoIVACOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
    end
  end
  object EKOrdenarFacturas: TEKOrdenarGrilla
    Grilla = DBGridComprobantes
    Filtros = <
      item
        TituloColumna = 'C'#243'digo'
        Visible = True
      end
      item
        TituloColumna = 'Fecha'
        Visible = True
      end
      item
        TituloColumna = 'Tipo'
        Visible = True
      end
      item
        TituloColumna = 'Cliente'
        Visible = True
      end
      item
        TituloColumna = 'Importe Venta'
        Visible = True
      end
      item
        TituloColumna = 'Sucursal'
        Visible = True
      end
      item
        TituloColumna = 'Tipo IVA'
        Visible = True
      end
      item
        TituloColumna = 'Vendedor'
        Visible = True
      end>
    NombreGuardar = 'DBGridComprobantes'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    Left = 58
    Top = 248
  end
  object EKOrdenarProducto: TEKOrdenarGrilla
    Grilla = DBGridListadoProductos
    Filtros = <
      item
        TituloColumna = 'Id'
        Visible = True
      end
      item
        TituloColumna = 'Producto'
        Visible = True
      end
      item
        TituloColumna = 'Cant.'
        Visible = True
      end
      item
        TituloColumna = 'Importe'
        Visible = True
      end
      item
        TituloColumna = 'C'#243'd. Barra'
        Visible = True
      end
      item
        TituloColumna = 'Color'
        Visible = True
      end
      item
        TituloColumna = 'Medida'
        Visible = True
      end>
    NombreGuardar = 'DBGridListadoProductos'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    Left = 386
    Top = 192
  end
  object EKOrdenarFPago: TEKOrdenarGrilla
    Grilla = DBGridFormaPago
    Filtros = <
      item
        TituloColumna = 'Forma de Pago'
        Visible = True
      end
      item
        TituloColumna = 'Importe'
        Visible = True
      end
      item
        TituloColumna = 'MDP Fecha'
        Visible = True
      end
      item
        TituloColumna = 'Banco'
        Visible = True
      end
      item
        TituloColumna = 'N'#250'mero'
        Visible = True
      end>
    NombreGuardar = 'DBGridFormaPago'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    Left = 218
    Top = 192
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
            Item = btnExcel
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
    Left = 512
    Top = 150
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
    object btnExcel: TdxBarLargeButton
      Align = iaRight
      Caption = 'Exel'
      Category = 0
      Hint = 'Exportar a Exel'
      Visible = ivAlways
      ImageIndex = 77
      OnClick = btnExcelClick
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
    object btImprimir: TdxBarLargeButton
      Caption = 'Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      ImageIndex = 28
      OnClick = btImprimirClick
      AutoGrayScale = False
    end
    object GrupoEditando: TdxBarGroup
      Items = (
        'btnBuscar'
        'btnExcel'
        'btnSalir'
        'btImprimir')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
    end
  end
  object ATeclasRapidas: TActionManager
    Left = 216
    Top = 304
    StyleName = 'XP Style'
    object ABuscar: TAction
      Caption = 'ABuscar'
      ShortCut = 112
      OnExecute = ABuscarExecute
    end
  end
  object EKDbSumaFpago: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'IMPORTE_REAL'
      end>
    DataSet = ZQ_Comprobante_FormaPago
    Left = 218
    Top = 245
  end
  object EKDbSumaProducto: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'IMPORTE_VENTA'
      end
      item
        Operacion = goSum
        NombreCampo = 'IMPORTE_IF'
      end
      item
        Operacion = goSum
        NombreCampo = 'IMPORTE_NOFISCAL'
      end>
    DataSet = ZQ_ComprobanteDetalle
    Left = 386
    Top = 254
  end
  object ZQ_Sucursal: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from Sucursal s'
      'where s.id_sucursal > 0'
      'order by s.nombre')
    Params = <>
    Left = 508
    Top = 206
    object ZQ_SucursalID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
    object ZQ_SucursalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_SucursalDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 200
    end
    object ZQ_SucursalLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 200
    end
    object ZQ_SucursalCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
    end
    object ZQ_SucursalTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 100
    end
    object ZQ_SucursalEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object ZQ_SucursalBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_SucursalLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object ZQ_SucursalREPORTE_TITULO: TStringField
      FieldName = 'REPORTE_TITULO'
      Size = 50
    end
    object ZQ_SucursalREPORTE_SUBTITULO: TStringField
      FieldName = 'REPORTE_SUBTITULO'
      Size = 50
    end
    object ZQ_SucursalCOMPROBANTE_TITULO: TStringField
      FieldName = 'COMPROBANTE_TITULO'
      Size = 50
    end
    object ZQ_SucursalCOMPROBANTE_RENGLON1: TStringField
      FieldName = 'COMPROBANTE_RENGLON1'
      Size = 50
    end
    object ZQ_SucursalCOMPROBANTE_RENGLON2: TStringField
      FieldName = 'COMPROBANTE_RENGLON2'
      Size = 50
    end
    object ZQ_SucursalCOMPROBANTE_RENGLON3: TStringField
      FieldName = 'COMPROBANTE_RENGLON3'
      Size = 50
    end
    object ZQ_SucursalCOMPROBANTE_RENGLON4: TStringField
      FieldName = 'COMPROBANTE_RENGLON4'
      Size = 50
    end
  end
  object EKVistaPrevia: TEKVistaPreviaQR
    Reporte = RepDetalleMov
    ShowModal = False
    Left = 62
    Top = 351
  end
  object ZP_Horario: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftTime
        Name = 'HORA_DESDE'
        ParamType = ptResult
      end
      item
        DataType = ftTime
        Name = 'HORA_HASTA'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'CANTIDAD'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'IMPORTE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'INTERVALO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHA_DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHA_HASTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SUCURSAL'
        ParamType = ptInput
      end>
    StoredProcName = 'ESTADISTICA_VENTAS_POR_HORA'
    Left = 708
    Top = 96
    ParamData = <
      item
        DataType = ftTime
        Name = 'HORA_DESDE'
        ParamType = ptResult
      end
      item
        DataType = ftTime
        Name = 'HORA_HASTA'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'CANTIDAD'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'IMPORTE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'INTERVALO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHA_DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHA_HASTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SUCURSAL'
        ParamType = ptInput
      end>
    object ZP_HorarioHORA_DESDE: TTimeField
      FieldName = 'HORA_DESDE'
      DisplayFormat = 'hh:mm'
    end
    object ZP_HorarioHORA_HASTA: TTimeField
      FieldName = 'HORA_HASTA'
      DisplayFormat = 'hh:mm'
    end
    object ZP_HorarioCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
    end
    object ZP_HorarioIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
    object ZP_HorarioHORA_PERIODO: TTimeField
      FieldName = 'HORA_PERIODO'
    end
    object ZP_HorarioPERIODO: TIntegerField
      FieldName = 'PERIODO'
    end
  end
  object DS_Horario: TDataSource
    DataSet = ZP_Horario
    Left = 708
    Top = 152
  end
  object EKBuscarHorario: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Fecha Desde'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Fechas Hasta'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Sucursal'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboSQL = ZQ_Sucursal
        TipoComboSQLCampoVer = 'nombre'
        TipoComboSQLCampoReal = 'id_sucursal'
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Intervalo (Min)'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    UsarWhereOriginal = EK_Con_Where
    PantallaReducida = True
    Left = 710
    Top = 209
  end
  object ZQ_ProductosVendidos: TZQuery
    Connection = DM.Conexion
    SortedFields = 'FECHAC'
    SQL.Strings = (
      
        'select cd.id_producto,count(cd.id_producto) as cantidad,sum(cd.i' +
        'mporte_venta) as sumaVenta,'
      
        'sum(cd.importe_if) as sumaIF,cast(c.fecha_cobrada as date) as fe' +
        'chaC,'
      
        'pc.cod_corto||'#39' '#39'||pc.nombre||coalesce('#39'  -  M: '#39'||m.medida,'#39#39')|' +
        '|coalesce('#39'  -  C'#243'd:'#39'||p.cod_corto,'#39#39')||coalesce('#39'  -  CB:'#39'||p.c' +
        'odigo_barra,'#39#39') DETALLE_PROD'
      'from comprobante_detalle cd'
      'join comprobante c on (cd.id_comprobante=c.id_comprobante)'
      'join sucursal s on (c.id_sucursal = s.id_sucursal)'
      'left join producto p on (cd.id_producto=p.id_producto)'
      'left join medida m on (p.id_medida=m.id_medida)'
      
        'left join producto_cabecera pc on (pc.id_prod_cabecera=p.id_prod' +
        '_cabecera)'
      'where (c.id_tipo_cpb = 11)and(c.fecha_cobrada is not null)'
      'group by cd.id_producto,5,6')
    Params = <>
    IndexFieldNames = 'FECHAC Asc'
    Left = 506
    Top = 304
    object ZQ_ProductosVendidosID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
      Required = True
    end
    object ZQ_ProductosVendidosCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
      ReadOnly = True
    end
    object ZQ_ProductosVendidosSUMAVENTA: TFloatField
      FieldName = 'SUMAVENTA'
      ReadOnly = True
      currency = True
    end
    object ZQ_ProductosVendidosSUMAIF: TFloatField
      FieldName = 'SUMAIF'
      ReadOnly = True
      currency = True
    end
    object ZQ_ProductosVendidosFECHAC: TDateField
      FieldName = 'FECHAC'
      ReadOnly = True
    end
    object ZQ_ProductosVendidosDETALLE_PROD: TStringField
      FieldName = 'DETALLE_PROD'
      ReadOnly = True
      Size = 128
    end
  end
  object EKBuscarProductos: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Sucursal'
        Campo = 'id_sucursal'
        Tabla = 'sucursal'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboSQL = ZQ_Sucursal
        TipoComboSQLCampoVer = 'nombre'
        TipoComboSQLCampoReal = 'id_sucursal'
        TipoComboEditable = False
        TipoComboAncho = 350
        ItemIndex = -1
      end
      item
        Titulo = 'Fecha'
        Campo = 'fecha_cobrada'
        Tabla = 'comprobante'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = ZQ_ProductosVendidos
    SQL.Strings = (
      
        'select cd.id_producto,count(cd.id_producto) as cantidad,sum(cd.i' +
        'mporte_venta) as sumaVenta,'
      
        'sum(cd.importe_if) as sumaIF,cast(c.fecha_cobrada as date) as fe' +
        'chaC,'
      
        'pc.cod_corto||'#39' '#39'||pc.nombre||coalesce('#39'  -  M: '#39'||m.medida,'#39#39')|' +
        '|coalesce('#39'  -  C'#243'd:'#39'||p.cod_corto,'#39#39')||coalesce('#39'  -  CB:'#39'||p.c' +
        'odigo_barra,'#39#39') DETALLE_PROD'
      'from comprobante_detalle cd'
      'join comprobante c on (cd.id_comprobante=c.id_comprobante)'
      'join sucursal s on (c.id_sucursal = s.id_sucursal)'
      'left join producto p on (cd.id_producto=p.id_producto)'
      'left join medida m on (p.id_medida=m.id_medida)'
      
        'left join producto_cabecera pc on (pc.id_prod_cabecera=p.id_prod' +
        '_cabecera)'
      'where (c.id_tipo_cpb = 11)and(c.fecha_cobrada is not null)'
      'group by cd.id_producto,5,6'
      '')
    SQL_Select.Strings = (
      
        'select cd.id_producto,count(cd.id_producto) as cantidad,sum(cd.i' +
        'mporte_venta) as sumaVenta,'
      
        'sum(cd.importe_if) as sumaIF,cast(c.fecha_cobrada as date) as fe' +
        'chaC,'
      
        'pc.cod_corto||'#39' '#39'||pc.nombre||coalesce('#39'  -  M: '#39'||m.medida,'#39#39')|' +
        '|coalesce('#39'  -  C'#243'd:'#39'||p.cod_corto,'#39#39')||coalesce('#39'  -  CB:'#39'||p.c' +
        'odigo_barra,'#39#39') DETALLE_PROD')
    SQL_From.Strings = (
      'from comprobante_detalle cd'
      'join comprobante c on (cd.id_comprobante=c.id_comprobante)'
      'join sucursal s on (c.id_sucursal = s.id_sucursal)'
      'left join producto p on (cd.id_producto=p.id_producto)'
      'left join medida m on (p.id_medida=m.id_medida)'
      
        'left join producto_cabecera pc on (pc.id_prod_cabecera=p.id_prod' +
        '_cabecera)')
    SQL_Where.Strings = (
      'where (c.id_tipo_cpb = 11)and(c.fecha_cobrada is not null)')
    SQL_Orden.Strings = (
      'group by cd.id_producto,5,6'
      '')
    UsarWhereOriginal = EK_Con_Where
    Left = 384
    Top = 311
  end
  object DS_ProductosVendidos: TDataSource
    DataSet = ZQ_ProductosVendidos
    Left = 708
    Top = 272
  end
  object EKOrdenarProdVendidos: TEKOrdenarGrilla
    Grilla = DBGridProdVendidos
    Filtros = <
      item
        TituloColumna = 'Fecha'
        Visible = True
      end
      item
        TituloColumna = 'Producto/Servicio'
        Visible = True
      end
      item
        TituloColumna = 'Cantidad'
        Visible = True
      end
      item
        TituloColumna = 'Importe'
        Visible = True
      end>
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    Left = 334
    Top = 362
  end
  object EKDbSumaProdsVendidos: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'SUMAVENTA'
      end
      item
        Operacion = goSum
        NombreCampo = 'cantidad'
      end>
    DataSet = ZQ_ProductosVendidos
    SumListChanged = EKDbSumaProdsVendidosSumListChanged
    Left = 506
    Top = 358
  end
  object EKVistaPrevia2: TEKVistaPreviaQR
    Reporte = RepVentasDiarias
    ShowModal = False
    Left = 158
    Top = 375
  end
end
