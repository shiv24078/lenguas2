<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" indent="yes"/>   
    <xsl:template match="/">
        
        "Cabeza":{
        "CD": [
        <xsl:for-each select="Cabeza/CD">
            {
            "Title": "<xsl:value-of select="Titulo"/>",
            "Artist": "<xsl:value-of select="Artista"/>",
            "Country": "<xsl:value-of select="Pais"/>",
            "Record Company": "<xsl:value-of select="CompañiaDiscographica"/>",
            "Price": <xsl:value-of select="Precio"/>,
            "Year": <xsl:value-of select="AñoDePublicacion"/>
            }<xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
        ]
        }
    </xsl:template>
    
</xsl:stylesheet>