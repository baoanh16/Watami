<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0'
	xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
	xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
	<xsl:output method='html' indent='yes' />
	<xsl:template match='/'>
		<ul>
			<xsl:apply-templates select='/ZoneList/Zone'></xsl:apply-templates>
		</ul>
	</xsl:template>
	<xsl:template match='Zone'>
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='target'>
					<xsl:value-of select='Target'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='title'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
				<xsl:if test="IsActive='true'">
					<xsl:attribute name='class'>
						<xsl:text>active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
			</a>
			<xsl:if test="count(Zone) &gt; 0">
				<nav class="dropdown">
					<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
				</nav>
			</xsl:if>
		</li>
	</xsl:template>
	<xsl:template match="Zone" mode="Child">
		<a>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
		</a>
	</xsl:template>
</xsl:stylesheet>