<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="row news-detail">
			<div class="col-lg-8 col-xl-9">
				<h1>
					<xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
					<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h1>
				<time>
					<xsl:value-of select="/NewsDetail/CreatedDate" disable-output-escaping="yes"></xsl:value-of>
				</time>
				<hr/>
				<div class="brief-content">
					<p><b>
							<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes">
							</xsl:value-of>
						</b></p>
				</div>
				<div class="full-content">
					<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
			<div class="col-lg-4 col-xl-3 other-news">
				<h2><xsl:value-of select="/NewsDetail/NewsOtherText" disable-output-escaping="yes"></xsl:value-of></h2>
				<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>

			</div>
		</div>
	</xsl:template>

	<xsl:template match="NewsOther">
		<div class="item">
			<div class="imgbox">
				<a href="#">
					<!-- <xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute> -->
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
			<div class="info">
				<time><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></time>
				<a href="#">
					<!-- <xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute> -->
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<span><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></span>
				</a>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>