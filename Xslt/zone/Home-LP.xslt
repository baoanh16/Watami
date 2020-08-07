<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="home-lp-link">
			<div class="container">
				<ul>
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</ul>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="IsActive='true'">
			<xsl:apply-templates select="Zone" mode='Sub'></xsl:apply-templates>
		</xsl:if>


	</xsl:template>
	<xsl:template match="Zone" mode='Sub'>
		<li>
			<a>
				<xsl:attribute name="href">
					<xsl:text>#about-section-</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

</xsl:stylesheet>