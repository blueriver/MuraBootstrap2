<cfoutput>
 <div class="container"><!--- </div> in footer.cfm --->
<!-- Masthead
      ================================================== -->
      <cfif $.content('contentID') NEQ "00000000000000000000000000000000001">
      	<header class="jumbotron subhead" id="overview">
        	<h1>#$.content('title')#</h1>
        	<cfif len($.content('bsLeadIn')) >
        		<p class="lead">#$.content('bsLeadIn')#</p>
        	</cfif>
      	</header>
     </cfif>
</cfoutput>