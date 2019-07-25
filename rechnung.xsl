<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
  <h2>Rechnungen</h2>
<xsl:for-each select="/rechnungen[namespace-uri() ='http://padinfo.de/ns/pad']/rechnung[namespace-uri() = 'http://padinfo.de/ns/pad']">

	<p> Rechnung </p>
</xsl:for-each>
<p></p>
</body>
</html>
</xsl:template>





































</xsl:stylesheet>