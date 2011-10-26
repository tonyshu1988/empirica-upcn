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
Public pNumError As Long
Public pDesError As String
Public pCanReg As Long
Public pRS As ADODB.Recordset
Public pIdDevuelto As Long

Private Sub AsignarValores(Optional ByVal rs As ADODB.Recordset, Optional pNoAsigRs As Boolean)
    If Not pNoAsigRs Then
        Set Me.pRS = rs
    End If
    Me.pCanReg = objCnxAeros.pCanReg
    Me.pDesError = objCnxAeros.pDesError
    Me.pIdDevuelto = objCnxAeros.pUltIdenOtor
    Me.pNumError = objCnxAeros.pNumError
End Sub
Public Function sel_IVA()
Dim rs As New ADODB.Recordset
Dim strsql As String

    strsql = "select iva from configuracion"
    Set rs = objCnxAeros.EjecutarConsulta(strsql)
    AsignarValores rs

End Function

Public Function selComprobante(ByVal pIdComprobante As Long)
Dim rs As New ADODB.Recordset
Dim strsql As String

    'strsql = "SELECT * " & _
                "FROM comprobantes_fpago " & _
                "INNER JOIN COMPROBANTES ON COMPROBANTES_FPAGO.lote = COMPROBANTES.lote " & _
                "WHERE COMPROBANTES_FPAGO.lote = " & pIdComprobante
    'strsql = "select clientes.id_cliente, clientes.nombre_apellido, clientes.tipo_doc, clientes.documento, " & _
                    "clientes.cuit_cuil, clientes.direccion, clientes.localidad,  " & _
                    "comprobantes_fpago.id_comprobante_fpago, comprobantes_fpago.lote, comprobantes_fpago.importe as fpImp, " & _
                    "comprobantes_fpago.importe_neto_sin_iva as fpImpSinIva, comprobantes_fpago.importe_iva as fpImpIva, " & _
                    "comprobantes_fpago.impuesto_interno as fpImpInt, comprobantes_fpago.fecha_mdc, " & _
                    "comprobantes_fpago.fecha_comprobante, tipo_iva.id_iva, tipo_iva.descripcion,tipo_iva.tipo_factura,tipo_iva.letra, forma_pago.id_medio, " & _
                    "forma_pago.descripcion, comprobantes.id_producto, comprobantes.id_tipo_responsable, " & _
                    "comprobantes.cantidad, comprobantes.iva, comprobantes.importe, comprobantes.importe_neto_sin_iva, " & _
                    "comprobantes.importe_iva, comprobantes.impuesto_interno, comprobantes.fecha, productos.id_rubro, " & _
                    "productos.codigo, productos.descripcion " & _
                "FROM productos " & _
                "inner join comprobantes on (productos.id_productos = comprobantes.id_producto) " & _
                "inner join comprobantes_fpago on (comprobantes.lote = comprobantes_fpago.lote) " & _
                "inner join clientes on (comprobantes_fpago.id_cliente = clientes.id_cliente) " & _
                "inner join forma_pago on (comprobantes_fpago.id_medio = forma_pago.id_medio) " & _
                "inner join tipo_iva on (comprobantes_fpago.id_iva = tipo_iva.id_iva) " & _
                "WHERE comprobantes_fpago.lote = " & pIdComprobante & _
                " ORDER BY comprobantes.id_comprobante "
    
    'Esta es la consulta completa con las formas de pago incluidas.
    'strsql = "select cli.id_persona as id_cliente, cli.nombre as nombre_apellido, doc.nombre_tipo_doc as tipo_doc, cli.numero_doc as documento, " & _
                       "cli.cuit_cuil, cli.direccion, cli.localidad, " & _
                       "cfp.id_comprob_fp as id_comprobante_fpago, cfp.id_comprobante as lote, cfp.importe_real as fpImp, " & _
                       "cfp.fecha_fp as fecha_comprobante, iva.id_tipo_iva as id_iva, iva.nombre_tipo_iva , iva.letra as tipo_factura, iva.fiscal as letra, tfp.id_tipo_formapago as id_medio, " & _
                       "tfp.descripcion as forma_pago, cd.id_producto as id_producto, " & _
                       "cd.cantidad, cd.importe_if, cd.importe_iva, " & _
                       "cd.impuesto_interno, " & _
                       "pro.codigo_barra , cab.nombre as descripcion " & _
                "from comprobante cpb " & _
                "left join comprobante_detalle cd on (cpb.id_comprobante = cd.id_comprobante) " & _
                "left join comprobante_forma_pago cfp on (cpb.id_comprobante = cfp.id_comprobante) " & _
                "left join producto pro on (cd.id_producto = pro.id_producto) " & _
                "left join producto_cabecera cab on (pro.id_prod_cabecera = cab.id_prod_cabecera) " & _
                "left join persona cli on (cpb.id_cliente = cli.id_persona) " & _
                "left join tipo_formapago tfp on (cfp.id_tipo_formapag = tfp.id_tipo_formapago) " & _
                "left join tipo_iva iva on (cpb.id_tipo_iva = iva.id_tipo_iva) " & _
                "left join tipo_documento doc on (cli.id_tipo_doc = doc.id_tipo_doc) " & _
                "where (cpb.id_comprobante = " & pIdComprobante & ") AND (tfp.ifisc = 'S') " & _
                "order by cd.id_comprobante_detalle"
    
       
    strsql = "select cli.id_persona as id_cliente, cli.nombre as nombre_apellido, doc.nombre_tipo_doc as tipo_doc, cli.numero_doc as documento, " & _
                       "cli.cuit_cuil, cli.direccion, cli.localidad, " & _
                       "iva.id_tipo_iva as id_iva, iva.nombre_tipo_iva , iva.letra as tipo_factura, iva.fiscal as letra, cd.id_producto as id_producto, " & _
                       "cd.cantidad, cd.importe_if, cd.importe_if_siniva ,cd.importe_iva_if, " & _
                       "cd.impuesto_interno, " & _
                       "pro.codigo_barra , cab.nombre as descripcion " & _
                "from comprobante cpb " & _
                "left join comprobante_detalle cd on (cpb.id_comprobante = cd.id_comprobante) " & _
                "left join comprobante_forma_pago cfp on (cpb.id_comprobante = cfp.id_comprobante) " & _
                "left join producto pro on (cd.id_producto = pro.id_producto) " & _
                "left join producto_cabecera cab on (pro.id_prod_cabecera = cab.id_prod_cabecera) " & _
                "left join persona cli on (cpb.id_cliente = cli.id_persona) " & _
                "left join tipo_formapago tfp on (cfp.id_tipo_formapag = tfp.id_tipo_formapago) " & _
                "left join tipo_iva iva on (cpb.id_tipo_iva = iva.id_tipo_iva) " & _
                "left join tipo_documento doc on (cli.id_tipo_doc = doc.id_tipo_doc) " & _
                "where (cpb.id_comprobante = " & pIdComprobante & ") " & _
                "order by cd.id_comprobante_detalle"

    
    Set rs = objCnxAeros.EjecutarConsulta(strsql)
    AsignarValores rs


