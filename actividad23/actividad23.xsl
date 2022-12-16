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
                        Fecha: <xsl:value-of select="FACTURA/InfoBasico/@Fecha"/>
                        <br/>Pedido: <xsl:value-of select="FACTURA/InfoBasico/@Pedido"/>
                        <br/>Forma de Pago: <xsl:value-of select="FACTURA/InfoBasico/@FormaDePago"/>
                    </td>
                </tr>
                <tr>
                    <th colspan="6">Datos CLIENTE</th>
                </tr>
                <tr>
                    <td colspan="6">
                        nº Cliente: <xsl:value-of select="FACTURA/DatosCLIENTE/NumeroCliente"/>
                        <br/>Nombre: <xsl:value-of select="FACTURA/DatosCLIENTE/Nombre"/>
                        <br/>Dirección de envío: <xsl:value-of select="FACTURA/DatosCLIENTE/DirrecionDeEnvio"/>
                        <br/>Población: <xsl:value-of select="FACTURA/DatosCLIENTE/Poblacion"/>
                        <br/>Código Postal: <xsl:value-of select="FACTURA/DatosCLIENTE/CodPostal"/>
                        <br/>Provincia: <xsl:value-of select="FACTURA/DatosCLIENTE/Provincia"/>
                    </td>
                </tr>
                <tr>
                    <th colspan="6">Datos FACTURA</th>
                </tr>
                <tr> 
                    <th>REF</th>
                    <th>Descripción</th>
                    <th>CANT</th>
                    <th>PRECIO</th>
                    <th>IVA.</th>
                    <th>IMPORTE</th>
                </tr>
                <xsl:for-each select="FACTURA/DatosFACTURA/REF">
                    <tr>
                        <td><xsl:value-of select="@id"/></td>
                        <td><xsl:value-of select="Descripcion"/></td>
                        <td><xsl:value-of select="cant"/></td>
                        <td><xsl:value-of select="PRECIO"/></td>
                        <td><xsl:value-of select="IVA"/></td>
                        <td><xsl:value-of select="IMPORTE"/></td>
                    </tr>
                </xsl:for-each>
                <tr>
                    <th colspan="2">Base imponible</th>
                    <th colspan="2">I.V.A.</th>
                    <th colspan="2">Cuota IVA</th>
                    
                </tr>
                <br/>
                <tr >
                    <td colspan="2"><xsl:value-of select="FACTURA/DatosFACTURA/BaseImponible"/></td>
                    <td colspan="2"><xsl:value-of select="FACTURA/DatosFACTURA/IVA"/></td>
                    <td colspan="2"><xsl:value-of select="FACTURA/DatosFACTURA/CuotaIVA"/></td>
                </tr>
                <tr>
                    <th colspan="6">TOTAL FACTURA:</th>
                </tr>
                <td colspan="6" align="center" ><xsl:value-of  select="FACTURA/DatosFACTURA/TotalFactura"/> </td>
                </table>
            </body>
        </html>
        
    </xsl:template>
    
</xsl:stylesheet>