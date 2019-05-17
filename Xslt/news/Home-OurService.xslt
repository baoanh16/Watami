<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
	xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
	<xsl:output method='html' indent='yes' />

	<xsl:template match='/'>
		<h2 class="main-title black">
			<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
		</h2>
		<div class="video">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<!-- <img class="lazyload">
		<xsl:attribute name="data-src">
			<xsl:value-of select="ImageUrl"></xsl:value-of>
		</xsl:attribute>
		<xsl:attribute name="alt">
			<xsl:value-of select="Title"></xsl:value-of>
		</xsl:attribute>
		</img> -->
		<video playsinline="playsinline">
			<xsl:attribute name="src">
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</xsl:attribute>
		</video>
		<a class="home-1-button play" href="#" style="display: none">
			<img src="/Data/Sites/1/media/img/video_pause.png" alt="" />
		</a>
		<!-- <a data-fancybox="home_video" class="home-1-button">
			<xsl:attribute name="href">
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</xsl:attribute>
			<img src="/Data/Sites/1/media/img/video_button.png" alt="" />
		</a> -->
	</xsl:template>

</xsl:stylesheet>
