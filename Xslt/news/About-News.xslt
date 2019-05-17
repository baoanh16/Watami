<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
	xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
	<xsl:output method='html' indent='yes' />

	<xsl:template match='/'>
		<div class="watami-nav">
			<div class="container">
				<nav class="scrollNav">
					<xsl:apply-templates select="/ZoneList/Zone" mode="Nav-1"></xsl:apply-templates>
				</nav>
				<select class="selectScrollNav">
					<xsl:apply-templates select="/ZoneList/Zone" mode="Nav-2"></xsl:apply-templates>
				</select>
			</div>
		</div>
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone" mode="Nav-1">
		<a>
			<xsl:attribute name="data-href">
				<xsl:text>#section-</xsl:text>
				<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
		</a>
	</xsl:template>

	<xsl:template match="Zone" mode="Nav-2">
		<option value="#section-1">
			<xsl:attribute name="value">
				<xsl:text>#section-</xsl:text>
				<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
		</option>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=1">
				<div class="container" id="section-1">
					<div class="aboutus-1 pt-75">
						<h2 class="main-title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h2>
						<div class="row">
							<xsl:apply-templates select="News" mode="News-1"></xsl:apply-templates>
						</div>
						<xsl:apply-templates select="News" mode="News-1-Images"></xsl:apply-templates>
					</div>
				</div>
			</xsl:when>
			<xsl:when test="position()=2">
				<div class="container" id="section-2">
					<div class="aboutus-2 pd-75" bg-img="/Data/Sites/1/media/img/about/bg_1.jpg"
						bg-img-mobile="/Data/Sites/1/media/img/about/bg_1.jpg">
						<h2 class="main-title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h2>
						<div class="desc">
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</div>
						<div class="row blocks">
							<div class="col-lg-3"></div>
							<div class="col-lg-3">
								<a class="block" href="javascript:void(0)">
									<img class="lazyload blur-up">
									<xsl:attribute name="data-src">
										<xsl:value-of select="ImageUrl"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="alt">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
									</img>
								</a>
							</div>
							<div class="col-lg-3">
								<a class="block" href="javascript:void(0)">
									<img class="lazyload blur-up">
									<xsl:attribute name="data-src">
										<xsl:value-of select="SecondImageUrl"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="alt">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
									</img>
								</a>
							</div>
							<div class="col-lg-3"></div>
						</div>
						<div class="row">
							<div class="col-lg-1"></div>
							<div class="col-lg-10">
								<div class="row items">
									<xsl:apply-templates select="News" mode="News-2"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</div>
			</xsl:when>
			<xsl:when test="position()=3">
				<div class="container" id="section-3">
					<div class="aboutus-3 pd-75">
						<h2 class="main-title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h2>
						<div class="desc">
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</div>
					</div>
				</div>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="News" mode="News-1">
		<div class="col-lg-6 content">
			<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="col-lg-6 img">
			<a data-fancybox="about-1">
				<xsl:attribute name="href">
					<xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<img class="lazyload blur-up">
				<xsl:attribute name="data-src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</a>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="News-1-Images">
		<div class="row images">
			<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
		</div>
	</xsl:template>

	<xsl:template match="NewsImages">
		<xsl:if test="position()&gt;1">
			<div class="col-6 col-lg-3">
				<a data-fancybox="">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<img class="lazyload blur-up">
					<xsl:attribute name="data-src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</a>
			</div>
		</xsl:if>

	</xsl:template>

	<xsl:template match="News" mode="News-2">
		<div class="col-md-6">
			<div class="item">
				<a href="javascript:void(0)">
					<img class="lazyload blur-up">
					<xsl:attribute name="data-src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</a>
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
