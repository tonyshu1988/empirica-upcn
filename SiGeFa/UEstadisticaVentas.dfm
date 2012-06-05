object FEstadisticaVentas: TFEstadisticaVentas
  Left = 223
  Top = 110
  Width = 1194
  Height = 673
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
    Width = 1178
    Height = 583
    ActivePage = TabVarios
    Align = alClient
    TabOrder = 4
    OnChange = PageControlChange
    object TabFacturacion: TTabSheet
      Caption = 'Facturaci'#243'n'
      object PanelContenedor: TPanel
        Left = 0
        Top = 33
        Width = 1170
        Height = 522
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object PanelFacturacion: TPanel
          Left = 0
          Top = 0
          Width = 1170
          Height = 522
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 0
          object Splitter1: TSplitter
            Left = 2
            Top = 392
            Width = 1166
            Height = 6
            Cursor = crVSplit
            Align = alBottom
          end
          object PanelComprobante: TPanel
            Left = 2
            Top = 2
            Width = 1166
            Height = 390
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object lblTotalComprobantes: TLabel
              Left = 0
              Top = 369
              Width = 1166
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
              Width = 1166
              Height = 369
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
              OnDblClick = DBGridComprobantesDblClick
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
            Top = 398
            Width = 1166
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
              Width = 553
              Height = 122
              Align = alClient
              BevelOuter = bvNone
              Caption = 'PanelProducto'
              TabOrder = 0
              object lblTotalProducto: TLabel
                Left = 0
                Top = 101
                Width = 553
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
                Width = 553
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
                  end
                  item
                    Expanded = False
                    FieldName = 'NOMBRE_MARCA'
                    Title.Alignment = taCenter
                    Title.Caption = 'Marca'
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
                    FieldName = 'NOMBRE_CUENTA'
                    Title.Alignment = taCenter
                    Title.Caption = 'Cuenta'
                    Width = 196
                    Visible = True
                  end
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
                799.041666666666800000)
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
                592.666666666666800000)
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
                894.291666666666800000)
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
      end
      object PanelFiltro: TPanel
        Left = 0
        Top = 0
        Width = 1170
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
        Width = 1178
        Height = 566
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object DBGridHorario: TDBGrid
          Left = 0
          Top = 46
          Width = 1178
          Height = 520
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
              Title.Caption = 'Cantidad Ventas [unid.]'
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
          Width = 1178
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
        Width = 1178
        Height = 287
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
          'Horario Ventas [unid.]')
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
          Top = 283
          Width = 1178
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
        Top = 287
        Width = 1178
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
          'Totales Ventas [$]')
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
    object TabRanking: TTabSheet
      Caption = 'Ranking Ventas'
      ImageIndex = 4
      object Splitter3: TSplitter
        Left = 813
        Top = 33
        Width = 9
        Height = 533
        Align = alRight
        Beveled = True
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1178
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        object btRankingProds: TSpeedButton
          Left = 97
          Top = 7
          Width = 94
          Height = 18
          GroupIndex = 1
          Down = True
          Caption = 'Productos'
          Layout = blGlyphBottom
          OnClick = btRankingProdsClick
        end
        object btRankingClientes: TSpeedButton
          Left = 193
          Top = 7
          Width = 94
          Height = 18
          GroupIndex = 1
          Caption = 'Clientes'
          Layout = blGlyphBottom
          OnClick = btRankingClientesClick
        end
        object btRankingVended: TSpeedButton
          Left = 289
          Top = 7
          Width = 94
          Height = 18
          GroupIndex = 1
          Caption = 'Vendedores'
          Layout = blGlyphBottom
          OnClick = btRankingVendedClick
        end
        object Label1: TLabel
          Left = 19
          Top = 9
          Width = 75
          Height = 13
          Caption = 'Ranking seg'#250'n:'
        end
      end
      object Panel6: TPanel
        Left = 822
        Top = 33
        Width = 356
        Height = 533
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object Label2: TLabel
          Left = 0
          Top = 0
          Width = 356
          Height = 20
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Total Ventas [unid.]'
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
        object lblTotales: TLabel
          Left = 0
          Top = 325
          Width = 356
          Height = 20
          Align = alBottom
          Alignment = taRightJustify
          AutoSize = False
          Caption = '$ 0.00'
          Color = 16729670
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
        end
        object Splitter6: TSplitter
          Left = 0
          Top = 345
          Width = 356
          Height = 9
          Cursor = crVSplit
          Align = alBottom
          Beveled = True
        end
        object grillaTop20: TDBGrid
          Left = 0
          Top = 20
          Width = 356
          Height = 305
          Align = alClient
          Color = 14606012
          DataSource = DS_Top20
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
              FieldName = 'CANTIDAD'
              Title.Caption = 'Cant'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUMAVENTA'
              Title.Caption = 'Importe'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE_PROD'
              Title.Caption = 'Detalle'
              Visible = True
            end>
        end
        object DBChart2: TDBChart
          Left = 0
          Top = 354
          Width = 356
          Height = 179
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          BackWall.Color = clSilver
          Gradient.EndColor = 14737632
          Gradient.StartColor = 5987163
          Gradient.Visible = True
          LeftWall.Brush.Color = clWhite
          Title.Brush.Color = clWhite
          Title.Brush.Style = bsClear
          Title.Color = clBlue
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -15
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Title.Text.Strings = (
            'Total Ventas [$]')
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
          Align = alBottom
          BevelOuter = bvNone
          BevelWidth = 0
          TabOrder = 1
          object Series2: THorizBarSeries
            ColorEachPoint = True
            Marks.ArrowLength = 20
            Marks.Font.Charset = ANSI_CHARSET
            Marks.Font.Color = clBlack
            Marks.Font.Height = -8
            Marks.Font.Name = 'Verdana'
            Marks.Font.Style = []
            Marks.Visible = False
            DataSource = ZQ_Totales
            SeriesColor = clRed
            ShowInLegend = False
            XLabelsSource = 'DETALLE_PROD'
            BarStyle = bsRectGradient
            MultiBar = mbNone
            XValues.DateTime = False
            XValues.Name = 'Bar'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loNone
            XValues.ValueSource = 'SUMAVENTA'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loAscending
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 33
        Width = 813
        Height = 533
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 2
        object Label3: TLabel
          Left = 1
          Top = 1
          Width = 811
          Height = 20
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Total Ventas por Fecha'
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
        object lblProdsVendidos: TLabel
          Left = 1
          Top = 512
          Width = 811
          Height = 20
          Align = alBottom
          Alignment = taRightJustify
          AutoSize = False
          Caption = '$ 0.00'
          Color = 16729670
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
        end
        object grillaRanking: TDBGrid
          Left = 1
          Top = 21
          Width = 811
          Height = 491
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
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE_PROD'
              Title.Caption = 'Detalle'
              Width = 436
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Caption = 'Cant'
              Width = 32
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUMAVENTA'
              Title.Caption = 'Importe'
              Width = 105
              Visible = True
            end>
        end
      end
    end
    object TabVarios: TTabSheet
      Caption = 'Estad'#237'sticas Varias'
      ImageIndex = 4
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1170
        Height = 555
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object lblTotVarias: TLabel
          Left = 0
          Top = 534
          Width = 1170
          Height = 21
          Align = alBottom
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total Ventas: $ 0.00 '
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
        object ReporteEstadVariasCostos: TQuickRep
          Tag = 99
          Left = 366
          Top = 112
          Width = 794
          Height = 1123
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = ZQ_EstadVarias
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
          Zoom = 100
          PrevFormStyle = fsNormal
          PreviewInitialState = wsNormal
          PrevInitialZoom = qrZoomToFit
          PreviewDefaultSaveType = stQRP
          object QRBand11: TQRBand
            Tag = 99
            Left = 38
            Top = 38
            Width = 718
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
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbPageHeader
            object QRDBImage2: TQRDBImage
              Left = 42
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
                111.125000000000000000
                5.291666666666667000
                169.333333333333300000)
              DataField = 'LOGO'
              DataSet = ZQ_Sucursal
              Stretch = True
            end
            object qrTipoEstad2: TQRLabel
              Left = 265
              Top = 47
              Width = 187
              Height = 19
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                50.270833333333330000
                701.145833333333300000
                124.354166666666700000
                494.770833333333300000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'Estad'#237'stica de Ventas'
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
            object ReporteEstadVariasCostos_Subtitulo: TQRLabel
              Left = 237
              Top = 26
              Width = 244
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                627.062500000000000000
                68.791666666666670000
                645.583333333333300000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'ReporteEstadVariasCostos_Subtitulo'
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
            object ReporteEstadVariasCostos_Titulo: TQRLabel
              Left = 211
              Top = 2
              Width = 296
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                558.270833333333300000
                5.291666666666667000
                783.166666666666700000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'ReporteEstadVariasCostos_Titulo'
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
          object QRBand12: TQRBand
            Tag = 99
            Left = 38
            Top = 159
            Width = 718
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
              42.333333333333330000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText1: TQRDBText
              Left = 616
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
                1629.833333333333000000
                0.000000000000000000
                264.583333333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZQ_EstadVarias
              DataField = 'GANANCIA'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText2: TQRDBText
              Left = 6
              Top = 0
              Width = 337
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                15.875000000000000000
                0.000000000000000000
                891.645833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZQ_EstadVarias
              DataField = 'DESCRIPCION'
              Transparent = False
              WordWrap = False
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText3: TQRDBText
              Left = 569
              Top = 0
              Width = 45
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1505.479166666667000000
                0.000000000000000000
                119.062500000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZQ_EstadVarias
              DataField = 'CANTIDAD'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText4: TQRDBText
              Left = 344
              Top = 0
              Width = 103
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                910.166666666666700000
                0.000000000000000000
                272.520833333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZQ_EstadVarias
              DataField = 'SUMAVENTA'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText8: TQRDBText
              Left = 448
              Top = 0
              Width = 103
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1185.333333333333000000
                0.000000000000000000
                272.520833333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZQ_EstadVarias
              DataField = 'SUMACOSTO'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
          end
          object QRBand13: TQRBand
            Tag = 99
            Left = 38
            Top = 110
            Width = 718
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
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object critbusqueda2: TQRLabel
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
          object QRBand14: TQRBand
            Tag = 99
            Left = 38
            Top = 201
            Width = 718
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
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbPageFooter
            object ReporteEstadVariasCostos_piedePagina: TQRLabel
              Left = 4
              Top = 3
              Width = 153
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
                404.812500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'ReporteEstadVarias_PieDePagina'
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
            object QRLabel11: TQRLabel
              Left = 623
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
                1648.354166666667000000
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
            object QRSysData3: TQRSysData
              Left = 665
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
                1759.479166666667000000
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
          object QRBand15: TQRBand
            Tag = 99
            Left = 38
            Top = 141
            Width = 718
            Height = 18
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
              47.625000000000000000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRLabel12: TQRLabel
              Left = 624
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
                1651.000000000000000000
                5.291666666666667000
                243.416666666666700000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Ganancia'
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
            object QRLabel13: TQRLabel
              Left = 564
              Top = 2
              Width = 58
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1492.250000000000000000
                5.291666666666667000
                153.458333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
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
            object QRLabel15: TQRLabel
              Left = 6
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
                15.875000000000000000
                5.291666666666667000
                211.666666666666700000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Descripci'#243'n'
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
            object QRLabel17: TQRLabel
              Left = 345
              Top = 2
              Width = 102
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                912.812500000000000000
                5.291666666666667000
                269.875000000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Importe Venta'
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
            object QRLabel19: TQRLabel
              Left = 450
              Top = 2
              Width = 102
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1190.625000000000000000
                5.291666666666667000
                269.875000000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Importe Costo'
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
          object QRBand16: TQRBand
            Tag = 99
            Left = 38
            Top = 175
            Width = 718
            Height = 26
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
              68.791666666666670000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRExpr1: TQRExpr
              Left = 616
              Top = 0
              Width = 97
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1629.833333333333000000
                0.000000000000000000
                256.645833333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = True
              WordWrap = True
              Expression = 'SUM(ZQ_EstadVarias.GANANCIA)'
              Mask = '$ ##,###,##0.00'
              ExportAs = exptText
              FontSize = 8
            end
            object QRExpr3: TQRExpr
              Left = 563
              Top = 0
              Width = 49
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1489.604166666667000000
                0.000000000000000000
                129.645833333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = True
              WordWrap = True
              Expression = 'SUM(ZQ_EstadVarias.CANTIDAD)'
              ExportAs = exptText
              FontSize = 8
            end
            object QRLabel16: TQRLabel
              Left = 266
              Top = 0
              Width = 73
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                703.791666666666700000
                0.000000000000000000
                193.145833333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'Totales:'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 8
            end
            object QRExpr4: TQRExpr
              Left = 451
              Top = 0
              Width = 99
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1193.270833333333000000
                0.000000000000000000
                261.937500000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = True
              WordWrap = True
              Expression = 'SUM(ZQ_EstadVarias.SUMACOSTO)'
              Mask = '$ ##,###,##0.00'
              ExportAs = exptText
              FontSize = 8
            end
            object QRExpr5: TQRExpr
              Left = 347
              Top = 0
              Width = 99
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                918.104166666666700000
                0.000000000000000000
                261.937500000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = True
              WordWrap = True
              Expression = 'SUM(ZQ_EstadVarias.SUMAVENTA)'
              Mask = '$ ##,###,##0.00'
              ExportAs = exptText
              FontSize = 8
            end
          end
        end
        object ReporteEstadVarias: TQuickRep
          Tag = 99
          Left = 190
          Top = 17
          Width = 794
          Height = 1123
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = ZQ_EstadVarias
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
          Zoom = 100
          PrevFormStyle = fsNormal
          PreviewInitialState = wsNormal
          PrevInitialZoom = qrZoomToFit
          PreviewDefaultSaveType = stQRP
          object QRBand4: TQRBand
            Tag = 99
            Left = 38
            Top = 38
            Width = 718
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
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbPageHeader
            object QRDBImage1: TQRDBImage
              Left = 42
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
                111.125000000000000000
                5.291666666666667000
                169.333333333333300000)
              DataField = 'LOGO'
              DataSet = ZQ_Sucursal
              Stretch = True
            end
            object qrTipoEstad: TQRLabel
              Left = 265
              Top = 47
              Width = 187
              Height = 19
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                50.270833333333330000
                701.145833333333300000
                124.354166666666700000
                494.770833333333300000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'Estad'#237'stica de Ventas'
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
            object ReporteEstadVarias_Subtitulo: TQRLabel
              Left = 259
              Top = 26
              Width = 200
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                685.270833333333300000
                68.791666666666670000
                529.166666666666700000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'ReporteEstadVarias_Subtitulo'
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
            object ReporteEstadVarias_Titulo: TQRLabel
              Left = 240
              Top = 2
              Width = 237
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                635.000000000000000000
                5.291666666666667000
                627.062500000000000000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'ReporteEstadVarias_Titulo'
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
            Left = 38
            Top = 159
            Width = 718
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
              42.333333333333330000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBImporte: TQRDBText
              Left = 592
              Top = 0
              Width = 124
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1566.333333333333000000
                0.000000000000000000
                328.083333333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZQ_EstadVarias
              DataField = 'SUMAVENTA'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText5: TQRDBText
              Left = 8
              Top = 0
              Width = 481
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                21.166666666666670000
                0.000000000000000000
                1272.645833333333000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZQ_EstadVarias
              DataField = 'DESCRIPCION'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText6: TQRDBText
              Left = 540
              Top = 0
              Width = 40
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1428.750000000000000000
                0.000000000000000000
                105.833333333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZQ_EstadVarias
              DataField = 'CANTIDAD'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
          end
          object QRBand7: TQRBand
            Tag = 99
            Left = 38
            Top = 110
            Width = 718
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
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object critbusqueda: TQRLabel
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
          object QRBand8: TQRBand
            Tag = 99
            Left = 38
            Top = 201
            Width = 718
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
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbPageFooter
            object ReporteEstadVarias_PieDePagina: TQRLabel
              Left = 4
              Top = 3
              Width = 153
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
                404.812500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'ReporteEstadVarias_PieDePagina'
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
              Left = 623
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
                1648.354166666667000000
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
              Left = 665
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
                1759.479166666667000000
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
            Left = 38
            Top = 141
            Width = 718
            Height = 18
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
              47.625000000000000000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbColumnHeader
            object QRLabel9: TQRLabel
              Left = 596
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
                1576.916666666667000000
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
            object QRLabel10: TQRLabel
              Left = 540
              Top = 2
              Width = 58
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1428.750000000000000000
                5.291666666666667000
                153.458333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
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
              Left = 6
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
                15.875000000000000000
                5.291666666666667000
                211.666666666666700000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Descripci'#243'n'
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
            Left = 38
            Top = 175
            Width = 718
            Height = 26
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
              68.791666666666670000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRExprImporte: TQRExpr
              Left = 584
              Top = 0
              Width = 129
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1545.166666666667000000
                0.000000000000000000
                341.312500000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = True
              WordWrap = True
              Expression = 'SUM(ZQ_EstadVarias.SUMAVENTA)'
              Mask = '$ ##,###,##0.00'
              ExportAs = exptText
              FontSize = 8
            end
            object QRExpr2: TQRExpr
              Left = 536
              Top = 0
              Width = 49
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1418.166666666667000000
                0.000000000000000000
                129.645833333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              Color = clWhite
              ParentFont = False
              ResetAfterPrint = False
              Transparent = True
              WordWrap = True
              Expression = 'SUM(ZQ_EstadVarias.CANTIDAD)'
              ExportAs = exptText
              FontSize = 8
            end
            object QRLabel4: TQRLabel
              Left = 458
              Top = 0
              Width = 73
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1211.791666666667000000
                0.000000000000000000
                193.145833333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'Totales:'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 8
            end
          end
        end
        object gridVarias: TDBGrid
          Left = 0
          Top = 33
          Width = 1170
          Height = 501
          Align = alClient
          Color = 14606012
          DataSource = DS_EstadVarias
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
              FieldName = 'DESCRIPCION'
              Title.Caption = 'Descripci'#243'n'
              Width = 511
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUMAVENTA'
              Title.Caption = 'Importe Venta'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUMACOSTO'
              Title.Caption = 'Importe Costo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Caption = 'Cantidad'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GANANCIA'
              Title.Caption = 'Ganancia'
              Visible = True
            end>
        end
        object PanelFiltroV: TPanel
          Left = 0
          Top = 0
          Width = 1170
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
          object BtnFiltro_TodosV: TSpeedButton
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
          object BtnFiltro_FiscalV: TSpeedButton
            Left = 151
            Top = 7
            Width = 94
            Height = 18
            GroupIndex = 1
            Caption = 'Fiscal'
            Layout = blGlyphBottom
            OnClick = AplicarFiltro
          end
          object BtnFiltro_NoFiscalV: TSpeedButton
            Left = 247
            Top = 7
            Width = 94
            Height = 18
            GroupIndex = 1
            Caption = 'No Fiscal'
            Layout = blGlyphBottom
            OnClick = AplicarFiltro
          end
          object Label4: TLabel
            Left = 19
            Top = 9
            Width = 25
            Height = 13
            Caption = 'Filtro:'
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
      
        'select cfp.*, tfp.descripcion as tFormaPago_, tfp."IF", cta.nomb' +
        're_cuenta, cta.codigo, cta.nro_cta_bancaria'
      'from comprobante_forma_pago cfp'
      
        'left join tipo_formapago tfp on (tfp.id_tipo_formapago = cfp.id_' +
        'tipo_formapag)'
      'left join cuenta cta on (cfp.cuenta_ingreso = cta.id_cuenta)'
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
      DisplayFormat = '$ ##,###,##0.00'
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
      DisplayFormat = '$ ##,###,##0.00'
    end
    object ZQ_Comprobante_FormaPagoTFORMAPAGO_: TStringField
      FieldName = 'TFORMAPAGO_'
      Size = 50
    end
    object ZQ_Comprobante_FormaPagoIF: TStringField
      FieldName = 'IF'
      Size = 1
    end
    object ZQ_Comprobante_FormaPagoNOMBRE_CUENTA: TStringField
      FieldName = 'NOMBRE_CUENTA'
      Size = 50
    end
    object ZQ_Comprobante_FormaPagoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object ZQ_Comprobante_FormaPagoNRO_CTA_BANCARIA: TStringField
      FieldName = 'NRO_CTA_BANCARIA'
      Size = 10
    end
  end
  object ZQ_ComprobanteDetalle: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select cd.*, pc.nombre||'#39' - COD: '#39'||coalesce(p.cod_corto,'#39#39') DET' +
        'ALLE_PROD,'
      '       p.codigo_barra, c.nombre as color, m.medida,'
      
        '       (cd.importe_venta - cd.importe_if) as importe_noFiscal, m' +
        'a.nombre_marca'
      'from comprobante_detalle cd'
      'left join producto p on (cd.id_producto=p.id_producto)'
      
        'left join producto_cabecera pc on (pc.id_prod_cabecera=p.id_prod' +
        '_cabecera)'
      'left join color c on (pc.color = c.id_color)'
      'left join medida m on (p.id_medida = m.id_medida)'
      'left join marca ma on (pc.id_marca = ma.id_marca)'
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
      DisplayFormat = '$ ##,###,##0.00'
    end
    object ZQ_ComprobanteDetalleIMPORTE_UNITARIO: TFloatField
      FieldName = 'IMPORTE_UNITARIO'
      DisplayFormat = '$ ##,###,##0.00'
    end
    object ZQ_ComprobanteDetalleIMPORTE_FINAL: TFloatField
      FieldName = 'IMPORTE_FINAL'
      DisplayFormat = '$ ##,###,##0.00'
    end
    object ZQ_ComprobanteDetalleIMPORTE_IVA: TFloatField
      FieldName = 'IMPORTE_IVA'
      DisplayFormat = '$ ##,###,##0.00'
    end
    object ZQ_ComprobanteDetalleIMPORTE_IF: TFloatField
      FieldName = 'IMPORTE_IF'
      DisplayFormat = '$ ##,###,##0.00'
    end
    object ZQ_ComprobanteDetalleIMPORTE_VENTA: TFloatField
      FieldName = 'IMPORTE_VENTA'
      DisplayFormat = '$ ##,###,##0.00'
    end
    object ZQ_ComprobanteDetalleIMPORTE_NOFISCAL: TFloatField
      FieldName = 'IMPORTE_NOFISCAL'
      DisplayFormat = '$ ##,###,##0.00'
    end
    object ZQ_ComprobanteDetallePORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
    end
    object ZQ_ComprobanteDetallePORC_DESCUENTO: TFloatField
      FieldName = 'PORC_DESCUENTO'
    end
    object ZQ_ComprobanteDetalleIMPUESTO_INTERNO: TFloatField
      FieldName = 'IMPUESTO_INTERNO'
      DisplayFormat = '$ ##,###,##0.00'
    end
    object ZQ_ComprobanteDetalleIMPORTE_IF_SINIVA: TFloatField
      FieldName = 'IMPORTE_IF_SINIVA'
    end
    object ZQ_ComprobanteDetalleIMPORTE_IVA_IF: TFloatField
      FieldName = 'IMPORTE_IVA_IF'
    end
    object ZQ_ComprobanteDetalleINSERT_MANUAL: TStringField
      FieldName = 'INSERT_MANUAL'
      Size = 1
    end
    object ZQ_ComprobanteDetalleNOMBRE_MARCA: TStringField
      FieldName = 'NOMBRE_MARCA'
      Size = 50
    end
  end
  object ZQ_Comprobante: TZQuery
    Connection = DM.Conexion
    SortedFields = 'FECHA'
    SortType = stDescending
    AfterScroll = ZQ_ComprobanteAfterScroll
    SQL.Strings = (
      
        'select c.codigo, c.id_comprobante, cast(c.fecha_cobrada as date)' +
        ' as Fecha, c.porc_iva,'
      
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
      
        'group by c.codigo, c.id_comprobante, c.fecha_cobrada, c.importe_' +
        'total,'
      '         c.porc_iva, s.nombre, p1.nombre, iva.abreviatura,'
      '         iva.nombre_tipo_iva, tc.nombre_tipo_cpb, p2.nombre')
    Params = <>
    IndexFieldNames = 'FECHA Desc'
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
      DisplayFormat = '$ ##,###,##0.00'
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
        TipoComboSQLCampoVer = 'nombre'
        TipoComboSQLCampoReal = 'id_sucursal'
        TipoComboEditable = False
        TipoComboAncho = 350
        ItemIndex = -1
        VaciarValorDespues = False
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
        VaciarValorDespues = False
      end
      item
        Titulo = 'C'#243'digo'
        Campo = 'codigo'
        Tabla = 'comprobante'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Forma de Pago'
        Campo = 'descripcion'
        Tabla = 'tipo_formapago'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
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
        VaciarValorDespues = False
      end
      item
        Titulo = 'Cliente'
        Campo = 'nombre'
        Tabla = 'p2'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Vendedor'
        Campo = 'nombre'
        Tabla = 'p1'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
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
        VaciarValorDespues = False
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = ZQ_Comprobante
    SQL.Strings = (
      
        'select c.codigo, c.id_comprobante, cast(c.fecha_cobrada as date)' +
        ' as Fecha, c.porc_iva,'
      
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
      
        'group by c.codigo, c.id_comprobante, c.fecha_cobrada, c.importe_' +
        'total,'
      '         c.porc_iva, s.nombre, p1.nombre, iva.abreviatura,'
      '         iva.nombre_tipo_iva, tc.nombre_tipo_cpb, p2.nombre')
    SQL_Select.Strings = (
      
        'select c.codigo, c.id_comprobante, cast(c.fecha_cobrada as date)' +
        ' as Fecha, c.porc_iva,'
      
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
      
        'group by c.codigo, c.id_comprobante, c.fecha_cobrada, c.importe_' +
        'total,'
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
      end
      item
        TituloColumna = 'Marca'
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
        TituloColumna = 'Cuenta'
        Visible = True
      end
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
            Item = btVer
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
      Caption = 'Excel'
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
    object btVer: TdxBarLargeButton
      Caption = 'Ver/Ocultar Detalle'
      Category = 0
      Hint = 'Ver/Ocultar Detalle'
      Visible = ivAlways
      ImageIndex = 12
      OnClick = btVerClick
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
    Left = 628
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
      DisplayFormat = '$ ##,###,##0.00'
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
    Left = 628
    Top = 152
  end
  object EKBuscarHorario: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Sucursal'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboSQLCampoVer = 'nombre'
        TipoComboSQLCampoReal = 'id_sucursal'
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Fecha Desde'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
        VaciarValorDespues = False
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
        VaciarValorDespues = False
      end
      item
        Titulo = 'Intervalo (Min)'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
        VaciarValorDespues = False
      end>
    CriteriosLocate = <>
    UsarWhereOriginal = EK_Con_Where
    PantallaReducida = True
    Left = 622
    Top = 217
  end
  object ZQ_ProductosVendidos: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select'
      '       cd.id_producto as agrupam,'
      '       cast(c.fecha_cobrada as date) as fechaC,'
      
        '       ma.nombre_marca||'#39' '#39'||pc.nombre||'#39' ('#39'||coalesce(m.medida,' +
        ' '#39'S/M'#39')||coalesce('#39' - '#39'||co.nombre, '#39'S/C'#39')||'#39')'#39' as detalle_prod,'
      '       sum(cd.importe_venta) as sumaVenta,'
      '       sum(cd.importe_if) as sumaIF,'
      '       count(cd.id_producto) as cantidad'
      'from comprobante_detalle cd'
      'join comprobante c on (cd.id_comprobante = c.id_comprobante)'
      'join sucursal s on (c.id_sucursal = s.id_sucursal)'
      'join persona vend on (c.id_vendedor = vend.id_persona)'
      'join persona cli on (c.id_cliente = cli.id_persona)'
      'left join producto p on (cd.id_producto = p.id_producto)'
      'left join medida m on (p.id_medida = m.id_medida)'
      
        'left join producto_cabecera pc on (pc.id_prod_cabecera = p.id_pr' +
        'od_cabecera)'
      'left join marca ma on (pc.id_marca = ma.id_marca)'
      'left join color co on (pc.color = co.id_color)'
      'where (c.id_tipo_cpb = 11)'
      '  and (c.fecha_cobrada is not null)'
      '  and (cast(c.fecha_cobrada as date) between :f1 and :f2)'
      '  and ((c.id_sucursal = :id_sucursal) or (:id_sucursal = -1))'
      'group by 1, 2, 3'
      'order by 2 desc, 6 desc, 4 desc, 5 desc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'f1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'f2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_sucursal'
        ParamType = ptInput
      end>
    Left = 738
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'f1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'f2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_sucursal'
        ParamType = ptInput
      end>
    object ZQ_ProductosVendidosSUMAVENTA: TFloatField
      FieldName = 'SUMAVENTA'
      ReadOnly = True
      DisplayFormat = '$ ##,###,##0.00'
    end
    object ZQ_ProductosVendidosSUMAIF: TFloatField
      FieldName = 'SUMAIF'
      ReadOnly = True
      DisplayFormat = '$ ##,###,##0.00'
    end
    object ZQ_ProductosVendidosFECHAC: TDateField
      FieldName = 'FECHAC'
      ReadOnly = True
    end
    object ZQ_ProductosVendidosAGRUPAM: TIntegerField
      FieldName = 'AGRUPAM'
      ReadOnly = True
    end
    object ZQ_ProductosVendidosCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
      ReadOnly = True
    end
    object ZQ_ProductosVendidosDETALLE_PROD: TStringField
      FieldName = 'DETALLE_PROD'
      ReadOnly = True
      Size = 237
    end
  end
  object DS_ProductosVendidos: TDataSource
    DataSet = ZQ_ProductosVendidos
    Left = 740
    Top = 144
  end
  object EKDbSumaProdsVendidos: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'SUMAVENTA'
      end>
    DataSet = ZQ_ProductosVendidos
    SumListChanged = EKDbSumaProdsVendidosSumListChanged
    Left = 738
    Top = 206
  end
  object EKOrdenarGrillaRanking: TEKOrdenarGrilla
    Grilla = grillaRanking
    Filtros = <
      item
        TituloColumna = 'Fecha'
        Visible = True
      end
      item
        TituloColumna = 'Detalle'
        Visible = True
      end
      item
        TituloColumna = 'Cant'
        Visible = True
      end
      item
        TituloColumna = 'Importe'
        Visible = True
      end>
    NombreGuardar = 'EKOrdenarGrillaRanking'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = False
    PermitirFiltrar = True
    Left = 740
    Top = 328
  end
  object EKBusquedaRanking: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Sucursal'
        Campo = 'id_sucursal'
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
        Titulo = 'Fecha Desde'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = 0
        VaciarValorDespues = False
      end
      item
        Titulo = 'Fechas Hasta'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = 1
        VaciarValorDespues = False
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select sum(cd.importe_venta) as sumaVenta,'
      
        'sum(cd.importe_if) as sumaIF,cast(c.fecha_cobrada as date) as fe' +
        'chaC,'
      
        '(cd.id_producto) as agrupam,count(cd.id_producto) as cantidad,pc' +
        '.cod_corto||'#39' - '#39'||pc.nombre||coalesce('#39' -  M: '#39'||m.medida,'#39#39')||' +
        'coalesce('#39'  -  C'#243'd:'#39'||p.cod_corto,'#39#39')||coalesce('#39'  -  CB:'#39'||p.co' +
        'digo_barra,'#39#39') DETALLE_PROD'
      'from comprobante_detalle cd'
      'join comprobante c on (cd.id_comprobante=c.id_comprobante)'
      'join sucursal s on (c.id_sucursal = s.id_sucursal)'
      'join persona vend on (c.id_vendedor=vend.id_persona)'
      'join persona cli on (c.id_cliente=cli.id_persona)'
      'left join producto p on (cd.id_producto=p.id_producto)'
      'left join medida m on (p.id_medida=m.id_medida)'
      
        'left join producto_cabecera pc on (pc.id_prod_cabecera=p.id_prod' +
        '_cabecera)'
      ''
      ''
      'where (c.id_tipo_cpb = 11)and(c.fecha_cobrada is not null)'
      'group by 4,3,6'
      'order by 3 desc,5 desc,1 desc,2 desc')
    SQL_Select.Strings = (
      'select sum(cd.importe_venta) as sumaVenta,'
      
        'sum(cd.importe_if) as sumaIF,cast(c.fecha_cobrada as date) as fe' +
        'chaC,'
      
        '(cd.id_producto) as agrupam,count(cd.id_producto) as cantidad,pc' +
        '.cod_corto||'#39' - '#39'||pc.nombre||coalesce('#39' -  M: '#39'||m.medida,'#39#39')||' +
        'coalesce('#39'  -  C'#243'd:'#39'||p.cod_corto,'#39#39')||coalesce('#39'  -  CB:'#39'||p.co' +
        'digo_barra,'#39#39') DETALLE_PROD')
    SQL_From.Strings = (
      'from comprobante_detalle cd'
      'join comprobante c on (cd.id_comprobante=c.id_comprobante)'
      'join sucursal s on (c.id_sucursal = s.id_sucursal)'
      'join persona vend on (c.id_vendedor=vend.id_persona)'
      'join persona cli on (c.id_cliente=cli.id_persona)'
      'left join producto p on (cd.id_producto=p.id_producto)'
      'left join medida m on (p.id_medida=m.id_medida)'
      
        'left join producto_cabecera pc on (pc.id_prod_cabecera=p.id_prod' +
        '_cabecera)'
      ''
      '')
    SQL_Where.Strings = (
      'where (c.id_tipo_cpb = 11)and(c.fecha_cobrada is not null)'
      'group by 4,3,6'
      'order by 3 desc,5 desc,1 desc,2 desc')
    UsarWhereOriginal = EK_Con_Where
    PantallaReducida = True
    Left = 878
    Top = 329
  end
  object ZQ_Totales: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select'
      '       cd.id_producto as agrupam,'
      
        '       ma.nombre_marca||'#39' '#39'||pc.nombre||'#39' ('#39'||coalesce(m.medida,' +
        ' '#39'S/M'#39')||coalesce('#39' - '#39'||co.nombre, '#39'S/C'#39')||'#39')'#39' as detalle_prod,'
      '       sum(cd.importe_venta) as sumaVenta,'
      '       sum(cd.importe_if) as sumaIF,'
      '       count(cd.id_producto) as cantidad'
      'from comprobante_detalle cd'
      'join comprobante c on (cd.id_comprobante=c.id_comprobante)'
      'join sucursal s on (c.id_sucursal = s.id_sucursal)'
      'join persona vend on (c.id_vendedor=vend.id_persona)'
      'join persona cli on (c.id_cliente=cli.id_persona)'
      'left join producto p on (cd.id_producto=p.id_producto)'
      'left join medida m on (p.id_medida=m.id_medida)'
      
        'left join producto_cabecera pc on (pc.id_prod_cabecera=p.id_prod' +
        '_cabecera)'
      'left join marca ma on (pc.id_marca = ma.id_marca)'
      'left join color co on (pc.color = co.id_color)'
      'where (c.id_tipo_cpb = 11)'
      '  and (c.fecha_cobrada is not null)'
      '  and (c.fecha_cobrada between :f1 and :f2)'
      '  and ((c.id_sucursal = :id_sucursal) or (:id_sucursal = -1))'
      'group by 1, 2'
      'order by 5 desc, 3, 2')
    Params = <
      item
        DataType = ftUnknown
        Name = 'f1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'f2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_sucursal'
        ParamType = ptUnknown
      end>
    Left = 882
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'f1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'f2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_sucursal'
        ParamType = ptUnknown
      end>
    object ZQ_TotalesSUMAVENTA: TFloatField
      FieldName = 'SUMAVENTA'
      ReadOnly = True
      DisplayFormat = '$ ##,###,##0.00'
    end
    object ZQ_TotalesSUMAIF: TFloatField
      FieldName = 'SUMAIF'
      ReadOnly = True
      DisplayFormat = '$ ##,###,##0.00'
    end
    object ZQ_TotalesAGRUPAM: TIntegerField
      FieldName = 'AGRUPAM'
      ReadOnly = True
    end
    object ZQ_TotalesCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
      ReadOnly = True
    end
    object ZQ_TotalesDETALLE_PROD: TStringField
      FieldName = 'DETALLE_PROD'
      ReadOnly = True
      Size = 186
    end
  end
  object DS_Top20: TDataSource
    DataSet = ZQ_Totales
    Left = 876
    Top = 152
  end
  object EKOrdenarGrillaTop20: TEKOrdenarGrilla
    Grilla = grillaTop20
    Filtros = <
      item
        TituloColumna = 'Cant'
        Visible = True
      end
      item
        TituloColumna = 'Importe'
        Visible = True
      end
      item
        TituloColumna = 'Detalle'
        Visible = True
      end>
    NombreGuardar = 'EKOrdenarGrillaTop20'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = False
    PermitirFiltrar = True
    Left = 884
    Top = 264
  end
  object EKDbSumaTotales: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'SUMAVENTA'
      end>
    DataSet = ZQ_Totales
    SumListChanged = EKDbSumaTotalesSumListChanged
    Left = 882
    Top = 214
  end
  object EKBusquedaVarias: TEKBusquedaAvanzada
    CriteriosBusqueda = <
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
        VaciarValorDespues = False
      end
      item
        Titulo = 'Tipo de Estad'#237'stica'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboSQL = ZQ_Consultas
        TipoComboSQLCampoVer = 'descripcion'
        TipoComboSQLCampoReal = 'id_consulta'
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = 0
        VaciarValorDespues = False
      end
      item
        Titulo = 'Fecha Desde'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = 0
        VaciarValorDespues = False
      end
      item
        Titulo = 'Fechas Hasta'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = 1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Filtro B'#250'squeda'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboSQLCampoVer = 'descripcion'
        TipoComboSQLCampoReal = 'descripcion'
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
        VaciarValorDespues = False
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select sum(cd.importe_venta) as sumaVenta,'
      
        'sum(cd.importe_if) as sumaIF,cast(c.fecha_cobrada as date) as fe' +
        'chaC,'
      
        '(cd.id_producto) as agrupam,count(cd.id_producto) as cantidad,pc' +
        '.cod_corto||'#39' - '#39'||pc.nombre||coalesce('#39' -  M: '#39'||m.medida,'#39#39')||' +
        'coalesce('#39'  -  C'#243'd:'#39'||p.cod_corto,'#39#39')||coalesce('#39'  -  CB:'#39'||p.co' +
        'digo_barra,'#39#39') DETALLE_PROD'
      'from comprobante_detalle cd'
      'join comprobante c on (cd.id_comprobante=c.id_comprobante)'
      'join sucursal s on (c.id_sucursal = s.id_sucursal)'
      'join persona vend on (c.id_vendedor=vend.id_persona)'
      'join persona cli on (c.id_cliente=cli.id_persona)'
      'left join producto p on (cd.id_producto=p.id_producto)'
      'left join medida m on (p.id_medida=m.id_medida)'
      
        'left join producto_cabecera pc on (pc.id_prod_cabecera=p.id_prod' +
        '_cabecera)'
      ''
      ''
      'where (c.id_tipo_cpb = 11)and(c.fecha_cobrada is not null)'
      'group by 4,3,6'
      'order by 3 desc,5 desc,1 desc,2 desc')
    SQL_Select.Strings = (
      'select sum(cd.importe_venta) as sumaVenta,'
      
        'sum(cd.importe_if) as sumaIF,cast(c.fecha_cobrada as date) as fe' +
        'chaC,'
      
        '(cd.id_producto) as agrupam,count(cd.id_producto) as cantidad,pc' +
        '.cod_corto||'#39' - '#39'||pc.nombre||coalesce('#39' -  M: '#39'||m.medida,'#39#39')||' +
        'coalesce('#39'  -  C'#243'd:'#39'||p.cod_corto,'#39#39')||coalesce('#39'  -  CB:'#39'||p.co' +
        'digo_barra,'#39#39') DETALLE_PROD')
    SQL_From.Strings = (
      'from comprobante_detalle cd'
      'join comprobante c on (cd.id_comprobante=c.id_comprobante)'
      'join sucursal s on (c.id_sucursal = s.id_sucursal)'
      'join persona vend on (c.id_vendedor=vend.id_persona)'
      'join persona cli on (c.id_cliente=cli.id_persona)'
      'left join producto p on (cd.id_producto=p.id_producto)'
      'left join medida m on (p.id_medida=m.id_medida)'
      
        'left join producto_cabecera pc on (pc.id_prod_cabecera=p.id_prod' +
        '_cabecera)'
      ''
      '')
    SQL_Where.Strings = (
      'where (c.id_tipo_cpb = 11)and(c.fecha_cobrada is not null)'
      'group by 4,3,6'
      'order by 3 desc,5 desc,1 desc,2 desc')
    UsarWhereOriginal = EK_Con_Where
    PantallaReducida = True
    Left = 446
    Top = 393
  end
  object ZQ_Consultas: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from consultas')
    Params = <>
    Left = 436
    Top = 334
    object ZQ_ConsultasID_CONSULTA: TIntegerField
      FieldName = 'ID_CONSULTA'
      Required = True
    end
    object ZQ_ConsultasDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object ZQ_ConsultasSQL_TABLA_FILTRO: TStringField
      FieldName = 'SQL_TABLA_FILTRO'
      Size = 1000
    end
    object ZQ_ConsultasSQL: TStringField
      FieldName = 'SQL'
      Size = 2000
    end
  end
  object ZQ_EstadVarias: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_EstadVariasAfterScroll
    SQL.Strings = (
      'select'
      '       cast(ta.id_tipo_articulo as varchar(50)) as agrupam,'
      '       ta.descripcion,'
      '       sum(cd.importe_venta) as sumaVenta,'
      '       sum(cd.importe_if) as sumaIF,'
      '       sum(cd.importe_venta-cd.importe_if) as sumaNIF,'
      '       case'
      '        when (sum(cd.importe_costo) is null) then 0'
      
        '        when (sum(cd.importe_costo) is not null) then sum(cd.imp' +
        'orte_costo)'
      '       END as sumaCosto,'
      '       case'
      
        '        when (sum(cd.importe_costo) is null) then sum(cd.importe' +
        '_venta)'
      
        '        when (sum(cd.importe_costo) is not null) then sum(cd.imp' +
        'orte_venta-cd.importe_costo)'
      '       END'
      '       as ganancia,'
      '       count(cd.id_producto) as cantidad'
      'from comprobante_detalle cd'
      'join comprobante c on (cd.id_comprobante = c.id_comprobante)'
      'join sucursal s on (c.id_sucursal = s.id_sucursal)'
      'join persona vend on (c.id_vendedor = vend.id_persona)'
      'join persona cli on (c.id_cliente = cli.id_persona)'
      'left join producto p on (cd.id_producto = p.id_producto)'
      'left join medida m on (p.id_medida = m.id_medida)'
      
        'left join producto_cabecera pc on (pc.id_prod_cabecera = p.id_pr' +
        'od_cabecera)'
      'join articulo a on (pc.id_articulo=a.id_articulo)'
      
        'join tipo_articulo ta on (a.id_tipo_articulo=ta.id_tipo_articulo' +
        ')'
      'left join marca ma on (pc.id_marca = ma.id_marca)'
      'left join color co on (pc.color = co.id_color)'
      'where (c.id_tipo_cpb = 11)'
      '  and (c.fecha_cobrada is not null)'
      '  and (cast(c.fecha_cobrada as date) between :f1 and :f2)'
      '  and ((c.id_sucursal = :id_sucursal) or (:id_sucursal = -1))'
      'group by 1, 2'
      'order by 5 desc, 3 desc, 8 desc'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'f1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'f2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_sucursal'
        ParamType = ptUnknown
      end>
    Left = 540
    Top = 334
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'f1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'f2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_sucursal'
        ParamType = ptUnknown
      end>
    object ZQ_EstadVariasDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 200
    end
    object ZQ_EstadVariasSUMAVENTA: TFloatField
      FieldName = 'SUMAVENTA'
      ReadOnly = True
      DisplayFormat = '$ ##,###,##0.00'
    end
    object ZQ_EstadVariasSUMAIF: TFloatField
      FieldName = 'SUMAIF'
      ReadOnly = True
      DisplayFormat = '$ ##,###,##0.00'
    end
    object ZQ_EstadVariasCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
      ReadOnly = True
    end
    object ZQ_EstadVariasAGRUPAM: TStringField
      FieldName = 'AGRUPAM'
      ReadOnly = True
      Size = 50
    end
    object ZQ_EstadVariasSUMACOSTO: TFloatField
      FieldName = 'SUMACOSTO'
      ReadOnly = True
      DisplayFormat = '$ ##,###,##0.00'
    end
    object ZQ_EstadVariasGANANCIA: TFloatField
      FieldName = 'GANANCIA'
      ReadOnly = True
      DisplayFormat = '$ ##,###,##0.00'
    end
    object ZQ_EstadVariasSUMANIF: TFloatField
      FieldName = 'SUMANIF'
      ReadOnly = True
      DisplayFormat = '$ ##,###,##0.00'
    end
  end
  object DS_EstadVarias: TDataSource
    DataSet = ZQ_EstadVarias
    Left = 541
    Top = 391
  end
  object EKOrdenarGrilla1: TEKOrdenarGrilla
    Grilla = gridVarias
    Filtros = <
      item
        TituloColumna = 'Descripci'#243'n'
        Visible = True
      end
      item
        TituloColumna = 'Importe Venta'
        Visible = True
      end
      item
        TituloColumna = 'Importe Costo'
        Visible = True
      end
      item
        TituloColumna = 'Cantidad'
        Visible = True
      end
      item
        TituloColumna = 'Ganancia'
        Visible = True
      end>
    NombreGuardar = 'EKOrdenarGrillaVarias'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = False
    PermitirFiltrar = True
    Left = 740
    Top = 400
  end
  object EKDbSumaVarias: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'SUMAVENTA'
      end
      item
        Operacion = goSum
        NombreCampo = 'ganancia'
      end
      item
        Operacion = goSum
        NombreCampo = 'SUMAIF'
      end
      item
        Operacion = goSum
        NombreCampo = 'SUMANIF'
      end
      item
        Operacion = goSum
        NombreCampo = 'sumacosto'
      end>
    DataSet = ZQ_EstadVarias
    SumListChanged = EKDbSumaVariasSumListChanged
    Left = 866
    Top = 390
  end
  object EKVistaPreviaVarias: TEKVistaPreviaQR
    Reporte = ReporteEstadVarias
    ShowModal = False
    Left = 330
    Top = 385
  end
  object EKVistaPreviaVariasCostos: TEKVistaPreviaQR
    Reporte = ReporteEstadVariasCostos
    ShowModal = False
    Left = 330
    Top = 481
  end
end
