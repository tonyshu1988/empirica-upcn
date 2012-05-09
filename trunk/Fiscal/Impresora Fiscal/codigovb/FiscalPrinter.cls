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
'ID del artículo APORTE COMUNITARIO.
Public IdAlmacenLocal As Long

'Enumerado de las posibles impresoras/tickeadoras fiscales a utilizar (utilizado en los valores
'de clave del registro de Windows)
Public Enum enuTipoImpFiscal
    eNinguna
    eEpson
    eHasar
End Enum


Public Sub imprimirFacturaXEpson(ByVal pPuertoImpresora As Byte, ByVal pRsFactura As Recordset, ByVal pLote As Long)
'Lógica: Realiza la impresión de un ticket-factura por la tickeadora Epson

'Varibles de apertura de T/F------------------------
Dim TipoFormulario As String 'FormType
Dim TipoLetra As String 'InvoiceLetter
Dim TipoFuente As String 'FontType
Dim TipoIVAComprador As String 'Iva_buyer
Dim NombreComprador1 As String 'BuyerName1
Dim NombreComprador2 As String 'BuyerName2
Dim TpoDocComprador As String 'BuyerDocumentType
Dim NroDocComprador As String 'BuyerDocumentNumber
Dim BienDeUso As String 'FixedAssert (B o N)
Dim DomicilioComprador1 As String 'BuyerAdress1
Dim DomicilioComprador2 As String 'BuyerAdress2
Dim DomicilioComprador3 As String 'BuyerAdress3
Dim LineaReminto1 As String 'Remit1
Dim LineaReminto2 As String 'Remit2
Dim TipoTablaBien As String 'StorageDataType (G o C)
'Varibles de Lineas  de T/F---------------------------
Dim DescripcionArticulo As String 'Description
Dim Cantidad As String 'Quantity
Dim PrecioUnitario As String 'UnitPrice
Dim TasaIva As String 'Iva_tax
Dim CalificadorDeItem As String 'Qualifier M,m,R,r
Dim CantidadDeBultos As String 'Bundle
Dim ImpuestosInternos As String 'PorcentualInternalTaxes
Dim Impuestosfijos As String
Dim LineaDescExtra1 As String 'Extraline1
Dim LineaDescExtra2 As String 'Extraline2
Dim LineaDescExtra3 As String 'Extraline3
Dim TasaAcrecentamiento As String 'IncreaseTax
Dim ImpuestosIntFijos As String 'FixesIntTaxes
Dim TipoIvaEmisor As String, vBonifXItem As String
Dim DescuentoGlobal As String, vLeyendaBonif As String

Dim TotalLista As Currency, TotalFactura As Currency, TotalBonificado As Currency
Dim TotalDescuento As Currency, Cargo_Afiliado As Currency, vMontoPagoIntereses As Currency
Dim vPrecioUnit As Currency, vBonifSinIVA As Currency 'almacena el monto bonificado sin IVA.

Dim Posicion As Long, Final As Long, i As Long, vNroTique As Long, vNroSerie As Long
Dim NroPlanilla As Long 'Numero de la planilla de correo.

