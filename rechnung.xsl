<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
  <h2>Rechnungen</h2>
<xsl:for-each select="/pad:rechnungen/pad:rechnung">
<p> Rechnung </p>
<p></p>
</xsl:for-each>
</body>
</html>
</xsl:template>





































</xsl:stylesheet>