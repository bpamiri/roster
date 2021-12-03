<cfparam name="user">

<cfoutput>

	<cfif len(flash("success"))>
		<p class="success-messages">#flash("success")#</p>
	</cfif>
	<cfif len(flash("error"))>
		<p class="error-messages">#flash("error")#</p>
	</cfif>
	
<section class="hero is-primary is-fullheight">
	<div class="hero-body">
	  <div class="container">
		<div class="columns is-centered">
		  <div class="column is-5-tablet is-4-desktop is-3-widescreen">
			#startFormTag(route="signin",class="box")#
				#textField(label="Email",objectName="user", property="email", size="40")#
				#passwordField(label="Password", objectName="user", property="password", size="40")#
				#submitTag(value="Login")#
			#endFormTag()#
		  </div>
		</div>
	  </div>
	</div>
  </section>
</cfoutput>
