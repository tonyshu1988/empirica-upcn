object FAuditoria: TFAuditoria
  Left = 295
  Top = 119
  Width = 920
  Height = 640
  Caption = 'Auditor'#237'a'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 904
    Height = 550
    ActivePage = TabSheet12
    Align = alClient
    MultiLine = True
    TabOrder = 0
    object TabSheet9: TTabSheet
      Caption = 'Auditor'#237'as'
      ImageIndex = 9
      object Panel13: TPanel
        Left = 0
        Top = 0
        Width = 896
        Height = 522
        Align = alClient
        TabOrder = 0
        object Panel16: TPanel
          Left = 1
          Top = 1
          Width = 894
          Height = 296
          Align = alClient
          TabOrder = 0
          object GroupBox1: TGroupBox
            Left = 1
            Top = 1
            Width = 892
            Height = 294
            Align = alClient
            Caption = ' Auditoria Libro Banco  '
            TabOrder = 0
            object DBGrid_Movimientos: TDBGrid
              Left = 2
              Top = 15
              Width = 888
              Height = 277
              Align = alClient
              Color = 16112578
              DataSource = DS_Movimientos
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = []
              OnDrawColumnCell = DBGrid_MovimientosDrawColumnCell
              Columns = <
                item
                  Color = clCream
                  Expanded = False
                  FieldName = 'AUDIT_TIPO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Tipo'
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Color = clCream
                  Expanded = False
                  FieldName = 'AUDIT_FECHA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Fecha'
                  Width = 80
                  Visible = True
                end
                item
                  Color = clCream
                  Expanded = False
                  FieldName = 'AUDIT_USUARIO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Usuario'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NRO_MOVIMIENTO'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  Title.Alignment = taCenter
                  Title.Caption = 'Nro. ID'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRIPCION_1'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  Title.Alignment = taCenter
                  Title.Caption = 'Tipo Mov'
                  Width = 120
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'NRO_ORDEN_STRING'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nro Orden'
                  Width = 72
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'FECHA'
                  Title.Alignment = taCenter
                  Title.Caption = 'F. Emisi'#243'n'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'APELLIDO_Y_NOMBRE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Proveedor'
                  Width = 188
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOMBRE_CONCEPTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Concepto'
                  Width = 150
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'IMPORTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Importe'
                  Width = 105
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'ANULADO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Anulado'
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'NRO_FACTURA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nro Factura'
                  Width = 100
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'NRO_RECIBO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nro Recibo'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRIPCION'
                  Title.Alignment = taCenter
                  Title.Caption = 'Descripci'#243'n'
                  Width = 297
                  Visible = True
                end>
            end
          end
        end
        object Panel17: TPanel
          Left = 1
          Top = 297
          Width = 894
          Height = 224
          Align = alBottom
          TabOrder = 1
          object GroupBox2: TGroupBox
            Left = 1
            Top = 1
            Width = 892
            Height = 222
            Align = alClient
            TabOrder = 0
            object DBGrid_Cuentas_Mov: TDBGrid
              Left = 2
              Top = 15
              Width = 888
              Height = 205
              Align = alClient
              Color = 16112578
              DataSource = DS_CuentaMov
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = []
              OnDrawColumnCell = DBGrid_Cuentas_MovDrawColumnCell
              Columns = <
                item
                  Color = clCream
                  Expanded = False
                  FieldName = 'AUDIT_TIPO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Tipo'
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Color = clCream
                  Expanded = False
                  FieldName = 'AUDIT_FECHA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Fecha'
                  Width = 80
                  Visible = True
                end
                item
                  Color = clCream
                  Expanded = False
                  FieldName = 'AUDIT_USUARIO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Usuario'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ID_CTA_MOV'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  Title.Alignment = taCenter
                  Title.Caption = 'Nro. ID'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOMBRE_MEDIO_COBRO_PAGO'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  Title.Alignment = taCenter
                  Title.Caption = 'Medio'
                  Width = 144
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
                  Expanded = False
                  FieldName = 'NRO_CHEQUE_TRANSF'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nro Cheque/Transf'
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'IMPORTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Importe'
                  Width = 105
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'CONCILIADO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Conciliado'
                  Width = 70
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
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'ANULADO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Anulado'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOMBRE_CUENTA_1'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cuenta Egreso'
                  Width = 176
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOMBRE_CUENTA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cuenta Ingreso'
                  Width = 174
                  Visible = True
                end>
            end
          end
        end
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'Estad'#237'sticas por Usuario'
      ImageIndex = 17
      object Panel19: TPanel
        Left = 0
        Top = 0
        Width = 896
        Height = 522
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object panelArriba: TPanel
          Left = 0
          Top = 0
          Width = 896
          Height = 333
          Align = alTop
          BevelOuter = bvNone
          Caption = 'panelArriba'
          TabOrder = 0
          object DBChartMov: TDBChart
            Left = 0
            Top = 29
            Width = 896
            Height = 304
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Gradient.EndColor = clGray
            Gradient.StartColor = 15461355
            Gradient.Visible = True
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Title.Text.Strings = (
              
                'ACCIONES REALIZADAS SOBRE EL LIBRO BANCO POR LOS USUARIOS DESDE ' +
                'LA FECHA SELECCIONADA HASTA HOY')
            Legend.ShadowSize = 1
            Legend.TopPos = 34
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Series1: TBarSeries
              Marks.ArrowLength = 20
              Marks.Style = smsValue
              Marks.Visible = True
              DataSource = ZQ_MovInsert
              SeriesColor = clGreen
              Title = 'ALTA'
              XLabelsSource = 'AUDIT_USUARIO'
              BarStyle = bsRectGradient
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Bar'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              YValues.ValueSource = 'COUNT'
            end
            object Series2: TBarSeries
              Marks.ArrowLength = 20
              Marks.Style = smsValue
              Marks.Visible = True
              DataSource = ZQ_MovUpdate
              SeriesColor = clYellow
              Title = 'EDICION'
              XLabelsSource = 'AUDIT_USUARIO'
              BarStyle = bsRectGradient
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Bar'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              YValues.ValueSource = 'COUNT'
            end
            object Series4: TBarSeries
              Marks.ArrowLength = 20
              Marks.Style = smsValue
              Marks.Visible = True
              DataSource = ZQ_MovDelete
              SeriesColor = clRed
              Title = 'BAJA'
              BarStyle = bsRectGradient
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Bar'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              YValues.ValueSource = 'COUNT'
            end
          end
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 896
            Height = 29
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Label1: TLabel
              Left = 2
              Top = 5
              Width = 148
              Height = 16
              Caption = 'Seleccione la Fecha:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object fechaDesde: TDateTimePicker
              Left = 154
              Top = 1
              Width = 91
              Height = 21
              Hint = 'Seleccione una Fecha para ver las estad'#237'sticas'
              Date = 40179.382808159720000000
              Time = 40179.382808159720000000
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object btnAplicarFecha: TButton
              Left = 254
              Top = 1
              Width = 75
              Height = 20
              Caption = 'Aplicar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = btnAplicarFechaClick
            end
          end
        end
        object panelAbajo: TPanel
          Left = 0
          Top = 333
          Width = 896
          Height = 189
          Align = alClient
          BevelOuter = bvNone
          Caption = 'panelAbajo'
          TabOrder = 1
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 896
            Height = 29
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label2: TLabel
              Left = 4
              Top = 8
              Width = 159
              Height = 16
              Caption = 'Seleccione el Usuario:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 324
              Top = 8
              Width = 152
              Height = 16
              Caption = 'Seleccione la Acci'#243'n:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btnAplicarUsuario: TButton
              Left = 666
              Top = 4
              Width = 75
              Height = 20
              Caption = 'Aplicar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnClick = btnAplicarUsuarioClick
            end
            object CBoxUsuario: TComboBox
              Left = 167
              Top = 4
              Width = 147
              Height = 21
              ItemHeight = 13
              TabOrder = 0
              Text = 'CBoxUsuario'
            end
            object CBoxAccion: TComboBox
              Left = 479
              Top = 4
              Width = 147
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 1
              Text = 'ALTA'
              Items.Strings = (
                'ALTA'
                'EDICION'
                'BAJA')
            end
          end
          object DBChartUserTipoMov: TDBChart
            Left = 0
            Top = 29
            Width = 896
            Height = 160
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Gradient.EndColor = clGray
            Gradient.StartColor = 15461355
            Gradient.Visible = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Title.Text.Strings = (
              ''
              '')
            Legend.ShadowSize = 1
            Legend.TextStyle = ltsPlain
            Legend.TopPos = 34
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Series5: TBarSeries
              ColorEachPoint = True
              Marks.ArrowLength = 20
              Marks.Style = smsValue
              Marks.Visible = True
              DataSource = ZQ_Grafico_TipoMov
              SeriesColor = clRed
              Title = 'TipoMov'
              XLabelsSource = 'DESCRIPCION'
              BarStyle = bsRectGradient
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Bar'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              YValues.ValueSource = 'COUNT'
            end
          end
        end
      end
    end
  end
  object ZQ_Movimientos: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_MovimientosAfterScroll
    SQL.Strings = (
      
        'select mov.*, obj.descripcion, pro.apellido_y_nombre, cpt.nombre' +
        '_concepto,'
      
        '       ('#39#39'||substr(extractyear(mov.fecha),3,4)||'#39'-'#39'||lpad(mov.nr' +
        'o_orden,4,'#39'0'#39')) as nro_orden_string'
      'from audit_movimientos mov'
      
        'left join objeto_movimientos obj on (mov.id_objeto_movimiento = ' +
        'obj.id_objeto_movimiento)'
      
        'left join ie_proveedores pro on (mov.nro_proveedor = pro.nro_pro' +
        'veedor)'
      
        'left join ie_conceptos cpt on (mov.id_concepto = cpt.id_concepto' +
        ')'
      'order by mov.id_audit_mov')
    Params = <>
    Left = 94
    Top = 132
    object ZQ_MovimientosID_AUDIT_MOV: TIntegerField
      FieldName = 'ID_AUDIT_MOV'
    end
    object ZQ_MovimientosNRO_MOVIMIENTO: TIntegerField
      FieldName = 'NRO_MOVIMIENTO'
    end
    object ZQ_MovimientosNRO_PROVEEDOR: TIntegerField
      FieldName = 'NRO_PROVEEDOR'
    end
    object ZQ_MovimientosID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
    end
    object ZQ_MovimientosID_OBJETO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_OBJETO_MOVIMIENTO'
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
      currency = True
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
    object ZQ_MovimientosNRO_RECIBO: TStringField
      FieldName = 'NRO_RECIBO'
      Size = 50
    end
    object ZQ_MovimientosAUDIT_USUARIO: TStringField
      FieldName = 'AUDIT_USUARIO'
      Size = 50
    end
    object ZQ_MovimientosAUDIT_FECHA: TDateField
      FieldName = 'AUDIT_FECHA'
    end
    object ZQ_MovimientosAUDIT_TIPO: TStringField
      FieldName = 'AUDIT_TIPO'
      Size = 10
    end
    object ZQ_MovimientosDESCRIPCION_1: TStringField
      FieldName = 'DESCRIPCION_1'
      Size = 100
    end
    object ZQ_MovimientosAPELLIDO_Y_NOMBRE: TStringField
      FieldName = 'APELLIDO_Y_NOMBRE'
      Size = 60
    end
    object ZQ_MovimientosNOMBRE_CONCEPTO: TStringField
      FieldName = 'NOMBRE_CONCEPTO'
      Size = 240
    end
    object ZQ_MovimientosNRO_ORDEN_STRING: TStringField
      FieldName = 'NRO_ORDEN_STRING'
      ReadOnly = True
      Size = 336
    end
    object ZQ_MovimientosNRO_FACTURA: TStringField
      FieldName = 'NRO_FACTURA'
      Size = 200
    end
    object ZQ_MovimientosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 200
    end
  end
  object ZQ_CuentaMov: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select cm.*, cta_i.nombre_cuenta, cta_e.nombre_cuenta, med.nombr' +
        'e_medio_cobro_pago'
      'from audit_cuentas_movimientos cm'
      
        'left join ie_cuentas cta_i on (cm.id_cuenta_ingreso = cta_i.id_c' +
        'uenta)'
      
        'left join ie_cuentas cta_e on (cm.id_cuenta_egreso = cta_e.id_cu' +
        'enta)'
      
        'left join ie_medios_cobro_pago med on (cm.id_medio = med.id_medi' +
        'o)'
      'where cm.nro_movimiento = :nro_mov'
      'order by cm.id_audit_cta_mov')
    Params = <
      item
        DataType = ftUnknown
        Name = 'nro_mov'
        ParamType = ptUnknown
      end>
    Left = 70
    Top = 418
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nro_mov'
        ParamType = ptUnknown
      end>
    object ZQ_CuentaMovID_AUDIT_CTA_MOV: TIntegerField
      FieldName = 'ID_AUDIT_CTA_MOV'
    end
    object ZQ_CuentaMovID_CTA_MOV: TIntegerField
      FieldName = 'ID_CTA_MOV'
    end
    object ZQ_CuentaMovNRO_MOVIMIENTO: TIntegerField
      FieldName = 'NRO_MOVIMIENTO'
    end
    object ZQ_CuentaMovID_CUENTA_INGRESO: TIntegerField
      FieldName = 'ID_CUENTA_INGRESO'
    end
    object ZQ_CuentaMovID_CUENTA_EGRESO: TIntegerField
      FieldName = 'ID_CUENTA_EGRESO'
    end
    object ZQ_CuentaMovID_MEDIO: TIntegerField
      FieldName = 'ID_MEDIO'
    end
    object ZQ_CuentaMovFECHA_MDC: TDateField
      FieldName = 'FECHA_MDC'
    end
    object ZQ_CuentaMovBANCO_MDC: TStringField
      FieldName = 'BANCO_MDC'
      Size = 50
    end
    object ZQ_CuentaMovIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
    object ZQ_CuentaMovCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Size = 1
    end
    object ZQ_CuentaMovFECHA_CONCILIADO: TDateField
      FieldName = 'FECHA_CONCILIADO'
    end
    object ZQ_CuentaMovANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object ZQ_CuentaMovAUDIT_USUARIO: TStringField
      FieldName = 'AUDIT_USUARIO'
      Size = 50
    end
    object ZQ_CuentaMovAUDIT_FECHA: TDateField
      FieldName = 'AUDIT_FECHA'
    end
    object ZQ_CuentaMovAUDIT_TIPO: TStringField
      FieldName = 'AUDIT_TIPO'
      Size = 10
    end
    object ZQ_CuentaMovNOMBRE_CUENTA: TStringField
      FieldName = 'NOMBRE_CUENTA'
      Size = 100
    end
    object ZQ_CuentaMovNOMBRE_CUENTA_1: TStringField
      FieldName = 'NOMBRE_CUENTA_1'
      Size = 100
    end
    object ZQ_CuentaMovNOMBRE_MEDIO_COBRO_PAGO: TStringField
      FieldName = 'NOMBRE_MEDIO_COBRO_PAGO'
      Size = 30
    end
    object ZQ_CuentaMovNRO_CHEQUE_TRANSF: TStringField
      FieldName = 'NRO_CHEQUE_TRANSF'
    end
  end
  object DS_Movimientos: TDataSource
    DataSet = ZQ_Movimientos
    Left = 94
    Top = 188
  end
  object DS_CuentaMov: TDataSource
    DataSet = ZQ_CuentaMov
    Left = 70
    Top = 466
  end
  object ZQ_MovInsert: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select mov.audit_usuario, mov.audit_tipo, count(mov.nro_movimien' +
        'to)'
      'from audit_movimientos mov'
      'where (mov.audit_fecha between :fdesde and :fhasta)'
      '  and (mov.audit_tipo like '#39'A%'#39')'
      'group by mov.audit_usuario, mov.audit_tipo'
      'order by mov.audit_usuario')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fdesde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fhasta'
        ParamType = ptUnknown
      end>
    Left = 261
    Top = 89
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fdesde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fhasta'
        ParamType = ptUnknown
      end>
  end
  object DS_MovInsert: TDataSource
    DataSet = ZQ_MovInsert
    Left = 262
    Top = 148
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
    Left = 784
    Top = 496
    DockControlHeights = (
      0
      0
      0
      52)
    object btnBuscar: TdxBarLargeButton
      Caption = 'Buscar'
      Category = 0
      Visible = ivAlways
      ImageIndex = 29
      OnClick = btnBuscarClick
      AutoGrayScale = False
      HotImageIndex = 0
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
    object btnImprimir: TdxBarLargeButton
      Caption = 'Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivInCustomizing
      ImageIndex = 28
    end
    object GrupoVisualizando: TdxBarGroup
      Items = (
        'btnBuscar'
        'btnSalir'
        'btnImprimir')
    end
    object GrupoEditando: TdxBarGroup
      Enabled = False
    end
  end
  object EKBusquedaAvanzada1: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Auditoria Tipo'
        Campo = 'audit_tipo'
        Tabla = 'audit_movimientos'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboValoresVer.Strings = (
          'ALTA'
          'EDICION'
          'BAJA')
        TipoComboValoresReales.Strings = (
          'ALTA'
          'EDICION'
          'BAJA'
          '')
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Auditoria Fecha'
        Campo = 'audit_fecha'
        Tabla = 'audit_movimientos'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Auditoria Usuario'
        Campo = 'audit_usuario'
        Tabla = 'audit_movimientos'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Proveedor'
        Campo = 'apellido_y_nombre'
        Tabla = 'ie_proveedores'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Concepto'
        Campo = 'nombre_concepto'
        Tabla = 'ie_conceptos'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Tipo Movimiento'
        Campo = 'descripcion'
        Tabla = 'objeto_movimientos'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = ZQ_Movimientos
    SQL.Strings = (
      
        'select mov.*, obj.descripcion, pro.apellido_y_nombre, cpt.nombre' +
        '_concepto,'
      
        '       ('#39#39'||substr(extractyear(mov.fecha),3,4)||'#39'-'#39'||lpad(mov.nr' +
        'o_orden,4,'#39'0'#39')) as nro_orden_string'
      'from audit_movimientos mov'
      
        'left join objeto_movimientos obj on (mov.id_objeto_movimiento = ' +
        'obj.id_objeto_movimiento)'
      
        'left join ie_proveedores pro on (mov.nro_proveedor = pro.nro_pro' +
        'veedor)'
      
        'left join ie_conceptos cpt on (mov.id_concepto = cpt.id_concepto' +
        ')'
      ''
      'order by mov.id_audit_mov')
    SQL_Select.Strings = (
      
        'select mov.*, obj.descripcion, pro.apellido_y_nombre, cpt.nombre' +
        '_concepto,'
      
        '       ('#39#39'||substr(extractyear(mov.fecha),3,4)||'#39'-'#39'||lpad(mov.nr' +
        'o_orden,4,'#39'0'#39')) as nro_orden_string')
    SQL_From.Strings = (
      'from audit_movimientos mov'
      
        'left join objeto_movimientos obj on (mov.id_objeto_movimiento = ' +
        'obj.id_objeto_movimiento)'
      
        'left join ie_proveedores pro on (mov.nro_proveedor = pro.nro_pro' +
        'veedor)'
      
        'left join ie_conceptos cpt on (mov.id_concepto = cpt.id_concepto' +
        ')')
    SQL_Where.Strings = (
      '')
    SQL_Orden.Strings = (
      'order by mov.id_audit_mov')
    UsarWhereOriginal = EK_Sin_Where
    Left = 94
    Top = 82
  end
  object ZQ_MovUpdate: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select mov.audit_usuario, mov.audit_tipo, count(mov.nro_movimien' +
        'to)'
      'from audit_movimientos mov'
      'where (mov.audit_fecha between :fdesde and :fhasta)'
      '  and (mov.audit_tipo like '#39'E%'#39')'
      'group by mov.audit_usuario, mov.audit_tipo'
      'order by mov.audit_usuario')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fdesde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fhasta'
        ParamType = ptUnknown
      end>
    Left = 365
    Top = 89
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fdesde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fhasta'
        ParamType = ptUnknown
      end>
  end
  object DS_MovUpdate: TDataSource
    DataSet = ZQ_MovUpdate
    Left = 366
    Top = 148
  end
  object ZQ_MovDelete: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select mov.audit_usuario, mov.audit_tipo, count(mov.nro_movimien' +
        'to)'
      'from audit_movimientos mov'
      'where (mov.audit_fecha between :fdesde and :fhasta)'
      '  and (mov.audit_tipo like '#39'B%'#39')'
      'group by mov.audit_usuario, mov.audit_tipo'
      'order by mov.audit_usuario')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fdesde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fhasta'
        ParamType = ptUnknown
      end>
    Left = 461
    Top = 89
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fdesde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fhasta'
        ParamType = ptUnknown
      end>
  end
  object DS_MovDelete: TDataSource
    DataSet = ZQ_MovDelete
    Left = 462
    Top = 148
  end
  object DS_Usuarios: TDataSource
    DataSet = ZQ_Usuarios
    Left = 494
    Top = 290
  end
  object ZQ_Grafico_TipoMov: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select obj.descripcion, count(mov.nro_movimiento)'
      'from audit_movimientos mov'
      
        'left join objeto_movimientos obj on (mov.id_objeto_movimiento = ' +
        'obj.id_objeto_movimiento)'
      'where mov.audit_usuario = :usuario'
      '   and (mov.audit_tipo = :tipo)'
      'group by obj.descripcion')
    Params = <
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    Left = 196
    Top = 414
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end>
  end
  object DS_Grafico_TipoMov: TDataSource
    DataSet = ZQ_Grafico_TipoMov
    Left = 198
    Top = 466
  end
  object ZQ_Usuarios: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select distinct mov.audit_usuario'
      'from audit_movimientos mov'
      'order by mov.audit_usuario')
    Params = <>
    Left = 604
    Top = 293
    object ZQ_UsuariosAUDIT_USUARIO: TStringField
      FieldName = 'AUDIT_USUARIO'
      Size = 50
    end
  end
  object EKLlenarComboUsuario: TEKLlenarCombo
    dataset = ZQ_Usuarios
    combo = CBoxUsuario
    CampoClave = 'AUDIT_USUARIO'
    CampoVer = 'AUDIT_USUARIO'
    Left = 700
    Top = 293
  end
end
