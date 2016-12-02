<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
<xsl:template match="/">
	<html>
		<head>
			<meta charset="utf-8"/>
    	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these -->
			<link href="bootstrap.min.css" rel="stylesheet"/>
			<body>
				<h1>Description</h1>
					<table>
						<tr>
							<th>Name</th>
							<th>e-mail address</th>
							<th>Photo</th>
						</tr>
						<xsl:for-each select="/userpage/user">
						<tr>
							<td><xsl:value-of select="username"/></td>
							<td><xsl:value-of select="email"/></td>
							<td><img src="{profile/image}"/></td>
						</tr>
						</xsl:for-each>
					</table>
				<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
				<script src="bootstrap.js"></script>
			</body>
		</head>
	</html>
	</xsl:template>
</xsl:transform>