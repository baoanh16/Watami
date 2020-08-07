<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
	xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
	<xsl:output method='html' indent='yes' />

	<xsl:template match='/'>
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">
		<h2 class="main-title black">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
		</h2>
		<div class="imgbox lazyload">
			<xsl:attribute name="data-bg">
				<xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<div class="content">
				<xsl:if test="Description != ''">
					<h3>
						<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
					</h3>
				</xsl:if>
				<a class="btn-viewmore" href="#">
					<xsl:attribute name="href">
						<xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
					</xsl:attribute>
					<span>View more</span><span class="fas fa-long-arrow-alt-right">
					</span>
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
