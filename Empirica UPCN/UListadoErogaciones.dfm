object FListadoErogaciones: TFListadoErogaciones
  Left = 320
  Top = 228
  Width = 913
  Height = 565
  Caption = 'Listado Erogaciones en Cumplimiento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PContenedor: TPanel
    Left = 0
    Top = 0
    Width = 897
    Height = 475
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 3
    TabOrder = 4
    object DBGridListaErogacion: TDBGrid
      Left = 3
      Top = 58
      Width = 891
      Height = 396
      Align = alClient
      Color = 16772842
      DataSource = DS_Libro_erogaciones
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridListaErogacionDrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NRO_ORDEN_STRING'
          Title.Alignment = taCenter
          Title.Caption = 'Nro. Orden'
          Width = 78
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha Emisi'#243'n'
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FECHA_MDC'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha PD'
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FECHA_CONCILIADO'
          Title.Alignment = taCenter
          Title.Caption = 'F. Conciliado'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APELLIDO_Y_NOMBRE'
          Title.Alignment = taCenter
          Title.Caption = 'Proveedor'
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_CONCEPTO'
          Title.Alignment = taCenter
          Title.Caption = 'Concepto'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_MEDIO_COBRO_PAGO'
          Title.Alignment = taCenter
          Title.Caption = 'Medio Pago'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BANCO_MDC'
          Title.Alignment = taCenter
          Title.Caption = 'Banco Medio Pago'
          Width = 130
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'NRO_CHEQUE_TRANSF'
          Title.Alignment = taCenter
          Title.Caption = 'Nro. Cheq/Trans'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_FACTURA'
          Title.Alignment = taCenter
          Title.Caption = 'Nro. Factura'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_RECIBO'
          Title.Alignment = taCenter
          Title.Caption = 'Nro. Recibo'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pagos_diferidos'
          Title.Alignment = taCenter
          Title.Caption = 'Pagos Diferidos'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pagos_corrientes'
          Title.Alignment = taCenter
          Title.Caption = 'Pagos Corrientes'
          Width = 117
          Visible = True
        end>
    end
    object pDatos: TPanel
      Left = 3
      Top = 3
      Width = 891
      Height = 55
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        891
        55)
      object Shape1: TShape
        Left = 3
        Top = 4
        Width = 886
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = clGray
        Pen.Color = clGray
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 3
        Top = 3
        Width = 886
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = clTeal
        Shape = stRoundRect
      end
      object Label2: TLabel
        Left = 0
        Top = 7
        Width = 889
        Height = 18
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'LISTADO DE EROGACIONES'
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
        Width = 889
        Height = 18
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'LISTADO DE EROGACIONES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInfoBk
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 4
        Top = 38
        Width = 46
        Height = 13
        Caption = 'Cuenta:'
      end
      object lblNombreCuenta: TLabel
        Left = 52
        Top = 38
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
        Left = 380
        Top = 38
        Width = 41
        Height = 13
        Caption = 'Desde:'
      end
      object lblFechaDesde: TLabel
        Left = 423
        Top = 38
        Width = 112
        Height = 13
        AutoSize = False
        Caption = 'lblFechaDesde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object lblFechaHasta: TLabel
        Left = 595
        Top = 38
        Width = 112
        Height = 13
        AutoSize = False
        Caption = 'lblFechaHasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 556
        Top = 38
        Width = 37
        Height = 13
        Caption = 'Hasta:'
      end
      object StaticText1: TStaticText
        Left = 817
        Top = 39
        Width = 69
        Height = 17
        Anchors = [akRight]
        Caption = 'Pendiente'
        Color = 12371452
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
    object pResumen: TPanel
      Left = 3
      Top = 454
      Width = 891
      Height = 18
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object lblSaldo: TLabel
        Left = 828
        Top = 0
        Width = 63
        Height = 18
        Align = alRight
        Caption = 'lblSaldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RepErog: TQuickRep
      Tag = 99
      Left = 59
      Top = 83
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = ZQ_Libro_erogaciones
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
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      object QRBand5: TQRBand
        Tag = 99
        Left = 38
        Top = 38
        Width = 718
        Height = 103
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
          272.520833333333300000
          1899.708333333333000000)
        BandType = rbPageHeader
        object QRLabel41: TQRLabel
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
          FontSize = 8
        end
        object QRDBImage1: TQRDBImage
          Left = 77
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
            203.729166666666700000
            37.041666666666670000
            169.333333333333300000)
          DataField = 'GRAFICO'
        end
        object QRLabel11: TQRLabel
          Left = 235
          Top = 60
          Width = 247
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            621.770833333333300000
            158.750000000000000000
            653.520833333333300000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'LISTADO DE EROGACIONES'
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
        object RepErog_Reporte_Titulo_2: TQRLabel
          Left = 268
          Top = 36
          Width = 182
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            709.083333333333300000
            95.250000000000000000
            481.541666666666700000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepErog_Reporte_Titulo_2'
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
        object RepErog_Reporte_Titulo_1: TQRLabel
          Left = 238
          Top = 12
          Width = 242
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            629.708333333333300000
            31.750000000000000000
            640.291666666666700000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepErog_Reporte_Titulo_1'
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
        object QRLabel1: TQRLabel
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
          FontSize = 8
        end
        object QRLabel3: TQRLabel
          Left = 343
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
            907.520833333333200000
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
          FontSize = 8
        end
        object QRlblErogaciones_FDesde: TQRLabel
          Left = 72
          Top = 88
          Width = 89
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            190.500000000000000000
            232.833333333333300000
            235.479166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'QRlblErogaciones_FDesde'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRlblErogaciones_FHasta: TQRLabel
          Left = 241
          Top = 88
          Width = 96
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            637.645833333333200000
            232.833333333333300000
            254.000000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'QRlblErogaciones_FHasta'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRlblErogaciones_Cuenta: TQRLabel
          Left = 398
          Top = 88
          Width = 141
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1053.041666666667000000
            232.833333333333300000
            373.062500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'QRlblErogaciones_Cuenta'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
      end
      object QRBandDetalle: TQRBand
        Tag = 99
        Left = 38
        Top = 169
        Width = 718
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
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
          37.041666666666670000
          1899.708333333333000000)
        BandType = rbDetail
        object QRDBText17: TQRDBText
          Left = 605
          Top = 1
          Width = 110
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            1600.729166666667000000
            2.645833333333333000
            291.041666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Libro_erogaciones
          DataField = 'pagos_corrientes'
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRDBText13: TQRDBText
          Left = 491
          Top = 1
          Width = 110
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            1299.104166666667000000
            2.645833333333333000
            291.041666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Libro_erogaciones
          DataField = 'pagos_diferidos'
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRDBText30: TQRDBText
          Left = 401
          Top = 1
          Width = 85
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            1060.979166666667000000
            2.645833333333333000
            224.895833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = ZQ_Libro_erogaciones
          DataField = 'NRO_CHEQUE_TRANSF'
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRDBText6: TQRDBText
          Left = 241
          Top = 1
          Width = 158
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            637.645833333333200000
            2.645833333333333000
            418.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Libro_erogaciones
          DataField = 'BANCO_MDC'
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRDBText4: TQRDBText
          Left = 163
          Top = 1
          Width = 76
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            431.270833333333300000
            2.645833333333333000
            201.083333333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Libro_erogaciones
          DataField = 'FECHA_MDC'
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRDBText5: TQRDBText
          Left = 85
          Top = 1
          Width = 76
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            224.895833333333300000
            2.645833333333333000
            201.083333333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Libro_erogaciones
          DataField = 'FECHA'
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRShape1: TQRShape
          Left = 82
          Top = 0
          Width = 635
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            216.958333333333300000
            0.000000000000000000
            1680.104166666667000000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRShape5: TQRShape
          Left = 602
          Top = 0
          Width = 2
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1592.791666666667000000
            0.000000000000000000
            5.291666666666667000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRShape6: TQRShape
          Left = 487
          Top = 0
          Width = 2
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1288.520833333333000000
            0.000000000000000000
            5.291666666666667000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRShape7: TQRShape
          Left = 399
          Top = 0
          Width = 2
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1055.687500000000000000
            0.000000000000000000
            5.291666666666667000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRShape8: TQRShape
          Left = 239
          Top = 0
          Width = 2
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            632.354166666666700000
            0.000000000000000000
            5.291666666666667000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRShape9: TQRShape
          Left = 161
          Top = 0
          Width = 2
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            425.979166666666700000
            0.000000000000000000
            5.291666666666667000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRShape10: TQRShape
          Left = 716
          Top = 0
          Width = 2
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1894.416666666667000000
            0.000000000000000000
            5.291666666666667000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRShape11: TQRShape
          Left = 81
          Top = 0
          Width = 2
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            214.312500000000000000
            0.000000000000000000
            5.291666666666667000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
      end
      object QRChildBand2: TQRChildBand
        Tag = 99
        Left = 38
        Top = 141
        Width = 718
        Height = 15
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
          1899.708333333333000000)
        ParentBand = QRBand5
        object QRLabel27: TQRLabel
          Left = 605
          Top = 0
          Width = 110
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1600.729166666667000000
            0.000000000000000000
            291.041666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'P. Corrientes'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel21: TQRLabel
          Left = 491
          Top = 0
          Width = 110
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1299.104166666667000000
            0.000000000000000000
            291.041666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'P. Diferidos'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel16: TQRLabel
          Left = 88
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
            232.833333333333300000
            0.000000000000000000
            174.625000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Detalle'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel18: TQRLabel
          Left = 5
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
            13.229166666666670000
            0.000000000000000000
            201.083333333333300000)
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
          FontSize = 8
        end
      end
      object QRBand7: TQRBand
        Tag = 99
        Left = 38
        Top = 215
        Width = 718
        Height = 16
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
          42.333333333333330000
          1899.708333333333000000)
        BandType = rbPageFooter
        object QRLabel35: TQRLabel
          Left = 4
          Top = 1
          Width = 53
          Height = 13
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
          Left = 57
          Top = 1
          Width = 70
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            150.812500000000000000
            2.645833333333333000
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
          Left = 637
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
            1685.395833333333000000
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
          FontSize = 7
        end
        object QRSysData2: TQRSysData
          Left = 677
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
            1791.229166666667000000
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
          FontSize = 7
        end
      end
      object QRBand8: TQRBand
        Tag = 99
        Left = 38
        Top = 198
        Width = 718
        Height = 17
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
          44.979166666666670000
          1899.708333333333000000)
        BandType = rbSummary
        object QRShape3: TQRShape
          Left = 489
          Top = 0
          Width = 229
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333330000
            1293.812500000000000000
            0.000000000000000000
            605.895833333333200000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRlblTotalDiferidos: TQRLabel
          Left = 490
          Top = 1
          Width = 110
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1296.458333333333000000
            2.645833333333333000
            291.041666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'QRlblTotalDiferidos'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRlblTotalCorrientes: TQRLabel
          Left = 605
          Top = 1
          Width = 110
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1600.729166666667000000
            2.645833333333333000
            291.041666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'QRlblTotalCorrientes'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRShape4: TQRShape
          Left = 601
          Top = 0
          Width = 2
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1590.145833333333000000
            0.000000000000000000
            5.291666666666667000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
      end
      object QRGroup1: TQRGroup
        Tag = 99
        Left = 38
        Top = 156
        Width = 718
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        Color = clSilver
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          34.395833333333330000
          1899.708333333333000000)
        Expression = 'ZQ_Libro_erogaciones.NRO_MOVIMIENTO'
        FooterBand = QRBandGroup1Footer
        Master = RepErog
        ReprintOnNewPage = False
        object QRDBText1: TQRDBText
          Left = 5
          Top = 0
          Width = 76
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            13.229166666666670000
            0.000000000000000000
            201.083333333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Libro_erogaciones
          DataField = 'NRO_ORDEN_STRING'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRDBText2: TQRDBText
          Left = 88
          Top = 0
          Width = 217
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            232.833333333333300000
            0.000000000000000000
            574.145833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = ZQ_Libro_erogaciones
          DataField = 'APELLIDO_Y_NOMBRE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRDBText3: TQRDBText
          Left = 309
          Top = 0
          Width = 217
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            817.562500000000000000
            0.000000000000000000
            574.145833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = ZQ_Libro_erogaciones
          DataField = 'NOMBRE_CONCEPTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
      end
      object QRBandGroup1Footer: TQRBand
        Tag = 99
        Left = 38
        Top = 183
        Width = 718
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          39.687500000000000000
          1899.708333333333000000)
        BandType = rbGroupFooter
        object QRDBText7: TQRDBText
          Left = 143
          Top = 1
          Width = 212
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            378.354166666666700000
            2.645833333333333000
            560.916666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Libro_erogaciones
          DataField = 'NRO_FACTURA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRDBText8: TQRDBText
          Left = 412
          Top = 1
          Width = 212
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            1090.083333333333000000
            2.645833333333333000
            560.916666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Libro_erogaciones
          DataField = 'NRO_RECIBO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRShape2: TQRShape
          Left = 82
          Top = 0
          Width = 635
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            216.958333333333300000
            0.000000000000000000
            1680.104166666667000000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRLabel7: TQRLabel
          Left = 85
          Top = 3
          Width = 55
          Height = 11
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            29.104166666666670000
            224.895833333333300000
            7.937500000000000000
            145.520833333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nro. Factura:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRLabel8: TQRLabel
          Left = 360
          Top = 3
          Width = 49
          Height = 11
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            29.104166666666670000
            952.500000000000000000
            7.937500000000000000
            129.645833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nro Recibo:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
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
            Item = btnListadoErogaciones
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
    Left = 832
    Top = 432
    DockControlHeights = (
      0
      0
      0
      52)
    object btnListadoErogaciones: TdxBarLargeButton
      Caption = 'Ver Mes'
      Category = 0
      Hint = 'Saldo actual de todas las Cuentas Bancarias'
      Visible = ivAlways
      ImageIndex = 29
      ShortCut = 120
      OnClick = btnListadoErogacionesClick
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
        'btnListadoErogaciones')
    end
  end
  object ZQ_Libro_erogaciones: TZQuery
    Connection = DM.Conexion
    OnCalcFields = ZQ_Libro_erogacionesCalcFields
    SQL.Strings = (
      
        'select ctamov.fecha_mdc, ctamov.banco_mdc, ctamov.nro_cheque_tra' +
        'nsf, ctamov.importe, ctamov.conciliado,'
      
        '       ctamov.fecha_conciliado, ctamov.anulado, mov.descripcion,' +
        ' mov.fecha, mov.nro_orden, mov.nro_movimiento,'
      
        '       mov.nro_factura, mov.nro_recibo, cta.nombre_cuenta, cta.n' +
        'ro_cuenta_bancaria,'
      
        '       pro.apellido_y_nombre, mcob.nombre_medio_cobro_pago, cpto' +
        '.cod_corto, cpto.nombre_concepto,'
      
        '       ('#39#39'||substr(extractyear(mov.fecha),3,4)||'#39'-'#39'||lpad(mov.nr' +
        'o_orden,8,'#39'0'#39')) as nro_orden_string'
      'from ie_cuentas_movimientos ctamov'
      
        'left join ie_cuentas cta on (ctamov.id_cuenta_egreso = cta.id_cu' +
        'enta)'
      
        'left join ie_medios_cobro_pago mcob on (ctamov.id_medio = mcob.i' +
        'd_medio)'
      
        'left join ie_movimientos mov on (ctamov.nro_movimiento = mov.nro' +
        '_movimiento)'
      
        'left join ie_proveedores pro on (mov.nro_proveedor = pro.nro_pro' +
        'veedor)'
      
        'left join ie_conceptos cpto on (mov.id_concepto = cpto.id_concep' +
        'to)'
      'where ('
      
        '        (mov.fecha between :Fecha_Desde and :Fecha_Hasta) /*TODO' +
        'S LOS EMITIDOS EN EL MES*/'
      '         or'
      
        '        ((ctamov.conciliado = '#39'N'#39' or ctamov.fecha_conciliado >= ' +
        ':fecha_Hasta)  and (mov.fecha <= :fecha_Hasta))'
      '        or'
      
        '        (ctamov.fecha_conciliado between :Fecha_Desde and :Fecha' +
        '_Hasta)'
      '       )'
      '  and (ctamov.id_medio = 2)'
      '  and (ctamov.id_cuenta_egreso = :cuenta)'
      'order by mov.fecha')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fecha_Desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fecha_Hasta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cuenta'
        ParamType = ptUnknown
      end>
    Left = 64
    Top = 147
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha_Desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fecha_Hasta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cuenta'
        ParamType = ptUnknown
      end>
    object ZQ_Libro_erogacionespagos_diferidos: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pagos_diferidos'
      currency = True
      Calculated = True
    end
    object ZQ_Libro_erogacionespagos_corrientes: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pagos_corrientes'
      currency = True
      Calculated = True
    end
    object ZQ_Libro_erogacionesFECHA_MDC: TDateField
      FieldName = 'FECHA_MDC'
    end
    object ZQ_Libro_erogacionesBANCO_MDC: TStringField
      FieldName = 'BANCO_MDC'
      Size = 50
    end
    object ZQ_Libro_erogacionesNRO_CHEQUE_TRANSF: TStringField
      FieldName = 'NRO_CHEQUE_TRANSF'
      Size = 30
    end
    object ZQ_Libro_erogacionesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object ZQ_Libro_erogacionesCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Size = 1
    end
    object ZQ_Libro_erogacionesFECHA_CONCILIADO: TDateField
      FieldName = 'FECHA_CONCILIADO'
    end
    object ZQ_Libro_erogacionesANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object ZQ_Libro_erogacionesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 200
    end
    object ZQ_Libro_erogacionesFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZQ_Libro_erogacionesNRO_ORDEN: TIntegerField
      FieldName = 'NRO_ORDEN'
    end
    object ZQ_Libro_erogacionesNRO_FACTURA: TStringField
      FieldName = 'NRO_FACTURA'
      Size = 50
    end
    object ZQ_Libro_erogacionesNRO_RECIBO: TStringField
      FieldName = 'NRO_RECIBO'
      Size = 50
    end
    object ZQ_Libro_erogacionesNOMBRE_CUENTA: TStringField
      FieldName = 'NOMBRE_CUENTA'
      Size = 100
    end
    object ZQ_Libro_erogacionesNRO_CUENTA_BANCARIA: TStringField
      FieldName = 'NRO_CUENTA_BANCARIA'
      Size = 100
    end
    object ZQ_Libro_erogacionesAPELLIDO_Y_NOMBRE: TStringField
      FieldName = 'APELLIDO_Y_NOMBRE'
      Size = 60
    end
    object ZQ_Libro_erogacionesNOMBRE_MEDIO_COBRO_PAGO: TStringField
      FieldName = 'NOMBRE_MEDIO_COBRO_PAGO'
      Size = 30
    end
    object ZQ_Libro_erogacionesCOD_CORTO: TStringField
      FieldName = 'COD_CORTO'
      Size = 6
    end
    object ZQ_Libro_erogacionesNOMBRE_CONCEPTO: TStringField
      FieldName = 'NOMBRE_CONCEPTO'
      Size = 240
    end
    object ZQ_Libro_erogacionesNRO_ORDEN_STRING: TStringField
      FieldName = 'NRO_ORDEN_STRING'
      ReadOnly = True
      Size = 336
    end
    object ZQ_Libro_erogacionesNRO_MOVIMIENTO: TIntegerField
      FieldName = 'NRO_MOVIMIENTO'
      Required = True
    end
  end
  object DS_Libro_erogaciones: TDataSource
    DataSet = ZQ_Libro_erogaciones
    Left = 64
    Top = 200
  end
  object EKBAvanzadaListadoErog: TEKBusquedaAvanzada
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
        Titulo = 'Mes'
        TipoCampo = EK_Numero
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = '='
        TipoComboValores.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12')
        TipoComboEditable = False
        CambiarCondicion = False
        TipoComboValoresReales.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12')
        ItemIndex = -1
      end
      item
        Titulo = 'A'#241'o'
        TipoCampo = EK_Numero
        Mascara = '####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        CambiarCondicion = False
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = ZQ_Libro_erogaciones
    UsarWhereOriginal = EK_Con_Where
    PantallaReducida = True
    Left = 64
    Top = 88
  end
  object DS_Cuentas: TDataSource
    DataSet = ZQ_Cuentas
    Left = 66
    Top = 312
  end
  object ZQ_Cuentas: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select c.*, c.nombre_cuenta||'#39' - '#39'|| coalesce ('#39'N'#176': '#39' || c.nro_c' +
        'uenta_bancaria, '#39'N'#176': S/N'#39') Busqueda'
      'from ie_cuentas c'
      'order by c.nombre_cuenta')
    Params = <>
    Left = 66
    Top = 264
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
  object EKDbSuma: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'pagos_corrientes'
      end
      item
        Operacion = goSum
        NombreCampo = 'pagos_diferidos'
      end>
    DataSet = ZQ_Libro_erogaciones
    SumListChanged = EKDbSumaSumListChanged
    Left = 64
    Top = 368
  end
  object EKVistaPrevia: TEKVistaPreviaQR
    Reporte = RepErog
    ShowModal = False
    Left = 920
    Top = 464
  end
  object EKOrdenarGrilla1: TEKOrdenarGrilla
    Grilla = DBGridListaErogacion
    FuenteNormal = []
    NombreGuardarConfig = 'UListadoErogaciones'
    Ordenar = False
    Left = 64
    Top = 424
  end
end
