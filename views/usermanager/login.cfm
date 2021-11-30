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
			  <div class="field">
				<label for="" class="label">Email</label>
				<div class="control has-icons-left">
				  <input type="email" placeholder="e.g. bobsmith@gmail.com" class="input" required="" id="user-email" name="user[email]">
				  <span class="icon is-small is-left">
					<i class="fa fa-envelope"></i>
				  </span>
				</div>
			  </div>
			  <div class="field">
				<label for="" class="label">Password</label>
				<div class="control has-icons-left">
					<input type="password" placeholder="*******" class="input" required="" id="user-password" name="user[password]" >
					<span class="icon is-small is-left">
					<i class="fa fa-lock"></i>
				  </span>
				</div>
			  </div>
			  <div class="field">
				<button class="button is-success">
				  Login
				</button>
			  </div>
			#endFormTag()#
		  </div>
		</div>
	  </div>
	</div>
  </section>
</cfoutput>
