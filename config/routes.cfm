<cfscript>
	/*
		Here you can add routes to your application and edit the default one.
		The default route is the one that will be called on your application's "home" page.
	*/

	mapper()
	    .resources("rosters")
		.get(name="loginAs", 		pattern="loginAs/[id]",	        controller="admin", 		action="loginAs")
		.get(name="login",  		pattern="login",  				controller="userManager", 	action="login")
		.get(name="logout", 		pattern="logout", 				controller="userManager", 	action="logout")
		.get(name="register", 		pattern="register", 			controller="userManager", 	action="register")
		.post(name="signin",  		pattern="signin",  				controller="userManager", 	action="signin")
		.get(name="activate",  		pattern="activate/[uuid]",  	controller="userManager", 	action="activate")
		.get(name="reset",  		pattern="reset",  				controller="userManager", 	action="reset")
		.get(name="processreset",  	pattern="processreset",  		controller="userManager", 	action="processreset")
		.get(name="myaccount",  	pattern="myaccount",  			controller="userManager", 	action="myaccount")
		.get(name="home", 			pattern="", 					controller="publicPages", 	action="aboutus")
		.wildcard()
	.end();

</cfscript>