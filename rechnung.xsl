<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
  <h2>Rechnungen</h2>
<xsl:for-each select="/*[local-name()='rechnungen' and namespace-uri()='http://padinfo.de/ns/pad']/*[local-name()='rechnung' and namespace-uri()='http://padinfo.de/ns/pad']">
<p> Rechnung </p>
<p><xsl:value-of select="[local-name()='rechnungsempfaenger' and namespace-uri()='http://padinfo.de/ns/pad']"/><p>
</xsl:for-each>
</body>
</html>
</xsl:template>





































</xsl:stylesheet>