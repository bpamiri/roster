<html>
<head>
  <style>
	body
	{
		line-height: 1.6em;
	}
	
	#hor-minimalist-a
	{
		font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
		font-size: 12px;
		background: #fff;
		border-collapse: collapse;
		text-align: left;
	}
	#hor-minimalist-a th
	{
		padding-top: 15px;
		font-size: 14px;
		font-weight: normal;
		color: #039;
		border-bottom: 2px solid #6678b1;
	}
	#hor-minimalist-a td
	{
		color: #669;
		padding: 9px 8px 0px 8px;
	}
	#hor-minimalist-a tbody tr:hover td
	{
		color: #009;
	}
	.header
	{
		font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
		font-size: 16px;
		background: #fff;
		color: #039;
	    text-align: center;
	    font-weight: bold;
	}

  
  </style>
</head>
<body>

<cfcontent type="application/pdf"><cfheader name="Content-Disposition" value="inline; filename=roster.pdf"><cfdocument format="pdf" bookmark="true" htmlbookmark="true">
<cfdocumentitem type = "header">
	<table width="100%" cellspacing="0" cellpadding="0">
		<tr style="bottom-top: 2px solid #000000;">
			<td style='
				padding-bottom: 10px;
				font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
				font-size: 16px;
				background: #fff;
			    text-align: center;
			    font-weight: bold;
				border-bottom: 2px solid #000000;
			'>Spiritual Assembly of the Baha'is of <cfoutput>#roster.community#</cfoutput><br/><cfoutput>#roster.name#</cfoutput></td>
		</tr>
	</table>
</cfdocumentitem>
<cfdocumentitem type = "footer">
	<table width="100%" cellspacing="0" cellpadding="0">
		<tr style="border-top: 1px solid #000000;">
			<td style='
				font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
				padding-top: 5px;
				font-size: 10px;
				background: #fff;
			    text-align: left;
			    font-weight: bold;	
			    border-top: 1px solid #000000;		
			'><cfoutput>Date: #dateFormat(now(),"mmmm dd, yyyy")#</cfoutput></td>
			<td style='
				font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
				padding-top: 5px;
				font-size: 10px;
				background: #fff;
			    text-align: right;
			    font-weight: bold;	
			    border-top: 1px solid #000000;		
			'><cfoutput>Page: #cfdocument.currentpagenumber# of #cfdocument.totalpagecount#</cfoutput></td>
		</tr>
	</table>
</cfdocumentitem>

<table width="100%" cellspacing="0" cellpadding="0">

				<tr style='border-bottom: 1px solid #000000;'>
				    <td colspan="2" align="left" nowrap="yes" style='
				        font-family: Sans-Serif;
				        padding-top: 15px;
				        font-size: 14px;
				        font-weight: bold;
				        border-bottom: 1px solid #000000;
				        '>LSA of <cfoutput>#roster.community#</cfoutput>&nbsp;
				    </td>
				    <td colspan="2" align="right" nowrap="yes" style='
				        font-family: Sans-Serif;
				        padding-top: 15px;
				        font-size: 12px;
				        font-weight: bold;
				        font-weight: bold;
				        border-bottom: 1px solid #000000;
				        '>&nbsp;<cfoutput>#roster.phone#</cfoutput>
				    </td>
				</tr>
				
				<tr>
				    <td colspan="2" valign="top" style='
				        font-family: Sans-Serif;
				        padding-top: 1px;
				        font-size: 12px;
				        font-weight: normal;
				        '><cfoutput>
				            <cfif roster.address1 neq "">#roster.address1#<br/></cfif>
				            <cfif roster.address2 neq "">#roster.address2#<br/></cfif>
				            <cfif roster.address3 neq "">#roster.address3#<br/></cfif>
						</cfoutput></td>
				   <td colspan="2" valign="top" align="right" style='
				        font-family: Sans-Serif;
				        padding-top: 1px;
				        font-size: 12px;
				        font-weight: normal;
				        '><cfoutput>
				            #roster.email1#<br/>
				            #roster.email2#<br/>
				            #roster.email3#<br/>
				        </cfoutput></td>
				</tr>

<cfloop query="hoh">
	<cfset family = model("member").findAll(where="rosterid=#roster.id# AND HouseholdName='#hoh.HouseholdName#' AND AddressLine1='#hoh.AddressLine1#'",order="AgeGroup, LastName, FirstName")>
	<tr>
		<td colspan="4">
			<table width="100%" style='border-collapse: collapse;'>
				<tr >
					<td width="30%" align="left" nowrap="yes" style='
						font-family: Sans-Serif;
						padding-top: 15px;
						font-size: 12px;
						font-weight: bold;
						border-bottom: .5px solid #000000;
						'><cfoutput>#hoh.LastName#&nbsp;</cfoutput>
					</td>
					<td width="15%" align="center" nowrap="yes" style='
						font-family: Sans-Serif;
						padding-top: 15px;
						font-size: 10px;
						font-weight: bold;
						border-bottom: .5px solid #000000;
						'><cfoutput><cfif hoh.sector neq "">Sector: #hoh.sector#</cfif>&nbsp;</cfoutput>
					</td>
					<td width="40%" align="center" nowrap="yes" style='
						font-family: Sans-Serif;
						padding-top: 15px;
						font-size: 10px;
						font-weight: bold;
						border-bottom: .5px solid #000000;
						'><cfoutput>#hoh.AddressLine1#<!---, #hoh.City#, #hoh.State# #hoh.ZipCode#---></cfoutput>
					</td>
					<td width="15%" align="right" nowrap="yes" style='
						font-family: Sans-Serif;
						padding-top: 15px;
						font-size: 12px;
						font-weight: bold;
						border-bottom: .5px solid #000000;
						'><cfoutput>&nbsp;#trim(hoh.PhoneHome)#</cfoutput>
					</td>
				</tr>
				
				<cfloop query="family">
					<tr style="page-break-inside: avoid;">
						<td nowrap="yes" style='
							font-family: Sans-Serif;
							padding-top: 1px;
							font-size: 10px;
							font-weight: normal;
							'><cfoutput>#family.FirstName# #family.MiddleName# #family.LastName#</cfoutput></td>
						<td nowrap="yes" style='
							font-family: Sans-Serif;
							padding-top: 1px;
							font-size: 10px;
							font-weight: normal;
							'><cfoutput>#family.PhoneCell#</cfoutput></td>
						<td align="center" style='
							font-family: Sans-Serif;
							padding-top: 1px;
							font-size: 10px;
							font-weight: normal;
							'><cfoutput>#family.Email#</cfoutput></td>
						<td align="right" style='
							font-family: Sans-Serif;
							padding-top: 1px;
							font-size: 10px;
							font-weight: normal;
							'><cfoutput>#family.AgeGroup#</cfoutput></td>
					</tr>
				</cfloop>
			</table>
		</td>
	</tr>
