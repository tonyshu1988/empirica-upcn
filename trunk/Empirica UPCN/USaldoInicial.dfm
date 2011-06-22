object FSaldoInicial: TFSaldoInicial
  Left = 305
  Top = 196
  Width = 870
  Height = 531
  Caption = 'Saldo Inicial'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pContenedor: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 441
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    TabOrder = 0
    object pDatos: TPanel
      Left = 2
      Top = 280
      Width = 850
      Height = 159
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      Visible = False
      DesignSize = (
        850
        159)
      object Label3: TLabel
        Left = 70
        Top = 10
        Width = 38
        Height = 13
        Caption = 'Fecha:'
        Transparent = True
      end
      object Label6: TLabel
        Left = 37
        Top = 36
        Width = 71
        Height = 13
        Caption = 'Descripci'#243'n:'
        Transparent = True
      end
      object Label1: TLabel
        Left = 14
        Top = 76
        Width = 94
        Height = 13
        Caption = 'Cuenta Ingreso:'
        Transparent = True
      end
      object Label2: TLabel
        Left = 57
        Top = 128
        Width = 51
        Height = 13
        Caption = 'Importe:'
        Transparent = True
      end
      object Label10: TLabel
        Left = 524
        Top = 76
        Width = 257
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Presione F1 Para Buscar una Cuenta Ingreso'
        Transparent = True
      end
      object Label4: TLabel
        Left = 70
        Top = 102
        Width = 38
        Height = 13
        Caption = 'Medio:'
        Transparent = True
      end
      object Label5: TLabel
        Left = 293
        Top = 101
        Width = 62
        Height = 13
        Caption = 'Nro Medio:'
        Transparent = True
      end
      object DBMemoDescripcion: TDBMemo
        Left = 109
        Top = 33
        Width = 665
        Height = 33
        Anchors = [akLeft, akTop, akRight]
        DataField = 'DESCRIPCION'
        DataSource = DS_Movimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBLookupCBoxCuenta: TDBLookupComboBox
        Left = 109
        Top = 72
        Width = 405
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'ID_CUENTA_INGRESO'
        DataSource = DS_Cuenta_Mov
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'ID_CUENTA'
        ListField = 'BUSQUEDA'
        ListSource = DS_CuentasIngreso
        ParentFont = False
        TabOrder = 2
        OnKeyUp = DBLookupCBoxCuentaKeyUp
      end
      object DBEditImporte: TDBEdit
        Left = 109
        Top = 125
        Width = 157
        Height = 21
        DataField = 'IMPORTE'
        DataSource = DS_Cuenta_Mov
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object EKDTPFecha: TEKDBDateTimePicker
        Left = 109
        Top = 6
        Width = 153
        Height = 21
        Date = 40429.725941030090000000
        Time = 40429.725941030090000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DataField = 'FECHA'
        DataSource = DS_Movimiento
      end
      object DBLookupCBoxMedio: TDBLookupComboBox
        Left = 109
        Top = 98
        Width = 158
        Height = 21
        DataField = 'ID_MEDIO'
        DataSource = DS_Cuenta_Mov
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'ID_MEDIO'
        ListField = 'NOMBRE_MEDIO_COBRO_PAGO'
        ListSource = DS_Medio
        ParentFont = False
        TabOrder = 3
      end
      object DBEditNroMedio: TDBEdit
        Left = 356
        Top = 98
        Width = 157
        Height = 21
        DataField = 'NRO_CHEQUE_TRANSF'
        DataSource = DS_Cuenta_Mov
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
    object DBGridSaldosIniciales: TDBGrid
      Left = 2
      Top = 2
      Width = 850
      Height = 278
      Align = alClient
      Color = 16772842
      DataSource = DS_VerSaldos
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridSaldosInicialesDrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nombreCuenta'
          Title.Alignment = taCenter
          Title.Caption = 'Cuenta'
          Width = 217
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nombreMedio'
          Title.Alignment = taCenter
          Title.Caption = 'Medio'
          Width = 159
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_CHEQUE_TRANSF'
          Title.Alignment = taCenter
          Title.Caption = 'Nro Cheque/Transf.'
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Alignment = taCenter
          Title.Caption = 'Importe'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRIPCION'
          Title.Alignment = taCenter
          Title.Caption = 'Descripci'#243'n'
          Width = 389
          Visible = True
        end>
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
            Item = btnNuevo
            Visible = True
          end
          item
            Item = btnModificar
            Visible = True
          end
          item
            Item = btnEliminar
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
    Left = 104
    Top = 232
    DockControlHeights = (
      0
      0
      0
      52)
    object btnNuevo: TdxBarLargeButton
      Caption = 'Nuevo'
      Category = 0
      Hint = 'Inserta un nuevo registro'
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btnNuevoClick
      AutoGrayScale = False
      HotImageIndex = 0
    end
    object btnModificar: TdxBarLargeButton
      Caption = 'Modificar'
      Category = 0
      Hint = 'Modifica el registro actual'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btnModificarClick
      AutoGrayScale = False
      HotImageIndex = 1
    end
    object btnEliminar: TdxBarLargeButton
      Caption = 'Eliminar'
      Category = 0
      Hint = 'Eliminar el registro actual'
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btnEliminarClick
      AutoGrayScale = False
      HotImageIndex = 2
    end
    object btnGuardar: TdxBarLargeButton
      Caption = 'Guardar'
      Category = 0
      Enabled = False
      Hint = 'Guarda los cambios'
      Visible = ivAlways
      ImageIndex = 3
      OnClick = btnGuardarClick
      AutoGrayScale = False
      HotImageIndex = 3
    end
    object btnCancelar: TdxBarLargeButton
      Caption = 'Cancelar'
      Category = 0
      Enabled = False
      Hint = 'Cancela los cambios'
      Visible = ivAlways
      ImageIndex = 4
      OnClick = btnCancelarClick
      AutoGrayScale = False
      HotImageIndex = 4
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
      HotImageIndex = 6
    end
    object btnVerDetalle: TdxBarLargeButton
      Caption = 'Ver Detalle'
      Category = 0
      Hint = 'Ver Detalle'
      Visible = ivNever
      ImageIndex = 69
      OnClick = btnVerDetalleClick
      AutoGrayScale = False
    end
    object btnImprimir: TdxBarLargeButton
      Caption = 'Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      ImageIndex = 28
    end
    object GrupoVisualizando: TdxBarGroup
      Items = (
        'btnNuevo'
        'btnModificar'
        'btnEliminar'
        'btnSalir'
        'btnVerDetalle'
        'btnImprimir')
    end
    object GrupoEditando: TdxBarGroup
      Enabled = False
      Items = (
        'btnGuardar'
        'btnCancelar')
    end
  end
  object ZQ_CuentaIngreso: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select c.*, c.nombre_cuenta||'#39' - '#39'|| coalesce ('#39'Nro Cta: '#39' || c.' +
        'nro_cuenta_bancaria, '#39'Nro Cta: S/N'#39') ||'#39' - '#39'|| coalesce(m.nombre' +
        '_medio_cobro_pago, '#39#39') Busqueda'
      'from ie_cuentas c'
      
        'left join ie_medios_cobro_pago m on (c.medio_por_defecto = m.id_' +
        'medio)'
      'order by c.nombre_cuenta')
    Params = <>
    Left = 104
    Top = 64
    object ZQ_CuentaIngresoID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
    end
    object ZQ_CuentaIngresoNOMBRE_CUENTA: TStringField
      FieldName = 'NOMBRE_CUENTA'
      Size = 100
    end
    object ZQ_CuentaIngresoMEDIO_DE_PAGO: TStringField
      FieldName = 'MEDIO_DE_PAGO'
      Size = 50
    end
    object ZQ_CuentaIngresoNRO_CUENTA_BANCARIA: TStringField
      FieldName = 'NRO_CUENTA_BANCARIA'
      Size = 100
    end
    object ZQ_CuentaIngresoULTIMO_NRO: TIntegerField
      FieldName = 'ULTIMO_NRO'
    end
    object ZQ_CuentaIngresoAUTONUMERAR: TStringField
      FieldName = 'AUTONUMERAR'
      Size = 1
    end
    object ZQ_CuentaIngresoMEDIO_POR_DEFECTO: TIntegerField
      FieldName = 'MEDIO_POR_DEFECTO'
    end
    object ZQ_CuentaIngresoBUSQUEDA: TStringField
      FieldName = 'BUSQUEDA'
      ReadOnly = True
      Size = 245
    end
  end
  object DS_CuentasIngreso: TDataSource
    DataSet = ZQ_CuentaIngreso
    Left = 104
    Top = 120
  end
  object EKListadoCuentas: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      
        'select c.*, c.nombre_cuenta||'#39' - '#39'|| coalesce ('#39'Nro Cta: '#39' || c.' +
        'nro_cuenta_bancaria, '#39'Nro Cta: S/N'#39') ||'#39' - '#39'|| coalesce(m.nombre' +
        '_medio_cobro_pago, '#39#39') Busqueda'
      'from ie_cuentas c'
      
        'left join ie_medios_cobro_pago m on (c.medio_por_defecto = m.id_' +
        'medio)'
      'order by c.nombre_cuenta')
    CampoBuscar = 'Busqueda'
    CampoClave = 'id_cuenta'
    BuscarEnQuery = ZQ_CuentaIngreso
    TituloVentana = 'Buscar Cuenta'
    Left = 104
    Top = 176
  end
  object ZQ_Cuenta_Mov: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select cm.*'
      'from ie_cuentas_movimientos cm'
      'where cm.nro_movimiento = :nro_mov')
    Params = <
      item
        DataType = ftUnknown
        Name = 'nro_mov'
        ParamType = ptUnknown
      end>
    Left = 224
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nro_mov'
        ParamType = ptUnknown
      end>
    object ZQ_Cuenta_MovID: TIntegerField
      FieldName = 'ID'
    end
    object ZQ_Cuenta_MovNRO_MOVIMIENTO: TIntegerField
      FieldName = 'NRO_MOVIMIENTO'
    end
    object ZQ_Cuenta_MovID_CUENTA_INGRESO: TIntegerField
      FieldName = 'ID_CUENTA_INGRESO'
    end
    object ZQ_Cuenta_MovID_CUENTA_EGRESO: TIntegerField
      FieldName = 'ID_CUENTA_EGRESO'
    end
    object ZQ_Cuenta_MovID_MEDIO: TIntegerField
      FieldName = 'ID_MEDIO'
    end
    object ZQ_Cuenta_MovFECHA_MDC: TDateField
      FieldName = 'FECHA_MDC'
    end
    object ZQ_Cuenta_MovBANCO_MDC: TStringField
      FieldName = 'BANCO_MDC'
      Size = 50
    end
    object ZQ_Cuenta_MovIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
    object ZQ_Cuenta_MovCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Size = 1
    end
    object ZQ_Cuenta_MovFECHA_CONCILIADO: TDateField
      FieldName = 'FECHA_CONCILIADO'
    end
    object ZQ_Cuenta_MovANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object ZQ_Cuenta_MovIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object ZQ_Cuenta_MovNRO_CHEQUE_TRANSF: TStringField
      FieldName = 'NRO_CHEQUE_TRANSF'
    end
  end
  object ZQ_Movimiento: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select m.*'
      'from ie_movimientos m'
      'where m.nro_movimiento = :nro_mov')
    Params = <
      item
        DataType = ftUnknown
        Name = 'nro_mov'
        ParamType = ptUnknown
      end>
    Left = 328
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nro_mov'
        ParamType = ptUnknown
      end>
    object ZQ_MovimientoNRO_MOVIMIENTO: TIntegerField
      FieldName = 'NRO_MOVIMIENTO'
    end
    object ZQ_MovimientoNRO_PROVEEDOR: TIntegerField
      FieldName = 'NRO_PROVEEDOR'
    end
    object ZQ_MovimientoID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
    end
    object ZQ_MovimientoID_OBJETO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_OBJETO_MOVIMIENTO'
    end
    object ZQ_MovimientoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 200
    end
    object ZQ_MovimientoPAGO_DEL_EJERCICIO: TStringField
      FieldName = 'PAGO_DEL_EJERCICIO'
      Size = 1
    end
    object ZQ_MovimientoFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZQ_MovimientoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object ZQ_MovimientoIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object ZQ_MovimientoNRO_COMPROMISO: TIntegerField
      FieldName = 'NRO_COMPROMISO'
    end
    object ZQ_MovimientoNRO_PARTE: TIntegerField
      FieldName = 'NRO_PARTE'
    end
    object ZQ_MovimientoANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object ZQ_MovimientoFECHA_ANULADO: TDateField
      FieldName = 'FECHA_ANULADO'
    end
    object ZQ_MovimientoPARTE_ANULADO: TIntegerField
      FieldName = 'PARTE_ANULADO'
    end
    object ZQ_MovimientoDETALLE_ANULADO: TStringField
      FieldName = 'DETALLE_ANULADO'
      Size = 200
    end
    object ZQ_MovimientoNRO_ORDEN: TIntegerField
      FieldName = 'NRO_ORDEN'
    end
    object ZQ_MovimientoNRO_RECIBO: TStringField
      FieldName = 'NRO_RECIBO'
      Size = 50
    end
  end
  object DS_Cuenta_Mov: TDataSource
    DataSet = ZQ_Cuenta_Mov
    Left = 224
    Top = 120
  end
  object DS_Movimiento: TDataSource
    DataSet = ZQ_Movimiento
    Left = 328
    Top = 120
  end
  object ZQ_VerSaldos: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_VerSaldosAfterScroll
    SQL.Strings = (
      'select cm.*, mv.*'
      'from ie_cuentas_movimientos cm'
      
        'left join ie_movimientos mv on (cm.nro_movimiento = mv.nro_movim' +
        'iento)'
      'where mv.id_objeto_movimiento = 4')
    Params = <>
    Left = 544
    Top = 64
    object ZQ_VerSaldosnombreCuenta: TStringField
      FieldKind = fkLookup
      FieldName = 'nombreCuenta'
      LookupDataSet = ZQ_CuentaIngreso
      LookupKeyFields = 'ID_CUENTA'
      LookupResultField = 'NOMBRE_CUENTA'
      KeyFields = 'ID_CUENTA_INGRESO'
      Size = 100
      Lookup = True
    end
    object ZQ_VerSaldosnombreMedio: TStringField
      FieldKind = fkLookup
      FieldName = 'nombreMedio'
      LookupDataSet = ZQ_Medio
      LookupKeyFields = 'ID_MEDIO'
      LookupResultField = 'NOMBRE_MEDIO_COBRO_PAGO'
      KeyFields = 'ID_MEDIO'
      Size = 30
      Lookup = True
    end
    object ZQ_VerSaldosID: TIntegerField
      FieldName = 'ID'
    end
    object ZQ_VerSaldosNRO_MOVIMIENTO: TIntegerField
      FieldName = 'NRO_MOVIMIENTO'
    end
    object ZQ_VerSaldosID_CUENTA_INGRESO: TIntegerField
      FieldName = 'ID_CUENTA_INGRESO'
    end
    object ZQ_VerSaldosID_CUENTA_EGRESO: TIntegerField
      FieldName = 'ID_CUENTA_EGRESO'
    end
    object ZQ_VerSaldosID_MEDIO: TIntegerField
      FieldName = 'ID_MEDIO'
    end
    object ZQ_VerSaldosFECHA_MDC: TDateField
      FieldName = 'FECHA_MDC'
    end
    object ZQ_VerSaldosBANCO_MDC: TStringField
      FieldName = 'BANCO_MDC'
      Size = 50
    end
    object ZQ_VerSaldosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
    object ZQ_VerSaldosCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Size = 1
    end
    object ZQ_VerSaldosFECHA_CONCILIADO: TDateField
      FieldName = 'FECHA_CONCILIADO'
    end
    object ZQ_VerSaldosANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object ZQ_VerSaldosNRO_MOVIMIENTO_1: TIntegerField
      FieldName = 'NRO_MOVIMIENTO_1'
    end
    object ZQ_VerSaldosNRO_PROVEEDOR: TIntegerField
      FieldName = 'NRO_PROVEEDOR'
    end
    object ZQ_VerSaldosID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
    end
    object ZQ_VerSaldosID_OBJETO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_OBJETO_MOVIMIENTO'
    end
    object ZQ_VerSaldosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 200
    end
    object ZQ_VerSaldosPAGO_DEL_EJERCICIO: TStringField
      FieldName = 'PAGO_DEL_EJERCICIO'
      Size = 1
    end
    object ZQ_VerSaldosFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZQ_VerSaldosIMPORTE_1: TFloatField
      FieldName = 'IMPORTE_1'
      currency = True
    end
    object ZQ_VerSaldosIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object ZQ_VerSaldosNRO_COMPROMISO: TIntegerField
      FieldName = 'NRO_COMPROMISO'
    end
    object ZQ_VerSaldosNRO_PARTE: TIntegerField
      FieldName = 'NRO_PARTE'
    end
    object ZQ_VerSaldosANULADO_1: TStringField
      FieldName = 'ANULADO_1'
      Size = 1
    end
    object ZQ_VerSaldosFECHA_ANULADO: TDateField
      FieldName = 'FECHA_ANULADO'
    end
    object ZQ_VerSaldosPARTE_ANULADO: TIntegerField
      FieldName = 'PARTE_ANULADO'
    end
    object ZQ_VerSaldosDETALLE_ANULADO: TStringField
      FieldName = 'DETALLE_ANULADO'
      Size = 200
    end
    object ZQ_VerSaldosNRO_ORDEN: TIntegerField
      FieldName = 'NRO_ORDEN'
    end
    object ZQ_VerSaldosNRO_RECIBO: TStringField
      FieldName = 'NRO_RECIBO'
      Size = 50
    end
    object ZQ_VerSaldosNRO_CHEQUE_TRANSF: TStringField
      FieldName = 'NRO_CHEQUE_TRANSF'
    end
    object ZQ_VerSaldosIMPRESO_1: TStringField
      FieldName = 'IMPRESO_1'
      Size = 1
    end
    object ZQ_VerSaldosNRO_ORDEN_STRING: TStringField
      FieldName = 'NRO_ORDEN_STRING'
    end
  end
  object DS_VerSaldos: TDataSource
    DataSet = ZQ_VerSaldos
    Left = 544
    Top = 120
  end
  object ZP_ObtenerNroMov: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    StoredProcName = 'SP_GEN_IE_MOVIMIENTOS_ID'
    Left = 224
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    object ZP_ObtenerNroMovID: TIntegerField
      FieldName = 'ID'
    end
  end
  object ZQ_Medio: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_medios_cobro_pago mcp')
    Params = <>
    Left = 440
    Top = 65
    object ZQ_MedioID_MEDIO: TIntegerField
      FieldName = 'ID_MEDIO'
      Required = True
    end
    object ZQ_MedioNOMBRE_MEDIO_COBRO_PAGO: TStringField
      FieldName = 'NOMBRE_MEDIO_COBRO_PAGO'
      Size = 30
    end
  end
  object DS_Medio: TDataSource
    DataSet = ZQ_Medio
    Left = 440
    Top = 120
  end
  object ZQ_BuscarMov: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select distinct c.nro_movimiento'
      'from ie_cuentas_movimientos c'
      
        'where (c.id_cuenta_ingreso = :id_cuenta or c.id_cuenta_egreso = ' +
        ':id_cuenta)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_cuenta'
        ParamType = ptUnknown
      end>
    Left = 656
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_cuenta'
        ParamType = ptUnknown
      end>
    object ZQ_BuscarMovNRO_MOVIMIENTO: TIntegerField
      FieldName = 'NRO_MOVIMIENTO'
      Required = True
    end
  end
  object EKOrdenarGrilla1: TEKOrdenarGrilla
    Grilla = DBGridSaldosIniciales
    FuenteNormal = []
    NombreGuardarConfig = 'USaldoInicial'
    Ordenar = False
    MoverColumna = True
    Left = 224
    Top = 232
  end
  object ZQ_YaExisteSaldo: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select mov.nro_movimiento'
      'from ie_movimientos mov'
      
        'left join ie_cuentas_movimientos cta on (mov.nro_movimiento = ct' +
        'a.nro_movimiento)'
      'where mov.id_objeto_movimiento = 4'
      '  and cta.id_cuenta_ingreso = :id_cta')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_cta'
        ParamType = ptUnknown
      end>
    Left = 328
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_cta'
        ParamType = ptUnknown
      end>
    object ZQ_YaExisteSaldoNRO_MOVIMIENTO: TIntegerField
      FieldName = 'NRO_MOVIMIENTO'
      Required = True
    end
  end
end
