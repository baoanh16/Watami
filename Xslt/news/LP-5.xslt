<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position()=5">
			<section class="fluid-section-wrapper home-gallery" id="about-section-5">
				<div class="section-title text-center">
					<div class="title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</div>
				</div>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="News" mode='News-5'></xsl:apply-templates>


					</div>
				</div>
				<div class="nav-wrapper">
					<div class="swiper-prev">
						<div class="icon-prev icon-nav"></div>
					</div>
					<div class=" swiper-pagination number-slide" id='numberSlides'></div>
					<div class="swiper-next">
						<div class="icon-next icon-nav"></div>
					</div>
				</div>
			</section>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='News-5'>
		<div class="swiper-slide">
			<div class="container">
				<div class="wrapper">
					<a>
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
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>