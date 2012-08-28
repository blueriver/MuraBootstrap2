<!--- This file is part of Mura CMS.

Mura CMS is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, Version 2 of the License.

Mura CMS is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Mura CMS. If not, see <http://www.gnu.org/licenses/>.

Linking Mura CMS statically or dynamically with other modules constitutes the preparation of a derivative work based on 
Mura CMS. Thus, the terms and conditions of the GNU General Public License version 2 ("GPL") cover the entire combined work.

However, as a special exception, the copyright holders of Mura CMS grant you permission to combine Mura CMS with programs
or libraries that are released under the GNU Lesser General Public License version 2.1.

In addition, as a special exception, the copyright holders of Mura CMS grant you permission to combine Mura CMS with 
independent software modules (plugins, themes and bundles), and to distribute these plugins, themes and bundles without 
Mura CMS under the license of your choice, provided that you follow these specific guidelines: 

Your custom code 

• Must not alter any default objects in the Mura CMS database and
• May not alter the default display of the Mura CMS logo within Mura CMS and
• Must not alter any files in the following directories.

 /admin/
 /tasks/
 /config/
 /requirements/mura/
 /Application.cfc
 /index.cfm
 /MuraProxy.cfc

You may copy and distribute Mura CMS with a plug-in, theme or bundle that meets the above guidelines as a combined work 
under the terms of GPL for Mura CMS, provided that you include the source code of that other code when and as the GNU GPL 
requires distribution of source code.

For clarity, if you create a modified version of Mura CMS, you are not obligated to grant this special exception for your 
modified version; it is your choice whether to do so, or to make such modified version available under the GNU General Public License 
version 2 without this exception.  You may, if you choose, apply this exception to your own modified versions of Mura CMS.
--->

<cfsilent>
<cfset variables.iterator=variables.$.getBean("contentIterator")>
<cfset variables.iterator.setQuery(variables.rsSection,variables.$.content('nextN'))>

<cfset event.setValue("currentNextNID",variables.$.content('contentID'))>

<cfif not len(variables.$.event("nextNID")) or variables.$.event("nextNID") eq variables.$.event("currentNextNID")>
	<cfif event.getContentBean().getNextN() gt 1>
		<cfset variables.currentNextNIndex=variables.$.event("startRow")>
		<cfset variables.iterator.setStartRow(variables.currentNextNIndex)>
	<cfelse>
		<cfset variables.currentNextNIndex=variables.$.event("pageNum")>
		<cfset variables.iterator.setPage(variables.currentNextNIndex)>
	</cfif>
<cfelse>	
	<cfset variables.currentNextNIndex=1>
	<cfset variables.iterator.setPage(1)>
</cfif>

<cfset variables.nextN=variables.$.getBean('utility').getNextN(variables.rsSection,event.getContentBean().getNextN(),currentNextNIndex)>

</cfsilent>

<cfif variables.iterator.getRecordcount()>
	<cfoutput>
	<div id="svPortal" class="svIndex">
		<cfsilent>
			<cfif NOT len(variables.$.content("displayList"))>
				<cfset variables.contentListFields="Date,Title,Image,Summary,ReadMore,Credits">
				
				<cfif variables.$.getBean('contentGateway').getHasComments(variables.$.event('siteid'),variables.$.content('contentID'))>
					<cfset variables.contentListFields=listAppend(contentListFields,"Comments")>
				</cfif>
				
				<cfset variables.contentListFields=listAppend(variables.contentListFields,"Tags")>
				
				<cfif variables.$.getBean('contentGateway').getHasRatings(variables.$.event('siteid'),variables.$.content('contentID'))>
					<cfset variables.contentListFields=listAppend(variables.contentListFields,"Rating")>
				</cfif>
				<cfset variables.$.content("displayList",variables.contentListFields)>
			</cfif>
		</cfsilent>
		#variables.$.dspObject_Include(thefile='dsp_content_list.cfm',
			fields=variables.$.content("displayList"),
			type="Portal", 
			iterator= variables.iterator,
			imageSize=variables.$.content("ImageSize"),
			imageHeight=variables.$.content("ImageHeight"),
			imageWidth=variables.$.content("ImageWidth")
			)#
		<cfif variables.nextn.numberofpages gt 1>
			#variables.$.dspObject_Include(thefile='dsp_nextN.cfm')#
		</cfif>	
	</div>
	</cfoutput>
</cfif>

<cfif not variables.iterator.getRecordCount()>
     <cfoutput>
     <cfif variables.$.event('filterBy') eq "releaseMonth">
     <div id="svPortal">
	     <br>
	     <p>#variables.$.rbKey('list.nocontentmonth')#</p>    
     </div>
     <cfelseif variables.$.event('filterBy') eq "releaseDate">
     <div id="svPortal">
	     <br>
	     <p>#variables.$.rbKey('list.nocontentday')#</p>
     </div>
     <cfelse>
     <div id="svPortal">
         <p>#variables.$.rbKey('list.nocontent')#</p>   
     </div>
     </cfif>
     </cfoutput>
</cfif>
