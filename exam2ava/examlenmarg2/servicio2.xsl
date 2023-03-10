<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns="http://www.w3.org/1999/xhtml">

<xsl:template match="/consulta">
  <html>
  <head>
    <title>Servicios</title>
  </head>
  <body>
    <h1>Servicios</h1>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Tipo</th>
        <th>Precio</th>
        <th>Bono 5</th>
        <th>Bono 10</th>
        <th>Empleados</th>
        <th>Plazas</th>
        <th>Reserva</th>
        <th>Horario</th>
      </tr>
      <xsl:apply-templates select="servicio"/>
    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="servicio">
  <tr>
    <td><xsl:value-of select="tipo"/></td>
    <td><xsl:value-of select="@precio"/></td>
    <td><xsl:value-of select="@bono5"/></td>
    <td><xsl:value-of select="@bono10"/></td>
    <td>
      <xsl:for-each select="empleado/nombre">
        <xsl:value-of select="."/>
        <xsl:if test="position()!=last()">, </xsl:if>
      </xsl:for-each>
    </td>
    <td><xsl:value-of select="plazas"/></td>
    <td><xsl:value-of select="reserva"/></td>
    <td>
      <xsl:for-each select="horario/dia">
        <xsl:value-of select="."/>
        <xsl:if test="position()!=last()">, </xsl:if>
      </xsl:for-each>
      <br/>
      <xsl:for-each select="horario/hora">
        <xsl:value-of select="."/>
        <xsl:if test="position()!=last()">, </xsl:if>
      </xsl:for-each>
    </td>
  </tr>
</xsl:template>

</xsl:stylesheet>
