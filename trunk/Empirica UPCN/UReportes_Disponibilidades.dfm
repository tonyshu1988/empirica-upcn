object FReportes_Disponibilidades: TFReportes_Disponibilidades
  Left = 200
  Top = 148
  Width = 1082
  Height = 585
  Caption = 'Reportes Disponibilidades'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pFondo: TPanel
    Left = 0
    Top = 0
    Width = 1066
    Height = 495
    Align = alClient
    TabOrder = 4
    object pLibroBanco: TPanel
      Left = 1
      Top = 1
      Width = 1064
      Height = 493
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 3
      TabOrder = 0
      object DBGridLibroBanco: TDBGrid
        Left = 3
        Top = 34
        Width = 1058
        Height = 456
        Align = alClient
        Color = 16772842
        DataSource = DS_LIBRO_BANCO
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridLibroBancoDrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha Emisi'#243'n'
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FECHA_PD'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha PD'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NRO_PAGO_REC'
            Title.Alignment = taCenter
            Title.Caption = 'Nro Movimiento'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NRO_ORDEN_STRING'
            Title.Alignment = taCenter
            Title.Caption = 'Nro Orden Pago'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MEDIO'
            Title.Alignment = taCenter
            Title.Caption = 'Medio'
            Width = 160
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'NRO_MEDIO'
            Title.Alignment = taCenter
            Title.Caption = 'Nro Cheque/Transf'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROVEEDOR'
            Title.Alignment = taCenter
            Title.Caption = 'Denominaci'#243'n'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_PROVEEDOR'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 128
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'CTA_MOV_ANULADO'
            Title.Alignment = taCenter
            Title.Caption = 'Anulado'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMBRE_CONCEPTO'
            Title.Alignment = taCenter
            Title.Caption = 'Concepto'
            Width = 200
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'NRO_FACTURA'
            Title.Alignment = taCenter
            Title.Caption = 'Nro Factura'
            Width = 98
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'NRO_RECIBO'
            Title.Alignment = taCenter
            Title.Caption = 'Nro Recibo'
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEBE'
            Title.Alignment = taCenter
            Title.Caption = 'Debe'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HABER'
            Title.Alignment = taCenter
            Title.Caption = 'Haber'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDO'
            Title.Alignment = taCenter
            Title.Caption = 'Saldo'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CONCILIADO'
            Title.Alignment = taCenter
            Title.Caption = 'Conciliado'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FECHA_CONCILIADO'
            Title.Alignment = taCenter
            Title.Caption = 'F. Conciliado'
            Width = 69
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 3
        Top = 3
        Width = 1058
        Height = 31
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          1058
          31)
        object Shape1: TShape
          Left = 1
          Top = 5
          Width = 964
          Height = 22
          Anchors = [akLeft, akTop, akRight]
          Brush.Color = clGray
          Pen.Color = clGray
          Shape = stRoundRect
        end
        object Shape2: TShape
          Left = 3
          Top = 3
          Width = 964
          Height = 22
          Anchors = [akLeft, akTop, akRight]
          Brush.Color = clTeal
          Shape = stRoundRect
        end
        object Label2: TLabel
          Left = 0
          Top = 7
          Width = 967
          Height = 18
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = 'LIBRO BANCO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          Left = 1
          Top = 6
          Width = 967
          Height = 18
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = 'LIBRO BANCO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoBk
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Panel3: TPanel
          Left = 972
          Top = 0
          Width = 86
          Height = 31
          Align = alRight
          TabOrder = 0
          object StaticTextConciliado: TStaticText
            Left = 7
            Top = 7
            Width = 71
            Height = 17
            Align = alCustom
            Alignment = taCenter
            Anchors = [akTop, akRight]
            BorderStyle = sbsSunken
            Caption = 'Conciliado'
            Color = 10354687
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      object RepLibroB: TQuickRep
        Tag = 99
        Left = -156
        Top = 220
        Width = 1123
        Height = 794
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = LIBRO_BANCO
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
        object QRBand1: TQRBand
          Tag = 99
          Left = 38
          Top = 38
          Width = 1047
          Height = 103
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
            272.520833333333300000
            2770.187500000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel5: TQRLabel
            Left = 7
            Top = 87
            Width = 61
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              18.520833333333330000
              230.187500000000000000
              161.395833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'F. Desde:'
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
          object QRDBImage1: TQRDBImage
            Left = 49
            Top = 14
            Width = 64
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              169.333333333333300000
              129.645833333333300000
              37.041666666666670000
              169.333333333333300000)
            DataField = 'GRAFICO'
          end
          object RepLibroB_TITULO_LB: TQRLabel
            Left = 460
            Top = 60
            Width = 126
            Height = 19
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              1217.083333333333000000
              158.750000000000000000
              333.375000000000000000)
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'LIBRO BANCO'
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
          object RepLibroB_Reporte_Titulo_2: TQRLabel
            Left = 426
            Top = 36
            Width = 195
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              1127.125000000000000000
              95.250000000000000000
              515.937500000000000000)
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'RepLibroB_Reporte_Titulo_2'
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
          object RepLibroB_Reporte_Titulo_1: TQRLabel
            Left = 395
            Top = 12
            Width = 257
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              1045.104166666667000000
              31.750000000000000000
              679.979166666666700000)
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'RepLibroB_Reporte_Titulo_1'
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
          object QRLabel8: TQRLabel
            Left = 179
            Top = 87
            Width = 58
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              473.604166666666700000
              230.187500000000000000
              153.458333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'F. Hasta:'
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
            Left = 348
            Top = 87
            Width = 45
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              920.750000000000000000
              230.187500000000000000
              119.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Orden:'
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
            Left = 515
            Top = 87
            Width = 51
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1362.604166666667000000
              230.187500000000000000
              134.937500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Cuenta:'
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
          object lblLibBco_FDesde: TQRLabel
            Left = 72
            Top = 87
            Width = 97
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              190.500000000000000000
              230.187500000000000000
              256.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'lblLibBco_FDesde'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object lblLibBco_FHasta: TQRLabel
            Left = 241
            Top = 87
            Width = 96
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              637.645833333333300000
              230.187500000000000000
              254.000000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'lblLibBco_FHasta'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object lblLibBco_Oden: TQRLabel
            Left = 397
            Top = 87
            Width = 86
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1050.395833333333000000
              230.187500000000000000
              227.541666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'lblLibBco_Oden'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object lblLibBco_Cuenta: TQRLabel
            Left = 570
            Top = 87
            Width = 96
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1508.125000000000000000
              230.187500000000000000
              254.000000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'lblLibBco_Cuenta'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
        end
        object QRBand2: TQRBand
          Tag = 99
          Left = 38
          Top = 157
          Width = 1047
          Height = 14
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
            37.041666666666670000
            2770.187500000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText1: TQRDBText
            Left = 2
            Top = 0
            Width = 68
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
              179.916666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = LIBRO_BANCO
            DataField = 'FECHA'
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText2: TQRDBText
            Left = 184
            Top = 0
            Width = 76
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              486.833333333333300000
              0.000000000000000000
              201.083333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = LIBRO_BANCO
            DataField = 'NRO_ORDEN_STRING'
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText3: TQRDBText
            Left = 934
            Top = 0
            Width = 111
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2471.208333333333000000
              0.000000000000000000
              293.687500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = LIBRO_BANCO
            DataField = 'SALDO'
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText4: TQRDBText
            Left = 715
            Top = 0
            Width = 102
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1891.770833333333000000
              0.000000000000000000
              269.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = LIBRO_BANCO
            DataField = 'DEBE'
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText6: TQRDBText
            Left = 383
            Top = 0
            Width = 112
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1013.354166666667000000
              0.000000000000000000
              296.333333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = LIBRO_BANCO
            DataField = 'NRO_MEDIO'
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText7: TQRDBText
            Left = 73
            Top = 0
            Width = 68
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              193.145833333333300000
              0.000000000000000000
              179.916666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = LIBRO_BANCO
            DataField = 'FECHA_PD'
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText9: TQRDBText
            Left = 264
            Top = 0
            Width = 121
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              698.500000000000000000
              0.000000000000000000
              320.145833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = LIBRO_BANCO
            DataField = 'MEDIO'
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText10: TQRDBText
            Left = 821
            Top = 0
            Width = 108
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2172.229166666667000000
              0.000000000000000000
              285.750000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = LIBRO_BANCO
            DataField = 'HABER'
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBTxtConciliado: TQRDBText
            Left = 143
            Top = 0
            Width = 36
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              378.354166666666700000
              0.000000000000000000
              95.250000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = LIBRO_BANCO
            DataField = 'CONCILIADO'
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRShape9: TQRShape
            Left = 71
            Top = 0
            Width = 1
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              187.854166666666700000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
            VertAdjust = 0
          end
          object QRShape10: TQRShape
            Left = 142
            Top = 0
            Width = 1
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              375.708333333333300000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
            VertAdjust = 0
          end
          object QRShape12: TQRShape
            Left = 384
            Top = 0
            Width = 1
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1016.000000000000000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
            VertAdjust = 0
          end
          object QRShape13: TQRShape
            Left = 262
            Top = 0
            Width = 1
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              693.208333333333200000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
            VertAdjust = 0
          end
          object QRShape14: TQRShape
            Left = 180
            Top = 0
            Width = 1
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              476.250000000000000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
            VertAdjust = 0
          end
          object QRShape15: TQRShape
            Left = 495
            Top = 0
            Width = 1
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1309.687500000000000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
            VertAdjust = 0
          end
          object QRShape16: TQRShape
            Left = 714
            Top = 0
            Width = 1
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1889.125000000000000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
            VertAdjust = 0
          end
          object QRShape17: TQRShape
            Left = 819
            Top = 0
            Width = 1
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2166.937500000000000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
            VertAdjust = 0
          end
          object QRShape18: TQRShape
            Left = 931
            Top = 0
            Width = 1
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2463.270833333333000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
            VertAdjust = 0
          end
          object QRLblProveedor: TQRDBText
            Left = 498
            Top = 0
            Width = 213
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1317.625000000000000000
              0.000000000000000000
              563.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = LIBRO_BANCO
            DataField = 'PROVEEDOR'
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
        end
        object QRChildBand1: TQRChildBand
          Tag = 99
          Left = 38
          Top = 141
          Width = 1047
          Height = 16
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
            42.333333333333330000
            2770.187500000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          ParentBand = QRBand1
          PrintOrder = cboAfterParent
          object QRLabel17: TQRLabel
            Left = 2
            Top = 1
            Width = 68
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              5.291666666666667000
              2.645833333333333000
              179.916666666666700000)
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
          object QRLabel25: TQRLabel
            Left = 73
            Top = 1
            Width = 68
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              193.145833333333300000
              2.645833333333333000
              179.916666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Fecha PD'
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
            Left = 182
            Top = 1
            Width = 79
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              481.541666666666700000
              2.645833333333333000
              209.020833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Nro Orden'
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
          object QRLabel29: TQRLabel
            Left = 712
            Top = 1
            Width = 105
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1883.833333333333000000
              2.645833333333333000
              277.812500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Debe'
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
          object QRLabel30: TQRLabel
            Left = 936
            Top = 1
            Width = 109
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2476.500000000000000000
              2.645833333333333000
              288.395833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Saldo'
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
            Left = 383
            Top = 1
            Width = 114
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1013.354166666667000000
              2.645833333333333000
              301.625000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Nro Cheq/Tran'
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
          object QRLabel32: TQRLabel
            Left = 264
            Top = 1
            Width = 121
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              698.500000000000000000
              2.645833333333333000
              320.145833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Medio'
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
          object QRLabel33: TQRLabel
            Left = 816
            Top = 1
            Width = 113
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2159.000000000000000000
              2.645833333333333000
              298.979166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Haber'
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
          object QRLabel34: TQRLabel
            Left = 495
            Top = 1
            Width = 218
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1309.687500000000000000
              2.645833333333333000
              576.791666666666800000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Denominaci'#243'n'
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
          object QRLabel36: TQRLabel
            Left = 143
            Top = 1
            Width = 36
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              378.354166666666700000
              2.645833333333333000
              95.250000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Conc.'
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
        object QRBand3: TQRBand
          Tag = 99
          Left = 38
          Top = 193
          Width = 1047
          Height = 15
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
            39.687500000000000000
            2770.187500000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRLabel37: TQRLabel
            Left = 965
            Top = 1
            Width = 39
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2553.229166666667000000
              2.645833333333333000
              103.187500000000000000)
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
            ExportAs = exptText
            FontSize = 7
          end
          object QRSysData1: TQRSysData
            Left = 1006
            Top = 1
            Width = 41
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2661.708333333333000000
              2.645833333333333000
              108.479166666666700000)
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
            ExportAs = exptText
            FontSize = 7
          end
        end
        object QRBand4: TQRBand
          Tag = 99
          Left = 38
          Top = 171
          Width = 1047
          Height = 22
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
            58.208333333333330000
            2770.187500000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRExpr1: TQRExpr
            Left = 6
            Top = 4
            Width = 192
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              15.875000000000000000
              10.583333333333330000
              508.000000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
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
            Item = btnLibroBanco
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnFiltrar
            Visible = True
          end
          item
            BeginGroup = True
            Item = btImprimir
            Visible = True
          end
          item
            Item = btnExel
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
    Left = 784
    Top = 80
    DockControlHeights = (
      0
      0
      0
      52)
    object btnLibroBanco: TdxBarLargeButton
      Align = iaRight
      Caption = 'Buscar'
      Category = 0
      Hint = 'Buscar'
      Visible = ivAlways
      ImageIndex = 29
      OnClick = btnLibroBancoClick
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
    object btImprimir: TdxBarLargeButton
      Caption = 'Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      ImageIndex = 28
      OnClick = btImprimirClick
    end
    object btnFiltrar: TdxBarLargeButton
      Caption = 'Ver/Ocultar Anulados'
      Category = 0
      Hint = 'Ver/Ocultar los movimientos Anulados'
      Visible = ivAlways
      ImageIndex = 7
      OnClick = btnFiltrarClick
      AutoGrayScale = False
    end
    object btnExel: TdxBarLargeButton
      Caption = 'Exportar Excel'
      Category = 0
      Hint = 'Exportar Excel'
      Visible = ivAlways
      ImageIndex = 66
      OnClick = btnExelClick
      AutoGrayScale = False
    end
    object GrupoEditando: TdxBarGroup
      Items = (
        'btImprimir'
        'btnLibroBanco'
        'btnSalir')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
    end
  end
  object LIBRO_BANCO: TZQuery
    Connection = DM.Conexion
    AfterScroll = LIBRO_BANCOAfterScroll
    SQL.Strings = (
      'select ie.*'
      'from ie_ver_libro_banco(:cuenta,:hasta,:desde,:ordenamiento)ie')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cuenta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'hasta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ordenamiento'
        ParamType = ptUnknown
      end>
    Left = 61
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cuenta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'hasta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ordenamiento'
        ParamType = ptUnknown
      end>
    object LIBRO_BANCOID_MOVIMIENTO: TIntegerField
      FieldName = 'ID_MOVIMIENTO'
    end
    object LIBRO_BANCOORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object LIBRO_BANCOFECHA: TDateField
      FieldName = 'FECHA'
    end
    object LIBRO_BANCOMOVIMIENTO: TStringField
      FieldName = 'MOVIMIENTO'
      Size = 15
    end
    object LIBRO_BANCONRO_PAGO_REC: TIntegerField
      FieldName = 'NRO_PAGO_REC'
    end
    object LIBRO_BANCOMEDIO: TStringField
      FieldName = 'MEDIO'
      Size = 50
    end
    object LIBRO_BANCODEBE: TFloatField
      FieldName = 'DEBE'
      currency = True
    end
    object LIBRO_BANCOHABER: TFloatField
      FieldName = 'HABER'
      currency = True
    end
    object LIBRO_BANCOSALDO: TFloatField
      FieldName = 'SALDO'
      currency = True
    end
    object LIBRO_BANCOCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Size = 1
    end
    object LIBRO_BANCONOMBRE_CONCEPTO: TStringField
      FieldName = 'NOMBRE_CONCEPTO'
      Size = 100
    end
    object LIBRO_BANCOFECHA_PD: TDateField
      FieldName = 'FECHA_PD'
    end
    object LIBRO_BANCOOTROS: TStringField
      FieldName = 'OTROS'
      Size = 40
    end
    object LIBRO_BANCOFECHA_CONCILIADO: TDateField
      FieldName = 'FECHA_CONCILIADO'
    end
    object LIBRO_BANCOID_MEDIO: TIntegerField
      FieldName = 'ID_MEDIO'
    end
    object LIBRO_BANCOMOV_ANULADO: TStringField
      FieldName = 'MOV_ANULADO'
      Size = 1
    end
    object LIBRO_BANCOCTA_MOV_ANULADO: TStringField
      FieldName = 'CTA_MOV_ANULADO'
      Size = 1
    end
    object LIBRO_BANCONRO_RECIBO: TStringField
      FieldName = 'NRO_RECIBO'
      Size = 50
    end
    object LIBRO_BANCONRO_ORDEN: TIntegerField
      FieldName = 'NRO_ORDEN'
    end
    object LIBRO_BANCONRO_ORDEN_STRING: TStringField
      FieldName = 'NRO_ORDEN_STRING'
      Size = 11
    end
    object LIBRO_BANCOPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object LIBRO_BANCONRO_MEDIO: TStringField
      FieldName = 'NRO_MEDIO'
      Size = 60
    end
    object LIBRO_BANCOORDEN_SALDO_ANTERIOR: TIntegerField
      FieldName = 'ORDEN_SALDO_ANTERIOR'
    end
    object LIBRO_BANCOTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      Size = 50
    end
    object LIBRO_BANCONRO_FACTURA: TStringField
      FieldName = 'NRO_FACTURA'
      Size = 200
    end
  end
  object DS_LIBRO_BANCO: TDataSource
    DataSet = LIBRO_BANCO
    Left = 61
    Top = 256
  end
  object ZQ_Cuentas: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select c.*, c.nombre_cuenta||'#39' - '#39'|| coalesce ('#39'N'#176': '#39' || c.nro_c' +
        'uenta_bancaria, '#39'N'#176': S/N'#39') Busqueda'
      'from ie_cuentas c'
      'order by c.nombre_cuenta')
    Params = <>
    Left = 183
    Top = 208
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
    object ZQ_CuentasCOLOR_CONSILIADO: TStringField
      FieldName = 'COLOR_CONSILIADO'
    end
  end
  object DS_Cuentas: TDataSource
    DataSet = ZQ_Cuentas
    Left = 183
    Top = 256
  end
  object EKBAvanzadaLibroBco: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Cuenta Bancaria'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboSQL = ZQ_Cuentas
        TipoComboSQLCampoVer = 'BUSQUEDA'
        TipoComboSQLCampoReal = 'ID_CUENTA'
        TipoComboEditable = False
        TipoComboAncho = 400
        CambiarCondicion = False
        ItemIndex = 0
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
      end
      item
        Titulo = 'Fecha Hasta'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Ordenamiento'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboValoresVer.Strings = (
          'FECHA EMISION'
          'FECHA POSTDATA')
        TipoComboValoresReales.Strings = (
          '0'
          '1')
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = 0
      end>
    CriteriosLocate = <>
    DataSet = LIBRO_BANCO
    UsarWhereOriginal = EK_Con_Where
    PantallaReducida = True
    Left = 61
    Top = 160
  end
  object EKVistaPrevia_LibroBco: TEKVistaPreviaQR
    Reporte = RepLibroB
    ShowModal = False
    VerGuardar = False
    VerExpImagen = False
    Caption = 'Reporte de Libro Banco'
    Left = 183
    Top = 159
  end
  object EKOrdenarGrillaLB: TEKOrdenarGrilla
    Grilla = DBGridLibroBanco
    Filtros = <
      item
        TituloColumna = 'Fecha Emisi'#243'n'
        Visible = True
      end
      item
        TituloColumna = 'Fecha PD'
        Visible = True
      end
      item
        TituloColumna = 'Nro Movimiento'
        Visible = True
      end
      item
        TituloColumna = 'Nro Orden Pago'
        Visible = True
      end
      item
        TituloColumna = 'Medio'
        Visible = True
      end
      item
        TituloColumna = 'Nro Cheque/Transf'
        Visible = True
      end
      item
        TituloColumna = 'Denominaci'#243'n'
        Visible = True
      end
      item
        TituloColumna = 'Tipo'
        Visible = True
      end
      item
        TituloColumna = 'Anulado'
        Visible = True
      end
      item
        TituloColumna = 'Concepto'
        Visible = True
      end
      item
        TituloColumna = 'Nro Factura'
        Visible = True
      end
      item
        TituloColumna = 'Nro Recibo'
        Visible = True
      end
      item
        TituloColumna = 'F. Conciliado'
        Visible = True
      end>
    NombreGuardar = 'Rep_Disponibilidad'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    Left = 62
    Top = 113
  end
  object EKIniGuardarFiltros: TEKIni
    Left = 181
    Top = 112
  end
end
