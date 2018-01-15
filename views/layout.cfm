<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Roster Creator for generating PDF rosters from eMembership export files.">
    <meta name="author" content="B. Peter Amiri">
    <link rel="icon" href="../../favicon.ico">

    <title>Roster Creator 2.0</title>

    <!-- Bootstrap core CSS -->
	<cfoutput>#styleSheetLinkTag("bootstrap.min")#</cfoutput>

    <!-- Custom styles for this template -->
	<cfoutput>#styleSheetLinkTag("sticky-footer-navbar")#</cfoutput>
  </head>

  <body>

    <header>
      <!-- Fixed navbar -->
	<cfoutput>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="##">RosterCreator 2.0</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="##navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
				<li class="nav-item ">
					#linkTo(text="Home", route="home", class="nav-link")#
				</li>
				<cfif StructKeyExists(session, "user")>
					<li class="nav-item ">
						#linkTo(text="Rosters", controller="rosters", action="index", class="nav-link")# 
					</li>
					<li class="nav-item ">
						#linkTo(text="Add New Roster", route="newRoster", class="nav-link")# 
					</li>
				</cfif>
				<cfif StructKeyExists(session, "user") and session.user.admin> 
					<li class="nav-item ">
						#linkTo(text="Users", controller="admin", action="users", class="nav-link")#
					</li>
				</cfif>
				<cfif StructKeyExists(session, "user")>
					<li class="nav-item ">
						#linkTo(text="My Account", controller="userManager", action="myaccount", class="nav-link")#
					</li>
					<li class="nav-item ">
						#linkTo(text="Logout", route="logout", class="nav-link")#
					</li>
				<cfelse>
					<li class="nav-item ">
						#linkTo(text="Login", route="login", class="nav-link")#
					</li>
					<li class="nav-item ">
						#linkTo(text="Password Reset", route="reset", class="nav-link")#
					</li>
					<li class="nav-item ">
						#linkTo(text="Register", route="register", class="nav-link")#
					</li>
				</cfif>
          </ul>
		<cfif StructKeyExists(session, "user")>
		  <span class="navbar-text">
		    #session.user.email#
		  </span>
		</cfif>
        </div>
      </nav>
	</cfoutput>
    </header>

    <!-- Begin page content -->
    <main role="main" class="container">
		<div id="content">
			<div id="div_loader"><div></div></div>
			<cfoutput>
				#contentForLayout()#
			</cfoutput>
		</div>
	</main>

    <footer class="footer">
      <div class="container">
        <span class="text-muted">Copyright &copy; 2010-2018 Peter Amiri, All Rights Reseved.</span>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
<!---
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../../../assets/js/vendor/popper.min.js"></script>
    <script src="../../../../dist/js/bootstrap.min.js"></script>
--->
	<cfoutput>#javaScriptIncludeTag("jquery-3.2.1.slim.min,popper,bootstrap.min")#</cfoutput>
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
  </body>
</html>
