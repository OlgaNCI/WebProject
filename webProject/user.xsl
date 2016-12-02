<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
<xsl:template match="/">
	<html>
		<head>
			<title>User Profile</title>
			<link rel="stylesheet" href="project.css"/>
			<!--<meta name="viewport" content="width=device-width, initial-scale=1"/>-->
   		<link rel="stylesheet" href="css/bootstrap.min.css"/>
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
				<!--<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
  			<script src="js/bootstrap.js"></script>
  			<script>$(function() {
  							$('a[href*=#]:not([href=#])').click(function() {
    						if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      					var target = $(this.hash);
      					target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      					if (target.length) {
        				$('html,body').animate({
          			scrollTop: target.offset().top
								}, 1000);
        				return false;
      							}
    							}
  							});
							});
				</script>-->
			</body>
		</head>
	</html>
	</xsl:template>
</xsl:transform>