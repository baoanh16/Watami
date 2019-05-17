<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
	xmlns:msxsl='urn:schemas-microsoft-com:xslt' exclude-result-prefixes='msxsl'>
	<xsl:output method='html' indent='yes' />
	<xsl:template match='/'>
		<div class="career-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<h1>
							<xsl:value-of disable-output-escaping='yes' select='/NewsDetail/Title'></xsl:value-of>
							<xsl:value-of select='/NewsDetail/EditLink' disable-output-escaping='yes'></xsl:value-of>
						</h1>
						<time>
							<xsl:value-of disable-output-escaping='yes' select='/NewsDetail/CreatedDate'></xsl:value-of>
						</time>
						<hr></hr>
						<div class="content">
							<h4>
								<xsl:value-of disable-output-escaping='yes' select='/NewsDetail/JobInfoText'>
								</xsl:value-of>
							</h4>
							<div class="table-wrapper">
								<table>
									<tbody>
										<xsl:apply-templates select='/NewsDetail/NewsAttributes'></xsl:apply-templates>
									</tbody>
								</table>
							</div>
							<xsl:value-of disable-output-escaping='yes' select='/NewsDetail/FullContent'>
							</xsl:value-of>
						</div>
						<div class="buttons">
							<a class="btn-apply" href="#">
								<span>
									<xsl:value-of disable-output-escaping='yes' select='/NewsDetail/ApplyJobText'>
									</xsl:value-of>
								</span>
								<span class="mdi mdi-ray-start-arrow"></span>
							</a>
							<a class="btn-download">
								<xsl:attribute name='href'>
									<xsl:value-of disable-output-escaping='yes' select='/NewsDetail/FileUrl'>
									</xsl:value-of>
								</xsl:attribute>
								<span>
									<xsl:value-of disable-output-escaping='yes'
										select='/NewsDetail/DownloadJobApplicationFormText'></xsl:value-of>
								</span>
								<span class="mdi mdi-download"></span>
							</a>
						</div>
						<div class="form-apply">
							<iframe>
								<xsl:attribute name="src">
									<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/ApplyUrl"></xsl:value-of>
								</xsl:attribute>
							</iframe>
						</div>
					</div>
					<div class="col-lg-3 other-news">
						<h2>
							<xsl:value-of disable-output-escaping='yes' select='/NewsDetail/OtherJobsText'>
							</xsl:value-of>
						</h2>
						<xsl:apply-templates select='/NewsDetail/NewsOther'></xsl:apply-templates>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match='NewsAttributes'>
		<tr>
			<th>
				<xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
			</th>
			<td>
				<xsl:value-of disable-output-escaping='yes' select='Content'></xsl:value-of>
			</td>
		</tr>
	</xsl:template>

	<xsl:template match='NewsOther'>
		<div class="item">
			<time>
				<xsl:value-of disable-output-escaping='yes' select='CreatedDate'></xsl:value-of>
			</time>
			<a>
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='target'>
					<xsl:value-of select='Target'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='title'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
				<span>
					<xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
				</span>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>
