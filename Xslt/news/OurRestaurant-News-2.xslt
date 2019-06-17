<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
	xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
	<xsl:output method='html' indent='yes' />
	<xsl:template match='/'>
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=2">
				<section class="restaurant-2">
					<div class="container">
						<div class="content pd-75 lazyload">
							<xsl:attribute name="data-bg">
								<xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<h2 class="main-title white">
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</h2>
							<div class="row">
								<div class="col-lg-10 col-xl-8">
									<div class="swiper-container">
										<div class="swiper-wrapper">
											<xsl:apply-templates select="News" mode="News-2"></xsl:apply-templates>
										</div>
										<xsl:if test="count(News)&gt;1">
											<div class="swiper-pagination"></div>
										</xsl:if>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position()=3">
				<section class="restaurant-3 pd-75">
					<div class="container">
						<h2 class="main-title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h2>
						<div class="row">
							<xsl:apply-templates select="News" mode="News-3"></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="News" mode="News-1">
		<div class="row">
			<div class="col-lg-6">
				<div class="textbox">
					<h3>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h3>
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					<p>
						<span class="mdi mdi-map-marker"></span>
						<a data-fancybox="" data-src="#map" href="#">
							View map
						</a>
					</p>
					<div class="d-none">
						<div id="map">
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="imgbox">
					<img>
					<xsl:attribute name="src">
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
	<xsl:template match="News" mode="News-2">
		<div class="swiper-slide">
			<div class="imgbox">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
				<a>
					<xsl:attribute name="data-fancybox">
						<xsl:text>service_</xsl:text>
						<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="href">
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</xsl:attribute>
					<img src="/Data/Sites/1/media/img/video_button.png" alt="" />
				</a>
			</div>
			<div class="title">
				<h3>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</h3>
			</div>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="News-3">
		<div class="col-lg-4 col-md-6">
			<a href="#">
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-fancybox">
					<xsl:text>menu_</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
				</xsl:attribute>
				<div class="menu-item">
					<div class="imgbox">
						<img class="lazyload">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<div class="title">
						<h4>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h4>
					</div>
				</div>
			</a>
			<xsl:if test="count(NewsImages) &gt; 1">
				<div class="d-none">
					<xsl:apply-templates select="NewsImages">
						<xsl:with-param select="position()" name="NewsPosition"></xsl:with-param>
					</xsl:apply-templates>
				</div>
			</xsl:if>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<xsl:param name="NewsPosition"></xsl:param>
		<xsl:if test="position() &gt; 1">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-fancybox">
					<xsl:text>menu_</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="$NewsPosition"></xsl:value-of>
				</xsl:attribute>
			</a>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>