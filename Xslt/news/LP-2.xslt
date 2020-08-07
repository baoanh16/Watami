<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position()=2">
			<section class="fluid-section-wrapper home-menu home-lp-section" id="about-section-2">

				<xsl:apply-templates select="News" mode='News2'></xsl:apply-templates>
			</section>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='News2'>
		<div class="fluid-section blude-fluid-section">
			<div class="container-fluid">
				<div class="row">
					<div class="col col-12 col-lg-6"></div>
					<div class="col col-12 col-lg-6">
						<div class="image-wrapper">
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
			</div>
			<div class="container">
				<div class="row">
					<div class="col col-12 col-lg-6">
						<div class="content">
							<div class="section-title">
								<div class="title">
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
									<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
								</div>
							</div>
							<div class="zone-description">
								<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
							</div>
							<div class="btn-left"><a class="btn btn-black">


									<xsl:if test="BriefContent">



										<xsl:attribute name="href">
											<xsl:value-of select="Url"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="title">
											<xsl:value-of select="Title"></xsl:value-of>
										</xsl:attribute>
									</xsl:if>

									<span>About us</span>
								</a>
							</div>
						</div>
					</div>
					<div class="col col-12 col-lg-6"></div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>