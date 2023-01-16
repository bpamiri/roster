<cfscript>
	/*
		Here you can add routes to your application and edit the default one.
		The default route is the one that will be called on your application's "home" page.
	*/

	mapper()
	    .resources("rosters")
	    .get(name="fullRoster",			pattern="rosters/fullRoster/[key]",			controller="rosters",	action="fullRoster")
	    .get(name="sectorRoster",		pattern="rosters/sectorRoster/[key]",		controller="rosters",	action="sectorRoster")
	    .get(name="verificationLetter",	pattern="rosters/verificationLetter/[key]",	controller="rosters",	action="verificationLetter")

		.get(name="loginAs", 		pattern="loginAs/[id]",		controller="admin", 		action="loginAs")
		
		.get(name="login",  		pattern="login",  			controller="userManager", 	action="login")
		.get(name="logout", 		pattern="logout", 			controller="userManager", 	action="logout")
		.get(name="register", 		pattern="register", 		controller="userManager", 	action="register")
		.post(name="createUser",  	pattern="createUser",  		controller="userManager", 	action="createUser")
		.post(name="signin",  		pattern="signin",  			controller="userManager", 	action="signin")
		.get(name="activate",  		pattern="activate/[uuid]",  controller="userManager", 	action="activate")
		.get(name="reset",  		pattern="reset",  			controller="userManager", 	action="reset")
		.post(name="requestreset", 	pattern="requestreset",  	controller="userManager", 	action="requestreset")
		.get(name="myaccount",  	pattern="myaccount",  		controller="userManager", 	action="myaccount")
		.post(name="updateaccount", pattern="updateaccount",  	controller="userManager", 	action="updateaccount")
		
		.get(name="home", 			pattern="", 				controller="publicPages", 	action="aboutus")
		.get(name="users", 			pattern="users", 			controller="admin", 	action="users")
		
		.wildcard()
	.end();

</cfscript>