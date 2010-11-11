object FABMProveedores: TFABMProveedores
  Left = 279
  Top = 156
  Width = 945
  Height = 592
  Caption = 'ABM Proveedores'
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
    Width = 929
    Height = 502
    Align = alClient
    Caption = 'PanelContenedor'
    TabOrder = 4
    object DBGridProveedores: TDBGrid
      Left = 1
      Top = 20
      Width = 927
      Height = 288
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
          Title.Caption = 'Proveedor'
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
      Width = 927
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
        Left = 817
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
      Top = 308
      Width = 927
      Height = 193
      ActivePage = TabSheet2
      Align = alBottom
      TabOrder = 3
      object TabSheet1: TTabSheet
        Caption = 'Datos Generales'
        object Panel_edicion: TPanel
          Left = 0
          Top = 2
          Width = 919
          Height = 163
          Align = alBottom
          TabOrder = 0
          object Label1: TLabel
            Left = 10
            Top = 11
            Width = 64
            Height = 13
            Caption = 'Proveedor:'
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
            Left = 475
            Top = 11
            Width = 106
            Height = 13
            Caption = 'Datos Adicionales:'
            Transparent = True
          end
          object DBENombreApellido: TDBEdit
            Left = 77
            Top = 7
            Width = 317
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
            Left = 475
            Top = 26
            Width = 422
            Height = 128
            DataField = 'DESCRIPCION'
            DataSource = DS_IE_Proveedores
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Cuentas / Conceptos'
        ImageIndex = 1
        object GBoxCuentasAsig: TGroupBox
          Left = 0
          Top = 0
          Width = 497
          Height = 165
          Align = alLeft
          Caption = ' Cuentas Asignadas '
          TabOrder = 0
          object DBGridCuentas: TDBGrid
            Left = 2
            Top = 15
            Width = 493
            Height = 148
            Align = alClient
            Color = 16772842
            DataSource = DS_CuentasA
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
                FieldName = 'NOMBRE_CUENTA'
                Title.Alignment = taCenter
                Title.Caption = 'Nombre'
                Width = 309
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NRO_CUENTA_BANCARIA'
                Title.Alignment = taCenter
                Title.Caption = 'N'#250'mero'
                Width = 147
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_PROVEEDOR'
                Visible = False
              end>
          end
        end
        object GBoxConceptosAsig: TGroupBox
          Left = 497
          Top = 0
          Width = 422
          Height = 165
          Align = alClient
          Caption = ' Conceptos Asignados '
          TabOrder = 1
          object DBGridConceptos: TDBGrid
            Left = 2
            Top = 15
            Width = 418
            Height = 148
            Align = alClient
            Color = 16772842
            DataSource = DS_Conceptos
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
                FieldName = 'COD_CORTO'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMBRE_CONCEPTO'
                Title.Alignment = taCenter
                Title.Caption = 'Nombre'
                Width = 413
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_PROVEEDOR'
                Visible = False
              end>
          end
        end
      end
    end
    object RepProv: TQuickRep
      Tag = 99
      Left = 11
      Top = 24
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
          227.100694444444400000
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
          Left = 298
          Top = 72
          Width = 265
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.711805555555560000
            657.048611111111100000
            158.750000000000000000
            584.288194444444400000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'LISTADO PROVEEDORES'
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
            52.916666666666670000
            705.555555555555600000
            94.809027777777780000
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
            52.916666666666670000
            628.385416666666700000
            30.868055555555560000
            639.409722222222200000)
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
        object QRDBText53: TQRDBText
          Left = 5
          Top = 1
          Width = 210
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            28.663194444444440000
            11.024305555555560000
            2.204861111111111000
            463.020833333333300000)
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
          Transparent = False
          WordWrap = True
          FontSize = 6
        end
        object QRDBText63: TQRDBText
          Left = 436
          Top = 1
          Width = 151
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            28.663194444444440000
            961.319444444444400000
            2.204861111111111000
            332.934027777777800000)
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
          Transparent = False
          WordWrap = True
          FontSize = 6
        end
        object QRDBText67: TQRDBText
          Left = 593
          Top = 1
          Width = 114
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            28.663194444444440000
            1307.482638888889000000
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
          Transparent = False
          WordWrap = True
          FontSize = 6
        end
        object QRDBText69: TQRDBText
          Left = 712
          Top = 1
          Width = 147
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            28.663194444444440000
            1569.861111111111000000
            2.204861111111111000
            324.114583333333300000)
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
          Transparent = False
          WordWrap = True
          FontSize = 6
        end
        object QRDBText1: TQRDBText
          Left = 220
          Top = 1
          Width = 210
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            28.663194444444440000
            485.069444444444400000
            2.204861111111111000
            463.020833333333300000)
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
          Transparent = False
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
          Top = 1
          Width = 174
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            33.072916666666670000
            11.024305555555560000
            2.204861111111111000
            383.645833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Proveedor'
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
          Left = 220
          Top = 1
          Width = 182
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            33.072916666666670000
            485.069444444444400000
            2.204861111111111000
            401.284722222222200000)
          Alignment = taLeftJustify
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
          Left = 436
          Top = 1
          Width = 122
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            33.072916666666670000
            961.319444444444400000
            2.204861111111111000
            268.993055555555600000)
          Alignment = taLeftJustify
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
          Left = 593
          Top = 1
          Width = 95
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            33.072916666666670000
            1307.482638888889000000
            2.204861111111111000
            209.461805555555600000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Telefono'
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
          Left = 712
          Top = 1
          Width = 66
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            33.072916666666670000
            1569.861111111111000000
            2.204861111111111000
            145.520833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Email'
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
        Height = 34
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
          74.965277777777780000
          1898.385416666667000000)
        BandType = rbSummary
        object QRSysData4: TQRSysData
          Left = 158
          Top = 7
          Width = 103
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            348.368055555555600000
            15.434027777777780000
            227.100694444444400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          Color = clWhite
          Data = qrsDetailCount
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          FontSize = 9
        end
        object QRLabel5: TQRLabel
          Left = 2
          Top = 8
          Width = 154
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            4.409722222222222000
            17.638888888888890000
            339.548611111111100000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Cantidad de Proveedores:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
      end
      object QRBand2: TQRBand
        Tag = 99
        Left = 45
        Top = 215
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
            Item = btVerDetalle
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
      ShortCut = 113
      OnClick = BtNuevoClick
      AutoGrayScale = False
    end
    object BtModificar: TdxBarLargeButton
      Caption = 'Modificar'
      Category = 0
      Hint = 'Modifica el registro actual'
      Visible = ivAlways
      ImageIndex = 1
      ShortCut = 114
      OnClick = BtModificarClick
      AutoGrayScale = False
    end
    object btBaja: TdxBarLargeButton
      Caption = 'Baja'
      Category = 0
      Hint = 'Da de baja un registro'
      Visible = ivAlways
      ImageIndex = 25
      ShortCut = 115
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
      ShortCut = 121
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
      ShortCut = 120
      OnClick = BtCancelarClick
      AutoGrayScale = False
    end
    object btReactivar: TdxBarLargeButton
      Caption = 'Reactivar'
      Category = 0
      Hint = 'Reactiva un registro'
      Visible = ivAlways
      ImageIndex = 24
      ShortCut = 116
      OnClick = btReactivarClick
      AutoGrayScale = False
    end
    object btVerDetalle: TdxBarLargeButton
      Align = iaRight
      Caption = 'Ver Detalle'
      Category = 0
      Hint = 'Ver Detalle'
      Visible = ivAlways
      ImageIndex = 69
      ShortCut = 122
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
      ShortCut = 123
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
        Titulo = 'Nombre y Apellido'
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
        Titulo = 'Direccion'
        Campo = 'direccion'
        Tabla = 'p'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Nro Doc'
        Campo = 'nro_documento'
        Tabla = 'p'
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
    Left = 256
    Top = 96
  end
  object EKOrdenarGrilla1: TEKOrdenarGrilla
    Grilla = DBGridProveedores
    FuenteNormal = []
    NombreGuardarConfig = 'UABMProveedores'
    Ordenar = True
    Left = 80
    Top = 160
  end
  object Provider_Conceptos: TDataSetProvider
    DataSet = ZQ_Conceptos
    ResolveToDataSet = True
    Left = 707
    Top = 242
  end
  object CD_Conceptos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider_Conceptos'
    Left = 707
    Top = 178
    object CD_ConceptosID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
    end
    object CD_ConceptosCOD_CORTO: TStringField
      FieldName = 'COD_CORTO'
      Size = 6
    end
    object CD_ConceptosNOMBRE_CONCEPTO: TStringField
      FieldName = 'NOMBRE_CONCEPTO'
      Size = 240
    end
    object CD_ConceptosBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object CD_ConceptosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object CD_ConceptosEDITABLE: TStringField
      FieldName = 'EDITABLE'
      Size = 1
    end
    object CD_ConceptosID_PROVEEDOR: TIntegerField
      FieldName = 'ID_PROVEEDOR'
    end
  end
  object DS_Conceptos: TDataSource
    DataSet = CD_Conceptos
    Left = 707
    Top = 122
  end
  object ZQ_Conceptos: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select c.*, p.id_proveedor'
      'from ie_conceptos c'
      
        'left join proveedor_concepto p on (c.id_concepto = p.id_concepto' +
        ') and (p.id_proveedor = :proveedor)'
      'order by c.nombre_concepto')
    Params = <
      item
        DataType = ftUnknown
        Name = 'proveedor'
        ParamType = ptUnknown
      end>
    Left = 707
    Top = 66
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'proveedor'
        ParamType = ptUnknown
      end>
    object ZQ_ConceptosID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
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
    object ZQ_ConceptosID_PROVEEDOR: TIntegerField
      FieldName = 'ID_PROVEEDOR'
    end
  end
  object ZQ_CuentasA: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select c.*, p.id_proveedor'
      'from ie_cuentas c'
      
        'left join proveedor_cuenta p on (c.id_cuenta = p.id_cuenta) and ' +
        '(p.id_proveedor = :proveedor)'
      'order by c.nombre_cuenta')
    Params = <
      item
        DataType = ftUnknown
        Name = 'proveedor'
        ParamType = ptUnknown
      end>
    Left = 835
    Top = 66
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'proveedor'
        ParamType = ptUnknown
      end>
    object ZQ_CuentasAID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
    end
    object ZQ_CuentasANOMBRE_CUENTA: TStringField
      FieldName = 'NOMBRE_CUENTA'
      Size = 100
    end
    object ZQ_CuentasAMEDIO_DE_PAGO: TStringField
      FieldName = 'MEDIO_DE_PAGO'
      Size = 50
    end
    object ZQ_CuentasANRO_CUENTA_BANCARIA: TStringField
      FieldName = 'NRO_CUENTA_BANCARIA'
      Size = 100
    end
    object ZQ_CuentasAULTIMO_NRO: TIntegerField
      FieldName = 'ULTIMO_NRO'
    end
    object ZQ_CuentasAAUTONUMERAR: TStringField
      FieldName = 'AUTONUMERAR'
      Size = 1
    end
    object ZQ_CuentasAMEDIO_POR_DEFECTO: TIntegerField
      FieldName = 'MEDIO_POR_DEFECTO'
    end
    object ZQ_CuentasACOLOR_CONSILIADO: TStringField
      FieldName = 'COLOR_CONSILIADO'
    end
    object ZQ_CuentasAID_PROVEEDOR: TIntegerField
      FieldName = 'ID_PROVEEDOR'
    end
  end
  object DS_CuentasA: TDataSource
    DataSet = CD_CuentasA
    Left = 835
    Top = 122
  end
  object CD_CuentasA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider_CuentasA'
    Left = 835
    Top = 178
    object CD_CuentasAID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
    end
    object CD_CuentasANOMBRE_CUENTA: TStringField
      FieldName = 'NOMBRE_CUENTA'
      Size = 100
    end
    object CD_CuentasAMEDIO_DE_PAGO: TStringField
      FieldName = 'MEDIO_DE_PAGO'
      Size = 50
    end
    object CD_CuentasANRO_CUENTA_BANCARIA: TStringField
      FieldName = 'NRO_CUENTA_BANCARIA'
      Size = 100
    end
    object CD_CuentasAULTIMO_NRO: TIntegerField
      FieldName = 'ULTIMO_NRO'
    end
    object CD_CuentasAAUTONUMERAR: TStringField
      FieldName = 'AUTONUMERAR'
      Size = 1
    end
    object CD_CuentasAMEDIO_POR_DEFECTO: TIntegerField
      FieldName = 'MEDIO_POR_DEFECTO'
    end
    object CD_CuentasACOLOR_CONSILIADO: TStringField
      FieldName = 'COLOR_CONSILIADO'
    end
    object CD_CuentasAID_PROVEEDOR: TIntegerField
      FieldName = 'ID_PROVEEDOR'
    end
  end
  object Provider_CuentasA: TDataSetProvider
    DataSet = ZQ_CuentasA
    ResolveToDataSet = True
    Left = 835
    Top = 242
  end
  object EKOrdenarCuentas: TEKOrdenarGrilla
    Grilla = DBGridCuentas
    FuenteNormal = []
    Ordenar = True
    Left = 53
    Top = 412
  end
  object EKOrdenarConceptos: TEKOrdenarGrilla
    Grilla = DBGridConceptos
    FuenteNormal = []
    Ordenar = True
    Left = 550
    Top = 420
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
    Left = 293
    Top = 404
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
    Left = 365
    Top = 404
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
end
