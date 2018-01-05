<cfcomponent extends="controller">
	
	<cffunction name="config"> 
		<cfset filters(through="isLoggedIn,isAdmin")>
	</cffunction>	
	
	<cffunction name="users">
	
		<cfset users = model("user").findAll(include="rosters",returnAs="objects")>
	
	</cffunction>
	
	<cffunction name="loginAs">

		<cfset user = model("user").findOne(where="id='#params.id#'")>
	
		<cfset session.user.id = user.id>
		<cfset session.user.email = user.email>
		<cfset redirectTo(controller="Rosters")>
		
	</cffunction>

</cfcomponent>