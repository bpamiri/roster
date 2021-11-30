<cfparam name="rosters">

<h2>Rosters on File</h2>

<cfoutput>

	<cfif len(flash("success"))>
		<p class="success-messages">#flash("success")#</p>
	</cfif>
	<cfif len(flash("error"))>
		<p class="error-messages">#flash("error")#</p>
	</cfif>

	<table class="table is-striped is-hoverable">
		<thead>
			<tr>
				<th class="has-text-left">Name</th>
				<th>Uploaded</th>
				<th>Members</th>
				<th>HoH</th>
				<th>Adults</th>
				<th>Youth</th>
				<th>Jr. Youth</th>
				<th>Children</th>
				<th>Sectors</th>
				<th align="right">#linkTo(text="ADD", route="newRoster")#</th>
			</tr>
		</thead>
		<!---
		<tfoot>
			<tr>
				<td colspan="5" align="left">
				</td>
				<td align="right">Page: 
					<cfif paginationLinks(route="publishers_page") eq "">
						1
					<cfelse>
						#paginationLinks(route="publishers_page")#
					</cfif>
				</td>
			</tr>
		</tfoot>
		--->
		<tbody>
			<cfloop query="rosters">
				<tr>
					<td>#rosters.name#</td>
					<td class="has-text-centered">#DateFormat(rosters.createdAt,"Short")# #TimeFormat(rosters.createdAt,"Short")#</td>
					<td class="has-text-centered">#rosters.membercount#</td>
					<td class="has-text-centered">#rosters.hohcount#</td>
					<td class="has-text-centered">#rosters.adultcount#</td>
					<td class="has-text-centered">#rosters.youthcount#</td>
					<td class="has-text-centered">#rosters.jryouthcount#</td>
					<td class="has-text-centered">#rosters.childcount#</td>
					<td class="has-text-centered">#rosters.sectorcount#</td>
					<td align="right">
						#linkTo(
						    text="EDIT",
						    route="editRoster",
						    key="#rosters.ID#",
						    method="get",
						    inputClass="button-as-link"
						)#
						#linkTo(
						    text="DELETE",
						    route="roster",
						    key="#rosters.ID#",
						    method="delete",
						    inputClass="button-as-link"
						)# 
					</td>
				</tr>
			</cfloop>
		</tbody>
	</table>
	
</cfoutput>