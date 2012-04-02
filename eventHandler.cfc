<!--- Be sure to reload Mura after adding methods here. A site's local eventHandler.cfc does not need to be init'd via appreload, only theme-specific ones (like this) --->
<cfcomponent extends="mura.cfobject" output="false">

<cffunction name="onRenderStart" output="false">
	<cfargument name="$">
	<cfset var renderer=$.getContentRenderer()>
	
	<cfset renderer.headline="h1"/>
	<cfset renderer.subHead1="h2"/>
	<cfset renderer.subHead2="h3"/>
	<cfset renderer.subHead3="h4"/>
	<cfset renderer.subHead4="h5"/>
	<cfset renderer.subHead5="h6"/>
	<cfset renderer.liCurrentClass="active">
	<cfset renderer.aCurrentClass="active">
	<cfset renderer.ulTopClass="navSecondary nav">
	<cfset renderer.ulNestedClass="nav">
	<cfset renderer.ulPaginationClass="pagination">

</cffunction>

</cfcomponent>