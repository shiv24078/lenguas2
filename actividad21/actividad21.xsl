<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Actividad 21</title>
            </head>
            <body>
                <h1>Actividad 21</h1>
                <table border="1">
                    <tr>
                        <th colspan="3" rowspan="2">Descripción</th>
                        <th colspan="3">Fecha</th>
                    </tr>
                    <tr>
                        <td>día</td>
                        <td>mes</td>
                        <td>año</td>
                    </tr>
                    <xsl:for-each select="Tabla/Descripcion">
                        <tr>
                            <td colspan="3">
                                <xsl:value-of select="@id"/>
                            </td>
                            <xsl:for-each select="Fecha">
                                <td>
                                    <xsl:value-of select="dia"/>
                                </td>
                                <td>
                                    <xsl:value-of select="mes"/>
                                </td>  
                                <td> 
                                    <xsl:value-of select="año"/>
                                </td>    
                            </xsl:for-each>    
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
        
    </xsl:template>
    
</xsl:stylesheet>