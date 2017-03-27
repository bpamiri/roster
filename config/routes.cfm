<cfscript>
	/*
		Here you can add routes to your application and edit the default one.
		The default route is the one that will be called on your application's "home" page.
	*/

	addRoute(name="home", 			pattern="", 					controller="publicPages", 	action="aboutus");

	addRoute(name="login",  		pattern="login",  				controller="userManager", 	action="login");
	addRoute(name="logout", 		pattern="logout", 				controller="userManager", 	action="logout");
	addRoute(name="register", 		pattern="register", 			controller="userManager", 	action="register");
	addRoute(name="signin",  		pattern="signin",  				controller="userManager", 	action="signin");
	addRoute(name="activate",  		pattern="activate/[uuid]",  	controller="userManager", 	action="activate");
	addRoute(name="reset",  		pattern="reset",  				controller="userManager", 	action="reset");
	addRoute(name="processreset",  	pattern="processreset",  		controller="userManager", 	action="processreset");
	addRoute(name="myaccount",  	pattern="myaccount",  			controller="userManager", 	action="myaccount");
	
	addRoute(name="loginAs",  		pattern="loginAs/[id]/[email]",	controller="admin", 		action="loginAs");

</cfscript>