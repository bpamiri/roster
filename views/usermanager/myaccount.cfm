<cfparam name="user">

<cfoutput>

	<h2>My Account Settings</h2>

	#startFormTag(route="updateaccount")#
	
	#errorMessagesFor("user")#
	
	#textField(label="First Name",objectName="user", property="firstName", size="40")#
	#textField(label="Last Name", objectName="user", property="lastName", size="40")#
	#textField(label="Email", objectName="user", property="email", size="70")#
	#passwordField(label="Password", objectName="user", property="password", size="40")#
	#passwordField(label="Confirm Password", objectName="user", property="passwordConfirmation", size="40")#
	
	<div>
		#hiddenField(objectName="user", property="id")#
		#submitTag(value="Update Account Settings")#
	</div>
	
	#endFormTag()#

</cfoutput>

<script type="text/javascript">
  var focusHere = document.getElementById("user-firstName");
  focusHere = focusHere.focus();
</script>
