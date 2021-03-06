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
			<script src='https://www.google.com/recaptcha/api.js'></script>
		</head>	
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
								<li><a href="#about">About</a></li> 
								<li><a id="destinations" class="hidden" href="destinations.php">Destinations</a></li>
								<li><a id="profile-button" href="#prof" class="hidden">Profile</a></li> 
								<li><a id="signup-button" href="#">Sign Up</a></li>
								<li><a id="login-button" href="#log">Login</a></li>
							</ul>
					 </div>
	 				</div>
	 			</div>
				<div class="jumbotron">
						<div class="container"></div>
				</div>
				<div class="shade" id="about">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								 <h2 class="text-center">ABOUT</h2>
								 <p id="p_about" class="text-justify">Welcome to BonVoyagers website! Here you can socialise with the community of adventurers who 
																				love travelling! You can seek and share advise of the contries to visit, places to see,
																				where to stay, eat and so on...<br/>
																				Please sign up to become a member of our community, to be able to post blogs of your favourite journeys,
																				to comment on other travelers' stories. Enjoy your experience.</p>							 
							</div>
						</div>
					</div>
				</div>
				<div id="profile" style="display:none">
					<div class="container">
						<h1>Hello "User"! Now you can set up your profile.</h1>
						<!--Input fields for user-->
						<form id="userInfo" role="form" action="profile.php" method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label for="summary">Profile Summary</label>
								<textarea class="form-control" name="summary" id="summary" placeholder="Write about yourself"></textarea> 
							</div>
							<div class="form-group">
								<label for="fileToUpload">Upload your photo</label>
							 	<input type="file" name="fileToUpload" id="fileToUpload"/>
							</div>							
   						<input type="submit" id="profileSubmit" value="Upload Image" name="submit"/>
						</form>
							<table>
								<tr>
									<th>Name</th>
									<th>e-mail address</th>									
								</tr>
								<xsl:for-each select="/userpage/user">
									<tr>
										<td><xsl:value-of select="username"/></td>
										<td><xsl:value-of select="email"/></td>																			
									</tr>
									<tr>
										<th>Profile Summary</th>
									</tr>
									<tr>
										<td><xsl:value-of select="profile/summary"/></td>
									</tr>
									<tr>
										<th>Photo</th>
									</tr>
									<tr>
										<td><img src="{profile/image}" class="img-responsive"/></td>
									</tr>
								</xsl:for-each>
							</table>
						</div>
				</div>
				<div id="signup" class="popover" role="tooltip" style="display: none">
						<form id="sign_form" name="signUpForm" role="form" action="form.php" method="POST"> <!-- action="form.php" method="POST"-->
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
							
							<script type='text/javascript'>
												var captchaContainer = null;
												var loadCaptcha = function() {
													captchaContainer = grecaptcha.render('captcha_container', {
														'sitekey' : '6LcrxQ0UAAAAAMrEzbM9VuVd44JibCbgh-LCkR5h'
													});
												};
    					</script>
							
								<!-- <div id="captcha" class="g-recaptcha" data-sitekey="6LcrxQ0UAAAAAMrEzbM9VuVd44JibCbgh-LCkR5h"></div> -->
							<div id="captcha_container" class="g-recaptcha"></div>
								<button type="submit" class="btn btn-default" name="submit-button" id="signup-btn">Sign Up</button>
								<button type="button" class="btn" id="cancelSignup" onclick="signupFormClose()">Cancel</button>
						</form>
					
					<script src="https://www.google.com/recaptcha/api.js?onload=loadCaptcha&amp;render=explicit" async="async" defer="defer"></script>
					
				</div>
				<div id="log" class="popover" role="tooltip" style="display:none">
					<form id="log_form" role="form" action ="login.php" method="post">
									<div class="form-group">
											<label for="username">Username:</label>
											<input type="text" class="form-control" id="loginName" name="username"/>
									</div>
									<div class="form-group">
											<label for="password">Password:</label>
											<input type="password" class="form-control" id="loginPassword" name="password"/>
									</div>
									<button type="submit" class="btn btn-default" name="login" id="login-btn">Login</button>
									<button type="button" class="btn" id="cancelLogin" onclick="loginFormClose()">Cancel</button>
							</form>
				</div>
				<div class="foot">
					 <div class="container">
						 <div class="row padding">
					 		<footer> Copyright: BonVoyagers<br/> <a href="#home">Back to top</a></footer>
						 </div>
					 </div>
				</div>
				<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
				<script type="text/javascript" src="bootstrap.min.js"></script>
  			<script type="text/javascript" src="bootstrap.js"></script>
				<script type="text/javascript" src="form.js"></script>
				<script type="text/javascript" src="js/automation.js"></script>
				<script type="text/javascript" src="js/loginautomation.js"></script>
				<script src="http://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
				<script src="http://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.min.js"></script>	
			</body>	
		</html>
	</xsl:template>
</xsl:transform>