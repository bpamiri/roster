<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

		<title>RosterApp.io</title>
	</head>
	<body>
		<nav class="navbar" role="navigation" aria-label="main navigation">
			<div class="navbar-brand">
				<h1 class="navbar-item"><strong>RosterApp.io</strong></h1>
		  
				
		  <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
				<span aria-hidden="true"></span>
				<span aria-hidden="true"></span>
				<span aria-hidden="true"></span>
			  </a>
			</div>
		  
			<div id="navbarBasicExample" class="navbar-menu">
			  <div class="navbar-start">
				<cfif StructKeyExists(session, "user")>
						#linkTo(text="Rosters", controller="rosters", action="index",class="navbar-item")# 
						#linkTo(text="Add New Roster", route="newRoster",class="navbar-item")#  
				</cfif>
				
				#linkTo(text="About Us",    route="home",class="navbar-item")#
				
				<cfif StructKeyExists(session, "user") and session.user.admin> 
					#linkTo(text="Users", route="users", class="navbar-item")# 
				</cfif>

			  </div>

	  
			  <div class="navbar-end">
				<div class="navbar-item">
				  <div class="buttons">
					<cfif StructKeyExists(session, "user")>
						<strong class="button">#session.user.email#</strong> 
						#linkTo(text="My Account", controller="userManager", action="myaccount",class="button is-light")# 
						#linkTo(text="Logout", route="logout",class="button is-primary")#
					<cfelse>
						#linkTo(text="Sign up", route="register",class="button is-secondary")#
						#linkTo(text="Password Reset", route="reset",class="button is-light")#
						#linkTo(text="Log in", route="login",class="button is-primary")#
					</cfif>

				  </div>
				</div>
			  </div>
			</div>
		</nav>

		<section class="section">
			<div class="content">
				#contentForLayout()#
			</div>
		</section>

		<footer class="footer">
			<div class="content has-text-centered">
			<p>
				<strong>RosterApp.io</strong> is copyright &copy; 2005-<cfoutput>#year(now())#</cfoutput> Peter Amiri, All Rights Reseved.
			</p>
			</div>
		</footer>
		
		<!--- Google Analytics Code --->
		<script type="text/javascript">

			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-484502-9']);
			_gaq.push(['_trackPageview']);
		  
			(function() {
			  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
			  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			})();
		  
	  </script>

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

		</body>
</html>