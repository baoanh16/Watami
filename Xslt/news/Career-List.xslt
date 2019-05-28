<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<h2 class="main-title">
			<xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
		</h2>
		<div class="watami-table-v1">
			<table>
				<thead>
					<tr>
						<th>
							<xsl:value-of select="/NewsList/NumberText" disable-output-escaping="yes"></xsl:value-of>
						</th>
						<th>
							<xsl:value-of select="/NewsList/PositionText" disable-output-escaping="yes"></xsl:value-of>
						</th>
						<th>
							<xsl:value-of select="/NewsList/AmountText" disable-output-escaping="yes"></xsl:value-of>
						</th>
						<th>
							<xsl:value-of select="/NewsList/LocationText" disable-output-escaping="yes"></xsl:value-of>
						</th>
						<th>
							<xsl:value-of select="/NewsList/ExpireText" disable-output-escaping="yes"></xsl:value-of>
						</th>
					</tr>
				</thead>
				<tbody>
					<xsl:apply-templates select="/NewsList/News" mode="Desktop"></xsl:apply-templates>
				</tbody>
			</table>
		</div>
		<div class="row watami-table-v1-mobile">
			<xsl:apply-templates select="/NewsList/News" mode="Mobile"></xsl:apply-templates>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="Desktop">
		<tr>
			<xsl:attribute name="data-href">
				<xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<td>
				<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td><a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="News" mode="Mobile">

		<div class="col-sm-6">
			<a class="item" href="#">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute> 
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<p>
					<em class="mdi mdi-account"></em>
					<span class="title">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</span>
				</p>
				<p>
					<em class="mdi mdi-chevron-double-right">
					</em>
					<span>
						<xsl:value-of select="/NewsList/AmountText" disable-output-escaping="yes"></xsl:value-of>:
						<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
					</span>
				</p>
				<p>
					<em class="mdi mdi-map-marker">
					</em>
					<span>
						<xsl:value-of select="/NewsList/LocationText" disable-output-escaping="yes"></xsl:value-of>:
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</span>
				</p>
				<p>
					<em class="mdi mdi-calendar-check">
					</em>
					<span>
						<xsl:value-of select="/NewsList/ExpireText" disable-output-escaping="yes"></xsl:value-of>:
						<xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
					</span>
				</p>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>