End Function

Public Function UpdatePosTicket(ByVal pPos As Long, ByVal pTicket As Long, ByVal pLote As Long)
Dim strsql As String

    strsql = "UPDATE comprobante SET punto_venta =" & pPos & ", numero_cpb = " & pTicket & _
        " WHERE id_comprobante =" & pLote
    If objCnxAeros.EjecutarComando(strsql) Then
        UpdatePosTicket = True
    Else
        UpdatePosTicket = False
    End If
End Function

Public Function ActualizarMesa_by_ID(ByVal id_mesa As Long, mesa As String, consumoInterno As Integer) As Boolean
Dim strsql As String

    strsql = "UPDATE mesas SET mesa='" & mesa & "',consumo_interno = " & consumoInterno & _
        " WHERE mesas.id_mesa =" & id_mesa
    If objCnxAeros.EjecutarComando(strsql) Then
        ActualizarMesa_by_ID = True
    Else
        ActualizarMesa_by_ID = False
    End If

End Function

Public Function BorrarMesa_by_ID(ByVal id As Long)
Dim strsql As String

    strsql = " UPDATE mesas SET fecha_baja ='" & Date & "'" & _
             " WHERE mesas.id_mesa =" & id

    If objCnxAeros.EjecutarComando(strsql) Then
        BorrarMesa_by_ID = True
    Else
        BorrarMesa_by_ID = False
    End If

End Function

Public Function ins_CajaApertura(ByVal fecha As Date, ByVal monto As Double)
Dim strsql As String

    strsql = " INSERT INTO caja_apertura (fecha, monto) values ('" & Format(fecha, "YYYYMMDD") & "', " & monto & ")"
    If objCnxAeros.EjecutarComando(strsql) Then
        ins_CajaApertura = True
    Else
        ins_CajaApertura = False
    End If
    AsignarValores , True

End Function


