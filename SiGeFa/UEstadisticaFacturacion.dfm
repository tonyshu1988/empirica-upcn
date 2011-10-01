object FEstadisticasFacturacion: TFEstadisticasFacturacion
  Left = 261
  Top = 162
  Width = 1011
  Height = 611
  Caption = 'Estadisticas Facturacion'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelContenedor: TPanel
    Left = 0
    Top = 0
    Width = 995
    Height = 521
    Align = alClient
    Caption = 'PanelContenedor'
    TabOrder = 0
    object Panel5: TPanel
      Left = 1
      Top = 25
      Width = 993
      Height = 495
      Align = alClient
      Caption = 'Panel5'
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 647
        Top = 1
        Width = 8
        Height = 493
        Align = alRight
      end
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 646
        Height = 493
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object lblComprobantes: TLabel
          Left = 1
          Top = 463
          Width = 644
          Height = 29
          Align = alBottom
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total Comprobantes: $ 0.00 '
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
          Left = 1
          Top = 1
          Width = 644
          Height = 462
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
      object Panel2: TPanel
        Left = 655
        Top = 1
        Width = 337
        Height = 493
        Align = alRight
        Caption = 'Panel2'
        TabOrder = 1
        object Splitter2: TSplitter
          Left = 1
          Top = 353
          Width = 335
          Height = 8
          Cursor = crVSplit
          Align = alBottom
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 335
          Height = 352
          Align = alClient
          Caption = 'Panel3'
          TabOrder = 0
          object DBGridListadoProductos: TDBGrid
            Left = 1
            Top = 1
            Width = 333
            Height = 350
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
                Title.Caption = 'ID'
                Width = 46
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DETALLE_PROD'
                Title.Alignment = taCenter
                Title.Caption = 'Producto'
                Width = 174
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CANTIDAD'
                Title.Alignment = taCenter
                Title.Caption = 'Cant.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IMPORTE_VENTA'
                Title.Alignment = taCenter
                Title.Caption = 'Importe Venta'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IMPORTE_IVA'
                Title.Alignment = taCenter
                Title.Caption = 'Importe IVA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PORC_DESCUENTO'
                Title.Alignment = taCenter
                Title.Caption = 'Desc.'
                Width = 57
                Visible = True
              end>
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 361
          Width = 335
          Height = 131
          Align = alBottom
          Caption = 'Panel4'
          TabOrder = 1
          object DBGridFormaPago: TDBGrid
            Left = 1
            Top = 1
            Width = 333
            Height = 129
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
                Width = 169
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IMPORTE_REAL'
                Title.Alignment = taCenter
                Title.Caption = 'Importe Venta'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDCP_FECHA'
                Title.Alignment = taCenter
                Title.Caption = 'MDP Fecha'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDCP_BANCO'
                Title.Alignment = taCenter
                Title.Caption = 'Banco'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDCP_CHEQUE'
                Title.Alignment = taCenter
                Title.Caption = 'N'#250'mero'
                Visible = True
              end>
          end
        end
      end
    end
    object PanelFiltro: TPanel
      Left = 1
      Top = 1
      Width = 993
      Height = 24
      Align = alTop
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      object BtnFiltro_Todos: TSpeedButton
        Left = 55
        Top = 3
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
        Top = 3
        Width = 94
        Height = 18
        GroupIndex = 1
        Caption = 'Fiscal'
        Layout = blGlyphBottom
        OnClick = AplicarFiltro
      end
      object BtnFiltro_NoFiscal: TSpeedButton
        Left = 247
        Top = 3
        Width = 94
        Height = 18
        GroupIndex = 1
        Caption = 'No Fiscal'
        Layout = blGlyphBottom
        OnClick = AplicarFiltro
      end
      object Label39: TLabel
        Left = 19
        Top = 5
        Width = 25
        Height = 13
        Caption = 'Filtro:'
      end
    end
  end
  object DS_Comprobante: TDataSource
    DataSet = ZQ_Comprobante
    Left = 61
    Top = 169
  end
  object ZQ_Comprobante_FormaPago: TZQuery
    Connection = DM.Conexion
    Filter = 'id_comprobante=-1'
    Filtered = True
    SQL.Strings = (
      'select cfp.*, tfp.descripcion as tFormaPago_,tfp."IF"'
      'from comprobante_forma_pago cfp'
      
        'left join tipo_formapago tfp on (tfp.id_tipo_formapago=cfp.id_ti' +
        'po_formapag)'
      ''
      '')
    Params = <>
    Left = 225
    Top = 65
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
      DisplayFormat = '$ #,###,##0.00'
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
      DisplayFormat = '$ #,###,##0.00'
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
    Filter = 'id_comprobante=-1'
    Filtered = True
    SQL.Strings = (
      
        'select cd.*,pc.nombre||'#39' - COD: '#39'||coalesce(p.cod_corto,'#39#39') DETA' +
        'LLE_PROD'
      'from comprobante_detalle cd'
      'left join producto p on (cd.id_producto=p.id_producto)'
      
        'left join producto_cabecera pc on (pc.id_prod_cabecera=p.id_prod' +
        '_cabecera)'
      '')
    Params = <>
    Left = 385
    Top = 65
    object ZQ_ComprobanteDetalleID_COMPROBANTE_DETALLE: TIntegerField
      FieldName = 'ID_COMPROBANTE_DETALLE'
      Required = True
    end
    object ZQ_ComprobanteDetalleID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_ComprobanteDetalleID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
      Required = True
    end
    object ZQ_ComprobanteDetalleDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 200
    end
    object ZQ_ComprobanteDetalleCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object ZQ_ComprobanteDetalleIMPORTE_FINAL: TFloatField
      FieldName = 'IMPORTE_FINAL'
      DisplayFormat = '$ #,###,##0.00'
    end
    object ZQ_ComprobanteDetallePORC_DESCUENTO: TFloatField
      FieldName = 'PORC_DESCUENTO'
    end
    object ZQ_ComprobanteDetalleBASE_IMPONIBLE: TFloatField
      FieldName = 'BASE_IMPONIBLE'
    end
    object ZQ_ComprobanteDetalleIMPORTE_UNITARIO: TFloatField
      FieldName = 'IMPORTE_UNITARIO'
    end
    object ZQ_ComprobanteDetalleIMPUESTO_INTERNO: TFloatField
      FieldName = 'IMPUESTO_INTERNO'
    end
    object ZQ_ComprobanteDetallePORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
    end
    object ZQ_ComprobanteDetalleCANTIDAD_RECIBIDA: TFloatField
      FieldName = 'CANTIDAD_RECIBIDA'
    end
    object ZQ_ComprobanteDetalleCANTIDAD_ALMACENADA: TFloatField
      FieldName = 'CANTIDAD_ALMACENADA'
    end
    object ZQ_ComprobanteDetalleID_STOCK_PRODUCTO: TIntegerField
      FieldName = 'ID_STOCK_PRODUCTO'
    end
    object ZQ_ComprobanteDetalleIMPORTE_VENTA: TFloatField
      FieldName = 'IMPORTE_VENTA'
      DisplayFormat = '$ #,###,##0.00'
    end
    object ZQ_ComprobanteDetalleDETALLE_PROD: TStringField
      FieldName = 'DETALLE_PROD'
      ReadOnly = True
      Size = 128
    end
    object ZQ_ComprobanteDetalleIMPORTE_IVA: TFloatField
      FieldName = 'IMPORTE_IVA'
      DisplayFormat = '$ #,###,##0.00'
    end
  end
  object ZQ_Comprobante: TZQuery
    Connection = DM.Conexion
    SortedFields = 'FECHA'
    AfterScroll = ZQ_ComprobanteAfterScroll
    SQL.Strings = (
      
        'select c.codigo,c.id_comprobante,c.fecha,c.porc_iva,sum(cfp.impo' +
        'rte_real) as importeVenta_,'
      
        's.nombre as suc_,p1.nombre as Vendedor_,iva.abreviatura as tiva_' +
        ','
      'tc.nombre_tipo_cpb as tipoCompr_,p2.nombre as cliente_'
      'from comprobante c'
      
        'join comprobante_forma_pago cfp on (cfp.id_comprobante=c.id_comp' +
        'robante)'
      
        'join tipo_formapago tfp on (tfp.id_tipo_formapago=cfp.id_tipo_fo' +
        'rmapag)'
      'join sucursal s on (c.id_sucursal=s.id_sucursal)'
      'join persona p1 on (p1.id_persona=c.id_vendedor)'
      'join tipo_iva iva on (iva.id_tipo_iva=c.id_tipo_iva)'
      'join tipo_comprobante tc on (tc.id_tipo_cpb=c.id_tipo_cpb)'
      'join persona p2 on (p2.id_persona=c.id_cliente)'
      'where (c.ID_TIPO_CPB=11)'
      
        'group by c.codigo,c.id_comprobante,c.fecha,c.importe_total,c.por' +
        'c_iva,s.nombre,p1.nombre,iva.abreviatura,tc.nombre_tipo_cpb,p2.n' +
        'ombre')
    Params = <>
    Left = 66
    Top = 114
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
      DisplayFormat = '$ #,###,##0.00'
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
  end
  object DS_Comprobante_FormaPago: TDataSource
    DataSet = ZQ_Comprobante_FormaPago
    Left = 221
    Top = 113
  end
  object DS_ComprobanteDetalle: TDataSource
    DataSet = ZQ_ComprobanteDetalle
    Left = 389
    Top = 113
  end
  object EKDbSuma1: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'importeVenta_'
      end>
    DataSet = ZQ_Comprobante
    SumListChanged = EKDbSuma1SumListChanged
    Left = 61
    Top = 273
  end
  object EKBuscarComprobantes: TEKBusquedaAvanzada
    CriteriosBusqueda = <
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
        Titulo = 'Tipo Comprobante'
        Campo = 'nombre_tipo_cpb'
        Tabla = 'tipo_comprobante'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
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
        Titulo = 'Importe Venta'
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
      
        'select c.codigo,c.id_comprobante,c.fecha,c.porc_iva,sum(cfp.impo' +
        'rte_real) as importeVenta_,'
      
        's.nombre as suc_,p1.nombre as Vendedor_,iva.abreviatura as tiva_' +
        ','
      'tc.nombre_tipo_cpb as tipoCompr_,p2.nombre as cliente_'
      'from comprobante c'
      
        'join comprobante_forma_pago cfp on (cfp.id_comprobante=c.id_comp' +
        'robante)'
      
        'join tipo_formapago tfp on (tfp.id_tipo_formapago=cfp.id_tipo_fo' +
        'rmapag)'
      'join sucursal s on (c.id_sucursal=s.id_sucursal)'
      'join persona p1 on (p1.id_persona=c.id_vendedor)'
      'join tipo_iva iva on (iva.id_tipo_iva=c.id_tipo_iva)'
      'join tipo_comprobante tc on (tc.id_tipo_cpb=c.id_tipo_cpb)'
      'join persona p2 on (p2.id_persona=c.id_cliente)'
      'where (c.ID_TIPO_CPB=11)'
      
        'group by c.codigo,c.id_comprobante,c.fecha,c.importe_total,c.por' +
        'c_iva,s.nombre,p1.nombre,iva.abreviatura,tc.nombre_tipo_cpb,p2.n' +
        'ombre')
    SQL_Select.Strings = (
      
        'select c.codigo,c.id_comprobante,c.fecha,c.porc_iva,sum(cfp.impo' +
        'rte_real) as importeVenta_,'
      
        's.nombre as suc_,p1.nombre as Vendedor_,iva.abreviatura as tiva_' +
        ','
      'tc.nombre_tipo_cpb as tipoCompr_,p2.nombre as cliente_')
    SQL_From.Strings = (
      'from comprobante c'
      
        'join comprobante_forma_pago cfp on (cfp.id_comprobante=c.id_comp' +
        'robante)'
      
        'join tipo_formapago tfp on (tfp.id_tipo_formapago=cfp.id_tipo_fo' +
        'rmapag)'
      'join sucursal s on (c.id_sucursal=s.id_sucursal)'
      'join persona p1 on (p1.id_persona=c.id_vendedor)'
      'join tipo_iva iva on (iva.id_tipo_iva=c.id_tipo_iva)'
      'join tipo_comprobante tc on (tc.id_tipo_cpb=c.id_tipo_cpb)'
      'join persona p2 on (p2.id_persona=c.id_cliente)')
    SQL_Where.Strings = (
      'where (c.ID_TIPO_CPB=11)')
    SQL_Orden.Strings = (
      
        'group by c.codigo,c.id_comprobante,c.fecha,c.importe_total,c.por' +
        'c_iva,s.nombre,p1.nombre,iva.abreviatura,tc.nombre_tipo_cpb,p2.n' +
        'ombre')
    UsarWhereOriginal = EK_Con_Where
    Left = 64
    Top = 65
  end
  object ZQ_TipoIVA: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from tipo_IVA')
    Params = <>
    Left = 509
    Top = 66
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
  object EKOrdenarGrilla1: TEKOrdenarGrilla
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
    Top = 218
  end
  object EKOrdenarGrilla2: TEKOrdenarGrilla
    Grilla = DBGridListadoProductos
    Filtros = <
      item
        TituloColumna = 'ID'
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
        TituloColumna = 'Importe Venta'
        Visible = True
      end
      item
        TituloColumna = 'Importe IVA'
        Visible = True
      end
      item
        TituloColumna = 'Desc.'
        Visible = True
      end>
    NombreGuardar = 'DBGridListadoProductos'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    Left = 386
    Top = 162
  end
  object EKOrdenarGrilla3: TEKOrdenarGrilla
    Grilla = DBGridFormaPago
    Filtros = <
      item
        TituloColumna = 'Forma de Pago'
        Visible = True
      end
      item
        TituloColumna = 'Importe Venta'
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
    Top = 162
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
    Top = 120
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
    Top = 274
    StyleName = 'XP Style'
    object ABuscar: TAction
      Caption = 'ABuscar'
      ShortCut = 112
      OnExecute = ABuscarExecute
    end
  end
end
