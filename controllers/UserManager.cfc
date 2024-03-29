<cfcomponent extends="controller">
	
	<cffunction name="config"> 
	
		<cfset filters(through="isLoggedIn", except="register,createUser,login,signin,activate,thankYou,reset,requestreset")>
	
	</cffunction>	

	<cffunction name="register">
	
		<cfset user = model("user").new()>
	
	</cffunction>
	
	<cffunction name="createUser">
	
		<cfset user = model("user").new(params.user)>
		<cfset user.uuid = CreateUUID()>
		<cfset user.save()>
		
		<cfif user.hasErrors()>
			<cfset renderView(action="register")>
		<cfelse>
			<cfset
				sendEmail( 
					from="noreply@rosterapp.io", 
					to=user.email, 
					bcc="peter@alurium.com",
					template="emailconfirmation", 
					subject="Thank You for Registering at eMembership Roster Creator", 
					uuid=user.uuid
				)
			>
			<cfset flashInsert(success="You've successfully registered. You must validate your email address before your account will be activated.")>
			<cfset renderView(action="thankYou")>		
		</cfif>
	
	</cffunction>
	
	<cffunction name="login">
	
		<cfset user = model("user").new()>
	
	</cffunction>
	
	<cffunction name="signin">
	
		<cfset user = model("user").findOne(where="email='#params.user.email#' AND password='#params.user.password#' AND activated=1")>
	
		<cfif IsObject(user)>
			<cfset session.user.id = user.id>
			<cfset session.user.email = user.email>
			<cfset session.user.admin = user.admin>
			<cfset redirectTo(controller="rosters",action="index")>
		<cfelse>
			<cfset user = model("user").new(email=params.user.email)>
			<cfset flashInsert(error="The email and password combination you entered is not valid. Please check that you've entered your email and password correctly. If this is the first time you are attempting to login, please make sure you have validated your email to activate your account.")>
			<cfset renderView(action="login")>
		</cfif>
		
	</cffunction>
	
	<cffunction name="logout">
	
		<cfset StructDelete(session, "user")>
		<cfset redirectTo(route="login")>
	
	</cffunction>
	
	<cffunction name="activate">
	
		<cfset user = model("user").findOne(where="uuid='#params.uuid#'")>
	
		<cfif IsObject(user)>
			<cfif user.activated eq 1>
				<!--- account previously activated --->
				<cfset flashInsert(error="Your account has already been activated.")>			
			<cfelse>
				<cfset user.activated = 1>
				<cfset user.save()>
				<cfif user.hasErrors()>
					<!--- having problems activating account --->
					<cfset flashInsert(error="Unable to activate your account at this time, please try again later.")>
				<cfelse>
					<!--- account activated successfully --->
					<cfset flashInsert(success="Your account has been activated. You may now login using your email and password.")>
				</cfif>
			</cfif>
		<cfelse>
			<!--- user record not found --->
			<cfset flashInsert(error="The activation link you used seems to be invalid.")>
		</cfif>	
		
		<cfset redirectTo(route="login")>	

	</cffunction>

	<cffunction name="reset">
	
		<cfset user = model("user").new()>
	
	</cffunction>
	
	<cffunction name="requestreset">
		<cfset user = model("user").findOne(where="email='#params.user.email#'")>
	
		<cfif IsObject(user)>
			<cfset passwordCharList = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrtsuvwxyz!@$%^&*}">

			<cfset newPassword = "">
			<cfloop index="i" from="1" to="15">
				<cfset newPassword = newPassword & Mid(passwordCharList, RandRange(1, 70), 1)>
			</cfloop>
			
			<cfset user.password = newPassword>
			<cfset user.save()>
			
			<cfif user.hasErrors()>
				<cfset user = model("user").new(email=params.user.email)>
				<cfset flashInsert(error="Unable to reset the password. Please try again later.")>
				<cfset renderView(action="reset")>
			<cfelse>
				<cfset
					sendEmail( 
						from="noreply@rosterapp.io", 
						to=params.user.email, 
						template="passwordreset", 
						subject="Password reset request at RosterApp.io", 
						newPassword=newPassword
					)
				>
				<cfset flashInsert(success="Your password has been reset and the new password has been sent to your email account.")>
				<cfset redirectTo(route="login")>
			</cfif>
		<cfelse>
			<cfset user = model("user").new()>
			<cfset flashInsert(error="The email you entered was not found in our user database.")>
			<cfset renderView(action="reset")>
		</cfif>
	</cffunction>
	
	<cffunction name="myaccount">
	
		<cfset user = model("user").findOne(where="id=#session.user.id#")>	
	
	</cffunction>
	
	<cffunction name="updateaccount">
			
		<cfset user = model("user").findByKey(params.user.id)> 
		<cfset user.update(params.user)>
		
		<cfif user.hasErrors()>
			<cfset flashInsert(error="Unable to update your profile at this time, please try again later.")>
			<cfset renderView(action="myaccount")>
		<cfelse>
			<cfset flashInsert(success="You've successfully updated your account profile.")>
			<cfset redirectTo(route="home")>
		</cfif>
		
	
	</cffunction>
	
</cfcomponent>