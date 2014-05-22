object FAcerca_De: TFAcerca_De
  Left = 444
  Top = 261
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Acerca de...'
  ClientHeight = 288
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 501
    Height = 288
    Align = alClient
    Stretch = True
    Visible = False
  end
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 502
    Height = 288
    Align = alCustom
  end
  object btnCerrar: TButton
    Left = 9
    Top = 259
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 0
    OnClick = btnCerrarClick
  end
  object Memo1: TMemo
    Tag = 99
    Left = 9
    Top = 165
    Width = 481
    Height = 89
    Alignment = taCenter
    Color = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    Lines.Strings = (
      'GRUPO GUADALUPE S.RL.'
      ''
      '- E-mail: contacto@grupoguadalupe.com.ar'
      '- Tel'#233'fono: 0342 4536444'
      '- Horario de Atenci'#243'n: lunes a viernes de 8:30 a 13.30 hs.'
      ''
      
        'GRUPO GUADALUPE S.R.L. es una empresa especializada en el desarr' +
        'ollo de '
      
        'software destinada a Municipios y Comunas. Con una amplia trayec' +
        'toria y '
      
        'experiencia de m'#225's de 10 a'#241'os en el mercado, trabajando junto a ' +
        'una variada '
      
        'gama de Municipios y Comunas del norte, centro y sur de la provi' +
        'ncia de '
      'Santa Fe.'
      ''
      
        'El "SISTEMA INTEGRAL PARA MUNICIPIOS Y COMUNAS" es un sistema de' +
        ' '
      
        'gesti'#243'n integrado, multiusuario, con m'#243'dulos para Internet y con' +
        ' una '
      
        'importante variedad de prestaciones de servicios tanto para el m' +
        'unicipio como '
      
        'para el ciudadano, transform'#225'ndose en una herramienta poderosa e' +
        ' '
      
        'indispensable para la gesti'#243'n moderna de los Municipios y Comuna' +
        's.'
      
        'Partiendo de una estructura o sistema de base y dada la flexibil' +
        'idad que el '
      
        'sistema posee, '#233'ste es adaptable a las caracter'#237'sticas y necesid' +
        'ades propias '
      'de cada Cliente.'
      ''
      
        'Nuestro sistema se encuentra homologado por el Banco de Santa Fe' +
        ' S.A. la '
      
        'red Link y otras entidades bancarias para el cobro a trav'#233's del ' +
        'c'#243'digo de '
      'barras utilizado en las boletas de TASAS, DERECHOS Y SERVICIOS.')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
    Visible = False
  end
  object DBMemo1: TDBMemo
    Left = 9
    Top = 165
    Width = 481
    Height = 89
    Alignment = taCenter
    Color = cl3DLight
    DataField = 'DESCRIPCION'
    DataSource = DS_Config
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object ZQ_Config: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select descripcion'
      'from adm_configuracion'
      'where clave = '#39'Acerca_De'#39)
    Params = <>
    Left = 24
    Top = 24
  end
  object DS_Config: TDataSource
    DataSet = ZQ_Config
    Left = 24
    Top = 72
  end
  object ActionManager1: TActionManager
    Left = 496
    Top = 288
    StyleName = 'XP Style'
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 57421
      OnExecute = Action1Execute
    end
  end
end
