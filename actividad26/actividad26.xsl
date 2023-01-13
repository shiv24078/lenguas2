<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:content="http://purl.org/rss/1.0/modules/content/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/"  version="1.0">
    <xsl:template match="/rss">
        <html>
            <head>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
                <title>Actividad 26</title>
            </head>
            <body>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
                <div class="container">
                    <h1 class="text-center">
                        <xsl:value-of select="channel/title"/>
                    </h1>
                    <p class="text-center">
                        <xsl:value-of select="channel/description"/>
                    </p>
                    
                    
                    <xsl:for-each select="channel/item">
                        <div class="cuerpo">
                            <p>
                                <xsl:value-of select="title"/>
                            </p>
                            <p >
                                <xsl:value-of select="pubDate"/>
                            </p>
                            <p >
                                <xsl:value-of select="link"/>
                            </p>
                            <p >
                                <xsl:value-of select="dc:creator"/>
                            </p>
                            <p >
                                <xsl:value-of select="dcterms:alternative"/>
                            </p>
                            <p>
                                <xsl:value-of select="description"/>
                            </p>
                            <xsl:for-each select="category">
                                <xsl:value-of select="."/>    
                            </xsl:for-each>
                            
                            
                            
                            <img src="{media:content/@url}" class="card-img-top" alt="media:content/media:title"/>
                             
                           
                            
                         
                            
                            <xsl:for-each select="media:content">
                                <xsl:value-of select="media:credit"/>
                                <xsl:value-of select="media:title"/>
                                <xsl:value-of select="media:text"/>
                                <xsl:value-of select="media:text"/>
                            </xsl:for-each>
                            
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
        
    </xsl:template>
    
</xsl:stylesheet>