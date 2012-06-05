VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "FiscalPrinter"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'Enumerado de las posibles impresoras/tickeadoras fiscales a utilizar (utilizado en los valores de clave del registro de Windows)
Public Enum enuTipoImpFiscal
    eNinguna
    eEpson
    eHasar
End Enum

'Realiza la impresión de un ticket-factura por la tickeadora Epson
Public Sub imprimirFacturaXEpson(ByVal pPuertoImpresora As Byte, ByVal pRsFactura As Recordset, ByVal pRsFormaPago As Recordset, ByVal pLote As Long)
    'Varibles de apertura de T/F------------------------
    Dim TipoFormulario As String            'FormType
    Dim TipoLetra As String                 'InvoiceLetter
    Dim TipoFuente As String                'FontType
    Dim TipoIVAComprador As String          'Iva_buyer
    Dim NombreComprador1 As String          'BuyerName1
    Dim NombreComprador2 As String          'BuyerName2
    Dim TpoDocComprador As String           'BuyerDocumentType
    Dim NroDocComprador As String           'BuyerDocumentNumber
    Dim BienDeUso As String                 'FixedAssert (B o N)
    Dim DomicilioComprador1 As String       'BuyerAdress1
    Dim DomicilioComprador2 As String       'BuyerAdress2
    Dim DomicilioComprador3 As String       'BuyerAdress3
    Dim LineaRemito1 As String             'Remit1
    Dim LineaRemito2 As String             'Remit2
    Dim TipoTablaBien As String             'StorageDataType (G o C)
    Dim DescripcionArticulo As String       'Description
    Dim Cantidad As String                  'Quantity
    Dim PrecioUnitario As String            'UnitPrice
    Dim TasaIva As String                   'Iva_tax
    Dim CalificadorDeItem As String         'Qualifier M,m,R,r
    Dim CantidadDeBultos As String          'Bundle
    Dim ImpuestosInternos As String         'PorcentualInternalTaxes
    Dim Impuestosfijos As String            '
    Dim LineaDescExtra1 As String           'Extraline1
    Dim LineaDescExtra2 As String           'Extraline2
    Dim LineaDescExtra3 As String           'Extraline3
    Dim TasaAcrecentamiento As String       'IncreaseTax
    Dim ImpuestosIntFijos As String         'FixesIntTaxes
    Dim TipoIvaEmisor As String, vBonifXItem As String
    Dim DescuentoGlobal As String, vLeyendaBonif As String
    
    Dim TotalLista As Currency, TotalFactura As Currency, TotalBonificado As Currency
    Dim TotalDescuento As Currency, Cargo_Afiliado As Currency, vMontoPagoIntereses As Currency
    Dim vPrecioUnit As Currency, vBonifSinIVA As Currency 'almacena el monto bonificado sin IVA.
    
    Dim Posicion As Long, Final As Long, i As Long, vNroTique As Long, vNroSerie As Long
    Dim NroPlanilla As Long 'Numero de la planilla de correo.
    
    Dim objComprobantes As New clsComprobantes  'Objeto comprobante
    Dim vCuotas As Integer, vIVA As Integer

    'Asigno puerto a la IMPRESORA FISCAL
    frmMain.EPSON_Printer_Fiscal.PortNumber = pPuertoImpresora
    
