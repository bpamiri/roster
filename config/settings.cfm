<cfscript>
	/*
		If you leave these settings commented out, CFWheels will set the data source name to the same name as the folder the application resides in.
	*/

	set(dataSourceName="roster");
	// set(dataSourceUserName="");
	// set(dataSourcePassword=""); 

	set(reloadPassword="built4us");
	
	/*
		If you leave this setting commented out, CFWheels will try to determine the URL rewrite capabilities automatically.
		The "URLRewriting" setting can bet set to "on", "partial" or "off".
		To run with "partial" rewriting, the "cgi.path_info" variable needs to be supported by the web server.
		To run with rewriting set to "on", you need to apply the necessary rewrite rules on the web server first.
	*/

	set(URLRewriting="on");
	
	set(obfuscateURLs=true);
	
	set(
		class="form-control",
		labelClass="form-label",
		functionName="textField",
		labelPlacement="before",
		append="</div>",
		prependToLabel='<div class="mb-3">',
		encode=false
		);
	
	set(
		functionName="passwordField",
		labelPlacement="before",
		class="form-control",
		labelClass="form-label",
		append="</div>",
		prependToLabel="<div class='mb-3'>",
		encode=false
		);
	
	set(
		functionName="fileField",
		labelPlacement="before",
		class="form-control",
		labelClass="form-label",
		append="</div>",
		prependToLabel='<div class="mb-3">',
		encode=false
		);

	set(
		functionName="submitTag",
		class="btn btn-success",
		encode=false
		);
					
</cfscript>