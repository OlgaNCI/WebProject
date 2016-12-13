<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />

	<xsl:template match="/">
	<html>
		<head>
			<title>Books Webpage</title>
		</head>
		<body>
			<h2>Print all title and author of all books</h2>
			<table>
				<tr>
					<th>Title</th>
					<th>Author</th>
				</tr>
				<xsl:for-each select="/catalog/book">
					<tr>
						<td><xsl:value-of select = "title"/></td>
						<td><xsl:value-of select = "author"/></td>
					</tr>
				</xsl:for-each>
			</table>
			
			<h2>Print list of out of print books</h2>
			<ul>
				<xsl:for-each select = "/catalog/book/outOfPrint">
				<li><xsl:value-of select = "../title"/></li>
				</xsl:for-each>
			</ul>
			
			<h2>Print fanstasy book ID's</h2>
			<xsl:for-each select = "/catalog/book/genre[text()='Fantasy']">
				<xsl:value-of select = "../@id"/>,
			</xsl:for-each>
			
			<h2>Title and price of books costing more than 30 euro</h2>
			<ul>
				<xsl:for-each select = "/catalog/book/price[text()>30]">
					<li><xsl:value-of select = "../title"/>
						<xsl:value-of select = "../price"/>
					</li>
				</xsl:for-each>
			</ul>
			
		</body>
	</html>
	</xsl:template>
</xsl:transform>