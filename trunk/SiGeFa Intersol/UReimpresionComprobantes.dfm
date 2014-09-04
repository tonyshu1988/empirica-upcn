object FReimpresionComprobantes: TFReimpresionComprobantes
  Left = 214
  Top = 173
  Width = 1205
  Height = 618
  Caption = 'Reimpresi'#243'n de Comprobantes'
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelContenedor: TPanel
    Left = 0
    Top = 0
    Width = 1189
    Height = 528
    Align = alClient
    Caption = 'PanelContenedor'
    TabOrder = 0
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 1187
      Height = 526
      Align = alClient
      Caption = 'Panel5'
      TabOrder = 0
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 1185
        Height = 524
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object PanelComprobante: TPanel
          Left = 1
          Top = 33
          Width = 1183
          Height = 244
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object lblTotalComprobantes: TLabel
            Left = 0
            Top = 223
            Width = 1183
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
            Width = 1183
            Height = 223
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
            OnDrawColumnCell = DBGridComprobantesDrawColumnCell
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
                FieldName = 'FECHA_COBRO'
                Title.Alignment = taCenter
                Title.Caption = 'Fecha'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FECHA_HORA'
                Title.Alignment = taCenter
                Title.Caption = 'Fecha y Hora'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMERO_CPB'
                Title.Alignment = taCenter
                Title.Caption = 'N'#250'mero'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PUNTO_VENTA'
                Title.Alignment = taCenter
                Title.Caption = 'Pto. Venta'
                Width = 78
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
                FieldName = 'OBSERVACION'
                Title.Alignment = taCenter
                Title.Caption = 'Detalle Cliente'
                Width = 200
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
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ID_PREVENTA'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo Preventa'
                Width = 123
                Visible = True
              end>
          end
        end
        object PanelFiltro: TPanel
          Left = 1
          Top = 1
          Width = 1183
          Height = 32
          Align = alTop
          BevelOuter = bvNone
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          DesignSize = (
            1183
            32)
          object BtnFiltro_Todos: TSpeedButton
            Left = 55
            Top = 6
            Width = 94
            Height = 18
            GroupIndex = 1
            Caption = 'Todos'
            Layout = blGlyphBottom
            OnClick = BtnFiltro_TodosClick
          end
          object BtnFiltro_Fiscal: TSpeedButton
            Left = 151
            Top = 6
            Width = 94
            Height = 18
            GroupIndex = 1
            Down = True
            Caption = 'Fiscal'
            Layout = blGlyphBottom
            OnClick = BtnFiltro_TodosClick
          end
          object BtnFiltro_NoFiscal: TSpeedButton
            Left = 247
            Top = 6
            Width = 94
            Height = 18
            GroupIndex = 1
            Caption = 'No Fiscal'
            Layout = blGlyphBottom
            OnClick = BtnFiltro_TodosClick
          end
          object Label39: TLabel
            Left = 19
            Top = 8
            Width = 25
            Height = 13
            Caption = 'Filtro:'
          end
          object StaticTxtLiquidado: TStaticText
            Left = 1091
            Top = 15
            Width = 99
            Height = 16
            Alignment = taCenter
            Anchors = [akTop, akRight, akBottom]
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'FACTURADO'
            Color = 13828006
            ParentColor = False
            TabOrder = 0
          end
        end
        object PVerDetalles: TPanel
          Left = 1
          Top = 277
          Width = 1183
          Height = 246
          Align = alBottom
          TabOrder = 2
          Visible = False
          object PanelFPagoYProd: TPanel
            Left = 1
            Top = 1
            Width = 1181
            Height = 122
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object Splitter2: TSplitter
              Left = 607
              Top = 0
              Width = 5
              Height = 122
            end
            object PanelProducto: TPanel
              Left = 612
              Top = 0
              Width = 569
              Height = 122
              Align = alClient
              BevelOuter = bvNone
              Caption = 'PanelProducto'
              TabOrder = 0
              object lblTotalProducto: TLabel
                Left = 0
                Top = 101
                Width = 569
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
                Width = 569
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
                    Width = 146
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ID_STOCK_PRODUCTO'
                    Title.Alignment = taCenter
                    Title.Caption = 'Id Stock Producto'
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
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Verdana'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'NOMBRE_CUENTA'
                    Title.Alignment = taCenter
                    Title.Caption = 'Cuenta'
                    Width = 241
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
                  end
                  item
                    Expanded = False
                    FieldName = 'FECHA_FP'
                    Title.Alignment = taCenter
                    Title.Caption = 'Fecha'
                    Visible = True
                  end>
              end
            end
          end
          object PanelOptica: TPanel
            Left = 1
            Top = 123
            Width = 1181
            Height = 122
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object Splitter3: TSplitter
              Left = 607
              Top = 0
              Width = 5
              Height = 122
            end
            object Panel3: TPanel
              Left = 612
              Top = 0
              Width = 569
              Height = 122
              Align = alClient
              BevelOuter = bvNone
              Caption = 'PanelProducto'
              TabOrder = 0
              object lblTotalOss: TLabel
                Left = 0
                Top = 101
                Width = 569
                Height = 21
                Align = alBottom
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Total Reconocimientos OSs: $ 0.00 '
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
              object DBGridOss: TDBGrid
                Left = 0
                Top = 0
                Width = 569
                Height = 101
                Align = alClient
                Color = 14606012
                DataSource = DS_ReconocimOss
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
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'NOMBRE'
                    Title.Caption = 'Plan OS'
                    Width = 138
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DETALLE_PROD'
                    Title.Caption = 'Producto'
                    Width = 370
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MONTO_RECONOCIDO'
                    Title.Caption = 'Monto Reconocido'
                    Width = 113
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ID_RECONOCIMIENTO'
                    Title.Caption = 'ID'
                    Visible = True
                  end>
              end
            end
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 607
              Height = 122
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'PanelFpago'
              TabOrder = 1
              object lblTotalMutual: TLabel
                Left = 0
                Top = 101
                Width = 607
                Height = 21
                Align = alBottom
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Total Dcto. Mutual: $ 0.00 '
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
              object DBGridMutual: TDBGrid
                Left = 0
                Top = 0
                Width = 607
                Height = 101
                Align = alClient
                Color = 14606012
                DataSource = DS_ReconocMutual
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
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'NOMBRE'
                    Title.Caption = 'Detalle'
                    Width = 445
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MONTO_RECONOCIDO'
                    Title.Caption = 'Monto Dcto. Mutual'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ID_RECONOC_MUTUAL'
                    Title.Caption = 'ID'
                    Visible = True
                  end>
              end
            end
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
    CanCustomize = False
    Categories.Strings = (
      'Edicion')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    HideFloatingBarsWhenInactive = False
    ImageOptions.LargeImages = FPrincipal.Iconos_Barra_32
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    MenusShowRecentItemsFirst = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight]
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsOffice11
    UseF10ForMenu = False
    UseSystemFont = False
    Left = 56
    Top = 200
    DockControlHeights = (
      0
      0
      0
      52)
    object dxBarABMBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      BorderStyle = bbsNone
      Caption = 'barra'
      CaptionButtons = <>
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
          Visible = True
          ItemName = 'btnBuscar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btVer'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnImprimir'
        end
        item
          Visible = True
          ItemName = 'btnEliminarComprob'
        end
        item
          Visible = True
          ItemName = 'btnSalir'
        end>
      OldName = 'barra'
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
    end
    object btnBuscar: TdxBarLargeButton
      Caption = 'F1 - Buscar'
      Category = 0
      Hint = 'F1 - Buscar'
      Visible = ivAlways
      LargeImageIndex = 29
      OnClick = btnBuscarClick
      AutoGrayScale = False
    end
    object btnExcel: TdxBarLargeButton
      Align = iaRight
      Caption = 'Exel'
      Category = 0
      Hint = 'Exportar a Exel'
      Visible = ivAlways
      LargeImageIndex = 77
      AutoGrayScale = False
    end
    object btnImprimir: TdxBarLargeButton
      Caption = 'Reimprimir Ticket'
      Category = 0
      Hint = 'Reimprimir Ticket'
      Visible = ivAlways
      LargeImageIndex = 28
      OnClick = btnImprimirClick
      AutoGrayScale = False
    end
    object btnSalir: TdxBarLargeButton
      Align = iaRight
      Caption = 'Salir'
      Category = 0
      Hint = 'Salir sin seleccionar'
      Visible = ivAlways
      LargeImageIndex = 6
      OnClick = btnSalirClick
      AutoGrayScale = False
    end
    object btVer: TdxBarLargeButton
      Caption = 'F2 - Ver/Ocultar Detalle'
      Category = 0
      Hint = 'F2 - Ver/Ocultar Detalle'
      Visible = ivAlways
      ButtonStyle = bsChecked
      LargeImageIndex = 7
      OnClick = btVerClick
      AutoGrayScale = False
    end
    object btnEliminarComprob: TdxBarLargeButton
      Caption = 'Eliminar Comprobante'
      Category = 0
      Hint = 'Eliminar Comprobante'
      Visible = ivNever
      LargeImageIndex = 9
      ShortCut = 114
      OnClick = btnEliminarComprobClick
      AutoGrayScale = False
    end
    object GrupoEditando: TdxBarGroup
      Items = (
        'btnBuscar'
        'btnExcel'
        'btnSalir'
        'btnImprimir'
        'btVer')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
      Items = ()
    end
  end
  object ZQ_Comprobante: TZQuery
    Connection = DM.Conexion
    SortedFields = 'FECHA_COBRADA Desc;CODIGO Asc'
    SortType = stIgnored
    AfterScroll = ZQ_ComprobanteAfterScroll
    SQL.Strings = (
      
        'select distinct c.codigo, c.id_comprobante, c.fecha_cobrada, c.p' +
        'orc_iva,'
      
        '       sum(c.importe_venta) as importeVenta_, s.nombre as suc_, ' +
        'p1.nombre as Vendedor_,'
      '       iva.abreviatura as tiva_, iva.nombre_tipo_iva,'
      
        '       tc.nombre_tipo_cpb as tipoCompr_, p2.nombre as cliente_, ' +
        'c.punto_venta, c.numero_cpb,'
      '       c.fecha as fecha_hora, c.id_preventa, c.observacion'
      'from comprobante c'
      
        'inner join comprobante_forma_pago cfp on (cfp.id_comprobante = c' +
        '.id_comprobante)'
      
        'inner join tipo_formapago tfp on (tfp.id_tipo_formapago = cfp.id' +
        '_tipo_formapag)'
      'inner join cuenta cta on (cfp.cuenta_ingreso = cta.id_cuenta)'
      'inner join sucursal s on (c.id_sucursal = s.id_sucursal)'
      'inner join persona p1 on (p1.id_persona = c.id_vendedor)'
      'inner join tipo_iva iva on (iva.id_tipo_iva = c.id_tipo_iva)'
      
        'inner join tipo_comprobante tc on (tc.id_tipo_cpb = c.id_tipo_cp' +
        'b)'
      'inner join persona p2 on (p2.id_persona = c.id_cliente)'
      'where (c.id_tipo_cpb = 11)'
      
        'group by c.codigo, c.id_comprobante, c.fecha_cobrada, c.importe_' +
        'total,'
      '         c.porc_iva, s.nombre, p1.nombre, iva.abreviatura,'
      
        '         iva.nombre_tipo_iva, tc.nombre_tipo_cpb, p2.nombre, c.p' +
        'unto_venta,'
      '         c.numero_cpb, c.fecha, c.id_preventa, c.observacion'
      '')
    Params = <>
    IndexFieldNames = 'FECHA_COBRADA Desc;CODIGO Asc'
    Left = 194
    Top = 80
    object ZQ_ComprobanteCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 50
    end
    object ZQ_ComprobanteID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object ZQ_ComprobantePORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
    end
    object ZQ_ComprobanteIMPORTEVENTA_: TFloatField
      FieldName = 'IMPORTEVENTA_'
      ReadOnly = True
      currency = True
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
    object ZQ_ComprobantePUNTO_VENTA: TIntegerField
      FieldName = 'PUNTO_VENTA'
    end
    object ZQ_ComprobanteNUMERO_CPB: TIntegerField
      FieldName = 'NUMERO_CPB'
    end
    object ZQ_ComprobanteFECHA_HORA: TDateTimeField
      FieldName = 'FECHA_HORA'
    end
    object ZQ_ComprobanteID_PREVENTA: TIntegerField
      FieldName = 'ID_PREVENTA'
      DisplayFormat = '00000000'
    end
    object ZQ_ComprobanteOBSERVACION: TStringField
      FieldName = 'OBSERVACION'
      Size = 1500
    end
    object ZQ_ComprobanteFECHA_COBRADA: TDateTimeField
      FieldName = 'FECHA_COBRADA'
    end
  end
  object DS_Comprobante: TDataSource
    DataSet = ZQ_Comprobante
    Left = 197
    Top = 135
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
    Left = 329
    Top = 79
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
      currency = True
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
      currency = True
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
  object DS_Comprobante_FormaPago: TDataSource
    DataSet = ZQ_Comprobante_FormaPago
    Left = 325
    Top = 127
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
    Left = 489
    Top = 79
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
      currency = True
    end
    object ZQ_ComprobanteDetalleIMPORTE_UNITARIO: TFloatField
      FieldName = 'IMPORTE_UNITARIO'
    end
    object ZQ_ComprobanteDetalleIMPORTE_FINAL: TFloatField
      FieldName = 'IMPORTE_FINAL'
      DisplayFormat = '$ #,###,##0.00'
      currency = True
    end
    object ZQ_ComprobanteDetalleIMPORTE_IVA: TFloatField
      FieldName = 'IMPORTE_IVA'
      DisplayFormat = '$ #,###,##0.00'
      currency = True
    end
    object ZQ_ComprobanteDetalleIMPORTE_IF: TFloatField
      FieldName = 'IMPORTE_IF'
      currency = True
    end
    object ZQ_ComprobanteDetalleIMPORTE_VENTA: TFloatField
      FieldName = 'IMPORTE_VENTA'
      currency = True
    end
    object ZQ_ComprobanteDetalleIMPORTE_NOFISCAL: TFloatField
      FieldName = 'IMPORTE_NOFISCAL'
      currency = True
    end
    object ZQ_ComprobanteDetallePORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
    end
    object ZQ_ComprobanteDetallePORC_DESCUENTO: TFloatField
      FieldName = 'PORC_DESCUENTO'
    end
    object ZQ_ComprobanteDetalleIMPUESTO_INTERNO: TFloatField
      FieldName = 'IMPUESTO_INTERNO'
    end
    object ZQ_ComprobanteDetalleNOMBRE_MARCA: TStringField
      FieldName = 'NOMBRE_MARCA'
      Size = 50
    end
  end
  object DS_ComprobanteDetalle: TDataSource
    DataSet = ZQ_ComprobanteDetalle
    Left = 493
    Top = 127
  end
  object ZQ_TipoIVA: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from tipo_IVA')
    Params = <>
    Left = 325
    Top = 432
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
  object ZQ_Sucursal: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from Sucursal s'
      'where s.id_sucursal > 0'
      'order by s.nombre')
    Params = <>
    Left = 260
    Top = 430
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
  object ZQ_Fiscal: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select'
      '    (case'
      '    when sum(cd.importe_if) is Null then 0'
      '    else sum(cd.importe_if)'
      '    end ) importe_fiscal'
      'from comprobante c'
      
        'join comprobante_detalle cd on (c.id_comprobante=cd.id_comproban' +
        'te)'
      'where (c.id_comprobante=:id)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 188
    Top = 430
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object ZQ_FiscalIMPORTE_FISCAL: TFloatField
      FieldName = 'IMPORTE_FISCAL'
      ReadOnly = True
    end
  end
  object ZSP_EliminarComprob: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_COMPROBANTE'
        ParamType = ptInput
      end>
    StoredProcName = 'ELIMINAR_COMPROBANTE'
    Left = 195
    Top = 307
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_COMPROBANTE'
        ParamType = ptInput
      end>
  end
  object ATeclasRapidas: TActionManager
    Left = 56
    Top = 266
    StyleName = 'XP Style'
    object ABuscar: TAction
      Caption = 'ABuscar'
      ShortCut = 112
      OnExecute = ABuscarExecute
    end
    object AVerDetalle: TAction
      Caption = 'AVerDetalle'
      ShortCut = 113
      OnExecute = AVerDetalleExecute
    end
    object AEliminar: TAction
      Caption = 'AEliminar'
      ShortCut = 114
      OnExecute = AEliminarExecute
    end
  end
  object PopupMenuFacturas: TPopupMenu
    Left = 635
    Top = 147
    object PopUpItemCambiarCliente1: TMenuItem
      Caption = 'Cambiar Cliente'
      OnClick = PopUpItemCambiarCliente1Click
    end
  end
  object PopupMenuFPago: TPopupMenu
    Left = 315
    Top = 307
    object PopUpItemCambiarCuenta: TMenuItem
      Caption = 'Cambiar Cuenta'
      OnClick = PopUpItemCambiarCuentaClick
    end
    object PopUpItemCambiarFPago: TMenuItem
      Caption = 'Cambiar Forma Pago'
      OnClick = PopUpItemCambiarFPagoClick
    end
  end
  object ZQ_CambiarCliente: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'update comprobante'
      'set comprobante.id_cliente = :id_cliente'
      'where comprobante.id_comprobante = :id_comprobante')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    Left = 635
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
  end
  object ZQ_CambiarCuenta: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'update comprobante_forma_pago'
      'set comprobante_forma_pago.cuenta_ingreso = :id_cuenta'
      'where comprobante_forma_pago.id_comprob_fp = :id_comp_fpago')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_cuenta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_comp_fpago'
        ParamType = ptUnknown
      end>
    Left = 771
    Top = 202
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_cuenta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_comp_fpago'
        ParamType = ptUnknown
      end>
  end
  object ZQ_CambiarFPago: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'update comprobante_forma_pago'
      'set comprobante_forma_pago.id_tipo_formapag = :id_tipo_fpago'
      'where comprobante_forma_pago.id_comprob_fp = :id_comp_fpago')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_tipo_fpago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_comp_fpago'
        ParamType = ptUnknown
      end>
    Left = 875
    Top = 202
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_tipo_fpago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_comp_fpago'
        ParamType = ptUnknown
      end>
  end
  object ISBuscarComprobantes: TISBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Sucursal'
        Campo = 'id_sucursal'
        Tabla = 's'
        TipoCampoIngreso = IS_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoCombollenarCampo = 'nombre'
        TipoCombollenarCampoReal = 'id_sucursal'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Fecha Cobro'
        Campo = 'fecha_cobrada'
        Tabla = 'c'
        TipoCampo = IS_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'C'#243'digo'
        Campo = 'codigo'
        Tabla = 'c'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Nro. Comprobante'
        Campo = 'numero_cpb'
        Tabla = 'c'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Pto. de Venta'
        Campo = 'punto_venta'
        Tabla = 'c'
        TipoCampo = IS_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Tipo IVA'
        Campo = 'id_tipo_iva'
        Tabla = 'c'
        TipoCampoIngreso = IS_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoCombollenarSQL = ZQ_TipoIVA
        TipoCombollenarCampo = 'nombre_tipo_iva'
        TipoCombollenarCampoReal = 'id_tipo_iva'
        TipoComboEditable = False
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Cliente'
        Campo = 'nombre'
        Tabla = 'p2'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Vendedor'
        Campo = 'nombre'
        Tabla = 'p1'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Importe'
        Campo = 'importe_venta'
        Tabla = 'c'
        TipoCampo = IS_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Cuenta'
        Campo = 'nombre_cuenta'
        Tabla = 'cta'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Forma de Pago'
        Campo = 'descripcion'
        Tabla = 'tfp'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Observaciones'
        Campo = 'observacion'
        Tabla = 'c'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    Modelo = DM.ISModelo
    DataSet = ZQ_Comprobante
    SQL.Strings = (
      
        'select distinct c.codigo, c.id_comprobante, c.fecha_cobrada , c.' +
        'porc_iva,'
      
        '       sum(c.importe_venta) as importeVenta_, s.nombre as suc_, ' +
        'p1.nombre as Vendedor_,'
      '       iva.abreviatura as tiva_, iva.nombre_tipo_iva,'
      
        '       tc.nombre_tipo_cpb as tipoCompr_, p2.nombre as cliente_, ' +
        'c.punto_venta, c.numero_cpb,'
      '       c.fecha as fecha_hora, c.id_preventa, c.observacion'
      ''
      'from comprobante c'
      
        'inner join comprobante_forma_pago cfp on (cfp.id_comprobante = c' +
        '.id_comprobante)'
      
        'inner join tipo_formapago tfp on (tfp.id_tipo_formapago = cfp.id' +
        '_tipo_formapag)'
      'inner join cuenta cta on (cfp.cuenta_ingreso = cta.id_cuenta)'
      'inner join sucursal s on (c.id_sucursal = s.id_sucursal)'
      'inner join persona p1 on (p1.id_persona = c.id_vendedor)'
      'inner join tipo_iva iva on (iva.id_tipo_iva = c.id_tipo_iva)'
      
        'inner join tipo_comprobante tc on (tc.id_tipo_cpb = c.id_tipo_cp' +
        'b)'
      'inner join persona p2 on (p2.id_persona = c.id_cliente)'
      'where (c.id_tipo_cpb = 11)'
      ''
      ''
      ''
      
        'group by c.codigo, c.id_comprobante, c.fecha_cobrada, c.importe_' +
        'total,'
      '         c.porc_iva, s.nombre, p1.nombre, iva.abreviatura,'
      
        '         iva.nombre_tipo_iva, tc.nombre_tipo_cpb, p2.nombre, c.p' +
        'unto_venta,'
      '         c.numero_cpb, c.fecha, c.id_preventa, c.observacion'
      ''
      '')
    SQL_Select.Strings = (
      
        'select distinct c.codigo, c.id_comprobante, c.fecha_cobrada , c.' +
        'porc_iva,'
      
        '       sum(c.importe_venta) as importeVenta_, s.nombre as suc_, ' +
        'p1.nombre as Vendedor_,'
      '       iva.abreviatura as tiva_, iva.nombre_tipo_iva,'
      
        '       tc.nombre_tipo_cpb as tipoCompr_, p2.nombre as cliente_, ' +
        'c.punto_venta, c.numero_cpb,'
      '       c.fecha as fecha_hora, c.id_preventa, c.observacion'
      '')
    SQL_From.Strings = (
      'from comprobante c'
      
        'inner join comprobante_forma_pago cfp on (cfp.id_comprobante = c' +
        '.id_comprobante)'
      
        'inner join tipo_formapago tfp on (tfp.id_tipo_formapago = cfp.id' +
        '_tipo_formapag)'
      'inner join cuenta cta on (cfp.cuenta_ingreso = cta.id_cuenta)'
      'inner join sucursal s on (c.id_sucursal = s.id_sucursal)'
      'inner join persona p1 on (p1.id_persona = c.id_vendedor)'
      'inner join tipo_iva iva on (iva.id_tipo_iva = c.id_tipo_iva)'
      
        'inner join tipo_comprobante tc on (tc.id_tipo_cpb = c.id_tipo_cp' +
        'b)'
      'inner join persona p2 on (p2.id_persona = c.id_cliente)')
    SQL_Where.Strings = (
      'where (c.id_tipo_cpb = 11)'
      ''
      ''
      '')
    SQL_Orden.Strings = (
      
        'group by c.codigo, c.id_comprobante, c.fecha_cobrada, c.importe_' +
        'total,'
      '         c.porc_iva, s.nombre, p1.nombre, iva.abreviatura,'
      
        '         iva.nombre_tipo_iva, tc.nombre_tipo_cpb, p2.nombre, c.p' +
        'unto_venta,'
      '         c.numero_cpb, c.fecha, c.id_preventa, c.observacion'
      ''
      '')
    UsarWhereOriginal = IS_Con_Where
    TituloVentana = 'Buscar'
    Left = 59
    Top = 83
  end
  object ISDbSumaComprobante: TISDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'IMPORTEVENTA_'
      end
      item
        Operacion = goCount
        NombreCampo = 'ID_COMPROBANTE'
      end>
    DataSet = ZQ_Comprobante
    SumListChanged = EKDbSumaComprobanteSumListChanged
    Left = 195
    Top = 251
  end
  object ISDbSumaFpago: TISDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'IMPORTE_REAL'
      end>
    DataSet = ZQ_Comprobante_FormaPago
    Left = 315
    Top = 243
  end
  object ISDbSumaProducto: TISDbSuma
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
    Left = 467
    Top = 235
  end
  object ISOrdenarFacturas: TISOrdenarGrilla
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
        TituloColumna = 'Fecha y Hora'
        Visible = True
      end
      item
        TituloColumna = 'N'#250'mero'
        Visible = True
      end
      item
        TituloColumna = 'Pto. Venta'
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
        TituloColumna = 'Detalle Cliente'
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
      end
      item
        TituloColumna = 'C'#243'digo Preventa'
        Visible = True
      end>
    NombreGuardarConfig = 'DBGridComprobantes'
    AltoTituloColumna = 15
    FuenteNormal = []
    Ordenar = True
    MoverColumna = True
    FiltrarColumna = True
    GuardarAncho = True
    Left = 163
    Top = 187
  end
  object ISOrdenarFPago: TISOrdenarGrilla
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
      end
      item
        TituloColumna = 'Fecha'
        Visible = True
      end>
    NombreGuardarConfig = 'DBGridFormaPago'
    AltoTituloColumna = 15
    FuenteNormal = []
    Ordenar = True
    MoverColumna = True
    FiltrarColumna = True
    GuardarAncho = True
    Left = 323
    Top = 187
  end
  object ISOrdenarProducto: TISOrdenarGrilla
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
      end
      item
        TituloColumna = 'Id Stock Producto'
        Visible = True
      end>
    NombreGuardarConfig = 'EKOrdenarProducto'
    AltoTituloColumna = 15
    FuenteNormal = []
    Ordenar = True
    MoverColumna = True
    FiltrarColumna = True
    GuardarAncho = True
    Left = 467
    Top = 187
  end
  object ISListadoCliente: TISListadoSQL
    Modelo = DM.ISModelo
    SQL.Strings = (
      'select p.id_persona, p.nombre'
      'from persona p'
      'where p.baja = '#39'N'#39
      '')
    CampoBuscar = 'nombre'
    CampoClave = 'id_persona'
    TituloVentana = 'Buscar Cliente'
    TituloBuscar = 'Campo Busqueda:'
    TituloBuscar2 = 'Campo Busqueda 2:'
    ColorGrilla = 14606012
    AnchoClave = 80
    AnchoBuscar1 = 500
    AnchoBuscar2 = 500
    Left = 568
    Top = 272
  end
  object ISListadoCuenta: TISListadoSQL
    Modelo = DM.ISModelo
    SQL.Strings = (
      'select c.id_cuenta, c.nombre_cuenta'
      'from cuenta c'
      'where c.baja = '#39'N'#39
      '')
    CampoBuscar = 'nombre_cuenta'
    CampoClave = 'id_cuenta'
    TituloVentana = 'Buscar Cuenta'
    TituloBuscar = 'Campo Busqueda:'
    TituloBuscar2 = 'Campo Busqueda 2:'
    ColorGrilla = 14606012
    AnchoClave = 80
    AnchoBuscar1 = 500
    AnchoBuscar2 = 500
    Left = 680
    Top = 272
  end
  object ISListadoFPago: TISListadoSQL
    Modelo = DM.ISModelo
    SQL.Strings = (
      'select f.id_tipo_formapago, f.descripcion'
      'from tipo_formapago f'
      'where f.baja = '#39'N'#39
      ''
      '')
    CampoBuscar = 'descripcion'
    CampoClave = 'id_tipo_formapago'
    TituloVentana = 'Buscar Forma Pago'
    TituloBuscar = 'Campo Busqueda:'
    TituloBuscar2 = 'Campo Busqueda 2:'
    ColorGrilla = 14606012
    AnchoClave = 80
    AnchoBuscar1 = 500
    AnchoBuscar2 = 500
    Left = 816
    Top = 320
  end
  object ZQ_ReconocMutual: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select orm.*,oo.nombre'
      'from optica_reconocimiento_mutual orm'
      'join optica_os oo on (oo.id_os=orm.id_os)'
      'where (orm.id_comprobante=:idc)'
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idc'
        ParamType = ptUnknown
      end>
    Left = 657
    Top = 39
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idc'
        ParamType = ptUnknown
      end>
    object ZQ_ReconocMutualID_RECONOC_MUTUAL: TIntegerField
      FieldName = 'ID_RECONOC_MUTUAL'
      Required = True
    end
    object ZQ_ReconocMutualID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object ZQ_ReconocMutualID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_ReconocMutualNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_ReconocMutualMONTO_RECONOCIDO: TFloatField
      FieldName = 'MONTO_RECONOCIDO'
      currency = True
      Precision = 10
    end
  end
  object DS_ReconocMutual: TDataSource
    DataSet = ZQ_ReconocMutual
    Left = 765
    Top = 39
  end
  object ZQ_ReconocimOss: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select oro.*,oo.nombre,cd.id_comprobante_detalle, pc.nombre||'#39' -' +
        ' COD: '#39'||coalesce(p.cod_corto,'#39#39') DETALLE_PROD'
      'from optica_reconocimiento_oss oro'
      
        'join comprobante_detalle cd on (cd.id_comprobante_detalle=oro.id' +
        '_comprobante_detalle)'
      'left join producto p on (cd.id_producto=p.id_producto)'
      
        'left join producto_cabecera pc on (pc.id_prod_cabecera=p.id_prod' +
        '_cabecera)'
      'join optica_os oo on (oo.id_os=oro.id_os)'
      'where (cd.id_comprobante=:idc)'
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idc'
        ParamType = ptUnknown
      end>
    Left = 657
    Top = 87
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idc'
        ParamType = ptUnknown
      end>
    object ZQ_ReconocimOssID_RECONOCIMIENTO: TIntegerField
      FieldName = 'ID_RECONOCIMIENTO'
      Required = True
    end
    object ZQ_ReconocimOssID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object ZQ_ReconocimOssID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
    end
    object ZQ_ReconocimOssPRECIO_VENTA: TFloatField
      FieldName = 'PRECIO_VENTA'
    end
    object ZQ_ReconocimOssMONTO_RECONOCIDO: TFloatField
      FieldName = 'MONTO_RECONOCIDO'
      currency = True
    end
    object ZQ_ReconocimOssID_COMPROBANTE_DETALLE: TIntegerField
      FieldName = 'ID_COMPROBANTE_DETALLE'
    end
    object ZQ_ReconocimOssNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_ReconocimOssID_COMPROBANTE_DETALLE_1: TIntegerField
      FieldName = 'ID_COMPROBANTE_DETALLE_1'
      Required = True
    end
    object ZQ_ReconocimOssDETALLE_PROD: TStringField
      FieldName = 'DETALLE_PROD'
      ReadOnly = True
      Size = 128
    end
  end
  object DS_ReconocimOss: TDataSource
    DataSet = ZQ_ReconocimOss
    Left = 765
    Top = 87
  end
  object ISDbSumaOss: TISDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'MONTO_RECONOCIDO'
      end>
    DataSet = ZQ_ReconocimOss
    Left = 747
    Top = 131
  end
  object ISOrdenarGrillaMutual: TISOrdenarGrilla
    Grilla = DBGridMutual
    Filtros = <
      item
        TituloColumna = 'Detalle'
        Visible = True
      end
      item
        TituloColumna = 'Monto Dcto. Mutual'
        Visible = True
      end
      item
        TituloColumna = 'ID'
        Visible = True
      end>
    NombreGuardarConfig = 'ISOrdenarGrillaMutual'
    AltoTituloColumna = 15
    FuenteNormal = []
    Ordenar = True
    MoverColumna = True
    FiltrarColumna = True
    GuardarAncho = True
    Left = 960
    Top = 320
  end
  object ISOrdenarGrillaOss: TISOrdenarGrilla
    Grilla = DBGridOss
    Filtros = <
      item
        TituloColumna = 'Plan OS'
        Visible = True
      end
      item
        TituloColumna = 'Producto'
        Visible = True
      end
      item
        TituloColumna = 'Monto Reconocido'
        Visible = True
      end
      item
        TituloColumna = 'ID'
        Visible = True
      end>
    NombreGuardarConfig = 'ISOrdenarGrillaOss'
    AltoTituloColumna = 15
    FuenteNormal = []
    Ordenar = True
    MoverColumna = True
    FiltrarColumna = True
    GuardarAncho = True
    Left = 976
    Top = 434
  end
  object ISDbSumaMutual: TISDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'MONTO_RECONOCIDO'
      end>
    DataSet = ZQ_ReconocMutual
    Left = 963
    Top = 131
  end
end
