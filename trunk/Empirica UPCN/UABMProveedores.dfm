object FABMProveedores: TFABMProveedores
  Left = 386
  Top = 137
  Width = 1038
  Height = 669
  Caption = 'ABM Listado General'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
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
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelContenedor: TPanel
    Left = 0
    Top = 0
    Width = 1030
    Height = 585
    Align = alClient
    Caption = 'PanelContenedor'
    TabOrder = 4
    object RepProv: TQuickRep
      Tag = 99
      Left = 59
      Top = 152
      Width = 952
      Height = 1347
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = ZQ_IE_Proveedores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE'
        'QRLOOPBAND1'
        'QRLOOPBAND2')
      Functions.DATA = (
        '0'
        '0'
        #39#39
        '0'
        '0')
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
      SnapToGrid = True
      Units = MM
      Zoom = 120
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      object QRBand7: TQRBand
        Tag = 99
        Left = 45
        Top = 45
        Width = 861
        Height = 103
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          227.100694444444500000
          1898.385416666667000000)
        BandType = rbPageHeader
        object QRDBImage1: TQRDBImage
          Left = 148
          Top = 17
          Width = 77
          Height = 77
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            169.774305555555600000
            326.319444444444400000
            37.482638888888890000
            169.774305555555600000)
          DataField = 'GRAFICO'
        end
        object QRLabel11: TQRLabel
          Left = 329
          Top = 72
          Width = 203
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.711805555555560000
            725.399305555555700000
            158.750000000000000000
            447.586805555555600000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'LISTADO GENERAL'
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
        object RepProv_Reporte_Titulo_2: TQRLabel
          Left = 320
          Top = 43
          Width = 221
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666660000
            705.555555555555700000
            94.809027777777790000
            487.274305555555600000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepProv_Reporte_Titulo_2'
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
        object RepProv_Reporte_Titulo_1: TQRLabel
          Left = 285
          Top = 14
          Width = 290
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666660000
            628.385416666666800000
            30.868055555555560000
            639.409722222222300000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepProv_Reporte_Titulo_1'
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
      end
      object QRBand10: TQRBand
        Tag = 99
        Left = 45
        Top = 165
        Width = 861
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psInsideFrame
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          35.277777777777780000
          1898.385416666667000000)
        BandType = rbDetail
        object QRDBText63: TQRDBText
          Left = 476
          Top = 1
          Width = 152
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            28.663194444444450000
            1049.513888888889000000
            2.204861111111111000
            335.138888888888900000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_IE_Proveedores
          DataField = 'DIRECCION'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRDBText67: TQRDBText
          Left = 623
          Top = 1
          Width = 114
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            28.663194444444450000
            1373.628472222222000000
            2.204861111111111000
            251.354166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_IE_Proveedores
          DataField = 'TELEFONOS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRDBText69: TQRDBText
          Left = 736
          Top = 1
          Width = 123
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            28.663194444444450000
            1622.777777777778000000
            2.204861111111111000
            271.197916666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_IE_Proveedores
          DataField = 'EMAIL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRDBText1: TQRDBText
          Left = 288
          Top = 1
          Width = 190
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            28.663194444444450000
            635.000000000000000000
            2.204861111111111000
            418.923611111111200000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_IE_Proveedores
          DataField = 'NOMBRE_FANTASIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRDBText2: TQRDBText
          Left = 5
          Top = 1
          Width = 212
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            28.663194444444450000
            11.024305555555560000
            2.204861111111111000
            467.430555555555600000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_IE_Proveedores
          DataField = 'APELLIDO_Y_NOMBRE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRDBText4: TQRDBText
          Left = 216
          Top = 1
          Width = 73
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            28.663194444444450000
            476.250000000000000000
            2.204861111111111000
            160.954861111111100000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_IE_Proveedores
          DataField = '_Tipo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
      end
      object ChildBand1: TQRChildBand
        Tag = 99
        Left = 45
        Top = 148
        Width = 861
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clSilver
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          37.482638888888890000
          1898.385416666667000000)
        ParentBand = QRBand7
        object QRLabel18: TQRLabel
          Left = 5
          Top = 2
          Width = 210
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            33.072916666666670000
            11.024305555555560000
            4.409722222222222000
            463.020833333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Denominaci'#243'n'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRLabel77: TQRLabel
          Left = 288
          Top = 2
          Width = 190
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            33.072916666666670000
            635.000000000000000000
            4.409722222222222000
            418.923611111111200000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Nombre de Fantasia'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRLabel87: TQRLabel
          Left = 476
          Top = 2
          Width = 152
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            33.072916666666670000
            1049.513888888889000000
            4.409722222222222000
            335.138888888888900000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Direcci'#243'n'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRLabel88: TQRLabel
          Left = 625
          Top = 2
          Width = 114
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            33.072916666666670000
            1378.038194444445000000
            4.409722222222222000
            251.354166666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Tel'#233'fono'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRLabel89: TQRLabel
          Left = 736
          Top = 2
          Width = 123
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            33.072916666666670000
            1622.777777777778000000
            4.409722222222222000
            271.197916666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'E-Mail'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRLabel1: TQRLabel
          Left = 216
          Top = 2
          Width = 71
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            33.072916666666670000
            476.250000000000000000
            4.409722222222222000
            156.545138888888900000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Tipo'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
      end
      object QRBand1: TQRBand
        Tag = 99
        Left = 45
        Top = 181
        Width = 861
        Height = 21
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
          46.302083333333340000
          1898.385416666667000000)
        BandType = rbSummary
        object QRExpr15: TQRExpr
          Left = 671
          Top = 2
          Width = 190
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888900000
            1479.461805555556000000
            4.409722222222222000
            418.923611111111200000)
          Alignment = taRightJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Color = clWhite
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = #39'Cantidad de Registros: '#39'+COUNT'
          FontSize = 8
        end
      end
      object QRBand2: TQRBand
        Tag = 99
        Left = 45
        Top = 202
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
          41.892361111111120000
          1898.385416666667000000)
        BandType = rbPageFooter
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
    end
    object DBGridProveedores: TDBGrid
      Left = 1
      Top = 20
      Width = 1028
      Height = 371
      Align = alClient
      Color = 16772842
      DataSource = DS_IE_Proveedores
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridProveedoresDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'APELLIDO_Y_NOMBRE'
          Title.Alignment = taCenter
          Title.Caption = 'Denominaci'#243'n'
          Width = 274
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_FANTASIA'
          Title.Alignment = taCenter
          Title.Caption = 'Nombre de Fantasia'
          Width = 282
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_Tipo'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Width = 181
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIRECCION'
          Title.Alignment = taCenter
          Title.Caption = 'Direccion'
          Width = 198
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONOS'
          Title.Alignment = taCenter
          Title.Caption = 'Telefono'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL'
          Title.Alignment = taCenter
          Title.Caption = 'Email'
          Width = 233
          Visible = True
        end>
    end
    object PBusqueda: TPanel
      Left = 1
      Top = 1
      Width = 1028
      Height = 19
      Align = alTop
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      object Label4: TLabel
        Left = 1
        Top = 1
        Width = 240
        Height = 17
        Align = alLeft
        AutoSize = False
        Caption = '                                 '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object StaticText3: TStaticText
        Left = 918
        Top = 1
        Width = 109
        Height = 17
        Align = alRight
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Dado de Baja'
        Color = 11184895
        ParentColor = False
        TabOrder = 0
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 391
      Width = 1028
      Height = 193
      ActivePage = TabSheet2
      Align = alBottom
      TabOrder = 3
      object TabSheet1: TTabSheet
        Caption = 'Datos Generales'
        object Panel_edicion: TPanel
          Left = 0
          Top = 2
          Width = 1020
          Height = 163
          Align = alBottom
          Enabled = False
          TabOrder = 0
          object Label1: TLabel
            Left = 10
            Top = 11
            Width = 86
            Height = 13
            Caption = 'Denominaci'#243'n:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label2: TLabel
            Left = 10
            Top = 36
            Width = 119
            Height = 13
            Caption = 'Nombre de Fantas'#237'a:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label16: TLabel
            Left = 10
            Top = 113
            Width = 60
            Height = 13
            Caption = 'Tel'#233'fonos:'
            Transparent = True
          end
          object Label5: TLabel
            Left = 10
            Top = 87
            Width = 58
            Height = 13
            Caption = 'Direcci'#243'n:'
            Transparent = True
          end
          object Label3: TLabel
            Left = 10
            Top = 139
            Width = 39
            Height = 13
            Caption = 'E-Mail:'
            Transparent = True
          end
          object Label6: TLabel
            Left = 10
            Top = 62
            Width = 70
            Height = 13
            Caption = 'Documento:'
            Transparent = True
          end
          object Label7: TLabel
            Left = 474
            Top = 87
            Width = 106
            Height = 13
            Caption = 'Datos Adicionales:'
            Transparent = True
          end
          object Label8: TLabel
            Left = 474
            Top = 11
            Width = 29
            Height = 13
            Caption = 'Tipo:'
            Transparent = True
          end
          object Label9: TLabel
            Left = 474
            Top = 36
            Width = 86
            Height = 13
            Caption = 'Condici'#243'n IVA:'
            Transparent = True
          end
          object Label10: TLabel
            Left = 474
            Top = 62
            Width = 75
            Height = 13
            Caption = 'Tipo Factura:'
            Transparent = True
          end
          object DBENombreApellido: TDBEdit
            Left = 96
            Top = 7
            Width = 298
            Height = 21
            CharCase = ecUpperCase
            DataField = 'APELLIDO_Y_NOMBRE'
            DataSource = DS_IE_Proveedores
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object DBENombreFantasia: TDBEdit
            Left = 133
            Top = 32
            Width = 261
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NOMBRE_FANTASIA'
            DataSource = DS_IE_Proveedores
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object DBETelefono: TDBEdit
            Left = 72
            Top = 109
            Width = 322
            Height = 21
            CharCase = ecUpperCase
            DataField = 'TELEFONOS'
            DataSource = DS_IE_Proveedores
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object DBEDireccion: TDBEdit
            Left = 73
            Top = 83
            Width = 321
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DIRECCION'
            DataSource = DS_IE_Proveedores
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object DBENroDocumento: TDBEdit
            Left = 176
            Top = 58
            Width = 218
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NRO_DOCUMENTO'
            DataSource = DS_IE_Proveedores
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object DBEEmail: TDBEdit
            Left = 72
            Top = 135
            Width = 322
            Height = 21
            DataField = 'EMAIL'
            DataSource = DS_IE_Proveedores
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 85
            Top = 58
            Width = 92
            Height = 21
            DataField = 'TIPO_DOCUMENTO'
            DataSource = DS_IE_Proveedores
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            KeyField = 'TIPO_DOCUMENTO'
            ListField = 'DESCRIPCION'
            ListSource = DS_TipoDocumento
            ParentFont = False
            TabOrder = 2
          end
          object dbDatosAdic: TDBMemo
            Left = 474
            Top = 104
            Width = 422
            Height = 51
            DataField = 'DESCRIPCION'
            DataSource = DS_IE_Proveedores
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
          end
          object DBTipo: TDBLookupComboBox
            Left = 512
            Top = 7
            Width = 385
            Height = 21
            DataField = 'ID_TIPO'
            DataSource = DS_IE_Proveedores
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            KeyField = 'ID_TIPO'
            ListField = 'DESCRIPCION'
            ListSource = DS_TipoProveedor
            ParentFont = False
            TabOrder = 7
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 568
            Top = 32
            Width = 329
            Height = 21
            DataField = 'ID_TIPO_IVA'
            DataSource = DS_IE_Proveedores
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            KeyField = 'ID_TIPO_IVA'
            ListField = 'DESCRIPCION'
            ListSource = DS_CondicIVA
            ParentFont = False
            TabOrder = 8
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 568
            Top = 58
            Width = 329
            Height = 21
            DataField = 'ID_TIPO_FACTURA'
            DataSource = DS_IE_Proveedores
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            KeyField = 'ID_TIPO_FACTURA'
            ListField = 'DESCRIPCION'
            ListSource = DS_TipoFactura
            ParentFont = False
            TabOrder = 9
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Cuentas / Conceptos'
        ImageIndex = 1
        object GBoxCuentasAsig: TGroupBox
          Left = 0
          Top = 0
          Width = 489
          Height = 165
          Align = alLeft
          Caption = ' Cuentas Asignadas '
          TabOrder = 0
          object DBGridCuentas: TDBGrid
            Left = 2
            Top = 15
            Width = 485
            Height = 148
            Hint = 'Haga click derecho para agregar o quitar una Cuenta'
            Align = alClient
            Color = 14155735
            DataSource = DS_ProvCtas
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridCuentasDrawColumnCell
            OnDblClick = DBGridCuentasDblClick
            Columns = <
              item
                Expanded = False
                FieldName = '_nombre'
                Title.Caption = 'Cuenta'
                Visible = True
              end>
          end
        end
        object GBoxConceptosAsig: TGroupBox
          Left = 489
          Top = 0
          Width = 531
          Height = 165
          Align = alClient
          Caption = ' Conceptos Asignados '
          TabOrder = 1
          object DBGridConceptos: TDBGrid
            Left = 2
            Top = 15
            Width = 527
            Height = 148
            Hint = 'Haga click derecho para agregar o quitar un Concepto'
            Align = alClient
            Color = 14155735
            DataSource = DS_ProvConceptos
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridConceptosDrawColumnCell
            OnDblClick = DBGridConceptosDblClick
            Columns = <
              item
                Expanded = False
                FieldName = '_nombre'
                Title.Caption = 'Concepto'
                Visible = True
              end>
          end
        end
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
            Item = btBuscar
            Visible = True
          end
          item
            BeginGroup = True
            Item = BtNuevo
            Visible = True
          end
          item
            Item = BtModificar
            Visible = True
          end
          item
            BeginGroup = True
            Item = btBaja
            Visible = True
          end
          item
            Item = btReactivar
            Visible = True
          end
          item
            BeginGroup = True
            Item = BtGuardar
            Visible = True
          end
          item
            Item = BtCancelar
            Visible = True
          end
          item
            BeginGroup = True
            Item = btImprimir
            Visible = True
          end
          item
            Item = bt_salir
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
    Left = 568
    Top = 192
    DockControlHeights = (
      0
      0
      0
      52)
    object BtNuevo: TdxBarLargeButton
      Caption = 'Nuevo'
      Category = 0
      Hint = 'Inserta un nuevo registro'
      Visible = ivAlways
      ImageIndex = 0
      OnClick = BtNuevoClick
      AutoGrayScale = False
    end
    object BtModificar: TdxBarLargeButton
      Caption = 'Modificar'
      Category = 0
      Hint = 'Modifica el registro actual'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = BtModificarClick
      AutoGrayScale = False
    end
    object btBaja: TdxBarLargeButton
      Caption = 'Baja'
      Category = 0
      Hint = 'Da de baja un registro'
      Visible = ivAlways
      ImageIndex = 25
      OnClick = btBajaClick
      AutoGrayScale = False
    end
    object btBuscar: TdxBarLargeButton
      Caption = 'Buscar'
      Category = 0
      Hint = 'Buscar'
      Visible = ivAlways
      ImageIndex = 29
      OnClick = btBuscarClick
      AutoGrayScale = False
    end
    object BtGuardar: TdxBarLargeButton
      Caption = 'Guardar'
      Category = 0
      Enabled = False
      Hint = 'Guarda los cambios'
      Visible = ivAlways
      ImageIndex = 3
      OnClick = BtGuardarClick
      AutoGrayScale = False
    end
    object BtCancelar: TdxBarLargeButton
      Caption = 'Cancelar'
      Category = 0
      Enabled = False
      Hint = 'Cancela los cambios'
      Visible = ivAlways
      ImageIndex = 4
      OnClick = BtCancelarClick
      AutoGrayScale = False
    end
    object btReactivar: TdxBarLargeButton
      Caption = 'Reactivar'
      Category = 0
      Hint = 'Reactiva un registro'
      Visible = ivAlways
      ImageIndex = 24
      OnClick = btReactivarClick
      AutoGrayScale = False
    end
    object btVerDetalle: TdxBarLargeButton
      Align = iaRight
      Caption = 'Ver/Ocultar Detalle'
      Category = 0
      Hint = 'Ver/Ocultar Detalle'
      Visible = ivAlways
      ImageIndex = 69
      OnClick = btVerDetalleClick
      AutoGrayScale = False
    end
    object btBajar: TdxBarLargeButton
      Caption = 'Bajar'
      Category = 0
      Hint = 'Da de Baja o Reactiva el Inmueble'
      Visible = ivAlways
      ImageIndex = 9
      AutoGrayScale = False
    end
    object bt_salir: TdxBarLargeButton
      Align = iaRight
      Caption = 'Salir'
      Category = 0
      Hint = 'Salir sin seleccionar'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = bt_salirClick
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
        'BtNuevo'
        'BtModificar'
        'btBuscar'
        'btVerDetalle'
        'btBaja'
        'btBajar'
        'bt_salir'
        'btReactivar'
        'btImprimir')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
      Items = (
        'BtGuardar'
        'BtCancelar')
    end
  end
  object ZQ_IE_Proveedores: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_IE_ProveedoresAfterScroll
    SQL.Strings = (
      'select p.*'
      'from ie_proveedores p '
      'where p.nro_proveedor > 0'
      'order by p.apellido_y_nombre, p.nombre_fantasia')
    Params = <>
    Left = 432
    Top = 72
    object ZQ_IE_ProveedoresNRO_PROVEEDOR: TIntegerField
      FieldName = 'NRO_PROVEEDOR'
    end
    object ZQ_IE_ProveedoresAPELLIDO_Y_NOMBRE: TStringField
      FieldName = 'APELLIDO_Y_NOMBRE'
      Size = 60
    end
    object ZQ_IE_ProveedoresNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Size = 60
    end
    object ZQ_IE_ProveedoresDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 150
    end
    object ZQ_IE_ProveedoresNRO_DOCUMENTO: TStringField
      FieldName = 'NRO_DOCUMENTO'
      Size = 30
    end
    object ZQ_IE_ProveedoresTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
      Size = 30
    end
    object ZQ_IE_ProveedoresEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object ZQ_IE_ProveedoresBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_IE_ProveedoresTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 10
    end
    object ZQ_IE_ProveedoresDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 1000
    end
    object ZQ_IE_ProveedoresEDITABLE: TStringField
      FieldName = 'EDITABLE'
      Size = 1
    end
    object ZQ_IE_ProveedoresID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
    end
    object ZQ_IE_ProveedoresID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
    end
    object ZQ_IE_ProveedoresID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object ZQ_IE_ProveedoresID_TIPO_FACTURA: TIntegerField
      FieldName = 'ID_TIPO_FACTURA'
    end
    object ZQ_IE_Proveedores_Tipo: TStringField
      FieldKind = fkLookup
      FieldName = '_Tipo'
      LookupDataSet = ZQ_TipoProveedor
      LookupKeyFields = 'ID_TIPO'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'ID_TIPO'
      Size = 100
      Lookup = True
    end
  end
  object DS_IE_Proveedores: TDataSource
    DataSet = ZQ_IE_Proveedores
    Left = 432
    Top = 120
  end
  object ZQ_TipoDocumento: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from tipo_documento')
    Params = <>
    Left = 568
    Top = 72
    object ZQ_TipoDocumentoTIPO_DOCUMENTO: TIntegerField
      FieldName = 'TIPO_DOCUMENTO'
      Required = True
    end
    object ZQ_TipoDocumentoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
  end
  object DS_TipoDocumento: TDataSource
    DataSet = ZQ_TipoDocumento
    Left = 568
    Top = 120
  end
  object EKBusquedaAvanzada1: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Denominaci'#243'n'
        Campo = 'apellido_y_nombre'
        Tabla = 'p'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Nombre Fantasia'
        Campo = 'nombre_fantasia'
        Tabla = 'p'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Tipo'
        Campo = 'id_tipo'
        Tabla = 'ie_proveedores'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoCombollenarSQL = ZQ_TipoProveedor
        TipoCombollenarCampo = 'descripcion'
        TipoCombollenarCampoReal = 'id_tipo'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Condici'#243'n IVA'
        Campo = 'id_tipo_iva'
        Tabla = 'ie_proveedores'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoCombollenarSQL = ZQ_CondicIVA
        TipoCombollenarCampo = 'id_tipo_iva'
        TipoCombollenarCampoReal = 'descripcion'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Tipo Factura'
        Campo = 'id_tipo_factura'
        Tabla = 'ie_proveedores'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoCombollenarSQL = ZQ_TipoFactura
        TipoCombollenarCampo = 'descripcion'
        TipoCombollenarCampoReal = 'id_tipo_factura'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Direccion'
        Campo = 'direccion'
        Tabla = 'p'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Nro Doc/CUIT/CUIL'
        Campo = 'nro_documento'
        Tabla = 'p'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Datos Adicionales'
        Campo = 'descripcion'
        Tabla = 'ie_proveedores'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Baja'
        Campo = 'baja'
        Tabla = 'p'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboValores.Strings = (
          'SI'
          'NO')
        TipoComboEditable = False
        TipoComboValoresReales.Strings = (
          'S'
          'N')
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = ZQ_IE_Proveedores
    SQL.Strings = (
      'select p.*'
      'from ie_proveedores p '
      'where p.nro_proveedor > 0'
      'order by p.apellido_y_nombre, p.nombre_fantasia')
    SQL_Select.Strings = (
      'select p.*')
    SQL_From.Strings = (
      'from ie_proveedores p ')
    SQL_Where.Strings = (
      'where p.nro_proveedor > 0')
    SQL_Orden.Strings = (
      'order by p.apellido_y_nombre, p.nombre_fantasia')
    UsarWhereOriginal = EK_Con_Where
    InfoRegistros = Label4
    PantallaReducida = True
    Left = 72
    Top = 96
  end
  object EKVistaPreviaQR1: TEKVistaPreviaQR
    Reporte = RepProv
    ShowModal = False
    VerGuardar = False
    VerExpImagen = False
    Left = 256
    Top = 96
  end
  object EKOrdenarGrilla1: TEKOrdenarGrilla
    Grilla = DBGridProveedores
    FuenteNormal = []
    NombreGuardarConfig = 'UABMProveedores'
    Ordenar = True
    Left = 144
    Top = 72
  end
  object DS_ProvConceptos: TDataSource
    DataSet = ZQ_ProvConceptos
    Left = 731
    Top = 154
  end
  object ZQ_Conceptos: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select c.*'
      'from ie_conceptos c'
      'order by c.nombre_concepto')
    Params = <>
    Left = 707
    Top = 66
    object ZQ_ConceptosID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
      Required = True
    end
    object ZQ_ConceptosCOD_CORTO: TStringField
      FieldName = 'COD_CORTO'
      Size = 6
    end
    object ZQ_ConceptosNOMBRE_CONCEPTO: TStringField
      FieldName = 'NOMBRE_CONCEPTO'
      Size = 240
    end
    object ZQ_ConceptosBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_ConceptosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object ZQ_ConceptosEDITABLE: TStringField
      FieldName = 'EDITABLE'
      Size = 1
    end
  end
  object ZQ_CuentasA: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select c.*'
      'from ie_cuentas c'
      'order by c.nombre_cuenta')
    Params = <>
    Left = 835
    Top = 66
  end
  object DS_ProvCtas: TDataSource
    DataSet = ZQ_ProvCtas
    Left = 835
    Top = 154
  end
  object EKOrdenarCuentas: TEKOrdenarGrilla
    Grilla = DBGridCuentas
    FuenteNormal = []
    Ordenar = True
    Left = 101
    Top = 308
  end
  object EKOrdenarConceptos: TEKOrdenarGrilla
    Grilla = DBGridConceptos
    FuenteNormal = []
    Ordenar = True
    Left = 566
    Top = 252
  end
  object ZQ_Insertar: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'insert into proveedor_concepto (id, id_proveedor, id_concepto)'
      'values (:id, :id_proveedor, :id_concepto)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_proveedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_concepto'
        ParamType = ptUnknown
      end>
    Left = 461
    Top = 236
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_proveedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_concepto'
        ParamType = ptUnknown
      end>
  end
  object ZQ_Borrar: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'delete from proveedor_concepto where (id_proveedor = :id_proveed' +
        'or and id_concepto = :id_concepto)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_proveedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_concepto'
        ParamType = ptUnknown
      end>
    Left = 373
    Top = 236
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_proveedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_concepto'
        ParamType = ptUnknown
      end>
  end
  object Nro_Proveedor: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    StoredProcName = 'SP_GEN_IE_PROVEEDORES_ID'
    Left = 432
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    object Nro_ProveedorID: TIntegerField
      FieldName = 'ID'
    end
  end
  object ZQ_TipoProveedor: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from tipo_proveedor')
    Params = <>
    Left = 288
    Top = 160
    object ZQ_TipoProveedorID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Required = True
    end
    object ZQ_TipoProveedorDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
  end
  object DS_TipoProveedor: TDataSource
    DataSet = ZQ_TipoProveedor
    Left = 296
    Top = 240
  end
  object ZQ_CondicIVA: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from tipo_condicion_iva')
    Params = <>
    Left = 168
    Top = 232
    object ZQ_CondicIVAID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
      Required = True
    end
    object ZQ_CondicIVADESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
  end
  object DS_CondicIVA: TDataSource
    DataSet = ZQ_CondicIVA
    Left = 184
    Top = 192
  end
  object ZQ_TipoFactura: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from tipo_factura')
    Params = <>
    Left = 64
    Top = 232
    object ZQ_TipoFacturaID_TIPO_FACTURA: TIntegerField
      FieldName = 'ID_TIPO_FACTURA'
      Required = True
    end
    object ZQ_TipoFacturaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
  end
  object DS_TipoFactura: TDataSource
    DataSet = ZQ_TipoFactura
    Left = 80
    Top = 168
  end
  object ZQ_ProvConceptos: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select pc.*'
      'from proveedor_concepto pc'
      'where pc.id_proveedor=:idProv')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idProv'
        ParamType = ptUnknown
      end>
    Left = 731
    Top = 218
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idProv'
        ParamType = ptUnknown
      end>
    object ZQ_ProvConceptosID: TIntegerField
      FieldName = 'ID'
    end
    object ZQ_ProvConceptosID_PROVEEDOR: TIntegerField
      FieldName = 'ID_PROVEEDOR'
    end
    object ZQ_ProvConceptosID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
    end
    object ZQ_ProvConceptos_nombre: TStringField
      FieldKind = fkLookup
      FieldName = '_nombre'
      LookupDataSet = ZQ_Conceptos
      LookupKeyFields = 'ID_CONCEPTO'
      LookupResultField = 'NOMBRE_CONCEPTO'
      KeyFields = 'ID_CONCEPTO'
      Size = 100
      Lookup = True
    end
  end
  object ZQ_ProvCtas: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select pc.*'
      'from proveedor_cuenta pc'
      'where pc.id_proveedor=:idProv')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idProv'
        ParamType = ptUnknown
      end>
    Left = 835
    Top = 218
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idProv'
        ParamType = ptUnknown
      end>
    object ZQ_ProvCtasID: TIntegerField
      FieldName = 'ID'
    end
    object ZQ_ProvCtasID_PROVEEDOR: TIntegerField
      FieldName = 'ID_PROVEEDOR'
    end
    object ZQ_ProvCtasID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
    end
    object ZQ_ProvCtas_nombre: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = '_nombre'
      LookupDataSet = ZQ_CuentasA
      LookupKeyFields = 'ID_CUENTA'
      LookupResultField = 'NOMBRE_CUENTA'
      KeyFields = 'ID_CUENTA'
      Size = 100
      Lookup = True
    end
  end
  object MenuCtas: TPopupMenu
    Images = FPrincipal.Iconos_Menu_16
    MenuAnimation = [maLeftToRight]
    Left = 738
    Top = 273
    object Cta1: TMenuItem
      Caption = 'Agregar Cuenta'
      ImageIndex = 40
      OnClick = Cta1Click
    end
    object Cta2: TMenuItem
      Caption = 'Quitar Cuenta'
      ImageIndex = 43
      OnClick = Cta2Click
    end
  end
  object MenuConc: TPopupMenu
    Images = FPrincipal.Iconos_Menu_16
    MenuAnimation = [maLeftToRight]
    Left = 810
    Top = 273
    object Conc1: TMenuItem
      Caption = 'Agregar Concepto'
      ImageIndex = 40
      OnClick = Conc1Click
    end
    object Conc2: TMenuItem
      Caption = 'Quitar Concepto'
      ImageIndex = 43
      OnClick = Conc2Click
    end
  end
  object EKCtas: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select c.id_cuenta,c.nombre_cuenta'
      'from ie_cuentas c'
      'order by c.nombre_cuenta')
    CampoBuscar = 'nombre_cuenta'
    CampoClave = 'id_cuenta'
    BuscarEnQuery = ZQ_CuentasA
    TituloVentana = 'Seleccionar Cuentas'
    Left = 200
    Top = 312
  end
  object EKConc: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select c.id_concepto,c.nombre_concepto'
      'from ie_conceptos c'
      'order by c.nombre_concepto')
    CampoBuscar = 'nombre_concepto'
    CampoClave = 'id_concepto'
    BuscarEnQuery = ZQ_Conceptos
    TituloVentana = 'Seleccionar Concepto'
    Left = 312
    Top = 312
  end
  object ZSP_VerificarElim: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'CANT'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'PROV'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CTA'
        ParamType = ptInput
      end>
    StoredProcName = 'VERIFICAR_PROV_CTA_CONC'
    Left = 448
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CANT'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'PROV'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CTA'
        ParamType = ptInput
      end>
    object ZSP_VerificarElimCANT: TIntegerField
      FieldName = 'CANT'
    end
  end
end
