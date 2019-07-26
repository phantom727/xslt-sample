<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"

xmlns:pad="http://padinfo.de/ns/pad"
   exclude-result-prefixes="pad">
<xsl:template match="/">
<html>
<body>

<table border="1">
	<tr>
	<th> Abrechungsfall  </th>
	<th> BehandlungsartNummer </th>
	<th>Rechnung</th>
	</tr>
	<!-- Für jedes Element pad:rechnungen/pad:rechnung führe alles aus, was von
	xsl:for-each umschlossen ist -->
	<xsl:for-each select="pad:rechnungen/pad:rechnung">
	<!-- 
	<xsl:value-of select="pad:rechnungsempfaenger/pad:person/pad:vorname"/>&#160;<xsl:value-of select="pad:rechnungsempfaenger/pad:person/pad:
		name"/>
	
	-->
		<xsl:for-each select="pad:abrechnungsfall">
			<xsl:variable name="BehandlungsArt" select="pad:bema/pad:behandlungsart"/>
			<tr>
				<td>
					<xsl:if test="$BehandlungsArt=0">ambulant</xsl:if>
					<xsl:if test="$BehandlungsArt=1">Stationäre Behandlung</xsl:if>
					<xsl:if test="$BehandlungsArt=2">Stationäre Mitbehandlung</xsl:if>
					<xsl:if test="$BehandlungsArt=3"> Vorstationäre Behandlung</xsl:if>
					<xsl:if test="$BehandlungsArt=4"> Nachstationäre Behandlung</xsl:if>
					<xsl:if test="$BehandlungsArt=5"> Konsiliarbehandlung</xsl:if>
				</td>
				<td>
					<xsl:value-of select="$BehandlungsArt" />
					
				</td>
			</tr>
			
			<td>
			hallo
			</td>
			
			
			
			
		</xsl:for-each> <!-- Abrechungsfälle -->
		
	</xsl:for-each> <!-- Rechnungen -->
	
	
</table>		
		

</body>
</html>
</xsl:template>





































</xsl:stylesheet>