'PASO 1 - CONFIGURACION CABECERA TICKET
    'TIPO IVA EMISOR
    TipoIvaEmisor = IVA_Vendedor 'Constante global IVA Vendedor = "I"
    TipoLetra = IIf(IsNull(pRsFactura!tipo_factura), "B", pRsFactura!tipo_factura) 'por defecto tipoLetra es B
    
    'NOMBRE DEL COMPRADOR
    NombreComprador1 = AdaptarTextoFiscalEpson(IIf(IsNull(pRsFactura!nombre_apellido), "CONSUMIDOR FINAL", pRsFactura!nombre_apellido), 30) 'por defecto CONSUMIDOR FINAL
    NombreComprador2 = Chr(127)
    
    'DOMICILIO DEL COMPRADOR
    DomicilioComprador1 = AdaptarTextoFiscalEpson(IIf(IsNull(pRsFactura!direccion), "", pRsFactura!direccion), 30) 'si no tiene pongo vacio
    DomicilioComprador2 = AdaptarTextoFiscalEpson(IIf(IsNull(pRsFactura!localidad), "SANTA FE", pRsFactura!localidad), 30) 'si no tiene localidad pongo SANTA FE
    
    'ACA TENGO QUE PONER SI ES TARJETA O EFECTIVO
    'me paro en el primer item de la forma de pago
    pRsFormaPago.MoveFirst
    DomicilioComprador3 = AdaptarTextoFiscalEpson(pRsFormaPago!descripcion, 30)

    'TIPO IVA COMPRADOR (Responsabilidad IVa Comprador(I,R,E,N,M o F))
    TipoIVAComprador = IIf(IsNull(pRsFactura!letra), "F", pRsFactura!letra) 'por defecto es F

    'TIPO Y NRO DOCUMENTO COMPRADOR
    If IsNull(pRsFactura!cuit_cuil) Or (pRsFactura!cuit_cuil = "") Or (pRsFactura!cuit_cuil = 0) Then
    'si el cuit es null o vacio o cero pongo por defecto DNI --------
        TpoDocComprador = IIf(IsNull(pRsFactura!tipo_doc), "DNI", Trim(pRsFactura!tipo_doc))
        NroDocComprador = IIf(IsNull(pRsFactura!documento), "--------", pRsFactura!documento)
    Else 'si el cuit no es null y no es vacio y es distinto de cero pongo
        If (TipoLetra = "A") Or (TipoIVAComprador = "M") Or (TipoIVAComprador = "E") Then
        'Si la factura es de tipo "A" o el comprador es Responzable Monotributo
            TpoDocComprador = "CUIT"
            NroDocComprador = Replace(pRsFactura!cuit_cuil, "-", "")
        Else
        'Si la factura no es de tipo "A" y el comprador no es Responzable Monotributo
            TpoDocComprador = IIf(IsNull(pRsFactura!tipo_doc), "DNI", Trim(pRsFactura!tipo_doc))
            NroDocComprador = IIf(IsNull(pRsFactura!documento), "--------", pRsFactura!documento)
        End If
    End If

    LineaRemito1 = Chr(127)
    LineaRemito2 = Chr(127)
    
    TipoFormulario = "P"    '
    TipoFuente = "17 CPI"   '
    BienDeUso = "N"         'No Bien de Uso
    TipoTablaBien = "C"     '
        
    'OpenInvoice: Realiza la apertura de un ticket-factura o una factura.
    If Not frmMain.EPSON_Printer_Fiscal.OpenInvoice("T", TipoPapel, TipoLetra, CantCopias, TipoFormulario, TipoFuente, _
        IVA_Vendedor, TipoIVAComprador, NombreComprador1, NombreComprador2, TpoDocComprador, NroDocComprador, BienDeUso, _
        DomicilioComprador1, DomicilioComprador2, DomicilioComprador3, LineaRemito1, LineaRemito2, TipoTablaBien) Then
        MsgBox "Error al imprimir el ticket", vbCritical
        Exit Sub
    End If

