object FVerImagen: TFVerImagen
  Left = 419
  Top = 207
  BorderStyle = bsDialog
  Caption = 'Ver Imagen'
  ClientHeight = 457
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object edImagen: TDBImage
    Left = 0
    Top = 0
    Width = 515
    Height = 457
    Align = alClient
    DataField = 'IMAGEN'
    DataSource = DataSource
    Stretch = True
    TabOrder = 0
  end
  object ZQ_Cpb_Imagen: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select c.imagen'
      'from comprobante c'
      'where c.id_comprobante = :id_comprobante')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    Left = 176
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    object ZQ_Cpb_ImagenIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
  end
  object ZQ_Prod_Imagen: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select pc.imagen'
      'from producto p'
      
        'left join producto_cabecera pc on (p.id_prod_cabecera = pc.id_pr' +
        'od_cabecera)'
      'where p.id_producto = :id_producto')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_producto'
        ParamType = ptUnknown
      end>
    Left = 328
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_producto'
        ParamType = ptUnknown
      end>
    object ZQ_Prod_ImagenIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
  end
  object DataSource: TDataSource
    Left = 256
    Top = 120
  end
end
