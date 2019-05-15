<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
			<div class="container">
				<h1 class="gradient-title">
					<xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
				</h1>
				<div class="row">
					<div class="col-lg-8 big">
						<xsl:apply-templates select="/NewsList/News" mode="Big"></xsl:apply-templates>
					</div>
					<div class="col-lg-4 small">
						<xsl:apply-templates select="/NewsList/News" mode="Small"></xsl:apply-templates>
					</div>
					<xsl:apply-templates select="/NewsList/News" mode="Normal"></xsl:apply-templates>
				</div>
			</div>
	</xsl:template>

	<xsl:template match="News" mode="Big">
		<xsl:if test="position()=1">
			<div class="main-news">
				<div class="img">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<img class="lazyload blur-up" data-object-fit-cover="">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="title">
					<h2>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</a>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h2>
				</div>
				<div class="cover"></div>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode="Small">
		<xsl:if test="position()&gt;1 and position()&lt;4">
			<div class="main-news">
				<div class="img">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<img class="lazyload blur-up" data-object-fit-cover="">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="title">
					<h2>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</a>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h2>
				</div>
				<div class="cover"></div>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode="Normal">
		<xsl:if test="position()&gt;4">
			<div class="col-md-6 col-lg-4 normal-news">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					<div class="img">
						<img data-object-fit-cover="">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<div class="content">
						<div class="line"></div>
						<h2>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="btn-viewmore">
							<p>
								<xsl:value-of select="/NewsList/ViewMoreText" disable-output-escaping="yes">
								</xsl:value-of>
							</p>
						</div>
					</div>
				</a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>