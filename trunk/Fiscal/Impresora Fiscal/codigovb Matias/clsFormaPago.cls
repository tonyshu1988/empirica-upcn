VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsFormaPago"
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

'Busco las forma de pago del comprobante
Public Function selFormaPago(ByVal pIdComprobante As Long)
    Dim rs As New ADODB.Recordset
    Dim strsql As String
        
    'creo la query que me busca los datos de la forma de pago
    strsql = "select distinct tf.descripcion " & _
             "from comprobante_forma_pago fp " & _
             "left join tipo_formapago tf on (fp.id_tipo_formapag = fp.id_tipo_formapag) " & _
             "where tf.""IF"" = 'S' " & _
             "and fp.id_comprobante = " & pIdComprobante
   
    Set rs = objCnxAeros.EjecutarConsulta(strsql)
    AsignarValores rs
End Function
