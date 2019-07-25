

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Tabelle der Rechungen</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
	
	  <th> Vorname des Patienten</th>
      <th>Name des Patienten</th>
	  <th>Behandlung</th>
    </tr>
    <xsl:for-each select="rechnungsempfaenger/person/anrede/vorname">
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