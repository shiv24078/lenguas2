<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:content="http://purl.org/rss/1.0/modules/content/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/">
    <xsl:template match="/">
        <html>
            <head>
             <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
                <title>Actividad 26</title>
            </head>
            <body>
             <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
             <h1> <xsl:value-of select="rss/channel/title"/></h1>
             <h2><xsl:value-of select="rss/channel/description"/></h2>  
             <h3><xsl:value-of select="rss/channel/link"/></h3>  
             <h4><xsl:value-of select="rss/channel/lastBuildDate"/></h4>
             <p><xsl:value-of select="rss/channel/item/guid"/></p>
             <p><xsl:value-of select="rss/channel/item/title"/></p>
             <p><xsl:value-of select="rss/channel/item/pubDate"/></p>
             <p><xsl:value-of select="rss/channel/item/link"/></p>
             <p><xsl:value-of select="rss/channel/item/dc:creator"/></p>
            </body>
        </html>
        
    </xsl:template>
    
</xsl:stylesheet>