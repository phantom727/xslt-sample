<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
  <h1>Rechnungen</h1>
<xsl:for-each select="*[local-name()='rechnungen' and namespace-uri()='http://padinfo.de/ns/pad']/*[local-name()='rechnung' and namespace-uri()='http://padinfo.de/ns/pad']">

	<h2> Rechnung </h2>
	<p>
	<xsl:value-of select="*[local-name()='rechnungsempfaenger' and namespace-uri()='http://padinfo.de/ns/pad']/*[local-name()='person' and namespace-uri()='http://padinfo.de/ns/pad']/*[local-name()='vorname' and namespace-uri()='http://padinfo.de/ns/pad']"/>&#160;<xsl:value-of select="*[local-name()='rechnungsempfaenger' and namespace-uri()='http://padinfo.de/ns/pad']/*[local-name()='person' and namespace-uri()='http://padinfo.de/ns/pad']/*[local-name()='name' and namespace-uri()='http://padinfo.de/ns/pad']"/> </p>
	

	
	
	
	
	
	
	
	<xsl:for-each select="*[local-name()='abrechnungsfall' and namespace-uri()='http://padinfo.de/ns/pad']">
	
	
	<p> * </p>
	
	
	</xsl:for-each>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</xsl:for-each>
<p></p>
</body>
</html>
</xsl:template>





































</xsl:stylesheet>