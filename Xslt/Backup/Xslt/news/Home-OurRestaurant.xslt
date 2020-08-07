<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
	xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
	<xsl:output method='html' indent='yes' />

	<xsl:template match='/'>
		<div class="content pd-75 lazyload" data-bg="/Data/Sites/1/media/img/home/bg_2.jpg">
			<h2 class="main-title white">
				<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
			</h2>
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
				<xsl:if test="count(/NewsList/News) &gt;1">
					<div class="swiper-pagination"></div>
				</xsl:if>
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
			<div class="imgbox swiper-lazy" data-bg="">
				<xsl:attribute name="data-background">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<a href="#">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<img class="swiper-lazy" style="opacity: 0">
					<xsl:attribute name="data-src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</a>
				<div class="swiper-lazy-preloader"></div>
			</div>
			<div class="title">
				<h3>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h3>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
