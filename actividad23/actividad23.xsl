<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Actividad 23</title>
            </head>
            <body>
                <h1>Actividad 23</h1>
                <table border="1">
                    <tr>
                    <th colspan="6">Factura nº 999</th>
                    </tr>
                <tr>
                    <td colspan="3">
                        <xsl:value-of select="FACTURA/InfoBasico/Nombre"/>
                        <br/><xsl:value-of select="FACTURA/InfoBasico/Calle"/>
                        <br/><xsl:value-of select="FACTURA/InfoBasico/Ciudad"/>
                        <br/>C.I.F.: <xsl:value-of select="FACTURA/InfoBasico/CIF"/>
                        <br/>Teléfono: <xsl:value-of select="FACTURA/InfoBasico/Telefono"/>
                        <br/>Fax: <xsl:value-of select="FACTURA/InfoBasico/fax"/>
                    </td>
                    <td colspan="3">
                        <br/>
                        <br/>
                        Fecha: <xsl:value-of select="@Fecha"/>
                        <br/>Pedido: <xsl:value-of select="@Pedido"/>
                        <br/>Forma de Pago: <xsl:value-of select="@FormaDePago"/>
                    </td>
                </tr>
                <tr>
                    <th colspan="6">Datos CLIENTE</th>
                </tr>
                <tr>
                    <td colspan="6">
                        nº Cliente: <xsl:value-of select="facturación/factura/DatosCliente/numeroCliente"/>
                        <br/>Nombre: <xsl:value-of select="facturación/factura/DatosCliente/nombre"/>
                        <br/>Dirección de envío: <xsl:value-of select="facturación/factura/DatosCliente/direcciónEnvio"/>
                        <br/>Población: <xsl:value-of select="facturación/factura/DatosCliente/poblacion"/>
                        <br/>Código Postal: <xsl:value-of select="facturación/factura/DatosCliente/codigoPostal"/>
                        <br/>Provincia: <xsl:value-of select="facturación/factura/DatosCliente/provincia"/>
                    </td>
                </tr>
                <tr>
                    <th colspan="6">Datos FACTURA</th>
                </tr>
                <tr> 
                    <th>REF.</th>
                    <th>Descripción</th>
                    <th>Cant.</th>
                    <th>Precio</th>
                    <th>I.V.A.</th>
                    <th>Importe</th>
                </tr>
                <xsl:for-each select="facturación/factura/DatosFacturaCliente">
                    <tr>
                        <td><xsl:value-of select="ref"/></td>
                        <td><xsl:value-of select="descripcion"/></td>
                        <td><xsl:value-of select="cantidad"/></td>
                        <td><xsl:value-of select="precio"/></td>
                        <td><xsl:value-of select="iva"/></td>
                        <td><xsl:value-of select="importe"/></td>
                    </tr>
                </xsl:for-each>
                <tr>
                    <th colspan="2">Base imponible</th>
                    <th colspan="2">% I.V.A.</th>
                    <th colspan="2">Cuota I.V.A.</th>
                </tr>
                <br/>
                <tr>
                    <td colspan="2"><xsl:value-of select="facturación/factura/pago/baseImponible"/></td>
                    <td colspan="2"><xsl:value-of select="facturación/factura/pago/iva"/></td>
                    <td colspan="2"><xsl:value-of select="facturación/factura/pago/cuotaIva"/></td>
                </tr>
                <tr>
                    <th colspan="6">TOTAL FACTURA: <xsl:value-of select="facturación/factura/pago/totalFactura"/></th>
                </tr>
                </table>
            </body>
        </html>
        
    </xsl:template>
    
</xsl:stylesheet>