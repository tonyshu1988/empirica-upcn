object FTransferirStock: TFTransferirStock
  Left = 260
  Top = 117
  Width = 958
  Height = 718
  Caption = 'Transferir Stock'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PanelHistorico: TPanel
    Left = 0
    Top = 0
    Width = 950
    Height = 639
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    TabOrder = 5
    object PanelHistorico_Cpb: TPanel
      Left = 2
      Top = 2
      Width = 946
      Height = 184
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 4
      TabOrder = 0
      object Label3: TLabel
        Left = 4
        Top = 4
        Width = 938
        Height = 20
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Transferencias Realizadas'
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
      object DBGrid_Historico_Cpb: TDBGrid
        Left = 4
        Top = 24
        Width = 938
        Height = 156
        Align = alClient
        Color = 14606012
        DataSource = DS_Historico_Cpb
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid_Historico_CpbDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUCURSAL_ORIGEN'
            Title.Alignment = taCenter
            Title.Caption = 'Sucursal Origen'
            Width = 248
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUCURSAL_DESTINO'
            Title.Alignment = taCenter
            Title.Caption = 'Sucursal Destino'
            Width = 229
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SECCION'
            Title.Alignment = taCenter
            Title.Caption = 'Sucursal Destino Secci'#243'n'
            Width = 246
            Visible = True
          end>
      end
    end
    object PanelHistoric_Detalle: TPanel
      Left = 2
      Top = 186
      Width = 946
      Height = 451
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 4
      TabOrder = 1
      object Label4: TLabel
        Left = 4
        Top = 4
        Width = 938
        Height = 20
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Productos Incluidos en la Transferencia'
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
      object DBGrid_Historico_Detalle: TDBGrid
        Left = 4
        Top = 24
        Width = 938
        Height = 423
        Align = alClient
        Color = 14606012
        DataSource = DS_Historico_Detalle
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid_Historico_DetalleDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_CORTO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Corto'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO_BARRA'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Barra'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMBRE_MARCA'
            Title.Alignment = taCenter
            Title.Caption = 'Marca'
            Width = 177
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMBRE'
            Title.Alignment = taCenter
            Title.Caption = 'Producto'
            Width = 244
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COLOR'
            Title.Alignment = taCenter
            Title.Caption = 'Color'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MEDIDA'
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CANTIDAD'
            Title.Alignment = taCenter
            Title.Caption = 'Cantidad'
            Width = 75
            Visible = True
          end>
      end
    end
  end
  object PanelContenedor: TPanel
    Left = 0
    Top = 0
    Width = 950
    Height = 639
    Align = alClient
    TabOrder = 0
    object PageControlTransferir: TPageControl
      Left = 1
      Top = 34
      Width = 948
      Height = 604
      ActivePage = TabSAsociarNotaPedido
      Align = alClient
      TabOrder = 0
      OnChange = PageControlTransferirChange
      OnChanging = PageControlTransferirChanging
      object TabSTransferirStock: TTabSheet
        Caption = 'Transferir Stock'
        object DBGridProducto: TDBGrid
          Left = 0
          Top = 0
          Width = 940
          Height = 535
          Align = alClient
          Color = 14606012
          DataSource = DS_Producto
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridProductoDrawColumnCell
          OnKeyDown = DBGridProductoKeyDown
          Columns = <
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'codProducto'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd. Producto'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'producto'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Producto'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'medida'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Medida'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'color'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Color'
              Width = 128
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'marca'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Marca'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tipoArticulo'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Art'#237'culo'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'articulo'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Art'#237'culo'
              Width = 100
              Visible = True
            end
            item
              Color = 15856100
              Expanded = False
              FieldName = 'stockactual'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Stock Actual'
              Visible = True
            end
            item
              Color = 11796403
              Expanded = False
              FieldName = 'cantidad'
              Title.Alignment = taCenter
              Title.Caption = 'Transferir'
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'codigoBarra'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd. Barra'
              Width = 100
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'codCabecera'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd. Cabecera'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sucursal'
              Title.Alignment = taCenter
              Title.Caption = 'Sucursal'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'seccion'
              Title.Alignment = taCenter
              Title.Caption = 'Secci'#243'n'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sector'
              Title.Alignment = taCenter
              Title.Caption = 'Sector'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fila'
              Title.Alignment = taCenter
              Title.Caption = 'Fila'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'columna'
              Title.Alignment = taCenter
              Title.Caption = 'Columna'
              Width = 58
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 0
          Top = 535
          Width = 940
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            940
            41)
          object Label25: TLabel
            Left = 784
            Top = 7
            Width = 99
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Total a Transferir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object btBorrarLinea: TButton
            Left = 10
            Top = 5
            Width = 103
            Height = 17
            Caption = 'Borrar Linea'
            TabOrder = 0
            OnClick = btBorrarLineaClick
          end
          object editTotalProductos: TEdit
            Left = 784
            Top = 21
            Width = 129
            Height = 19
            Anchors = [akTop, akRight]
            AutoSize = False
            BevelInner = bvNone
            BevelOuter = bvNone
            BiDiMode = bdRightToLeft
            Color = 12189695
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
      object TabSAsociarNotaPedido: TTabSheet
        Caption = 'Asociar Nota Pedido'
        ImageIndex = 1
        object DBGridNotaPedido: TDBGrid
          Left = 0
          Top = 0
          Width = 940
          Height = 535
          Hint = 
            'Haga doble click en la nota de pedido que desea cargar al sistem' +
            'a'
          Align = alClient
          Color = 14606012
          DataSource = DS_VerCpb
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridNotaPedidoDrawColumnCell
          OnDblClick = DBGridNotaPedidoDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'FECHA'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha'
              Width = 109
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMBRE_TIPO_CPB'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Comprobante'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PUNTO_VENTA'
              Title.Alignment = taCenter
              Title.Caption = 'PV'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO_CPB'
              Title.Alignment = taCenter
              Title.Caption = 'N'#250'mero'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROVEEDOR'
              Title.Alignment = taCenter
              Title.Caption = 'Proveedor'
              Width = 276
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CUIT_PROVEEDOR'
              Title.Alignment = taCenter
              Title.Caption = 'Cuit Proveedor'
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUCURSAL'
              Title.Alignment = taCenter
              Title.Caption = 'Sucursal'
              Width = 213
              Visible = True
            end>
        end
        object DBGridNotaPedidoDetalle: TDBGrid
          Left = 0
          Top = 0
          Width = 940
          Height = 535
          Align = alClient
          Color = 14606012
          DataSource = DS_ListaProductos
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridNotaPedidoDetalleDrawColumnCell
          OnKeyDown = DBGridNotaPedidoDetalleKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'cod_producto'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Cod Producto'
              Width = 97
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'producto'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Producto'
              Width = 244
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'marca'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Marca'
              Width = 174
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'medida'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Medida'
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'color'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Color'
              Width = 137
              Visible = True
            end
            item
              Color = 15856100
              Expanded = False
              FieldName = 'cantidad'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'C. Pedido'
              Width = 70
              Visible = True
            end
            item
              Color = 15856100
              Expanded = False
              FieldName = 'cantidad_recibida'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'C. Recibido'
              Width = 69
              Visible = True
            end
            item
              Color = 15856100
              Expanded = False
              FieldName = 'cantidad_almacenada'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'C. Almacenado'
              Width = 102
              Visible = True
            end
            item
              Color = 13290239
              Expanded = False
              FieldName = 'cantidad_a_almacenar'
              Title.Alignment = taCenter
              Title.Caption = 'C. Pendiente'
              Width = 87
              Visible = True
            end
            item
              Color = 10813348
              Expanded = False
              FieldName = 'almacenar'
              Title.Alignment = taCenter
              Title.Caption = 'Almacenar'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'articulo'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Articulo'
              Width = 197
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tipo_articulo'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Articulo'
              Width = 237
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_cabecera'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Cod Cabecera'
              Width = 124
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'codigo_barra'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Cod Barra'
              Width = 130
              Visible = True
            end>
        end
        object PanelNotaPedidoDetalle: TPanel
          Left = 0
          Top = 535
          Width = 940
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          DesignSize = (
            940
            41)
          object Label2: TLabel
            Left = 816
            Top = 7
            Width = 104
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Total a Almacenar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object editTotalAlmacenar: TEdit
            Left = 800
            Top = 21
            Width = 129
            Height = 19
            Anchors = [akTop, akRight]
            AutoSize = False
            BevelInner = bvNone
            BevelOuter = bvNone
            BiDiMode = bdRightToLeft
            Color = 12189695
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
    end
    object PanelSeleccionarDeposito: TPanel
      Left = 1
      Top = 1
      Width = 948
      Height = 33
      Align = alTop
      TabOrder = 1
      object Label1: TLabel
        Left = 655
        Top = 6
        Width = 258
        Height = 16
        Caption = 'Presione F1 para seleccionar el destino'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object EditSucursal: TEdit
        Left = 7
        Top = 4
        Width = 490
        Height = 21
        ReadOnly = True
        TabOrder = 0
      end
      object btDestino: TBitBtn
        Left = 506
        Top = 4
        Width = 139
        Height = 20
        Caption = 'Seleccionar Destino'
        TabOrder = 1
        OnClick = btDestinoClick
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
            Item = btnNotaPedido
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnTransferir
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
            Item = btnVerTransferencias
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
    Left = 544
    Top = 96
    DockControlHeights = (
      0
      0
      0
      52)
    object btnBuscar: TdxBarLargeButton
      Caption = 'F2 - Buscar'
      Category = 0
      Hint = 'F2 - Buscar'
      Visible = ivAlways
      ImageIndex = 29
      OnClick = btnBuscarClick
      AutoGrayScale = False
    end
    object btnNotaPedido: TdxBarLargeButton
      Align = iaRight
      Caption = 'F3 - Abrir Nota Pedido'
      Category = 0
      Hint = 'F3 - Abrir Nota Pedido'
      Visible = ivNever
      ImageIndex = 82
      OnClick = btnNotaPedidoClick
      AutoGrayScale = False
    end
    object btnNuevo: TdxBarLargeButton
      Caption = 'Nuevo'
      Category = 0
      Hint = 'Inserta un nuevo registro'
      Visible = ivAlways
      ImageIndex = 0
      AutoGrayScale = False
    end
    object btnModificar: TdxBarLargeButton
      Caption = 'F3 - Modificar'
      Category = 0
      Hint = 'Modifica el registro actual'
      Visible = ivAlways
      ImageIndex = 1
      AutoGrayScale = False
    end
    object btnProcesar: TdxBarLargeButton
      Caption = 'F8 - Procesar'
      Category = 0
      Enabled = False
      Hint = 
        'Asociar los Productos pertenecientes a cada una de las Sucursale' +
        's'
      Visible = ivAlways
      ImageIndex = 50
      AutoGrayScale = False
    end
    object btnTransferir: TdxBarLargeButton
      Caption = 'F4 - Transferir'
      Category = 0
      Hint = 'Transferir productos'
      Visible = ivAlways
      ImageIndex = 12
      OnClick = btnTransferirClick
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
      Enabled = False
      Hint = 'Cancela los cambios'
      Visible = ivAlways
      ImageIndex = 4
      OnClick = btnCancelarClick
      AutoGrayScale = False
    end
    object btnImprimir: TdxBarLargeButton
      Caption = 'Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      ImageIndex = 28
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
    object btnVerTransferencias: TdxBarLargeButton
      Caption = 'Ver/Ocultar Historial'
      Category = 0
      Hint = 'Ver/Ocultar Historial'
      Visible = ivAlways
      ButtonStyle = bsChecked
      ImageIndex = 13
      OnClick = btnVerTransferenciasClick
      AutoGrayScale = False
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object GrupoEditando: TdxBarGroup
      Items = (
        'btnBuscar'
        'btnNotaPedido'
        'btnNuevo'
        'btnModificar'
        'btnImprimir'
        'btnTransferir')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
      Items = (
        'btnGuardar'
        'btnCancelar')
    end
  end
  object CD_Producto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 104
    object CD_Producto_idProducto: TIntegerField
      FieldName = 'idProducto'
    end
    object CD_Producto_idStockProducto: TIntegerField
      FieldName = 'idStockProducto'
    end
    object CD_Producto_idPosicionSucursal: TIntegerField
      FieldName = 'idPosicionSucursal'
    end
    object CD_Producto_producto: TStringField
      FieldName = 'producto'
      Size = 30
    end
    object CD_Producto_medida: TStringField
      FieldName = 'medida'
      Size = 30
    end
    object CD_Producto_marca: TStringField
      FieldName = 'marca'
      Size = 50
    end
    object CD_Producto_tipoArticulo: TStringField
      FieldName = 'tipoArticulo'
      Size = 200
    end
    object CD_Producto_articulo: TStringField
      FieldName = 'articulo'
      Size = 200
    end
    object CD_Producto_codigoBarra: TStringField
      FieldName = 'codigoBarra'
      Size = 40
    end
    object CD_Producto_codProducto: TStringField
      FieldName = 'codProducto'
    end
    object CD_Producto_codCabecera: TStringField
      FieldName = 'codCabecera'
    end
    object CD_Producto_color: TStringField
      FieldName = 'color'
      Size = 30
    end
    object CD_Producto_stockMin: TFloatField
      FieldName = 'stockMin'
    end
    object CD_Producto_stockMax: TFloatField
      FieldName = 'stockMax'
    end
    object CD_Producto_stockRepedido: TFloatField
      FieldName = 'stockRepedido'
    end
    object CD_Producto_stockactual: TFloatField
      FieldName = 'stockactual'
    end
    object CD_Producto_cantidad: TFloatField
      FieldName = 'cantidad'
    end
    object CD_Producto_sucursal: TStringField
      FieldName = 'sucursal'
      Size = 200
    end
    object CD_Producto_seccion: TStringField
      FieldName = 'seccion'
      Size = 50
    end
    object CD_Producto_sector: TStringField
      FieldName = 'sector'
      Size = 10
    end
    object CD_Producto_fila: TStringField
      FieldName = 'fila'
      Size = 10
    end
    object CD_Producto_columna: TStringField
      FieldName = 'columna'
      Size = 10
    end
  end
  object DS_Producto: TDataSource
    DataSet = CD_Producto
    Left = 224
    Top = 168
  end
  object EKListado_Sucursal: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'SELECT ps.id_posicion_sucursal, '#39'Sucursal: '#39'||s.nombre||'#39' '#39'||'
      'COALESCE ('#39'| Secci'#243'n: '#39' || ps.seccion,'#39#39')||'#39' '#39'||'
      'COALESCE ('#39'| Sector: '#39' || ps.sector,'#39#39')||'#39' '#39'||'
      'COALESCE ('#39'| Fila: '#39' || ps.fila,'#39#39')||'#39' '#39'||'
      'COALESCE ('#39'| Columna: '#39' || ps.columna,'#39#39') AS Busqueda'
      'FROM posicion_sucursal ps'
      'LEFT JOIN sucursal s ON (s.id_sucursal=ps.id_sucursal)'
      'WHERE s.id_sucursal <> 0'
      ''
      ''
      ''
      '')
    CampoBuscar = 'Busqueda'
    CampoClave = 'id_posicion_sucursal'
    TituloVentana = 'Buscar Sucursal'
    Left = 104
    Top = 272
  end
  object ZQ_Sucursal: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'SELECT ps.id_posicion_sucursal, '#39'Sucursal: '#39'||s.nombre||'#39' '#39'||'
      'COALESCE ('#39'| Secci'#243'n: '#39' || ps.seccion,'#39#39')||'#39' '#39'||'
      'COALESCE ('#39'| Sector: '#39' || ps.sector,'#39#39')||'#39' '#39'||'
      'COALESCE ('#39'| Fila: '#39' || ps.fila,'#39#39')||'#39' '#39'||'
      'COALESCE ('#39'| Columna: '#39' || ps.columna,'#39#39') AS Busqueda'
      'FROM posicion_sucursal ps'
      'LEFT JOIN sucursal s ON (s.id_sucursal=ps.id_sucursal)'
      'WHERE s.id_sucursal <> 0')
    Params = <>
    Left = 102
    Top = 325
    object ZQ_SucursalID_POSICION_SUCURSAL: TIntegerField
      FieldName = 'ID_POSICION_SUCURSAL'
      Required = True
    end
    object ZQ_SucursalBUSQUEDA: TStringField
      FieldName = 'BUSQUEDA'
      ReadOnly = True
      Size = 334
    end
  end
  object ZQ_Cpb_ListaProd: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select cpbd.*, cab.cod_corto as cod_cabecera, cab.nombre as prod' +
        'ucto, cab.imagen,'
      
        '       med.medida, color.nombre as color, marca.nombre_marca as ' +
        'marca,'
      
        '       art.descripcion as articulo, tart.descripcion as tipo_art' +
        'iculo,'
      '       pro.cod_corto as cod_producto, pro.codigo_barra,'
      
        '       pro.precio_costo, pro.precio_venta, pro.coef_ganancia, pr' +
        'o.coef_descuento,'
      
        '       pro.impuesto_interno, pro.impuesto_iva, pro.stock_max, pr' +
        'o.stock_min'
      'from comprobante_detalle cpbd'
      
        'left join comprobante c on (cpbd.id_comprobante = c.id_comproban' +
        'te)'
      'left join producto pro on (cpbd.id_producto = pro.id_producto)'
      
        'left join producto_cabecera cab on (pro.id_prod_cabecera = cab.i' +
        'd_prod_cabecera)'
      'left join marca on (cab.id_marca = marca.id_marca)'
      'left join color on (cab.color = color.id_color)'
      'left join articulo art on (cab.id_articulo = art.id_articulo)'
      
        'left join tipo_articulo tart on (art.id_tipo_articulo = tart.id_' +
        'tipo_articulo)'
      'left join medida med on (pro.id_medida = med.id_medida)'
      'where (c.id_comprobante = :ID_COMPROBANTE)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_COMPROBANTE'
        ParamType = ptUnknown
      end>
    Left = 357
    Top = 225
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_COMPROBANTE'
        ParamType = ptUnknown
      end>
    object ZQ_Cpb_ListaProdID_COMPROBANTE_DETALLE: TIntegerField
      FieldName = 'ID_COMPROBANTE_DETALLE'
      Required = True
    end
    object ZQ_Cpb_ListaProdID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object ZQ_Cpb_ListaProdID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
      Required = True
    end
    object ZQ_Cpb_ListaProdDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 200
    end
    object ZQ_Cpb_ListaProdCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object ZQ_Cpb_ListaProdIMPORTE_FINAL: TFloatField
      FieldName = 'IMPORTE_FINAL'
    end
    object ZQ_Cpb_ListaProdPORC_DESCUENTO: TFloatField
      FieldName = 'PORC_DESCUENTO'
    end
    object ZQ_Cpb_ListaProdBASE_IMPONIBLE: TFloatField
      FieldName = 'BASE_IMPONIBLE'
    end
    object ZQ_Cpb_ListaProdIMPORTE_UNITARIO: TFloatField
      FieldName = 'IMPORTE_UNITARIO'
    end
    object ZQ_Cpb_ListaProdIMPUESTO_INTERNO: TFloatField
      FieldName = 'IMPUESTO_INTERNO'
    end
    object ZQ_Cpb_ListaProdPORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
    end
    object ZQ_Cpb_ListaProdCANTIDAD_RECIBIDA: TFloatField
      FieldName = 'CANTIDAD_RECIBIDA'
    end
    object ZQ_Cpb_ListaProdCANTIDAD_ALMACENADA: TFloatField
      FieldName = 'CANTIDAD_ALMACENADA'
    end
    object ZQ_Cpb_ListaProdCOD_CABECERA: TStringField
      FieldName = 'COD_CABECERA'
    end
    object ZQ_Cpb_ListaProdPRODUCTO: TStringField
      FieldName = 'PRODUCTO'
      Size = 100
    end
    object ZQ_Cpb_ListaProdIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object ZQ_Cpb_ListaProdMEDIDA: TStringField
      FieldName = 'MEDIDA'
      Size = 30
    end
    object ZQ_Cpb_ListaProdCOLOR: TStringField
      FieldName = 'COLOR'
      Size = 30
    end
    object ZQ_Cpb_ListaProdMARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object ZQ_Cpb_ListaProdARTICULO: TStringField
      FieldName = 'ARTICULO'
      Size = 200
    end
    object ZQ_Cpb_ListaProdTIPO_ARTICULO: TStringField
      FieldName = 'TIPO_ARTICULO'
      Size = 200
    end
    object ZQ_Cpb_ListaProdCOD_PRODUCTO: TStringField
      FieldName = 'COD_PRODUCTO'
    end
    object ZQ_Cpb_ListaProdCODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Size = 40
    end
    object ZQ_Cpb_ListaProdPRECIO_COSTO: TFloatField
      FieldName = 'PRECIO_COSTO'
    end
    object ZQ_Cpb_ListaProdPRECIO_VENTA: TFloatField
      FieldName = 'PRECIO_VENTA'
    end
    object ZQ_Cpb_ListaProdCOEF_GANANCIA: TFloatField
      FieldName = 'COEF_GANANCIA'
    end
    object ZQ_Cpb_ListaProdCOEF_DESCUENTO: TFloatField
      FieldName = 'COEF_DESCUENTO'
    end
    object ZQ_Cpb_ListaProdIMPUESTO_INTERNO_1: TFloatField
      FieldName = 'IMPUESTO_INTERNO_1'
    end
    object ZQ_Cpb_ListaProdIMPUESTO_IVA: TFloatField
      FieldName = 'IMPUESTO_IVA'
    end
    object ZQ_Cpb_ListaProdSTOCK_MAX: TFloatField
      FieldName = 'STOCK_MAX'
    end
    object ZQ_Cpb_ListaProdSTOCK_MIN: TFloatField
      FieldName = 'STOCK_MIN'
    end
  end
  object ZQ_VerCpb: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select  cpb.*, suc.nombre as sucursal, pro.nombre as proveedor,'
      '        pro.cuit_cuil as cuit_proveedor, cli.nombre as cliente,'
      
        '        cli.numero_doc as cliente_documento, cli.cuit_cuil as cl' +
        'iente_cuil,'
      
        '        ven.nombre as vendedor, tcpb.nombre_tipo_cpb, est.descri' +
        'pcion as estado'
      'from comprobante cpb'
      'left join sucursal suc on (cpb.id_sucursal = suc.id_sucursal)'
      'left join empresa pro on (cpb.id_proveedor = pro.id_empresa)'
      'left join persona cli on (cpb.id_cliente = cli.id_persona)'
      'left join persona ven on (cpb.id_vendedor = ven.id_persona)'
      
        'left join tipo_comprobante tcpb on (cpb.id_tipo_cpb = tcpb.id_ti' +
        'po_cpb)'
      
        'left join comprobante_estado est on (cpb.id_comp_estado = est.id' +
        '_comp_estado)'
      
        'where ((cpb.id_tipo_cpb = :id_tipo_np)  or (cpb.id_tipo_cpb = :i' +
        'd_tipo_fc) )'
      
        '    and (cpb.id_comp_estado = :id_estado) and (cpb.id_sucursal =' +
        ' :id_sucursal)'
      'order by cpb.fecha desc'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_tipo_np'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_tipo_fc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_sucursal'
        ParamType = ptUnknown
      end>
    Left = 226
    Top = 228
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_tipo_np'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_tipo_fc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_sucursal'
        ParamType = ptUnknown
      end>
    object ZQ_VerCpbID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_VerCpbID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
    object ZQ_VerCpbID_PROVEEDOR: TIntegerField
      FieldName = 'ID_PROVEEDOR'
    end
    object ZQ_VerCpbID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object ZQ_VerCpbID_TIPO_CPB: TIntegerField
      FieldName = 'ID_TIPO_CPB'
    end
    object ZQ_VerCpbID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object ZQ_VerCpbID_COMP_ESTADO: TIntegerField
      FieldName = 'ID_COMP_ESTADO'
    end
    object ZQ_VerCpbCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 50
    end
    object ZQ_VerCpbOBSERVACION: TStringField
      FieldName = 'OBSERVACION'
      Size = 500
    end
    object ZQ_VerCpbBASE_IMPONIBLE: TFloatField
      FieldName = 'BASE_IMPONIBLE'
      currency = True
    end
    object ZQ_VerCpbSALDO: TFloatField
      FieldName = 'SALDO'
      currency = True
    end
    object ZQ_VerCpbIMPORTE_TOTAL: TFloatField
      FieldName = 'IMPORTE_TOTAL'
      currency = True
    end
    object ZQ_VerCpbIMPORTE_IVA: TFloatField
      FieldName = 'IMPORTE_IVA'
      currency = True
    end
    object ZQ_VerCpbIMPORTE_DESCUENTO: TFloatField
      FieldName = 'IMPORTE_DESCUENTO'
      currency = True
    end
    object ZQ_VerCpbPORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
      DisplayFormat = '0.00'
    end
    object ZQ_VerCpbPORC_DESCUENTO: TFloatField
      FieldName = 'PORC_DESCUENTO'
      DisplayFormat = '0.00'
    end
    object ZQ_VerCpbENCABEZADO: TStringField
      FieldName = 'ENCABEZADO'
      Size = 500
    end
    object ZQ_VerCpbPIE: TStringField
      FieldName = 'PIE'
      Size = 500
    end
    object ZQ_VerCpbFECHA: TDateTimeField
      FieldName = 'FECHA'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object ZQ_VerCpbFECHA_COBRADA: TDateField
      FieldName = 'FECHA_COBRADA'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object ZQ_VerCpbFECHA_ENVIADA: TDateField
      FieldName = 'FECHA_ENVIADA'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object ZQ_VerCpbFECHA_IMPRESA: TDateField
      FieldName = 'FECHA_IMPRESA'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object ZQ_VerCpbFECHA_VENCIMIENTO: TDateField
      FieldName = 'FECHA_VENCIMIENTO'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object ZQ_VerCpbFECHA_ANULADO: TDateField
      FieldName = 'FECHA_ANULADO'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object ZQ_VerCpbSUCURSAL: TStringField
      FieldName = 'SUCURSAL'
      Size = 200
    end
    object ZQ_VerCpbPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 200
    end
    object ZQ_VerCpbCUIT_PROVEEDOR: TStringField
      FieldName = 'CUIT_PROVEEDOR'
      Size = 30
    end
    object ZQ_VerCpbCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 200
    end
    object ZQ_VerCpbCLIENTE_DOCUMENTO: TStringField
      FieldName = 'CLIENTE_DOCUMENTO'
      Size = 50
    end
    object ZQ_VerCpbCLIENTE_CUIL: TStringField
      FieldName = 'CLIENTE_CUIL'
      Size = 30
    end
    object ZQ_VerCpbVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 200
    end
    object ZQ_VerCpbNOMBRE_TIPO_CPB: TStringField
      FieldName = 'NOMBRE_TIPO_CPB'
      Size = 50
    end
    object ZQ_VerCpbESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 50
    end
    object ZQ_VerCpbPUNTO_VENTA: TIntegerField
      FieldName = 'PUNTO_VENTA'
      DisplayFormat = '0000'
    end
    object ZQ_VerCpbNUMERO_CPB: TIntegerField
      FieldName = 'NUMERO_CPB'
      DisplayFormat = '00000000'
    end
    object ZQ_VerCpbID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object ZQ_VerCpbID_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_TIPO_MOVIMIENTO'
    end
    object ZQ_VerCpbIMPORTE_VENTA: TFloatField
      FieldName = 'IMPORTE_VENTA'
    end
  end
  object DS_VerCpb: TDataSource
    DataSet = ZQ_VerCpb
    Left = 226
    Top = 284
  end
  object DS_ListaProductos: TDataSource
    DataSet = CD_ListaProductos
    Left = 357
    Top = 169
  end
  object CD_ListaProductos: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = CD_ListaProductosAfterInsert
    OnCalcFields = CD_ListaProductosCalcFields
    Left = 357
    Top = 105
    object CD_ListaProductoscantidad: TFloatField
      FieldName = 'cantidad'
    end
    object CD_ListaProductoscantidad_recibida: TFloatField
      FieldName = 'cantidad_recibida'
    end
    object CD_ListaProductoscantidad_almacenada: TFloatField
      FieldName = 'cantidad_almacenada'
    end
    object CD_ListaProductosalmacenar: TFloatField
      FieldName = 'almacenar'
    end
    object CD_ListaProductoscod_cabecera: TStringField
      FieldName = 'cod_cabecera'
      Size = 50
    end
    object CD_ListaProductosproducto: TStringField
      FieldName = 'producto'
      Size = 100
    end
    object CD_ListaProductosmedida: TStringField
      FieldName = 'medida'
      Size = 50
    end
    object CD_ListaProductoscolor: TStringField
      FieldName = 'color'
      Size = 50
    end
    object CD_ListaProductosmarca: TStringField
      DisplayWidth = 100
      FieldName = 'marca'
      Size = 50
    end
    object CD_ListaProductosarticulo: TStringField
      DisplayWidth = 100
      FieldName = 'articulo'
      Size = 50
    end
    object CD_ListaProductostipo_articulo: TStringField
      FieldName = 'tipo_articulo'
      Size = 100
    end
    object CD_ListaProductoscod_producto: TStringField
      FieldName = 'cod_producto'
      Size = 50
    end
    object CD_ListaProductoscodigo_barra: TStringField
      FieldName = 'codigo_barra'
      Size = 100
    end
    object CD_ListaProductosid_producto: TIntegerField
      FieldName = 'id_producto'
    end
    object CD_ListaProductosid_comprobante: TIntegerField
      FieldName = 'id_comprobante'
    end
    object CD_ListaProductoscantidad_a_almacenar: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cantidad_a_almacenar'
      Calculated = True
    end
    object CD_ListaProductosstock_max: TFloatField
      FieldName = 'stock_max'
    end
    object CD_ListaProductosstock_min: TFloatField
      FieldName = 'stock_min'
    end
  end
  object ZQ_Cpb_UpdateEstado: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'execute procedure nota_pedido_update_estado (:id_comprobante, :i' +
        'd_estado)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_estado'
        ParamType = ptUnknown
      end>
    Left = 357
    Top = 282
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_estado'
        ParamType = ptUnknown
      end>
  end
  object ZQ_ProcesarStock: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'execute procedure procesar_stock(:id_stock_prod, :id_producto, :' +
        'id_pos_suc, :cantidad_almacenar, :stock_min, :stock_max,'
      '    :stock_repedido, :id_comprobante)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_stock_prod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_producto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_pos_suc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cantidad_almacenar'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'stock_min'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'stock_max'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'stock_repedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    Left = 101
    Top = 106
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_stock_prod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_producto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_pos_suc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cantidad_almacenar'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'stock_min'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'stock_max'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'stock_repedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
  end
  object EKOrdenarGrillaProductos: TEKOrdenarGrilla
    Grilla = DBGridProducto
    Filtros = <
      item
        TituloColumna = 'C'#243'd. Producto'
        Visible = True
      end
      item
        TituloColumna = 'Producto'
        Visible = True
      end
      item
        TituloColumna = 'Medida'
        Visible = True
      end
      item
        TituloColumna = 'Color'
        Visible = True
      end
      item
        TituloColumna = 'Marca'
        Visible = True
      end
      item
        TituloColumna = 'Tipo Art'#237'culo'
        Visible = True
      end
      item
        TituloColumna = 'Art'#237'culo'
        Visible = True
      end
      item
        TituloColumna = 'Stock Actual'
        Visible = True
      end
      item
        TituloColumna = 'Transferir'
        Visible = True
      end
      item
        TituloColumna = 'C'#243'd. Barra'
        Visible = True
      end
      item
        TituloColumna = 'C'#243'd. Cabecera'
        Visible = True
      end
      item
        TituloColumna = 'Sucursal'
        Visible = True
      end
      item
        TituloColumna = 'Secci'#243'n'
        Visible = True
      end
      item
        TituloColumna = 'Sector'
        Visible = True
      end
      item
        TituloColumna = 'Fila'
        Visible = True
      end
      item
        TituloColumna = 'Columna'
        Visible = True
      end>
    NombreGuardar = 'TransferirStock_Productos'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    Left = 101
    Top = 218
  end
  object EKOrdenarGrillaNotaPedidoDetalle: TEKOrdenarGrilla
    Grilla = DBGridNotaPedidoDetalle
    Filtros = <
      item
        TituloColumna = 'Cod Producto'
        Visible = True
      end
      item
        TituloColumna = 'Producto'
        Visible = True
      end
      item
        TituloColumna = 'Marca'
        Visible = True
      end
      item
        TituloColumna = 'Medida'
        Visible = True
      end
      item
        TituloColumna = 'Color'
        Visible = True
      end
      item
        TituloColumna = 'C. Pedido'
        Visible = True
      end
      item
        TituloColumna = 'C. Recibido'
        Visible = True
      end
      item
        TituloColumna = 'C. Almacenado'
        Visible = True
      end
      item
        TituloColumna = 'C. Pendiente'
        Visible = True
      end
      item
        TituloColumna = 'Almacenar'
        Visible = True
      end
      item
        TituloColumna = 'Articulo'
        Visible = True
      end
      item
        TituloColumna = 'Tipo Articulo'
        Visible = True
      end
      item
        TituloColumna = 'Cod Cabecera'
        Visible = True
      end
      item
        TituloColumna = 'Cod Barra'
        Visible = True
      end>
    NombreGuardar = 'TransferirStock_NotaPedido'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    Left = 101
    Top = 162
  end
  object EKSumaTransferir: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'cantidad'
      end>
    DataSet = CD_Producto
    SumListChanged = EKSumaTransferirSumListChanged
    Left = 549
    Top = 154
  end
  object EKSumaNotaPedido: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'almacenar'
      end>
    DataSet = CD_ListaProductos
    SumListChanged = EKSumaNotaPedidoSumListChanged
    Left = 549
    Top = 210
  end
  object ZQ_Comprobante: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select cpb.*'
      'from comprobante cpb'
      'where cpb.id_comprobante = :id_comprobante')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    Left = 552
    Top = 289
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    object ZQ_ComprobanteID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_ComprobanteID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
    object ZQ_ComprobanteID_PROVEEDOR: TIntegerField
      FieldName = 'ID_PROVEEDOR'
    end
    object ZQ_ComprobanteID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object ZQ_ComprobanteID_TIPO_CPB: TIntegerField
      FieldName = 'ID_TIPO_CPB'
    end
    object ZQ_ComprobanteID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object ZQ_ComprobanteID_COMP_ESTADO: TIntegerField
      FieldName = 'ID_COMP_ESTADO'
    end
    object ZQ_ComprobanteID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object ZQ_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_TIPO_MOVIMIENTO'
    end
    object ZQ_ComprobanteCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 50
    end
    object ZQ_ComprobanteFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object ZQ_ComprobanteOBSERVACION: TStringField
      FieldName = 'OBSERVACION'
      Size = 500
    end
    object ZQ_ComprobanteBASE_IMPONIBLE: TFloatField
      FieldName = 'BASE_IMPONIBLE'
    end
    object ZQ_ComprobanteSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object ZQ_ComprobantePORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
    end
    object ZQ_ComprobanteIMPORTE_IVA: TFloatField
      FieldName = 'IMPORTE_IVA'
    end
    object ZQ_ComprobantePORC_DESCUENTO: TFloatField
      FieldName = 'PORC_DESCUENTO'
    end
    object ZQ_ComprobanteIMPORTE_DESCUENTO: TFloatField
      FieldName = 'IMPORTE_DESCUENTO'
    end
    object ZQ_ComprobanteIMPORTE_TOTAL: TFloatField
      FieldName = 'IMPORTE_TOTAL'
    end
    object ZQ_ComprobanteIMPORTE_VENTA: TFloatField
      FieldName = 'IMPORTE_VENTA'
    end
    object ZQ_ComprobanteENCABEZADO: TStringField
      FieldName = 'ENCABEZADO'
      Size = 500
    end
    object ZQ_ComprobantePIE: TStringField
      FieldName = 'PIE'
      Size = 500
    end
    object ZQ_ComprobanteFECHA_COBRADA: TDateField
      FieldName = 'FECHA_COBRADA'
    end
    object ZQ_ComprobanteFECHA_ENVIADA: TDateField
      FieldName = 'FECHA_ENVIADA'
    end
    object ZQ_ComprobanteFECHA_IMPRESA: TDateField
      FieldName = 'FECHA_IMPRESA'
    end
    object ZQ_ComprobanteFECHA_VENCIMIENTO: TDateField
      FieldName = 'FECHA_VENCIMIENTO'
    end
    object ZQ_ComprobantePUNTO_VENTA: TIntegerField
      FieldName = 'PUNTO_VENTA'
      DisplayFormat = '0000'
    end
    object ZQ_ComprobanteNUMERO_CPB: TIntegerField
      FieldName = 'NUMERO_CPB'
      DisplayFormat = '00000000'
    end
    object ZQ_ComprobanteFECHA_ANULADO: TDateField
      FieldName = 'FECHA_ANULADO'
    end
    object ZQ_ComprobanteID_POSICION_SUC_DESTINO: TIntegerField
      FieldName = 'ID_POSICION_SUC_DESTINO'
    end
  end
  object ZQ_CpbProducto: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select pr.*'
      'from comprobante_detalle pr'
      'where pr.id_comprobante = :id_comprobante')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    Left = 553
    Top = 345
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    object ZQ_CpbProductoID_COMPROBANTE_DETALLE: TIntegerField
      FieldName = 'ID_COMPROBANTE_DETALLE'
    end
    object ZQ_CpbProductoID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_CpbProductoID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
    end
    object ZQ_CpbProductoDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 200
    end
    object ZQ_CpbProductoCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object ZQ_CpbProductoCANTIDAD_RECIBIDA: TFloatField
      FieldName = 'CANTIDAD_RECIBIDA'
    end
    object ZQ_CpbProductoCANTIDAD_ALMACENADA: TFloatField
      FieldName = 'CANTIDAD_ALMACENADA'
    end
    object ZQ_CpbProductoID_STOCK_PRODUCTO: TIntegerField
      FieldName = 'ID_STOCK_PRODUCTO'
    end
  end
  object ZP_CpbID: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    StoredProcName = 'SP_GEN_COMPROBANTE_ID'
    Left = 646
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    object ZP_CpbIDID: TIntegerField
      FieldName = 'ID'
    end
  end
  object ZQ_NumeroCpb: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select t.*'
      'from tipo_comprobante t'
      'where t.id_tipo_cpb = :id_tipo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_tipo'
        ParamType = ptUnknown
      end>
    Left = 645
    Top = 97
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_tipo'
        ParamType = ptUnknown
      end>
    object ZQ_NumeroCpbULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
    end
    object ZQ_NumeroCpbID_TIPO_CPB: TIntegerField
      FieldName = 'ID_TIPO_CPB'
    end
    object ZQ_NumeroCpbNOMBRE_TIPO_CPB: TStringField
      FieldName = 'NOMBRE_TIPO_CPB'
      Size = 50
    end
    object ZQ_NumeroCpbSIGNO_COBRO_PAGO: TIntegerField
      FieldName = 'SIGNO_COBRO_PAGO'
    end
    object ZQ_NumeroCpbSIGNO_STOCK: TIntegerField
      FieldName = 'SIGNO_STOCK'
    end
    object ZQ_NumeroCpbSIGNO_CTA_CTE: TIntegerField
      FieldName = 'SIGNO_CTA_CTE'
    end
    object ZQ_NumeroCpbBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
  end
  object ATeclasRapidas: TActionManager
    Left = 224
    Top = 346
    StyleName = 'XP Style'
    object ABuscar: TAction
      Caption = 'ABuscar'
      ShortCut = 113
      OnExecute = ABuscarExecute
    end
    object AAbrirNotaPedido: TAction
      Caption = 'AAbrirNotaPedido'
      ShortCut = 114
      OnExecute = AAbrirNotaPedidoExecute
    end
    object ATransferir: TAction
      Caption = 'ATransferir'
      ShortCut = 115
      OnExecute = ATransferirExecute
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
  end
  object ZQ_Historico_Cpb: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_Historico_CpbAfterScroll
    SQL.Strings = (
      
        'select c.id_comprobante, c.id_sucursal, c.codigo, c.fecha, c.id_' +
        'posicion_suc_destino,'
      
        '       s1.nombre as sucursal_origen, s2.nombre as sucursal_desti' +
        'no,'
      '       ps.seccion'
      'from comprobante c'
      'left join sucursal s1 on (c.id_sucursal = s1.id_sucursal)'
      
        'left join posicion_sucursal ps on (c.id_posicion_suc_destino = p' +
        's.id_posicion_sucursal)'
      'left join sucursal s2 on (ps.id_sucursal = s2.id_sucursal)'
      'where c.id_tipo_cpb = 24'
      'order by c.fecha desc')
    Params = <>
    Left = 752
    Top = 56
    object ZQ_Historico_CpbID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object ZQ_Historico_CpbID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
      Required = True
    end
    object ZQ_Historico_CpbCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 50
    end
    object ZQ_Historico_CpbFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object ZQ_Historico_CpbID_POSICION_SUC_DESTINO: TIntegerField
      FieldName = 'ID_POSICION_SUC_DESTINO'
    end
    object ZQ_Historico_CpbSUCURSAL_ORIGEN: TStringField
      FieldName = 'SUCURSAL_ORIGEN'
      Size = 200
    end
    object ZQ_Historico_CpbSUCURSAL_DESTINO: TStringField
      FieldName = 'SUCURSAL_DESTINO'
      Size = 200
    end
    object ZQ_Historico_CpbSECCION: TStringField
      FieldName = 'SECCION'
      Size = 50
    end
  end
  object ZQ_Historico_Detalle: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select cd.id_comprobante_detalle, cd.id_producto, pc.nombre, pc.' +
        'cod_corto, p.codigo_barra,'
      
        '       ma.nombre_marca, co.nombre as color, me.medida, cd.cantid' +
        'ad'
      'from comprobante_detalle cd'
      'left join producto p on (cd.id_producto = p.id_producto)'
      
        'left join producto_cabecera pc on (p.id_prod_cabecera = pc.id_pr' +
        'od_cabecera)'
      'left join marca ma on (pc.id_marca = ma.id_marca)'
      'left join color co on (pc.color = co.id_color)'
      'left join medida me on (p.id_medida = me.id_medida)'
      'where cd.id_comprobante = :id_comprobante'
      'order by ma.nombre_marca, pc.nombre')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    Left = 760
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    object ZQ_Historico_DetalleID_COMPROBANTE_DETALLE: TIntegerField
      FieldName = 'ID_COMPROBANTE_DETALLE'
      Required = True
    end
    object ZQ_Historico_DetalleID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
      Required = True
    end
    object ZQ_Historico_DetalleNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object ZQ_Historico_DetalleCOD_CORTO: TStringField
      FieldName = 'COD_CORTO'
    end
    object ZQ_Historico_DetalleCODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Size = 40
    end
    object ZQ_Historico_DetalleNOMBRE_MARCA: TStringField
      FieldName = 'NOMBRE_MARCA'
      Size = 50
    end
    object ZQ_Historico_DetalleCOLOR: TStringField
      FieldName = 'COLOR'
      Size = 30
    end
    object ZQ_Historico_DetalleMEDIDA: TStringField
      FieldName = 'MEDIDA'
      Size = 30
    end
    object ZQ_Historico_DetalleCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
  end
  object DS_Historico_Cpb: TDataSource
    DataSet = ZQ_Historico_Cpb
    Left = 752
    Top = 112
  end
  object DS_Historico_Detalle: TDataSource
    DataSet = ZQ_Historico_Detalle
    Left = 760
    Top = 288
  end
  object EKOrdenarHistorico_Cpb: TEKOrdenarGrilla
    Grilla = DBGrid_Historico_Cpb
    Filtros = <
      item
        TituloColumna = 'Fecha'
        Visible = True
      end
      item
        TituloColumna = 'C'#243'digo'
        Visible = True
      end
      item
        TituloColumna = 'Sucursal Origen'
        Visible = True
      end
      item
        TituloColumna = 'Sucursal Destino'
        Visible = True
      end
      item
        TituloColumna = 'Sucursal Destino Secci'#243'n'
        Visible = True
      end>
    NombreGuardar = 'EKOrdenarHistorico_Cpb'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    Left = 746
    Top = 162
  end
  object EKOrdenarHistorico_Detalle: TEKOrdenarGrilla
    Grilla = DBGrid_Historico_Detalle
    Filtros = <
      item
        TituloColumna = 'C'#243'd. Corto'
        Visible = True
      end
      item
        TituloColumna = 'C'#243'd. Barra'
        Visible = True
      end
      item
        TituloColumna = 'Marca'
        Visible = True
      end
      item
        TituloColumna = 'Producto'
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
        TituloColumna = 'Cantidad'
        Visible = True
      end>
    NombreGuardar = 'EKOrdenarHistorico_Detalle'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    Left = 762
    Top = 338
  end
  object ZQ_VerificarProducto: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select s.*'
      'from stock_producto s'
      'where s.id_stock_producto = :id_stock'
      '  and s.id_posicion_sucursal = :id_posicion')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_stock'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_posicion'
        ParamType = ptUnknown
      end>
    Left = 368
    Top = 346
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_stock'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_posicion'
        ParamType = ptUnknown
      end>
    object ZQ_VerificarProductoID_STOCK_PRODUCTO: TIntegerField
      FieldName = 'ID_STOCK_PRODUCTO'
      Required = True
    end
    object ZQ_VerificarProductoID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
      Required = True
    end
    object ZQ_VerificarProductoID_POSICION_SUCURSAL: TIntegerField
      FieldName = 'ID_POSICION_SUCURSAL'
      Required = True
    end
    object ZQ_VerificarProductoSTOCK_ACTUAL: TFloatField
      FieldName = 'STOCK_ACTUAL'
    end
    object ZQ_VerificarProductoSTOCK_MIN: TFloatField
      FieldName = 'STOCK_MIN'
    end
    object ZQ_VerificarProductoSTOCK_MAX: TFloatField
      FieldName = 'STOCK_MAX'
    end
    object ZQ_VerificarProductoSTOCK_REPEDIDO: TFloatField
      FieldName = 'STOCK_REPEDIDO'
    end
    object ZQ_VerificarProductoSTOCK_MIN_ALARMA: TStringField
      FieldName = 'STOCK_MIN_ALARMA'
      Size = 1
    end
  end
  object ZQ_UpdateNotaPedido: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'update comprobante_detalle cd'
      
        'set cd.cantidad_almacenada = cd.cantidad_almacenada + :cantidad_' +
        'almacenar'
      
        'where (cd.id_comprobante = :id_comprobante) and (cd.id_producto ' +
        '= :id_producto);')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cantidad_almacenar'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_producto'
        ParamType = ptUnknown
      end>
    Left = 645
    Top = 290
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cantidad_almacenar'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_producto'
        ParamType = ptUnknown
      end>
  end
end
