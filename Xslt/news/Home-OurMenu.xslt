<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
	xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
	<xsl:output method='html' indent='yes' />

	<xsl:template match='/'>
		<div class="content pd-75 lazyload" data-bg="/Data/Sites/1/media/img/home/bg_3.jpg">
			<h2 class="main-title white">
				<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
			</h2>
			<div class="our-menu-swiper">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>

					</div>
					<xsl:if test="count(/NewsList/News) &gt; 1">
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
		</div>
	</xsl:template>

	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="imgbox">
				<a>
					<xsl:if test="SubTitle !=''">

						<xsl:attribute name="href">
							<xsl:value-of select="SubTitle"></xsl:value-of>
						</xsl:attribute>
					</xsl:if>

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
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>