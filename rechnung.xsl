<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"

xmlns:pad="http://padinfo.de/ns/pad"
   exclude-result-prefixes="pad">
<xsl:template match="/">
<html>
<body>

<table border="1">
	<tr>
	<th> Rechnung     </th>
	<th> Abrechungsfall </th>
	<th>Behandlungsart Nummer</th>
	</tr>
	<xsl:for-each select="pad:rechnungen/pad:rechnung">
	
		<xsl:for-each select="pad:abrechnungsfall">
			<tr>
			<td>
			<xsl:value-of select="pad:rechnungsempfaenger/pad:person/pad:vorname"/>&#160;<xsl:value-of select="pad:rechnungsempfaenger/pad:person/pad:
		name"/>
			
			
			
			<xsl:variable name="BehandlungsArt" select="pad:bema/pad:behandlungsart"/>
		
			<xsl:value-of select="$BehandlungsArt" />
		    <xsl:if test="$BehandlungsArt=0">
	  ambulant
	</xsl:if>


	<xsl:if test="$BehandlungsArt=1">
	  Stationäre Behandlung
	</xsl:if>


	<xsl:if test="$BehandlungsArt=2">
	 Stationäre Mitbehandlung
	</xsl:if>


	<xsl:if test="$BehandlungsArt=3">
	  Vorstationäre Behandlung
	</xsl:if>




	<xsl:if test="$BehandlungsArt=4">
	  Nachstationäre Behandlung
	</xsl:if>



	<xsl:if test="$BehandlungsArt=5">
	 Konsiliarbehandlung
	</xsl:if>
		</td>
		</tr>
		</xsl:for-each>
		
	</xsl:for-each>
</table>		
		

</body>
</html>
</xsl:template>





































</xsl:stylesheet>