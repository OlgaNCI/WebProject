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
			<link href="style.css" rel="stylesheet"/>
			
			<body>
				
				<div class="navbar-static-top navbar-inverse" id="home">
					<div class="container">
       			<div class="navbar-brand">
	    			 BonVoyagers
	  			 	</div>
	   				<button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
	  				 Menu
	  				</button>
	   	<div class="collapse navbar-collapse navHeaderCollapse">
	      <ul class="nav navbar-nav navbar-right">
		      <li><a href="#home">Home</a></li> 
			  	<li><a href="#destinations">Destinations</a></li>
			  	<li><a href="#profile">Profile</a></li> 
			  	<li><a id="signup-button" href="#">Sign Up</a></li>
					<li><a href="#login">Login</a></li>
		  	</ul>
	   </div>
	 			</div>
				</div>
	<div class="jumbotron">
     <div class="container">
				
				</div>
	</div>
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
				
					<div id="signup" class="popover" role="tooltip" style="display: none">
							<form role="form" action ="signup.php" method="post">
									<div class="form-group">
											<label for="username">Username:</label>
											<input type="text" class="form-control" id="username" name="username"/>
									</div>
									<div class="form-group">
											<label for="email">Email Address:</label>
											<input type="email" class="form-control" id="email" name="email"/>
									</div>
									<div class="form-group">
											<label for="password">Password:</label>
											<input type="password" class="form-control" id="password" name="password"/>
									</div>
									<div class="form-group">
											<label for="confPass">Confirm Password:</label>
											<input type="password" class="form-control" id="confPass" name="confPass"/>
									</div>
									<button type="submit" class="btn btn-default">Sign Up</button>
							</form>
					</div>
				<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
  			<script type="text/javascript" src="bootstrap.js"></script>
				<script type="text/javascript" src="form.js"></script>
			
			</body>
		</head>
	</html>
	</xsl:template>
</xsl:transform>