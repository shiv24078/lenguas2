<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Actividad 22</title>
            </head>
            <body>
                <h1>Actividad 22</h1>
                <table border="1">
                    <tr>
                        <th colspan="6">CDs en oferta</th>
                        
                    </tr>
                    <tr>
                        <td>Titulo</td>
                        <td>Artista</td>
                        <td>Pais</td>
                        <td>CompañiaDiscographica</td>
                        <td>Precio</td>
                        <td>AñoDePublicacion</td>
                    </tr>
                    <xsl:for-each select="Cabeza/CD">
                        <tr>
                            <td>
                                <xsl:value-of select="Titulo"/>
                            </td>
                            <td>
                                <xsl:value-of select="Artista"/>
                            </td>  
                            <td> 
                                <xsl:value-of select="Pais"/>
                            </td>
                            <td> 
                                <xsl:value-of select="CompañiaDiscographica"/>
                            </td> 
                            <td> 
                                <xsl:value-of select="Precio"/>
                            </td> 
                            <td> 
                                <xsl:value-of select="AñoDePublicacion"/>
                            </td>     
                            
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
        
    </xsl:template>
    
</xsl:stylesheet>