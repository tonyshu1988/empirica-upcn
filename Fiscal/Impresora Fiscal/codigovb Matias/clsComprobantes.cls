VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsComprobantes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public pNumError As Long        'Codigo del error
Public pDesError As String      'Descripcion del error
Public pCanReg As Long          'Cantidad de registros devueltos
Public pRS As ADODB.Recordset   'Resul set de la consulta
Public pIdDevuelto As Long      '

'Asigna los valores del objeto pasado como parametro a las variables locales definidas arriba
Private Sub AsignarValores(Optional ByVal rs As ADODB.Recordset, Optional pNoAsigRs As Boolean)
    If Not pNoAsigRs Then 'si en el segundo parametro paso False o vacio setea el result set definido arriba
        Set Me.pRS = rs
    End If
    
    Me.pCanReg = objCnxAeros.pCanReg
    Me.pDesError = objCnxAeros.pDesError
    Me.pIdDevuelto = objCnxAeros.pUltIdenOtor
    Me.pNumError = objCnxAeros.pNumError
End Sub

'Busco el comprobante con sus itemes
Public Function selComprobante(ByVal pIdComprobante As Long)
    Dim rs As New ADODB.Recordset
    Dim strsql As String
      
    'creo la query que me busca los datos del comprobante
    strsql = "select cli.id_persona as id_cliente, cli.nombre as nombre_apellido, doc.nombre_tipo_doc as tipo_doc, cli.numero_doc as documento, " & _
                       "cli.cuit_cuil, cli.direccion, cli.localidad, " & _
                       "iva.id_tipo_iva as id_iva, iva.nombre_tipo_iva , iva.letra as tipo_factura, iva.fiscal as letra, cd.id_producto as id_producto, " & _
                       "cd.cantidad, cd.importe_if, cd.importe_if_siniva ,cd.importe_iva_if, " & _
                       "cd.impuesto_interno, " & _
                       "pro.codigo_barra , cab.nombre as descripcion " & _
                "from comprobante cpb " & _
                "left join comprobante_detalle cd on (cpb.id_comprobante = cd.id_comprobante) " & _
                "left join producto pro on (cd.id_producto = pro.id_producto) " & _
                "left join producto_cabecera cab on (pro.id_prod_cabecera = cab.id_prod_cabecera) " & _
                "left join persona cli on (cpb.id_cliente = cli.id_persona) " & _
                "left join tipo_iva iva on (cpb.id_tipo_iva = iva.id_tipo_iva) " & _
                "left join tipo_documento doc on (cli.id_tipo_doc = doc.id_tipo_doc) " & _
                "where (cpb.id_comprobante = " & pIdComprobante & ") " & _
                "order by cd.id_comprobante_detalle"
   
    Set rs = objCnxAeros.EjecutarConsulta(strsql)
    AsignarValores rs
End Function

'Actualizo el comprobante que se imprimio con el punto de venta y numero asignado por la impresora y con la fecha de impresion
Public Function UpdatePosTicket(ByVal pPos As Long, ByVal pTicket As Long, ByVal pLote As Long)
    Dim strsql As String
    
    'strsql = "UPDATE comprobante SET punto_venta =" & pPos & ", numero_cpb = " & pTicket &
    strsql = "UPDATE comprobante SET punto_venta = " & pPos & ", numero_cpb = " & pTicket & ", fecha_impresa = current_date " & _
             "WHERE id_comprobante = " & pLote
             
    If objCnxAeros.EjecutarComando(strsql) Then
        UpdatePosTicket = True
    Else
        UpdatePosTicket = False
    End If
End Function