'PASO 2 - CARGA DE LOS ITEMS AL TICKET
    Do While Not pRsFactura.EOF
        'PRECIO UNITARIO DEL ITEM
        If TipoLetra = "A" And pRsFactura!importe_if_siniva > 0 Then
        'si el tipo de letra es A y el item tiene importe fiscal sin iva mayor a 0 calculo el precio unitario
            vPrecioUnit = CCur(pRsFactura!importe_if_siniva / pRsFactura!Cantidad)
            PrecioUnitario = CStr(Round(CCur(Round((vPrecioUnit), 2) * 100), 2))
        Else
        'si el tipo de letra no es A o el item tiene importe fiscal sin iva igual a 0 calculo el precio unitario
            PrecioUnitario = CStr(Round(CCur(Round((pRsFactura!importe_if / pRsFactura!Cantidad), 2) * 100), 2))
        End If
        
        'DESCRIPCION DEL ITEM
        DescripcionArticulo = ""
        DescripcionArticulo = AdaptarTextoFiscalEpson(pRsFactura!descripcion, 23)
        
        'CANTIDAD DEL ITEM
        Cantidad = CStr(CSng(pRsFactura!Cantidad * 1000))
        
        'Tasa IVA item
        TasaIva = "2100"
        
        CalificadorDeItem = "M"
        CantidadDeBultos = "1"
        ImpuestosInternos = "0" 'IIf(IsNull(pRsFactura!impuesto_interno), "0", pRsFactura!impuesto_interno)
        LineaDescExtra1 = ""
        LineaDescExtra2 = ""
        LineaDescExtra3 = ""
        
        'IMPUESTOS INTERNOS FIJOS
        ImpuestosIntFijos = "0"
        'If TipoLetra = "A" Then
        ImpuestosIntFijos = IIf(IsNull(pRsFactura!impuesto_interno), "0", Round(pRsFactura!impuesto_interno / pRsFactura!Cantidad, 2)) * 100000000
        'End If
        
        TasaAcrecentamiento = "0"
        'SendInvoiceItem: Envía un Item en un ticket-factura o factura fiscal
        If Not frmMain.EPSON_Printer_Fiscal.SendInvoiceItem(DescripcionArticulo, Cantidad, PrecioUnitario, TasaIva, CalificadorDeItem, _
            CantidadDeBultos, ImpuestosInternos, LineaDescExtra1, LineaDescExtra2, LineaDescExtra3, TasaAcrecentamiento, ImpuestosIntFijos) Then
            MsgBox "Error al realizar la impresion. "
        End If

        'Poner en cero las variables.
        vPrecioUnit = 0
        vIVA = 0
        vBonifSinIVA = 0
        
        'paso al siguiente item
        pRsFactura.MoveNext
    Loop

'PASO 3 - SUBTOTAL
    'GetInvoiceSubtotal: Solicita un subtotal de un ticket-factura o factura fiscal
    frmMain.EPSON_Printer_Fiscal.GetInvoiceSubtotal TipoFormulario, "SubTotal: "

    'Vuelvo al primer item de la factura
    pRsFactura.MoveFirst

'PASO 4 - DISCRIMINACION DE IVA Y CONCEPTOS NO GRABADOS
    If TipoLetra = "A" Then
        Dim a As String
        a = CStr((pRsFactura!importe_iva_if))
        'SendInvoicePayment: Envía un pago en un ticket-factura o factura fiscal
        frmMain.EPSON_Printer_Fiscal.SendInvoicePayment "IVA " & TasaIva & "%", a, "T"
        frmMain.EPSON_Printer_Fiscal.SendInvoicePayment "CONCEPTOS NO GRABADOS", 0, "T"
    End If
    
'PASO 5 - CIERRE DE TICKET
    'CloseInvoice: Realiza el cierre de un ticket-factura o factura fiscal
    frmMain.EPSON_Printer_Fiscal.CloseInvoice "T", TipoLetra, "Cerrado" '$5000,00 MONTO TOPE PARA EL TOTAL
    
    'Recupero el numero de ticket
    'AnswerFiel_n: Valor del campo número n (siendo n=3,…,20) para las respuestas a los comandos
    Dim vNumTicket As String
    vNumTicket = Val(frmMain.EPSON_Printer_Fiscal.AnswerField_3)
    
    'Cambio el status para poder obtener el numero del pos desde donde se realizo la impresion
    'Status: Realiza una consulta de estado. N=Normal; P=Impresora; C=Contribuyente; A=Contadores.
    frmMain.EPSON_Printer_Fiscal.Status ("C")
    
    'AnswerFiel_n: Valor del campo número n (siendo n=3,…,20) para las respuestas a los comandos
    Dim vPOS As String
    vPOS = frmMain.EPSON_Printer_Fiscal.AnswerField_4
    
    'Actualizo en la base de datos el numero de POS y TICKET otorgado por el impresor fiscal.
    If Not objComprobantes.UpdatePosTicket(vPOS, vNumTicket, pLote) Then
        MsgBox "Error al intentar grabar el punto de Vta y numero de ticket otorgado por la impresora fiscal."
    End If
    
    'Vulevo el status de la impresora a su estado NORMAL
    frmMain.EPSON_Printer_Fiscal.Status ("N")
    