Dim objComprobantes As New clsComprobantes
Dim vCuotas As Integer, vIVA As Integer

    'Asigno puerto al CF__________________________________________
    frmMain.EPSON_Printer_Fiscal.PortNumber = pPuertoImpresora
    
    'Cuidado con esta variable, yo la cree como string
    TipoIvaEmisor = IVA_Vendedor 'IVA Vendedor = "I"
    TipoLetra = IIf(IsNull(pRsFactura!tipo_factura), "B", pRsFactura!tipo_factura)
    'LIMPIO EL NOMBRE DEL COMPRADOR----------------------------------------
    NombreComprador1 = AdaptarTextoFiscalEpson(IIf(IsNull(pRsFactura!nombre_apellido), "CONSUMIDOR FINAL", pRsFactura!nombre_apellido), 30)
    NombreComprador2 = Chr(127)
    DomicilioComprador1 = AdaptarTextoFiscalEpson(IIf(IsNull(pRsFactura!direccion), "", pRsFactura!direccion), 30)
    
    'LIMPIO LA LOCALIDAD DEL COMPRADOR ------------------------------------
    DomicilioComprador2 = Chr(127)
    DomicilioComprador2 = AdaptarTextoFiscalEpson(IIf(IsNull(pRsFactura!localidad), "SANTA FE", pRsFactura!localidad), 30)
    DomicilioComprador3 = AdaptarTextoFiscalEpson("EFECTIVO", 30)

    TipoIVAComprador = IIf(IsNull(pRsFactura!letra), "F", pRsFactura!letra)

    If IsNull(pRsFactura!cuit_cuil) Or (pRsFactura!cuit_cuil = "") Or (pRsFactura!cuit_cuil = 0) Then
        TpoDocComprador = IIf(IsNull(pRsFactura!tipo_doc), "DNI", Trim(pRsFactura!tipo_doc)) 'TODO me falta este campo.
        NroDocComprador = IIf(IsNull(pRsFactura!documento), "11111111", pRsFactura!documento)
    Else
        'La factura es de tipo "A" o el comprador es Responzable Monotributo
        If (TipoLetra = "A") Or (TipoIVAComprador = "M") Or (TipoIVAComprador = "E") Then 'Or (cboTipos_Iva.ItemData(cboTipos_Iva.ListIndex) = TipoIva.MONOTRIBUTO) Then
            'LIMPIO LOS GUIONES----------------------
            NroDocComprador = Replace(pRsFactura!cuit_cuil, "-", "")
            TpoDocComprador = "CUIT"
        Else
            TpoDocComprador = IIf(IsNull(pRsFactura!tipo_doc), "DNI", Trim(pRsFactura!tipo_doc)) 'TODO me falta este campo.
            NroDocComprador = IIf(IsNull(pRsFactura!documento), "11111111", pRsFactura!documento)
        End If
    End If

    LineaReminto1 = "."
    LineaReminto2 = "."
    
    TipoFormulario = "P"
    TipoFuente = "17 CPI"
    BienDeUso = "N"  'No Bien de Uso
    TipoTablaBien = "C"
        
    If Not frmMain.EPSON_Printer_Fiscal.OpenInvoice("T", TipoPapel, TipoLetra, CantCopias, TipoFormulario, TipoFuente, _
        IVA_Vendedor, TipoIVAComprador, NombreComprador1, NombreComprador2, TpoDocComprador, NroDocComprador, BienDeUso, _
        DomicilioComprador1, DomicilioComprador2, DomicilioComprador3, LineaReminto1, LineaReminto2, TipoTablaBien) Then
        MsgBox "Error al imprimir el ticket", vbCritical
        Exit Sub
    End If

    '2-(N pasos)Envio de items________________________________________________
    Do While Not pRsFactura.EOF
        'Agregado el 13/09/2004 para corregir la dicriminación del iva para
        'los articulos con iva incluído.
        'vIVA = IIf(IsNull(pRsFactura!importe_iva), 0, pRsFactura!importe_iva)
        

        If TipoLetra = "A" And pRsFactura!importe_if_siniva > 0 Then
            'Obtener el precio unitario.
            vPrecioUnit = CCur(pRsFactura!importe_if_siniva / pRsFactura!Cantidad)
            PrecioUnitario = CStr(Round(CCur(Round((vPrecioUnit), 2) * 100), 2))
        Else
            PrecioUnitario = CStr(Round(CCur(Round((pRsFactura!importe_if / pRsFactura!Cantidad), 2) * 100), 2))
        End If
        DescripcionArticulo = ""
        DescripcionArticulo = AdaptarTextoFiscalEpson(pRsFactura!descripcion, 23)
        Cantidad = CStr(CSng(pRsFactura!Cantidad * 1000))
        
        'Obtengo la configuracion de IVA del sistema.
        objComprobantes.sel_IVA
        If objComprobantes.pCanReg > 0 Then
            TasaIva = CStr(CSng(IIf(IsNull(objComprobantes.pRS!iva), 0, objComprobantes.pRS!iva) * 10000))
        Else
            TasaIva = "2100"
        End If
        
        CalificadorDeItem = "M"
        CantidadDeBultos = "1"
        ImpuestosInternos = "0" 'IIf(IsNull(pRsFactura!impuesto_interno), "0", pRsFactura!impuesto_interno)
        LineaDescExtra1 = ""
        
        'Insertado el 24/12/2002-------------------
        LineaDescExtra1 = ""
        LineaDescExtra2 = ""
        LineaDescExtra3 = ""
        
        ImpuestosIntFijos = "0"
        'If TipoLetra = "A" Then
        ImpuestosIntFijos = IIf(IsNull(pRsFactura!impuesto_interno), "0", Round(pRsFactura!impuesto_interno / pRsFactura!Cantidad, 2)) * 100000000
        'End If
        
        TasaAcrecentamiento = "0"
        'Me.EPSON_Printer_Fiscal.SendInvoiceItem "Prueba", "1000", "100", "2100", "M", "1", "0", "Linea Aux1", "Linea Aux2", "Linea Aux3", "0"
        If Not frmMain.EPSON_Printer_Fiscal.SendInvoiceItem(DescripcionArticulo, Cantidad, PrecioUnitario, TasaIva, CalificadorDeItem, _
            CantidadDeBultos, ImpuestosInternos, LineaDescExtra1, LineaDescExtra2, LineaDescExtra3, TasaAcrecentamiento, ImpuestosIntFijos) Then
            MsgBox "Error al realizar la impresion. "
        End If
            

        'Poner en cero las variables.
        vPrecioUnit = 0
        vIVA = 0
        vBonifSinIVA = 0
        '----------------------------
        pRsFactura.MoveNext
    Loop

    '3-Solicito un subtotal____________________________________________________
    'If TipoLetra = "B" Then
    frmMain.EPSON_Printer_Fiscal.GetInvoiceSubtotal TipoFormulario, "SubTotal: "
    'End if

    pRsFactura.MoveFirst

    If TipoLetra = "A" Then
    '5-Pago_____________________________________________________________________
        'Discriminacion de iva
        Dim a As String
        a = CStr((pRsFactura!importe_iva_if))
        frmMain.EPSON_Printer_Fiscal.SendInvoicePayment "IVA " & TasaIva & "%", a, "T"
        'Conceptos No Grabados
        frmMain.EPSON_Printer_Fiscal.SendInvoicePayment "CONCEPTOS NO GRABADOS", 0, "T"
    End If
    '6-Cierro el ticket_________________________________________________________
    frmMain.EPSON_Printer_Fiscal.CloseInvoice "T", TipoLetra, "Cerrado" '$5000,00 MONTO TOPE PARA EL TOTAL
    'Recuperar nro. de tique del controlador fiscal
    
    'Recupero el numero de ticket
    Dim vNumTicket As String
    vNumTicket = Val(frmMain.EPSON_Printer_Fiscal.AnswerField_3)
    'Cambio el status para poder obtener el numero del pos desde donde se realizo la impresion
    frmMain.EPSON_Printer_Fiscal.Status ("C")
    'Recupero el numero de POS
    Dim vPOS As String
    vPOS = frmMain.EPSON_Printer_Fiscal.AnswerField_4
    'Actualizo en la base de datos el numero de POS y TICKET otorgado por el impresor fiscal.
    If Not objComprobantes.UpdatePosTicket(vPOS, vNumTicket, pLote) Then
        MsgBox "Error al intentar grabar el punto de Vta y numero de ticket otorgado por la impresora fiscal."
    End If
    'Vulevo el status de la impresora a su estado NORMAL
    frmMain.EPSON_Printer_Fiscal.Status ("N")
    '7-Corto Factura____________________________________________________________
    'Me.EPSON_Printer_Fiscal.CutPaper
    
    'Limpio el trailer del ticket
    '--------------------------------------------------------------------------------
    frmMain.EPSON_Printer_Fiscal.SetGetHeaderTrailer "S", 11, ""
    frmMain.EPSON_Printer_Fiscal.SetGetHeaderTrailer "S", 12, ""
    frmMain.EPSON_Printer_Fiscal.SetGetHeaderTrailer "S", 13, ""
    frmMain.EPSON_Printer_Fiscal.SetGetHeaderTrailer "S", 14, ""
    frmMain.EPSON_Printer_Fiscal.SetGetHeaderTrailer "S", 15, ""
    '--------------------------------------------------------------------------------
    
End Sub

Public Function AdaptarTextoFiscalEpson(pTexto As String, pMaxLong As Integer) As String
'Lógica: Adapta el texto pasado como parámetro para que sea apto para enviar a una impresora o
'tickeadora fiscal de la marca EPSON
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

