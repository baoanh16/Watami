<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<h2 class="main-title black">
			<xsl:value-of select="/NewsList/ZoneTitle" disable-output-escaping="yes"></xsl:value-of>
		</h2>
		<div class="promotion-list row">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="promotion-item-col">
			<div class="promotion-item">
				<div class="imgbox lazyload">
					<xsl:attribute name="data-bg">
						<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					<a href="#">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img class="lazyload">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
					<div class="created-date">
						<span class="date"><xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>
						</span>
						<hr></hr>
						<span class="month"><xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of></span>
					</div>
				</div>
				<div class="info">
					<h3>
						<a href="#">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</a>
					</h3>
					<xsl:if test="SubTitle != ''">
						<p class="sub-title">
							<span class="mdi mdi-timer"></span>
							<span><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of></span>
						</p>
					</xsl:if>
					
					<xsl:if test="BriefContent != ''">
					<p class="brief-content">
						<span class="mdi mdi-map-marker"></span>
						<span><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></span>
					</p>
					</xsl:if>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
