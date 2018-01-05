<cfcomponent extends="Model">

	<cffunction name="config"> 
	
		<cfset validatesPresenceOf("name,community,rosterFile")>
		<cfset validatesLengthOf(property="name", maximum="50")>
		<cfset validatesLengthOf(property="community", maximum="50")>

		<cfset belongsTo("user")>
		<cfset hasMany("members")>
	
	</cffunction> 
	
</cfcomponent>