<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes"/>
<xsl:template match="/">
  ---
  FACTURA:
    numero: "<xsl:value-of select="/FACTURA/@numero"/>"
    InfoBasico:
      Fecha: "<xsl:value-of select="/FACTURA/InfoBasico/@Fecha"/>"
      Pedido: "<xsl:value-of select="/FACTURA/InfoBasico/@Pedido"/>"
      FormaDePago: "<xsl:value-of select="/FACTURA/InfoBasico/@FormaDePago"/>"
      Nombre: "<xsl:value-of select="/FACTURA/InfoBasico/Nombre"/>"
      Calle: "<xsl:value-of select="/FACTURA/InfoBasico/Calle"/>"
      Ciudad: "<xsl:value-of select="/FACTURA/InfoBasico/Ciudad"/>"
      Telefono: "<xsl:value-of select="/FACTURA/InfoBasico/Telefono"/>"
      fax: "<xsl:value-of select="/FACTURA/InfoBasico/fax"/>"
    DatosCLIENTE:
      NumeroCliente: "<xsl:value-of select="/FACTURA/DatosCLIENTE/NumeroCliente"/>"
      Nombre: "<xsl:value-of select="/FACTURA/DatosCLIENTE/Nombre"/>"
      DirrecionDeEnvio: "<xsl:value-of select="/FACTURA/DatosCLIENTE/DirrecionDeEnvio"/>"
      Poblacion: "<xsl:value-of select="/FACTURA/DatosCLIENTE/Poblacion"/>"
      CodPostal: "<xsl:value-of select="/FACTURA/DatosCLIENTE/CodPostal"/>"
      Provincia: "<xsl:value-of select="/FACTURA/DatosCLIENTE/Provincia"/>"
    DatosFACTURA:
      REF:
        <xsl:for-each select="/FACTURA/DatosFACTURA/REF">
          - id: "<xsl:value-of select="@id"/>"
            Descripcion: "<xsl:value-of select="Descripcion"/>"
            cant: "<xsl:value-of select="cant"/>"
            PRECIO: "<xsl:value-of select="PRECIO"/>"
            IVA: "<xsl:value-of select="IVA"/>"
            IMPORTE: "<xsl:value-of select="IMPORTE"/>"
        </xsl:for-each>
      BaseImponible: "<xsl:value-of select="/FACTURA/DatosFACTURA/

BaseImponible"/>"
IVA: "<xsl:value-of select="/FACTURA/DatosFACTURA/IVA"/>"
CuotaIVA: "<xsl:value-of select="/FACTURA/DatosFACTURA/CuotaIVA"/>"
TotalFactura: "<xsl:value-of select="/FACTURA/DatosFACTURA/TotalFactura"/>"
</xsl:template>

</xsl:stylesheet>