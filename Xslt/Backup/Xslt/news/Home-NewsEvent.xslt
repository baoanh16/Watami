<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
	xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
	<xsl:output method='html' indent='yes' />
	<xsl:template match='/'>
		<div class="content pd-75 lazyload">
			<h2 class="main-title">
				<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
			</h2>
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
				<xsl:if test="count(/NewsList/News) &gt;1">
				<div class="swiper-nav">
					<span class="swiper-prev lnr lnr-chevron-left"></span>
					<span class="swiper-next lnr lnr-chevron-right"></span>
				</div>
				</xsl:if>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="imgbox">
				<a href="#">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute> 
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</a>
			</div>
			<div class="title">
				<!-- <time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time> -->
				<h3>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h3>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
