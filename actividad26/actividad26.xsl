<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:content="http://purl.org/rss/1.0/modules/content/"
    xmlns:dcterms="http://purl.org/dc/terms/" xmlns:atom="http://www.w3.org/2005/Atom"
    xmlns:media="http://search.yahoo.com/mrss/" version="1.0">
    <xsl:template match="/">

        <html>
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <link rel="stylesheet"
                    href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
                    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
                    crossorigin="anonymous" />
                <title>Actividad 26</title>

                <style>
                    .newspaper-header {
                    background-color: black;
                    color: white;
                    padding: 10px;
                    width:100%;
                    font-size: 2rem;
                    display:block;
                    }

                    .container-fluid {
                    width: 100%;
                    }

                    .newspaper-header a {
                    color: inherit;
                    }

                    .newspaper-title {
                    color: white;
                    text-align: center;
                    }

                    .description {
                    color: #3339;
                    font-size: 1.2rem; 
                    text-align: center;
                    margin: 0 auto;
                    margin-top: 22px; 
                    width:75%;
                    }

                    .card {
                    border: 1px solid #ccc;
                    margin-bottom: 20px;
                    background-color: #f5f5f5;
                    padding: 20px;
                    transition: all 0.2s ease-in-out;
                    }

                    .card:hover {
                    box-shadow: 0px 0px 10px #ccc;
                    transform: scale(1.05);
                    }

                    .card-img-top {
                    width: 100%;
                    height: auto;
                    }

                    .MediaContento {
                    color: grey;
                    font-size: 0.5rem;
                    }

                    .card-title {
                    font-size: 1.2rem;
                    margin-top: 10px;
                    }

                    .card-text {
                    font-size: 1rem;
                    color: black;
                    margin-top: 10px;
                    }

                    body {
                    background-color: #f5f5f5;
                    }
                </style>
            </head>

            <body>
                <script
                    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
                    crossorigin="anonymous"></script>

                <div class="container-fluid">
                    <header class="newspaper-header">
                        <h1 class="newspaper-title">
                            <a href="{rss/channel/link}">
                                <xsl:value-of select="rss/channel/title" />
                            </a>
                        </h1>
                    </header>

                    <nav class="navbar navbar-expand-lg navbar-light bg-light">
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="#"> Idioma: <xsl:value-of
                                            select="rss/channel/language" />
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">
                                        <xsl:value-of select="rss/channel/lastBuildDate" />
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>

                    <h5 class="description">
                        <xsl:value-of select="rss/channel/description" />
                    </h5>
                    <br />

                    <div class="row">
                        <xsl:for-each select="rss/channel/item">
                            <div class="col-sm-6">
                                <div class="card">
                                    <div class="card-body">
                                        <img src="{media:content/@url}" class="card-img-top"
                                            alt="{media:content/media:title}" />
                                        <div class="MediaContento">
                                            <xsl:for-each select="media:content">
                                                <xsl:value-of select="media:credit" />
                                                <br />
                                                <xsl:value-of
                                                    select="media:text" />
                                            </xsl:for-each>
                                        </div>
                                        <h5 class="card-title">
                                            <a href="{link}">
                                                <xsl:value-of select="title" />
                                            </a>
                                        </h5>
                                        <h6 class="card-subtitle mb-2 text-muted">
                                            <xsl:value-of select="pubDate" />
                                        </h6>
                                        <p class="card-text">
                                            <xsl:value-of select="description" />
                                        </p>
                                        <p class="card-text">
                                            <strong>Autor: </strong>
                                            <xsl:value-of select="dc:creator" />
                                        </p>
                                        <p class="card-text">
                                            <strong>Categorias: </strong>
                                            <xsl:for-each select="category">
                                                <span class="badge badge-secondary">
                                                    <xsl:value-of select="." />
                                                </span>
                                            </xsl:for-each>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
