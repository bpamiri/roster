<cfparam name="user">

<cfoutput>

	<h2>Password Reset</h2>
	
	<cfif len(flash("error"))>
		<p class="error-messages">#flash("error")#</p>
	</cfif>

	<p>Use this form to request a password reset.
	Enter your email address that you use to log into your account with. 
	Your password will be reset and the new password will be sent to you 
	via email.</p>

	#startFormTag(action="requestreset")#
				
		#textField(label="Email", objectName="user", property="email", size=50)#
		
		<div>
			#submitTag(value="Request Reset")#
		</div>
		
	#endFormTag()#


</cfoutput>