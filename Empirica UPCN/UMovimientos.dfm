object FMovimientos: TFMovimientos
  Left = 212
  Top = 186
  Width = 1047
  Height = 588
  Caption = 'Movimientos'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PContenedor: TPanel
    Left = 0
    Top = 0
    Width = 1031
    Height = 498
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      1031
      498)
    object PEdicion: TPanel
      Left = 0
      Top = 26
      Width = 1031
      Height = 441
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      DesignSize = (
        1031
        441)
      object Label3: TLabel
        Left = 12
        Top = 10
        Width = 38
        Height = 13
        Caption = 'Fecha:'
        Transparent = True
      end
      object Label4: TLabel
        Left = 12
        Top = 38
        Width = 64
        Height = 13
        Caption = 'Proveedor:'
        Transparent = True
      end
      object Label5: TLabel
        Left = 12
        Top = 67
        Width = 59
        Height = 13
        Caption = 'Concepto:'
        Transparent = True
      end
      object Label6: TLabel
        Left = 12
        Top = 121
        Width = 71
        Height = 13
        Caption = 'Descripci'#243'n:'
        Transparent = True
      end
      object Label1: TLabel
        Left = 12
        Top = 94
        Width = 46
        Height = 13
        Caption = 'Cuenta:'
        Transparent = True
      end
      object Label2: TLabel
        Left = 468
        Top = 94
        Width = 98
        Height = 13
        Caption = 'Tipo Movimiento:'
        Transparent = True
      end
      object LabelDetalle: TLabel
        Left = 770
        Top = 8
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = '                '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 598
        Top = 38
        Width = 220
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Presione F1 Para Buscar un Proveedor'
        Transparent = True
      end
      object Label13: TLabel
        Left = 598
        Top = 67
        Width = 215
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Presione F1 Para Buscar un Concepto'
        Transparent = True
      end
      object ISDBEditDateTimePicker1: TISDBEditDateTimePicker
        Left = 101
        Top = 7
        Width = 145
        Height = 21
        Date = 39417.795984317130000000
        Time = 39417.795984317130000000
        DateFormat = dfLong
        TabOrder = 0
        DataField = 'FECHA'
        DataSource = DS_Movimientos
        ReadOnly = False
        DefaultEditMask = '!99/99/9999;1;_'
        AutoApplyEditMask = True
      end
      object DBEditNroProveedor: TDBEdit
        Left = 101
        Top = 35
        Width = 49
        Height = 21
        DataField = 'NRO_PROVEEDOR'
        DataSource = DS_Movimientos
        TabOrder = 1
        OnKeyUp = DBEditNroProveedorKeyUp
      end
      object DBLUpCBoxProveedor: TDBLookupComboBox
        Left = 157
        Top = 35
        Width = 434
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NRO_PROVEEDOR'
        DataSource = DS_Movimientos
        KeyField = 'NRO_PROVEEDOR'
        ListField = 'NOMBRE_FANTASIA'
        ListSource = DS_Proveedores
        TabOrder = 2
        OnKeyUp = DBLUpCBoxProveedorKeyUp
      end
      object DBMemoDescripcion: TDBMemo
        Left = 101
        Top = 118
        Width = 908
        Height = 33
        Anchors = [akLeft, akTop, akRight]
        Color = 16772842
        DataField = 'DESCRIPCION'
        DataSource = DS_Movimientos
        TabOrder = 8
      end
      object panel_edicion_medio_de_pago: TPanel
        Left = 7
        Top = 160
        Width = 1021
        Height = 278
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 9
        object Shape5: TShape
          Left = 0
          Top = 0
          Width = 1021
          Height = 20
          Align = alTop
          Brush.Color = 16762544
          Pen.Color = 16745557
          Shape = stRoundRect
        end
        object Label7: TLabel
          Left = 13
          Top = 3
          Width = 47
          Height = 13
          Caption = 'MEDIOS'
          Transparent = True
        end
        object DbGridMediosCobroPago: TDBGrid
          Left = 0
          Top = 20
          Width = 1021
          Height = 232
          Align = alClient
          Color = 16772842
          DataSource = DS_Cuenta_Movimiento
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnColExit = DbGridMediosCobroPagoColExit
          OnKeyUp = DbGridMediosCobroPagoKeyUp
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_MEDIO'
              Title.Caption = 'Cod Medio'
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'medio_de_pago'
              Title.Caption = 'Medio'
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_CUENTA_INGRESO'
              ReadOnly = True
              Title.Caption = 'Cod Cta'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nombre_cuenta_ingreso'
              ReadOnly = True
              Title.Caption = 'Nombre Cuenta Ingreso'
              Width = 145
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_CUENTA_EGRESO'
              ReadOnly = True
              Title.Caption = 'Cod Cta'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nombre_cuenta_egreso'
              ReadOnly = True
              Title.Caption = 'Nombre Cuenta Egreso'
              Width = 139
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHA_MDC'
              Title.Caption = 'Fecha PD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BANCO_MDC'
              Title.Caption = 'Banco'
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NRO_CHEQUE_TRANSF'
              Title.Caption = 'Nro medio'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NRO_FACTURA_RECIBO'
              Title.Caption = 'Nro F/R'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OTROS'
              Title.Caption = 'Otros'
              Width = 135
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Caption = 'Importe'
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 0
          Top = 252
          Width = 1021
          Height = 26
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            1021
            26)
          object txt_total_medio_pago: TLabel
            Left = 948
            Top = 8
            Width = 37
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = 'Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btEliminarLinea: TButton
            Left = 8
            Top = 4
            Width = 153
            Height = 17
            Caption = 'Eliminar Linea (Del)'
            TabOrder = 0
            TabStop = False
            OnClick = btEliminarLineaClick
          end
        end
      end
      object DBLUpCBoxConcepto: TDBLookupComboBox
        Left = 157
        Top = 64
        Width = 434
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'ID_CONCEPTO'
        DataSource = DS_Movimientos
        KeyField = 'ID_CONCEPTO'
        ListField = 'NOMBRE_CONCEPTO'
        ListSource = DS_Conceptos
        TabOrder = 4
        OnKeyUp = DBLUpCBoxConceptoKeyUp
      end
      object DBEditNroConcepto: TDBEdit
        Left = 101
        Top = 64
        Width = 49
        Height = 21
        DataField = 'ID_CONCEPTO'
        DataSource = DS_Movimientos
        TabOrder = 3
        OnKeyUp = DBEditNroConceptoKeyUp
      end
      object DBLUpCBoxCuenta: TDBLookupComboBox
        Left = 101
        Top = 91
        Width = 357
        Height = 21
        KeyField = 'ID_CUENTA'
        ListField = 'BUSQUEDA'
        ListSource = DS_Cuentas
        TabOrder = 5
        OnEnter = DBLUpCBoxCuentaEnter
        OnExit = DBLUpCBoxCuentaExit
      end
      object DBLUCBoxNroTipoMov: TDBLookupComboBox
        Left = 572
        Top = 89
        Width = 77
        Height = 21
        DataField = 'ID_TIPO_MOVIMIENTO'
        DataSource = DS_Movimientos
        KeyField = 'ID_TIPO_MOVIEMIENTO'
        ListField = 'CODIGO_CORTO'
        ListSource = DS_Tipo_Movimiento
        TabOrder = 6
      end
      object DBLUCBoxNombreTipoMov: TDBLookupComboBox
        Left = 656
        Top = 89
        Width = 355
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'ID_TIPO_MOVIMIENTO'
        DataSource = DS_Movimientos
        KeyField = 'ID_TIPO_MOVIEMIENTO'
        ListField = 'DESCRIPCION'
        ListSource = DS_Tipo_Movimiento
        TabOrder = 7
      end
    end
    object DBGridLibroBanco: TDBGrid
      Left = 0
      Top = 26
      Width = 1031
      Height = 441
      Align = alClient
      Color = 16772842
      DataSource = DS_LIBRO_BANCO
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridLibroBancoDrawColumnCell
      OnDblClick = DBGridLibroBancoDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_MOVIMIENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA'
          Title.Caption = 'Fecha Emi'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA_PD'
          Title.Caption = 'Fecha PD'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_PAGO_REC'
          Title.Caption = 'Nro Movimiento'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_ORDEN'
          Title.Caption = 'Nro Orden'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MEDIO'
          Title.Caption = 'Medio'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_MEDIO'
          Title.Caption = 'Nro medio'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_MOV'
          Title.Caption = 'Tipo Movimiento'
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRIPCION'
          Title.Caption = 'Proveedor'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_CONCEPTO'
          Title.Caption = 'Concepto'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OTROS'
          Title.Caption = 'Otros'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_FAC_REC'
          Title.Caption = 'Nro F/R'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEBE'
          Title.Caption = 'Debe'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HABER'
          Title.Caption = 'Haber'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO'
          Title.Caption = 'Saldo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONCILIADO'
          Title.Caption = 'Conciliado'
          Visible = True
        end>
    end
    object PParametrosLibroBanco: TPanel
      Left = 0
      Top = 0
      Width = 1031
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object Label8: TLabel
        Left = 8
        Top = 8
        Width = 46
        Height = 13
        Caption = 'Cuenta:'
      end
      object Label9: TLabel
        Left = 461
        Top = 8
        Width = 78
        Height = 13
        Caption = 'Fecha Desde:'
      end
      object Label11: TLabel
        Left = 643
        Top = 8
        Width = 74
        Height = 13
        Caption = 'Fecha Hasta:'
      end
      object Label10: TLabel
        Left = 300
        Top = 7
        Width = 40
        Height = 13
        Caption = 'Orden:'
      end
      object DTPFechaDesde: TDateTimePicker
        Left = 541
        Top = 4
        Width = 97
        Height = 21
        Date = 40429.660294768520000000
        Time = 40429.660294768520000000
        TabOrder = 0
      end
      object DTPFechaHasta: TDateTimePicker
        Left = 723
        Top = 4
        Width = 97
        Height = 21
        Date = 40429.660352638890000000
        Time = 40429.660352638890000000
        TabOrder = 1
      end
      object btaplicar: TButton
        Left = 837
        Top = 4
        Width = 75
        Height = 19
        Caption = 'Aplicar'
        TabOrder = 2
        OnClick = btaplicarClick
      end
      object DBLCuenta: TComboBox
        Left = 60
        Top = 4
        Width = 235
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 3
      end
      object ComboOrden: TComboBox
        Left = 346
        Top = 4
        Width = 110
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 4
        Text = 'Fecha Emision'
        Items.Strings = (
          'Fecha Emision'
          'Fecha PD')
      end
      object StaticText1: TStaticText
        Left = 960
        Top = 0
        Width = 71
        Height = 26
        Align = alRight
        Caption = 'Conciliado'
        Color = 10354687
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 5
      end
      object StaticText2: TStaticText
        Left = 903
        Top = 0
        Width = 57
        Height = 26
        Align = alRight
        Caption = 'Anulado'
        Color = 8421631
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 6
      end
    end
    object PFiltrosColumnas: TPanel
      Left = 0
      Top = 467
      Width = 1031
      Height = 31
      Align = alBottom
      TabOrder = 3
      Visible = False
      object BtAplicarFiltrosColumnas: TButton
        Left = 887
        Top = 6
        Width = 75
        Height = 19
        Caption = 'Aplicar'
        TabOrder = 0
        OnClick = BtAplicarFiltrosColumnasClick
      end
      object CBFechaEmi: TCheckBox
        Left = 8
        Top = 8
        Width = 103
        Height = 17
        Caption = 'Fecha emision'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object CBFechaPD: TCheckBox
        Left = 112
        Top = 8
        Width = 78
        Height = 17
        Caption = 'Fecha PD'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object CBNroMov: TCheckBox
        Left = 193
        Top = 8
        Width = 111
        Height = 17
        Caption = 'Nro Movimiento'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object CBMedio: TCheckBox
        Left = 311
        Top = 8
        Width = 62
        Height = 17
        Caption = 'Medio'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object CBNroMedio: TCheckBox
        Left = 375
        Top = 8
        Width = 81
        Height = 17
        Caption = 'Nro Medio'
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
      object CBProveedor: TCheckBox
        Left = 546
        Top = 8
        Width = 102
        Height = 17
        Caption = 'Proveedores'
        Checked = True
        State = cbChecked
        TabOrder = 6
      end
      object CBConcepto: TCheckBox
        Left = 642
        Top = 8
        Width = 81
        Height = 17
        Caption = 'Concepto'
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object CBTipoMedio: TCheckBox
        Left = 460
        Top = 8
        Width = 81
        Height = 17
        Caption = 'Tipo Medio'
        Checked = True
        State = cbChecked
        TabOrder = 8
      end
      object CBOtros: TCheckBox
        Left = 720
        Top = 8
        Width = 78
        Height = 17
        Caption = 'Otros'
        Checked = True
        State = cbChecked
        TabOrder = 9
      end
      object CBNroFactura: TCheckBox
        Left = 780
        Top = 8
        Width = 88
        Height = 17
        Caption = 'Nro Factura'
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
    end
    object PanelImpresion: TPanel
      Tag = 99
      Left = 306
      Top = 139
      Width = 505
      Height = 281
      Anchors = []
      BevelInner = bvRaised
      BevelOuter = bvNone
      BevelWidth = 3
      BorderWidth = 3
      TabOrder = 4
      Visible = False
      DesignSize = (
        505
        281)
      object Label15: TLabel
        Left = 6
        Top = 8
        Width = 489
        Height = 18
        AutoSize = False
        Caption = ' Imprimir Orden de Pago'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label19: TLabel
        Left = 18
        Top = 63
        Width = 70
        Height = 13
        Caption = 'Nro Orden:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 8
        Top = 82
        Width = 80
        Height = 13
        Caption = 'Descripci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 15
        Top = 39
        Width = 73
        Height = 13
        Caption = 'Impresora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 29
        Top = 215
        Width = 59
        Height = 13
        Caption = 'Autoriza:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object nro_comprobante: TDBEdit
        Left = 96
        Top = 56
        Width = 121
        Height = 21
        Color = 16777088
        DataField = 'NRO_ORDEN'
        DataSource = DS_Movimientos
        Enabled = False
        TabOrder = 1
      end
      object DBMemo3: TDBMemo
        Left = 8
        Top = 99
        Width = 489
        Height = 105
        Anchors = [akLeft, akTop, akRight]
        DataField = 'DESCRIPCION'
        DataSource = DS_Movimientos
        TabOrder = 5
        WantTabs = True
      end
      object cBoxImpresoras: TComboBox
        Left = 96
        Top = 32
        Width = 393
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
      end
      object ori: TCheckBox
        Left = 230
        Top = 60
        Width = 51
        Height = 17
        Caption = 'Orig.'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object dup: TCheckBox
        Left = 286
        Top = 60
        Width = 57
        Height = 17
        Caption = 'Dup.'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object tri: TCheckBox
        Left = 342
        Top = 60
        Width = 57
        Height = 17
        Caption = 'Trip.'
        TabOrder = 4
      end
      object btnImprimirAceptar: TButton
        Left = 167
        Top = 240
        Width = 75
        Height = 25
        Caption = 'Aceptar'
        TabOrder = 6
        OnClick = btnImprimirAceptarClick
      end
      object btnImprimirCancelar: TButton
        Left = 263
        Top = 240
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 7
        OnClick = btnImprimirCancelarClick
      end
      object CBoxAutoriza: TComboBox
        Left = 96
        Top = 211
        Width = 393
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 8
      end
    end
    object QR_OrdenPago: TQuickRep
      Tag = 99
      Left = 529
      Top = -57
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Font.Charset = DEFAULT_CHARSET
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
      ReportTitle = 'Orden de Pago'
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      object QRBand13: TQRBand
        Tag = 99
        Left = 38
        Top = 150
        Width = 718
        Height = 146
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
          386.291666666666700000
          1899.708333333333000000)
        BandType = rbDetail
        object QRDBText30: TQRDBText
          Left = 118
          Top = 23
          Width = 591
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            312.208333333333300000
            60.854166666666670000
            1563.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedores
          DataField = 'NOMBRE_FANTASIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel17: TQRLabel
          Left = 30
          Top = 23
          Width = 85
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            79.375000000000000000
            60.854166666666670000
            224.895833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Destinatario:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel10: TQRLabel
          Left = 50
          Top = 41
          Width = 65
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            132.291666666666700000
            108.479166666666700000
            171.979166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Domicilio:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText41: TQRDBText
          Left = 118
          Top = 41
          Width = 592
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            312.208333333333300000
            108.479166666666700000
            1566.333333333333000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedores
          DataField = 'DIRECCION'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText46: TQRDBText
          Left = 347
          Top = 59
          Width = 247
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            918.104166666666700000
            156.104166666666700000
            653.520833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedores
          DataField = 'NRO_DOCUMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel27: TQRLabel
          Left = 233
          Top = 59
          Width = 111
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            616.479166666666700000
            156.104166666666700000
            293.687500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Nro. Documento:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText63: TQRDBText
          Left = 118
          Top = 59
          Width = 107
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            312.208333333333300000
            156.104166666666700000
            283.104166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedores
          DataField = 'TIPO_DOCUMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel12: TQRLabel
          Left = 5
          Top = 59
          Width = 110
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            13.229166666666670000
            156.104166666666700000
            291.041666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tipo Documento:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel43: TQRLabel
          Left = 34
          Top = 93
          Width = 81
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            89.958333333333330000
            246.062500000000000000
            214.312500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Descripcion:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText64: TQRDBText
          Left = 118
          Top = 93
          Width = 591
          Height = 49
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            129.645833333333300000
            312.208333333333300000
            246.062500000000000000
            1563.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = ZQ_Movimientos
          DataField = 'DESCRIPCION'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel1: TQRLabel
          Left = 65
          Top = 4
          Width = 50
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            171.979166666666700000
            10.583333333333330000
            132.291666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cuenta:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText1: TQRDBText
          Left = 118
          Top = 4
          Width = 251
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            312.208333333333300000
            10.583333333333330000
            664.104166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuentas
          DataField = 'NOMBRE_CUENTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRShape1: TQRShape
          Left = 5
          Top = 18
          Width = 704
          Height = 5
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            13.229166666666670000
            13.229166666666670000
            47.625000000000000000
            1862.666666666667000000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRDBText3: TQRDBText
          Left = 494
          Top = 4
          Width = 211
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1307.041666666667000000
            10.583333333333330000
            558.270833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuentas
          DataField = 'NRO_CUENTA_BANCARIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel2: TQRLabel
          Left = 381
          Top = 4
          Width = 110
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1008.062500000000000000
            10.583333333333330000
            291.041666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'N'#250'mero Cuenta:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRShape3: TQRShape
          Left = 5
          Top = 74
          Width = 704
          Height = 5
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            13.229166666666670000
            13.229166666666670000
            195.791666666666700000
            1862.666666666667000000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRDBText15: TQRDBText
          Left = 118
          Top = 78
          Width = 572
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            312.208333333333300000
            206.375000000000000000
            1513.416666666667000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Conceptos
          DataField = 'NOMBRE_CONCEPTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel3: TQRLabel
          Left = 50
          Top = 78
          Width = 65
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            132.291666666666700000
            206.375000000000000000
            171.979166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Concepto:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
      end
      object QRBand14: TQRBand
        Tag = 99
        Left = 38
        Top = 38
        Width = 718
        Height = 112
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          296.333333333333300000
          1899.708333333333000000)
        BandType = rbPageHeader
        object RepOrdenCompra_SITUACIONIVAYCUIT: TQRLabel
          Left = 80
          Top = 71
          Width = 316
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            211.666666666666700000
            187.854166666666700000
            836.083333333333400000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'RepOrdenCompra_SITUACIONIVAYCUIT'
          Color = clWhite
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
        object RepOrdenCompra_TELEFONOS: TQRLabel
          Left = 80
          Top = 58
          Width = 316
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            211.666666666666700000
            153.458333333333300000
            836.083333333333400000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'RepOrdenCompra_TELEFONOS'
          Color = clWhite
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
        object RepOrdenCompra_DIRECCION: TQRLabel
          Left = 80
          Top = 45
          Width = 316
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            211.666666666666700000
            119.062500000000000000
            836.083333333333400000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'RepOrdenCompra_DIRECCION'
          Color = clWhite
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
        object QRDBText65: TQRDBText
          Left = 477
          Top = 94
          Width = 236
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            1262.062500000000000000
            248.708333333333300000
            624.416666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Movimientos
          DataField = 'FECHA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object RepOrdenCompra_EMPRESA: TQRLabel
          Left = 80
          Top = 9
          Width = 316
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            63.500000000000000000
            211.666666666666700000
            23.812500000000000000
            836.083333333333400000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'RepOrdenCompra_EMPRESA'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 14
        end
        object QRShape2: TQRShape
          Left = 406
          Top = 0
          Width = 9
          Height = 111
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            293.687500000000000000
            1074.208333333333000000
            0.000000000000000000
            23.812500000000000000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRLabel94: TQRLabel
          Left = 425
          Top = 78
          Width = 50
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            1124.479166666667000000
            206.375000000000000000
            132.291666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'N'#250'mero:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRLabel95: TQRLabel
          Left = 425
          Top = 94
          Width = 50
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            1124.479166666667000000
            248.708333333333300000
            132.291666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Fecha:'
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
        object QRDBText66: TQRDBText
          Left = 477
          Top = 78
          Width = 236
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            1262.062500000000000000
            206.375000000000000000
            624.416666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Movimientos
          DataField = 'NRO_ORDEN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object RepOrdenCompra_DUENIO: TQRLabel
          Left = 80
          Top = 32
          Width = 316
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            211.666666666666700000
            84.666666666666680000
            836.083333333333400000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'RepOrdenCompra_DUENIO'
          Color = clWhite
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
        object QRLabel102: TQRLabel
          Left = 441
          Top = 24
          Width = 249
          Height = 29
          Frame.Color = clGray
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            76.729166666666670000
            1166.812500000000000000
            63.500000000000000000
            658.812500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'ORDEN DE'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -23
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 17
        end
        object QRLabel106: TQRLabel
          Left = 441
          Top = 48
          Width = 249
          Height = 29
          Frame.Color = clGray
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            76.729166666666670000
            1166.812500000000000000
            127.000000000000000000
            658.812500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'PAGO'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -23
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 17
        end
        object QRLabelImpresion: TQRLabel
          Left = 576
          Top = 3
          Width = 132
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1524.000000000000000000
            7.937500000000000000
            349.250000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tipo De Impresion'
          Color = clWhite
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
      end
      object QRSubDetail14: TQRSubDetail
        Tag = 99
        Left = 38
        Top = 296
        Width = 718
        Height = 18
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
          47.625000000000000000
          1899.708333333333000000)
        Master = QR_OrdenPago
        PrintBefore = False
        PrintIfEmpty = True
        object QRLabel107: TQRLabel
          Left = 3
          Top = 2
          Width = 112
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            7.937500000000000000
            5.291666666666667000
            296.333333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Forma de Pago'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
      end
      object QRChildBand8: TQRChildBand
        Tag = 99
        Left = 38
        Top = 314
        Width = 718
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clSilver
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          39.687500000000000000
          1899.708333333333000000)
        ParentBand = QRSubDetail14
        object QRLabel110: TQRLabel
          Left = 92
          Top = 1
          Width = 39
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            243.416666666666700000
            2.645833333333333000
            103.187500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
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
          FontSize = 8
        end
        object QRLabel111: TQRLabel
          Left = 513
          Top = 1
          Width = 130
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1357.312500000000000000
            2.645833333333333000
            343.958333333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nro Cheque/Transf.'
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
        object QRLabel112: TQRLabel
          Left = 652
          Top = 1
          Width = 61
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1725.083333333333000000
            2.645833333333333000
            161.395833333333300000)
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
          FontSize = 8
        end
        object QRLabel113: TQRLabel
          Left = 7
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
            18.520833333333330000
            2.645833333333333000
            179.916666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'F. Emisi'#243'n'
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
        object QRLabel114: TQRLabel
          Left = 367
          Top = 1
          Width = 82
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            971.020833333333300000
            2.645833333333333000
            216.958333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Banco'
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
        object QRLabel116: TQRLabel
          Left = 266
          Top = 1
          Width = 95
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            703.791666666666700000
            2.645833333333333000
            251.354166666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Fecha Cheque'
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
      object QRSubDetail17: TQRSubDetail
        Tag = 99
        Left = 38
        Top = 329
        Width = 718
        Height = 18
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
          47.625000000000000000
          1899.708333333333000000)
        Master = QR_OrdenPago
        DataSet = ZQ_Cuenta_Movimiento
        PrintBefore = False
        PrintIfEmpty = True
        object QRDBText71: TQRDBText
          Left = 93
          Top = 2
          Width = 168
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            246.062500000000000000
            5.291666666666667000
            444.500000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuenta_Movimiento
          DataField = 'medio_de_pago'
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
        object QRDBText74: TQRDBText
          Left = 630
          Top = 2
          Width = 83
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            1666.875000000000000000
            5.291666666666667000
            219.604166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuenta_Movimiento
          DataField = 'IMPORTE'
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
        object QRDBText75: TQRDBText
          Left = 2
          Top = 2
          Width = 87
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            5.291666666666667000
            5.291666666666667000
            230.187500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuenta_Movimiento
          DataField = 'FECHA_MDC'
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
        object QRDBText76: TQRDBText
          Left = 367
          Top = 2
          Width = 142
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            971.020833333333300000
            5.291666666666667000
            375.708333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuenta_Movimiento
          DataField = 'BANCO_MDC'
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
        object QRDBText77: TQRDBText
          Left = 512
          Top = 2
          Width = 115
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            1354.666666666667000000
            5.291666666666667000
            304.270833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuenta_Movimiento
          DataField = 'NRO_CHEQUE_TRANSF'
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
        object QRDBText78: TQRDBText
          Left = 266
          Top = 2
          Width = 95
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            703.791666666666700000
            5.291666666666667000
            251.354166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuenta_Movimiento
          DataField = 'FECHA_MDC'
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
      end
      object QRSubDetail18: TQRSubDetail
        Tag = 99
        Left = 38
        Top = 347
        Width = 718
        Height = 125
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
          330.729166666666700000
          1899.708333333333000000)
        Master = QR_OrdenPago
        PrintBefore = False
        PrintIfEmpty = True
        object QrtImporteFPago: TQRLabel
          Left = 432
          Top = 5
          Width = 281
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1143.000000000000000000
            13.229166666666670000
            743.479166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'QrtImporteFPago'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLblConfecciona: TQRLabel
          Left = 105
          Top = 77
          Width = 76
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            277.812500000000000000
            203.729166666666700000
            201.083333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Confeccion'#243':'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRShape6: TQRShape
          Left = 105
          Top = 72
          Width = 206
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            277.812500000000000000
            190.500000000000000000
            545.041666666666700000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRShape7: TQRShape
          Left = 350
          Top = 72
          Width = 206
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.645833333333333000
            926.041666666666700000
            190.500000000000000000
            545.041666666666700000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRLblAutorizo: TQRLabel
          Left = 350
          Top = 77
          Width = 53
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            926.041666666666700000
            203.729166666666700000
            140.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Autoriz'#243':'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
      end
      object QRBand15: TQRBand
        Tag = 99
        Left = 38
        Top = 472
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
        object QRLabel123: TQRLabel
          Left = 4
          Top = 2
          Width = 85
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            10.583333333333330000
            5.291666666666667000
            224.895833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Empirica / UPCN -'
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
          Left = 91
          Top = 2
          Width = 70
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            240.770833333333300000
            5.291666666666667000
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
            Item = BtVerDetalle
            Visible = True
          end
          item
            BeginGroup = True
            Item = BtIngresos
            Visible = True
          end
          item
            Item = BtEgresos
            Visible = True
          end
          item
            Item = BtEditarMovimiento
            Visible = True
          end
          item
            BeginGroup = True
            Item = BtAnularOrden
            Visible = True
          end
          item
            Item = BtAnularMov
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnImprimirOrden
            Visible = True
          end
          item
            Item = BtExportarExel
            Visible = True
          end
          item
            Item = BtVerCampos
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
            Item = btSalir
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
    Left = 840
    Top = 320
    DockControlHeights = (
      0
      0
      0
      52)
    object BtIngresos: TdxBarLargeButton
      Caption = 'Ingresos'
      Category = 0
      Hint = 'Inserta un nuevo registro'
      Visible = ivAlways
      ImageIndex = 60
      ShortCut = 113
      OnClick = BtIngresosClick
      AutoGrayScale = False
    end
    object BtEgresos: TdxBarLargeButton
      Caption = 'Egresos'
      Category = 0
      Hint = 'Modifica el registro actual'
      Visible = ivAlways
      ImageIndex = 61
      ShortCut = 114
      OnClick = BtEgresosClick
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
    object btImprimir: TdxBarLargeButton
      Caption = 'Imprimir Movimiento'
      Category = 0
      Hint = 'Imprimir Movimiento'
      Visible = ivAlways
      ImageIndex = 28
      OnClick = btImprimirClick
    end
    object btSalir: TdxBarLargeButton
      Align = iaRight
      Caption = 'Salir'
      Category = 0
      Hint = 'Salir'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = btSalirClick
      AutoGrayScale = False
    end
    object BtEditarMovimiento: TdxBarLargeButton
      Caption = 'Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      ImageIndex = 35
      OnClick = BtEditarMovimientoClick
      AutoGrayScale = False
    end
    object BtVerCampos: TdxBarLargeButton
      Caption = 'Filtrar Columnas'
      Category = 0
      Hint = 'Filtrar Columnas'
      Visible = ivAlways
      ImageIndex = 7
      OnClick = BtVerCamposClick
      AutoGrayScale = False
    end
    object BtVerDetalle: TdxBarLargeButton
      Caption = 'Ver Detalle'
      Category = 0
      Hint = 'Ver Detalle'
      Visible = ivAlways
      ImageIndex = 69
      OnClick = BtVerDetalleClick
      AutoGrayScale = False
    end
    object BtAnularOrden: TdxBarLargeButton
      Caption = 'Anular Orden'
      Category = 0
      Hint = 'Anular Orden'
      Visible = ivAlways
      ImageIndex = 9
      OnClick = BtAnularOrdenClick
      AutoGrayScale = False
    end
    object BtAnularMov: TdxBarLargeButton
      Caption = 'Anular Movimiento'
      Category = 0
      Hint = 'Anular Movimiento'
      Visible = ivAlways
      ImageIndex = 68
      OnClick = BtAnularMovClick
      AutoGrayScale = False
    end
    object BtExportarExel: TdxBarLargeButton
      Caption = 'Exportar Exel'
      Category = 0
      Hint = 'Exportar Exel'
      Visible = ivAlways
      ImageIndex = 66
      OnClick = BtExportarExelClick
      AutoGrayScale = False
    end
    object btnImprimirOrden: TdxBarLargeButton
      Caption = 'Orden Pago'
      Category = 0
      Hint = 'Orden Pago'
      Visible = ivAlways
      ImageIndex = 28
      OnClick = btnImprimirOrdenClick
    end
    object GrupoEditando: TdxBarGroup
      Items = (
        'BtIngresos'
        'BtEgresos'
        'btBuscar'
        'btImprimir'
        'btSalir'
        'BtEditarMovimiento'
        'BtVerCampos'
        'BtVerDetalle'
        'BtAnularOrden'
        'BtAnularMov'
        'BtExportarExel'
        'btnImprimirOrden')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
      Items = (
        'BtGuardar'
        'BtCancelar')
    end
  end
  object ZQ_Cuenta_Movimiento: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_cuentas_movimientos cm'
      'where (cm.nro_movimiento = :NroMov) or (cm.id = :IDCtaMov)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'NroMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDCtaMov'
        ParamType = ptUnknown
      end>
    Left = 464
    Top = 169
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NroMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDCtaMov'
        ParamType = ptUnknown
      end>
    object ZQ_Cuenta_MovimientoID: TIntegerField
      FieldName = 'ID'
    end
    object ZQ_Cuenta_MovimientoNRO_MOVIMIENTO: TIntegerField
      FieldName = 'NRO_MOVIMIENTO'
    end
    object ZQ_Cuenta_MovimientoID_CUENTA_INGRESO: TIntegerField
      FieldName = 'ID_CUENTA_INGRESO'
    end
    object ZQ_Cuenta_MovimientoID_CUENTA_EGRESO: TIntegerField
      FieldName = 'ID_CUENTA_EGRESO'
    end
    object ZQ_Cuenta_MovimientoID_MEDIO: TIntegerField
      FieldName = 'ID_MEDIO'
    end
    object ZQ_Cuenta_MovimientoFECHA_MDC: TDateField
      FieldName = 'FECHA_MDC'
      EditMask = '##/##/####'
    end
    object ZQ_Cuenta_MovimientoBANCO_MDC: TStringField
      FieldName = 'BANCO_MDC'
      Size = 50
    end
    object ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF: TStringField
      FieldName = 'NRO_CHEQUE_TRANSF'
      Size = 30
    end
    object ZQ_Cuenta_MovimientoNRO_FACTURA_RECIBO: TStringField
      FieldName = 'NRO_FACTURA_RECIBO'
      Size = 30
    end
    object ZQ_Cuenta_MovimientoOTROS: TStringField
      FieldName = 'OTROS'
      Size = 40
    end
    object ZQ_Cuenta_MovimientoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
    object ZQ_Cuenta_MovimientoCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Size = 1
    end
    object ZQ_Cuenta_Movimientonombre_cuenta_egreso: TStringField
      FieldKind = fkLookup
      FieldName = 'nombre_cuenta_egreso'
      LookupDataSet = ZQ_Cuentas
      LookupKeyFields = 'ID_CUENTA'
      LookupResultField = 'NOMBRE_CUENTA'
      KeyFields = 'ID_CUENTA_EGRESO'
      Size = 50
      Lookup = True
    end
    object ZQ_Cuenta_Movimientonombre_cuenta_ingreso: TStringField
      FieldKind = fkLookup
      FieldName = 'nombre_cuenta_ingreso'
      LookupDataSet = ZQ_Cuentas
      LookupKeyFields = 'ID_CUENTA'
      LookupResultField = 'NOMBRE_CUENTA'
      KeyFields = 'ID_CUENTA_INGRESO'
      Size = 50
      Lookup = True
    end
    object ZQ_Cuenta_Movimientomedio_de_pago: TStringField
      FieldKind = fkLookup
      FieldName = 'medio_de_pago'
      LookupDataSet = ZQ_Medios_Cobro_Pago
      LookupKeyFields = 'ID_MEDIO'
      LookupResultField = 'NOMBRE_MEDIO_COBRO_PAGO'
      KeyFields = 'ID_MEDIO'
      Size = 50
      Lookup = True
    end
  end
  object DS_Cuenta_Movimiento: TDataSource
    DataSet = ZQ_Cuenta_Movimiento
    Left = 464
    Top = 225
  end
  object ZQ_Cuentas: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select c.*, c.nombre_cuenta||'#39' - '#39'|| coalesce ('#39'N'#176': '#39' || c.nro_c' +
        'uenta_bancaria, '#39'N'#176': S/N'#39') Busqueda'
      'from ie_cuentas c')
    Params = <>
    Left = 624
    Top = 201
    object ZQ_CuentasID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Required = True
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
      Size = 207
    end
  end
  object ZQ_Medios_Cobro_Pago: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_medios_cobro_pago mcp')
    Params = <>
    Left = 56
    Top = 297
    object ZQ_Medios_Cobro_PagoID_MEDIO: TIntegerField
      FieldName = 'ID_MEDIO'
      Required = True
    end
    object ZQ_Medios_Cobro_PagoNOMBRE_MEDIO_COBRO_PAGO: TStringField
      FieldName = 'NOMBRE_MEDIO_COBRO_PAGO'
      Size = 30
    end
  end
  object ZQ_Proveedores: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_proveedores p')
    Params = <>
    Left = 617
    Top = 81
    object ZQ_ProveedoresNRO_PROVEEDOR: TIntegerField
      FieldName = 'NRO_PROVEEDOR'
      Required = True
    end
    object ZQ_ProveedoresAPELLIDO_Y_NOMBRE: TStringField
      FieldName = 'APELLIDO_Y_NOMBRE'
      Size = 60
    end
    object ZQ_ProveedoresNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Size = 60
    end
    object ZQ_ProveedoresDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 150
    end
    object ZQ_ProveedoresTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 10
    end
    object ZQ_ProveedoresNRO_DOCUMENTO: TStringField
      FieldName = 'NRO_DOCUMENTO'
      Size = 30
    end
    object ZQ_ProveedoresTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
      Size = 30
    end
    object ZQ_ProveedoresEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object ZQ_ProveedoresBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
  end
  object ZQ_Conceptos: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_conceptos c')
    Params = <>
    Left = 617
    Top = 137
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
  end
  object ZQ_Movimientos: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_movimientos m'
      'where m.nro_movimiento = :NroMov')
    Params = <
      item
        DataType = ftUnknown
        Name = 'NroMov'
        ParamType = ptUnknown
      end>
    Left = 305
    Top = 169
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NroMov'
        ParamType = ptUnknown
      end>
    object ZQ_MovimientosNRO_MOVIMIENTO: TIntegerField
      FieldName = 'NRO_MOVIMIENTO'
      Required = True
    end
    object ZQ_MovimientosNRO_PROVEEDOR: TIntegerField
      FieldName = 'NRO_PROVEEDOR'
    end
    object ZQ_MovimientosID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
      Required = True
    end
    object ZQ_MovimientosID_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_TIPO_MOVIMIENTO'
    end
    object ZQ_MovimientosID_OBJETO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_OBJETO_MOVIMIENTO'
    end
    object ZQ_MovimientosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 200
    end
    object ZQ_MovimientosPAGO_DEL_EJERCICIO: TStringField
      FieldName = 'PAGO_DEL_EJERCICIO'
      Size = 1
    end
    object ZQ_MovimientosFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZQ_MovimientosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object ZQ_MovimientosIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object ZQ_MovimientosNRO_COMPROMISO: TIntegerField
      FieldName = 'NRO_COMPROMISO'
    end
    object ZQ_MovimientosNRO_PARTE: TIntegerField
      FieldName = 'NRO_PARTE'
    end
    object ZQ_MovimientosANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object ZQ_MovimientosFECHA_ANULADO: TDateField
      FieldName = 'FECHA_ANULADO'
    end
    object ZQ_MovimientosPARTE_ANULADO: TIntegerField
      FieldName = 'PARTE_ANULADO'
    end
    object ZQ_MovimientosDETALLE_ANULADO: TStringField
      FieldName = 'DETALLE_ANULADO'
      Size = 200
    end
    object ZQ_MovimientosNRO_ORDEN: TIntegerField
      FieldName = 'NRO_ORDEN'
    end
  end
  object DS_Proveedores: TDataSource
    DataSet = ZQ_Proveedores
    Left = 705
    Top = 81
  end
  object DS_Conceptos: TDataSource
    DataSet = ZQ_Conceptos
    Left = 697
    Top = 137
  end
  object DS_Cuentas: TDataSource
    DataSet = ZQ_Cuentas
    Left = 705
    Top = 201
  end
  object DS_Movimientos: TDataSource
    DataSet = ZQ_Movimientos
    Left = 304
    Top = 225
  end
  object ZQ_Tipo_Movimiento: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from tipo_movimiento tm'
      'order by tm.prioridad')
    Params = <>
    Left = 56
    Top = 161
    object ZQ_Tipo_MovimientoID_TIPO_MOVIEMIENTO: TIntegerField
      FieldName = 'ID_TIPO_MOVIEMIENTO'
      Required = True
    end
    object ZQ_Tipo_MovimientoCODIGO_CORTO: TStringField
      FieldName = 'CODIGO_CORTO'
      Size = 6
    end
    object ZQ_Tipo_MovimientoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object ZQ_Tipo_MovimientoPRIORIDAD: TIntegerField
      FieldName = 'PRIORIDAD'
    end
    object ZQ_Tipo_MovimientoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object DS_Tipo_Movimiento: TDataSource
    DataSet = ZQ_Tipo_Movimiento
    Left = 56
    Top = 225
  end
  object EK_ListadoCuentas: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select ie_cuentas.id_cuenta, ie_cuentas.nombre_cuenta'
      'from ie_cuentas'
      'order by ie_cuentas.nombre_cuenta')
    CampoBuscar = 'NOMBRE_CUENTA'
    CampoClave = 'ID_CUENTA'
    Left = 304
    Top = 297
  end
  object EK_ListadoMedCobroPago: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'SELECT *'
      'FROM IE_MEDIOS_COBRO_PAGO')
    CampoBuscar = 'NOMBRE_MEDIO_COBRO_PAGO'
    CampoClave = 'ID_MEDIO'
    Left = 464
    Top = 297
  end
  object Nro_Moviemiento: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    StoredProcName = 'SP_GEN_IE_MOVIMIENTOS_ID'
    Left = 488
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    object Nro_MoviemientoID: TIntegerField
      FieldName = 'ID'
    end
  end
  object DS_LIBRO_BANCO: TDataSource
    DataSet = LIBRO_BANCO
    Left = 184
    Top = 224
  end
  object LIBRO_BANCO: TZQuery
    Connection = DM.Conexion
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
    Left = 184
    Top = 176
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
    object LIBRO_BANCONRO_MEDIO: TStringField
      FieldName = 'NRO_MEDIO'
      Size = 60
    end
    object LIBRO_BANCODEBE: TFloatField
      FieldName = 'DEBE'
    end
    object LIBRO_BANCOHABER: TFloatField
      FieldName = 'HABER'
    end
    object LIBRO_BANCOSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object LIBRO_BANCODESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object LIBRO_BANCOCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Size = 1
    end
    object LIBRO_BANCONOMBRE_CONCEPTO: TStringField
      FieldName = 'NOMBRE_CONCEPTO'
      Size = 100
    end
    object LIBRO_BANCOTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 100
    end
    object LIBRO_BANCOFECHA_PD: TDateField
      FieldName = 'FECHA_PD'
    end
    object LIBRO_BANCOOTROS: TStringField
      FieldName = 'OTROS'
      Size = 40
    end
    object LIBRO_BANCONRO_FAC_REC: TStringField
      FieldName = 'NRO_FAC_REC'
      Size = 30
    end
    object LIBRO_BANCONRO_ORDEN: TIntegerField
      FieldName = 'NRO_ORDEN'
    end
  end
  object EKBusquedaAvanzada1: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Fecha Emision'
        Campo = 'fecha'
        Tabla = 'ie'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndice = 6
        TipoCampoIndiceVer = 'Desde - Hasta'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Fecha PD'
        Campo = 'fecha_pd'
        Tabla = 'ie'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndice = 6
        TipoCampoIndiceVer = 'Desde - Hasta'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Descripcion'
        Campo = 'descripcion'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Nro Movimiento'
        Campo = 'nro_pago_rec'
        Tabla = 'ie'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Medio'
        Campo = 'medio'
        Tabla = 'ie'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoCombollenarSQL = ZQ_Medios_Cobro_Pago
        TipoCombollenarCampo = 'NOMBRE_MEDIO_COBRO_PAGO'
        TipoCombollenarCampoReal = 'NOMBRE_MEDIO_COBRO_PAGO'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Nro Medio'
        Campo = 'nro_medio'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Tipo Movimiento'
        Campo = 'tipo_mov'
        Tabla = 'ie'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoCombollenarSQL = ZQ_Tipo_Movimiento
        TipoCombollenarCampo = 'DESCRIPCION'
        TipoCombollenarCampoReal = 'DESCRIPCION'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Proveedor'
        Campo = 'descripcion'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Concepto'
        Campo = 'nombre_concepto'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Conciliado'
        Campo = 'conciliado'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Fecha F/R'
        Campo = 'FECHA_FR'
        Tabla = 'ie'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndice = 6
        TipoCampoIndiceVer = 'Desde - Hasta'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Nro F/R'
        Campo = 'NRO_FAC_REC'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = LIBRO_BANCO
    SQL.Strings = (
      'select ie.*'
      'from ie_ver_libro_banco(:cuenta,:hasta,:desde,:ordenamiento)ie')
    SQL_Select.Strings = (
      'select ie.*')
    SQL_From.Strings = (
      'from ie_ver_libro_banco(:cuenta,:hasta,:desde,:ordenamiento)ie')
    UsarWhereOriginal = EK_Con_Where
    Left = 56
    Top = 104
  end
  object ActionManager1: TActionManager
    Left = 928
    Top = 209
    StyleName = 'XP Style'
    object ADeleteLinea: TAction
      Caption = 'DeleteLinea'
      ShortCut = 46
      OnExecute = ADeleteLineaExecute
    end
  end
  object EKDbSumaImporte: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'importe'
      end>
    DataSet = ZQ_Cuenta_Movimiento
    SumListChanged = EKDbSumaImporteSumListChanged
    Left = 841
    Top = 265
  end
  object EKLlenarCombo1: TEKLlenarCombo
    dataset = ZQ_Cuentas
    combo = DBLCuenta
    OnCambio = EKLlenarCombo1Cambio
    CampoClave = 'id_cuenta'
    CampoVer = 'Busqueda'
    Left = 49
    Top = 41
  end
  object EKListado_Proveedores: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select *'
      'from ie_proveedores')
    CampoBuscar = 'Nombre_fantasia'
    CampoClave = 'nro_proveedor'
    Left = 353
    Top = 57
  end
  object EKListado_Conceptos: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select *'
      'from ie_conceptos')
    CampoBuscar = 'nombre_concepto'
    CampoClave = 'id_concepto'
    Left = 353
    Top = 113
  end
  object nro_orden: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    StoredProcName = 'SP_GEN_IE_NRO_ORDEN_ID'
    Left = 184
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    object nro_ordenID: TIntegerField
      FieldName = 'ID'
    end
  end
  object mxNativeExcel1: TmxNativeExcel
    ActiveFont = 0
    Borders = []
    Shading = False
    Version = '1.24'
    Left = 928
    Top = 312
  end
  object mxDBGridExport: TmxDBGridExport
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'hh:mm AMPM'
    DateTimeFormat = 'hh:mm AMPM dd/MM/yyyy'
    ExportType = xtExcel
    ExportTypes = [xtHTML, xtExcel, xtWord, xtTXT]
    ExportStyle = xsView
    HTML.CustomColors.Background = clWhite
    HTML.CustomColors.DefaultLink = clRed
    HTML.CustomColors.DefaultFontFace = 'Arial,Helvetica'
    HTML.CustomColors.VisitedLink = clAqua
    HTML.CustomColors.ActiveLink = clBlue
    HTML.CustomColors.DefaultText = clBlack
    HTML.CustomColors.TableFontColor = clBlack
    HTML.CustomColors.TableFontFace = 'Arial,Helvetica'
    HTML.CustomColors.TableBackground = 16777167
    HTML.CustomColors.TableOddBackground = clWhite
    HTML.CustomColors.HeaderBackground = 3368601
    HTML.CustomColors.HeadersFontColor = clWhite
    HTML.Options = [hoShowGridLines, hoBoldHeaders, hoAutoLink, hoOddRowColoring, hoDisplayTitle]
    HTML.Template = ctStandard
    Messages.Caption = 'Exportar datos'
    Messages.CopiedToClipboard = 'Data was copied to clipboard!'
    Messages.CancelCaption = '&Cancelar'
    Messages.CreatedText = 'Exportando:'
    Messages.DocumentFilter.HTML = 'HTML Documents'
    Messages.DocumentFilter.Excel = 'Excel Files'
    Messages.DocumentFilter.Word = 'Word Documents'
    Messages.DocumentFilter.Text = 'Text Files'
    Messages.DocumentFilter.Comma = 'CSV (Comma delimited)'
    Messages.DocumentFilter.Tab = 'Text (Tab delimited)'
    Messages.DocumentFilter.RTF = 'Rich Text Format'
    Messages.DocumentFilter.DIF = 'Data Interchange Format'
    Messages.DocumentFilter.SYLK = 'SYLK Files'
    Messages.ExportCaption = '&Aceptar'
    Messages.ExportToFile = '&Guardar'
    Messages.FalseText = 'False'
    Messages.Height = 80
    Messages.SaveTitle = 'Guardar'
    Messages.SelectFormat = 'Opciones'
    Messages.Text = 'Proceseando...'
    Messages.TrueText = 'True'
    Messages.Width = 300
    Messages.ViewOnly = '&Ver'
    TruncateSymbol = '...'
    RowNumberFormat = '%d'
    DOC_RTF.Template = rtStandard
    DOC_RTF.Options = [roShowGridLines, roOddRowColoring]
    DOC_RTF.CustomSettings.TableBackground = 16777167
    DOC_RTF.CustomSettings.TableOddBackground = clWhite
    DOC_RTF.CustomSettings.HeaderBackground = 3368601
    DOC_RTF.CustomSettings.DefaultFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.DefaultFont.Color = clWindowText
    DOC_RTF.CustomSettings.DefaultFont.Height = -11
    DOC_RTF.CustomSettings.DefaultFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.DefaultFont.Style = []
    DOC_RTF.CustomSettings.HeaderFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.HeaderFont.Color = clWindowText
    DOC_RTF.CustomSettings.HeaderFont.Height = -11
    DOC_RTF.CustomSettings.HeaderFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.HeaderFont.Style = [fsBold]
    DOC_RTF.CustomSettings.TableFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.TableFont.Color = clWindowText
    DOC_RTF.CustomSettings.TableFont.Height = -11
    DOC_RTF.CustomSettings.TableFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.TableFont.Style = []
    DOC_RTF.CellWidth = 1400
    DOC_RTF.TopMargin = 101
    DOC_RTF.BottomMargin = 101
    DOC_RTF.LeftMargin = 461
    DOC_RTF.RightMargin = 562
    EXCEL.Options = [reSetColumnWidths, reSetMargins, reUseBorders]
    EXCEL.ColumnWidth = 30
    EXCEL.Protected = False
    EXCEL.Footer = '&P'
    EXCEL.DefaultFont.Charset = DEFAULT_CHARSET
    EXCEL.DefaultFont.Color = clWindowText
    EXCEL.DefaultFont.Height = -11
    EXCEL.DefaultFont.Name = 'MS Sans Serif'
    EXCEL.DefaultFont.Style = []
    EXCEL.HeaderFont.Charset = DEFAULT_CHARSET
    EXCEL.HeaderFont.Color = clWindowText
    EXCEL.HeaderFont.Height = -12
    EXCEL.HeaderFont.Name = 'Verdana'
    EXCEL.HeaderFont.Style = [fsBold]
    EXCEL.TableFont.Charset = DEFAULT_CHARSET
    EXCEL.TableFont.Color = clWindowText
    EXCEL.TableFont.Height = -11
    EXCEL.TableFont.Name = 'MS Sans Serif'
    EXCEL.TableFont.Style = []
    EXCEL.TopMargin = 0.300000000000000000
    EXCEL.BottomMargin = 0.300000000000000000
    EXCEL.LeftMargin = 0.300000000000000000
    EXCEL.RightMargin = 0.300000000000000000
    Options = [xoClipboardMessage, xoFooterLine, xoHeaderLine, xoShowExportDate, xoShowHeader, xoShowProgress, xoUseAlignments]
    Version = '2.37'
    DBGrid = DBGridLibroBanco
    Left = 924
    Top = 266
  end
  object EKNumeroALetras1: TEKNumeroALetras
    Separador = ','
    Left = 842
    Top = 211
  end
  object ZQ_NroCheque: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select c.ultimo_nro'
      'from ie_cuentas c'
      'where c.autonumerar = '#39'S'#39' and c.id_cuenta = :idCuenta')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idCuenta'
        ParamType = ptUnknown
      end>
    Left = 864
    Top = 66
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idCuenta'
        ParamType = ptUnknown
      end>
    object ZQ_NroChequeULTIMO_NRO: TIntegerField
      FieldName = 'ULTIMO_NRO'
    end
  end
  object CD_Cheque: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 935
    Top = 66
    object CD_ChequeNumero: TIntegerField
      FieldName = 'Numero'
    end
  end
  object EKIni_Impresion: TEKIni
    Left = 602
    Top = 307
  end
  object EKVistaPreviaOrdenPago: TEKVistaPreviaQR
    Reporte = QR_OrdenPago
    ShowModal = False
    Caption = 'Orden de Pago'
    Left = 927
    Top = 378
  end
  object ZQ_Autoriza: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from autoridad'
      'order by prioridad')
    Params = <>
    Left = 16
    Top = 408
    object ZQ_AutorizaID_AUTORIDAD: TIntegerField
      FieldName = 'ID_AUTORIDAD'
    end
    object ZQ_AutorizaNOMBE: TStringField
      FieldName = 'NOMBE'
      Size = 50
    end
    object ZQ_AutorizaPRIORIDAD: TIntegerField
      FieldName = 'PRIORIDAD'
    end
  end
  object DS_Autoriza: TDataSource
    DataSet = ZQ_Autoriza
    Left = 16
    Top = 459
  end
  object EKLlenarCBAutoriza: TEKLlenarCombo
    dataset = ZQ_Autoriza
    combo = CBoxAutoriza
    OnCambio = EKLlenarCombo1Cambio
    CampoClave = 'ID_AUTORIDAD'
    CampoVer = 'Nombe'
    Left = 97
    Top = 409
  end
end