</cfloop>

	<cfset unknown = model("member").findAll(where="rosterid=#roster.id# AND householdname='<unknown household head>'", order="lastname, firstname")>

	<cfif unknown.recordcount neq 0>
					<tr style='border-bottom: 1px solid #000000;'>
					    <td colspan="4" align="left" nowrap="yes" style='
					        font-family: Sans-Serif;
					        padding-top: 15px;
					        font-size: 14px;
					        font-weight: bold;
					        border-bottom: 1px solid #000000;
					        '>Members with unknown household settings or requested no mail:&nbsp;
					    </td>
					</tr>
					
					<cfloop query="unknown">
						<tr>
						    <td colspan="2" style='
						        font-family: Sans-Serif;
						        padding-top: 1px;
						        font-size: 10px;
						        font-weight: normal;
						        '><cfoutput>#unknown.FirstName# #unknown.MiddleName# #unknown.LastName#&nbsp;</cfoutput>
							</td>
							<td colspan="2" align="right" style='
								font-family: Sans-Serif;
								padding-top: 1px;
								font-size: 10px;
								font-weight: normal;
								'><cfoutput>#unknown.phonehome#</cfoutput>
							</td>
						</tr>
					</cfloop>
	</cfif>
	
	<tr style='border-bottom: 1px solid #000000;'>
	    <td colspan="4" align="left" nowrap="yes" style='
	        font-family: Sans-Serif;
	        padding-top: 15px;
	        font-size: 14px;
	        font-weight: bold;
	        border-bottom: 1px solid #000000;
	        '>Community Statistics:&nbsp;
	    </td>
	</tr>
	
	<tr>
	    <td colspan="2" style='
	        font-family: Sans-Serif;
	        padding-top: 1px;
	        font-size: 10px;
	        font-weight: normal;
	        '>Total Member Count
		</td>
		<td colspan="2" align="right" style='
			font-family: Sans-Serif;
			padding-top: 1px;
			font-size: 10px;
			font-weight: normal;
			'><cfoutput>#roster.membercount#</cfoutput>
		</td>
	</tr>
	<tr>
	    <td colspan="2" style='
	        font-family: Sans-Serif;
	        padding-top: 1px;
	        font-size: 10px;
	        font-weight: normal;
	        '>Total Household Count
		</td>
		<td colspan="2" align="right" style='
			font-family: Sans-Serif;
			padding-top: 1px;
			font-size: 10px;
			font-weight: normal;
			'><cfoutput>#roster.hohcount#</cfoutput>
		</td>
	</tr>
	<tr>
	    <td colspan="2" style='
	        font-family: Sans-Serif;
	        padding-top: 1px;
	        font-size: 10px;
	        font-weight: normal;
	        '>Total Adult Count
		</td>
		<td colspan="2" align="right" style='
			font-family: Sans-Serif;
			padding-top: 1px;
			font-size: 10px;
			font-weight: normal;
			'><cfoutput>#roster.adultcount#</cfoutput>
		</td>
	</tr>
	<tr>
	    <td colspan="2" style='
	        font-family: Sans-Serif;
	        padding-top: 1px;
	        font-size: 10px;
	        font-weight: normal;
	        '>Total Youth Count
		</td>
		<td colspan="2" align="right" style='
			font-family: Sans-Serif;
			padding-top: 1px;
			font-size: 10px;
			font-weight: normal;
			'><cfoutput>#roster.youthcount#</cfoutput>
		</td>
	</tr>
	<tr>
	    <td colspan="2" style='
	        font-family: Sans-Serif;
	        padding-top: 1px;
	        font-size: 10px;
	        font-weight: normal;
	        '>Total Jr. Youth Count
		</td>
		<td colspan="2" align="right" style='
			font-family: Sans-Serif;
			padding-top: 1px;
			font-size: 10px;
			font-weight: normal;
			'><cfoutput>#roster.jryouthcount#</cfoutput>
		</td>
	</tr>
	<tr>
	    <td colspan="2" style='
	        font-family: Sans-Serif;
	        padding-top: 1px;
	        font-size: 10px;
	        font-weight: normal;
	        '>Total Children Count
		</td>
		<td colspan="2" align="right" style='
			font-family: Sans-Serif;
			padding-top: 1px;
			font-size: 10px;
			font-weight: normal;
			'><cfoutput>#roster.childcount#</cfoutput>
		</td>
	</tr>
	
	
</table>
</cfdocument>
</body>
</html>
