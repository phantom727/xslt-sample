

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Tabelle der Rechungen</h2>
  
  <xsl:for-each select="/*[local-name()='rechnungen' and namespace-uri()='http://padinfo.de/ns/pad']/*[local-name()='rechnung' and namespace-uri()='http://padinfo.de/ns/pad']">
	<p>Rechnung gefunden?</p>
  </xsl:for-each>
  
  
  
  <table border="1">
    <tr bgcolor="#9acd32">
	
	  <th> Vorname des Patienten</th>
      <th>Name des Patienten</th>
	  <th>Behandlung</th>
    </tr>
    <xsl:for-each select="/*[local-name()='rechnungen' and namespace-uri()='http://padinfo.de/ns/pad']/*[local-name()='rechnung' and namespace-uri()='http://padinfo.de/ns/pad'][1]/*[local-name()='rechnungsempfaenger' and namespace-uri()='http://padinfo.de/ns/pad'][1]/*[local-name()='person' and namespace-uri()='http://padinfo.de/ns/pad'][1]/*[local-name()='vorname' and namespace-uri()='http://padinfo.de/ns/pad'][1]">
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="artist"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>





































</xsl:stylesheet>