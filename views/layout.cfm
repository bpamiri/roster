<!doctype html>
<cfoutput><html lang="en">
	<head>
		<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

		<title>RosterApp.io</title>
	</head>
	<body>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
				<a class="navbar-brand mb-0 h1" href="##">RosterApp.io</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="##navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
					<div class="navbar-nav me-auto">
						<cfif StructKeyExists(session, "user")>
							#linkTo(text="Rosters", controller="rosters", action="index",class="nav-link")# 
							#linkTo(text="Add New Roster", route="newRoster",class="nav-link")#  
						</cfif>

						#linkTo(text="About Us",    route="home",class="nav-link")#

						<cfif StructKeyExists(session, "user") and session.user.admin> 
							#linkTo(text="Users", route="users", class="nav-link")# 
						</cfif>	
					</div>
					
					<span class="d-flex">
						<cfif StructKeyExists(session, "user")>
							<strong class="btn">#session.user.email#</strong> 
							#linkTo(text="My Account", role="button", controller="userManager", action="myaccount",class="btn btn-outline-success mx-2")# 
							#linkTo(text="Logout", role="button", route="logout",class="btn btn-success")#
						<cfelse>
							#linkTo(text="Sign up", role="button", route="register",class="btn btn-outline-success")#
							#linkTo(text="Password Reset", role="button", route="reset",class="btn btn-outline-success mx-2")#
							#linkTo(text="Log in", role="button", route="login",class="btn btn-success")#
						</cfif>
					</span>
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
		
		</div>
	</body>
</html>
</cfoutput>