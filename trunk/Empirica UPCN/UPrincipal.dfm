object FPrincipal: TFPrincipal
  Left = 274
  Top = 112
  Width = 871
  Height = 640
  Caption = 'FPrincipal'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 569
    Width = 863
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 150
      end>
  end
  object ActionToolBar1: TActionToolBar
    Left = 0
    Top = 0
    Width = 863
    Height = 29
    ActionManager = ActionManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = clWhite
    Spacing = 0
  end
  object PanelTapa: TPanel
    Left = 0
    Top = 29
    Width = 863
    Height = 540
    Align = alClient
    TabOrder = 2
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        ActionBar = ActionToolBar1
      end>
    Images = EKImageList32x32
    Left = 472
    Top = 272
    StyleName = 'XP Style'
    object AConfiguracion: TAction
      Caption = 'Configuracion'
      OnExecute = AConfiguracionExecute
    end
  end
  object MainMenu1: TMainMenu
    Images = EKImageList16x16
    Left = 272
    Top = 272
    object PlandeCuentas: TMenuItem
      Caption = 'Plan de Ctas'
      object PlandeCuentasErogaciones1: TMenuItem
        Caption = 'Plan de Cuentas Erogaciones'
      end
    end
    object Disponibilidades: TMenuItem
      Caption = 'Disponibilidades'
      object SaldosIniciales1: TMenuItem
        Caption = 'Saldos Iniciales'
      end
      object CuentasBancariasyCajas1: TMenuItem
        Caption = 'Cuentas Bancarias y Cajas'
      end
      object ransferenciaEntreCuentas1: TMenuItem
        Caption = 'Transferencia Entre Cuentas'
      end
      object Conciliacion1: TMenuItem
        Caption = 'Conciliacion'
      end
    end
    object Pagos: TMenuItem
      Caption = 'Pagos'
      object ABMProveedores1: TMenuItem
        Caption = 'ABM Proveedores'
      end
      object OrdenesdePago1: TMenuItem
        Caption = 'Ordenes de Pago'
      end
    end
    object Cierres: TMenuItem
      Caption = 'Cierres'
      object Balance1: TMenuItem
        Caption = 'Balance'
      end
    end
    object Reportes1: TMenuItem
      Caption = 'Reportes'
      object OrdenesdePago2: TMenuItem
        Caption = 'Ordenes de Pago'
      end
      object Disponibilidades1: TMenuItem
        Caption = 'Disponibilidades'
      end
    end
    object Sistema: TMenuItem
      Caption = 'Sistema'
      object CambiarContrasea1: TMenuItem
        Caption = 'Cambiar Contrase'#241'a'
        ImageIndex = 39
        OnClick = CambiarContrasea1Click
      end
      object Configuracion1: TMenuItem
        Action = AConfiguracion
      end
      object Salir2: TMenuItem
        Caption = 'Salir'
        ImageIndex = 8
        OnClick = Salir2Click
      end
    end
  end
  object EKVentanas1: TEKVentanas
    PanelTapa = PanelTapa
    AccionManager = ActionManager1
    AbrirEstado = wsMaximized
    PonerCaption = False
    Left = 440
    Top = 141
  end
  object EKImageList16x16: TEKImageList32
    Left = 256
    Top = 101
  end
  object EKImageList32x32: TEKImageList32
    Left = 256
    Top = 157
  end
end
