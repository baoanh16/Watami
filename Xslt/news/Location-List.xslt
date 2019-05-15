<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<h2 class="main-title black">
			<xsl:value-of select="/NewsList/ZoneTitle" disable-output-escaping="yes"></xsl:value-of>
		</h2>
		<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="News">
		<div class="row no-gutters">
			<div class="col-xl-6">
				<div class="textbox">
					<h3>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h3>
					<div class="full-content">
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						
						<p>
							<span class="mdi mdi-map-marker"></span>
							<a data-fancybox="" data-src="#map">
								View map
							</a>
						</p>
						<div class="d-none">
							<div id="map">
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</div>
					</div>
					<div class="attributes">
						<span class="mdi mdi-timer"></span>
						<table>
							<xsl:apply-templates select="NewsAttributes"></xsl:apply-templates>
						</table>
					</div>
				</div>
			</div>
			<div class="col-xl-6">
				<div class="imgbox lazyload">
					<xsl:attribute name="data-bg">
						<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					<img class="lazyload">
					<xsl:attribute name="data-src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="NewsAttributes">
			<tr>
				<td>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>:
				</td>
				<td>
					<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
				</td>
			</tr>
	</xsl:template>
</xsl:stylesheet>