'PASO 6 - CORTO EL TICKET Y LIMPIO EL TRAILER
    'Me.EPSON_Printer_Fiscal.CutPaper
    frmMain.EPSON_Printer_Fiscal.SetGetHeaderTrailer "S", 11, ""
    frmMain.EPSON_Printer_Fiscal.SetGetHeaderTrailer "S", 12, ""
    frmMain.EPSON_Printer_Fiscal.SetGetHeaderTrailer "S", 13, ""
    frmMain.EPSON_Printer_Fiscal.SetGetHeaderTrailer "S", 14, ""
    frmMain.EPSON_Printer_Fiscal.SetGetHeaderTrailer "S", 15, ""
End Sub

'Adapta el texto pasado como parámetro para que sea apto para enviar a una impresora o tickeadora fiscal de la marca EPSON
Public Function AdaptarTextoFiscalEpson(pTexto As String, pMaxLong As Integer) As String
    Dim vIndice As Integer
    Dim vTextoLimpio As String

    vTextoLimpio = ""
    For vIndice = 1 To Len(pTexto)
        If Asc(Mid(pTexto, vIndice, 1)) < Asc("A") Or Asc(Mid(pTexto, vIndice, 1)) > Asc("Z") Then
            If Asc(Mid(pTexto, vIndice, 1)) < Asc("a") Or Asc(Mid(pTexto, vIndice, 1)) > Asc("z") Then
                If Asc(Mid(pTexto, vIndice, 1)) < Asc("0") Or Asc(Mid(pTexto, vIndice, 1)) > Asc("9") Then
                    If Asc(Mid(pTexto, vIndice, 1)) = Asc("ñ") Then
                        vTextoLimpio = vTextoLimpio & "n"
                    Else
                        If Asc(Mid(pTexto, vIndice, 1)) = Asc("Ñ") Then
                            vTextoLimpio = vTextoLimpio & "N"
                        Else
                            If Asc(Mid(pTexto, vIndice, 1)) = Asc(",") Then
                                vTextoLimpio = vTextoLimpio & ","
                            ElseIf Asc(Mid(pTexto, vIndice, 1)) = Asc(".") Then
                                vTextoLimpio = vTextoLimpio & "."
                            ElseIf Asc(Mid(pTexto, vIndice, 1)) = Asc("-") Then
                                vTextoLimpio = vTextoLimpio & "-"
                            ElseIf Asc(Mid(pTexto, vIndice, 1)) = Asc(":") Then
                                vTextoLimpio = vTextoLimpio & ":"
                            Else
                                vTextoLimpio = vTextoLimpio & " "
                            End If
                        End If
                    End If
                Else
                    vTextoLimpio = vTextoLimpio & Mid(pTexto, vIndice, 1)
                End If
            Else
                vTextoLimpio = vTextoLimpio & Mid(pTexto, vIndice, 1)
            End If
        Else
            vTextoLimpio = vTextoLimpio & Mid(pTexto, vIndice, 1)
        End If
    Next
    vTextoLimpio = Left(Trim(vTextoLimpio), pMaxLong)
    AdaptarTextoFiscalEpson = vTextoLimpio
End Function

