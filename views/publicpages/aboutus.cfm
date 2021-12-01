<cfif len(flash("error"))>
	<p class="error-messages">#flash("error")#</p>
</cfif>

<h2>Welcome to RosterApp.io!!!</h2>

<cfif len(flash("success"))>
	<p class="success-messages">#flash("success")#</p>
</cfif>
<cfif len(flash("error"))>
	<p class="error-messages">#flash("error")#</p>
</cfif>

<p>This site is dedicated to all the hardworking servants of the Cause of Bahá'u'lláh who tirelessly work 
	to maintain their local community roster. If your community is using the eMembership online 
	membership system, you probably know that you can export your roster to a Comma Separated Value (csv) file. 
	You can then open this file in a spreadsheet program like Microsoft Excel or Apple Numbers and even use it as 
	the data file for a mail merge to generate letters and a printed roster. If you know how to do all this, then 
	this site is probably not of much use to you. But if the thought of Mail Merge in Word makes 
	you cringe, then read on.</p>
<p>This site allows you to create a formatted community roster using the eMembership export file as the 
	starting point. The resulting roster file can be printed or downloaded and emailed to your community. 
	In my community we've been using the eMembershp system for several years now. During these years I've created several 
	different form letter templates. My initial versions required much manual manipulation of the export 
	data in order to be able to group the records the way I wanted them to look in the roster file. Each 
	time I went back to these templates, I tried to make them easier to use but Excel and Word didn't provide
	 the type of manipulations that I needed to perform.</p>
<p>Eventually I wrote my own web scripts using the CFML markup language. The initial versions 
	of these scripts for very rough. They did the job, but were not very pretty or have any error checking 
	in them. They were basically hacked together for my own use but they served me well for several years. 
	Eventually I wanted to take those initial CFML scripts and turn them into a website that 
	others could use.</p>
<p>The site you are now on is the result of that effort. I hope you find it useful.</p>
<cfoutput>
	<div class="block">
		<p>
			Peter Amiri<br>
			<img class="rounded" src="https://www.gravatar.com/avatar/#lcase(Hash(lcase('peter@alurium.com')))#">
			
		</p>
	</div>
</cfoutput>
