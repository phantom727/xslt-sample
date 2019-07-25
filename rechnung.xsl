<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"

xmlns:pad="http://padinfo.de/ns/pad"
   exclude-result-prefixes="pad">
<xsl:template match="/">
<html>
<body>
  <h1>Rechnungen</h1>
<xsl:for-each select="pad:rechnungen/pad:rechnung">

	<h2> Rechnung </h2>
	<p>
	<xsl:value-of select="*[local-name()='rechnungsempfaenger' and namespace-uri()='http://padinfo.de/ns/pad']/*[local-name()='person' and namespace-uri()='http://padinfo.de/ns/pad']/*[local-name()='vorname' and namespace-uri()='http://padinfo.de/ns/pad']"/>&#160;<xsl:value-of select="*[local-name()='rechnungsempfaenger' and namespace-uri()='http://padinfo.de/ns/pad']/*[local-name()='person' and namespace-uri()='http://padinfo.de/ns/pad']/*[local-name()='name' and namespace-uri()='http://padinfo.de/ns/pad']"/> </p>
	

	
	
	
	
	
	
	<xsl:for-each select="*[local-name()='abrechnungsfall' and namespace-uri()='http://padinfo.de/ns/pad']">
		<xsl:value-of select="*[local-name()='bema' and namespace-uri()='http://padinfo.de/ns/pad']/*[local-name()='behandlungsart' and namespace-uri()='http://padinfo.de/ns/pad']"/>
	
	<xsl:if test="@*[local-name()='bema' and namespace-uri()='http://padinfo.de/ns/pad']/*[local-name()='behandlungsart' and namespace-uri()='http://padinfo.de/ns/pad']=0">
  ambulant
</xsl:if>
	
	
	<p> *   </p>
	
	
	
	
	
	
	
	
	</xsl:for-each>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</xsl:for-each>
<p></p>
</body>
</html>
</xsl:template>





































</xsl:stylesheet>