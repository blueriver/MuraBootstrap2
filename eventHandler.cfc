<!--- Be sure to reload Mura after adding methods here. A site's local eventHandler.cfc does not need to be init'd via appreload, only theme-specific ones (like this) --->
<cfcomponent extends="mura.cfobject" output="false">

	<!--- This function will create extended attributes for the theme's variables --->
	<cffunction name="onApplicationload" output="false">
		<cfargument name="$">
		<cfset var themeDir=expandPath($.siteConfig('themeIncludePath'))>
		<cfset var sourceText="">

		<!--- This is where the file that will be dyamically. --->
		<cfset var sourceFile="css/theme/theme-variables.theme">

		<!--- This is the resulting output will be saved. --->
		<cfset var runtimeFile="css/theme/theme-variables.less">

		<cfif not fileExists(themeDir & "/" & sourceFile)>
			<cfthrow message="The less source file '#sourceFile#' does not exist.">
		</cfif>

		<cfif fileExists(themeDir & "/" & runtimeFile)>
			<cfset fileDelete(themeDir & "/" & runtimeFile)>
		</cfif>

		<cfsavecontent variable="sourceText">
			<cfinclude template="#$.siteConfig('themeIncludePath')#/#sourceFile#">
		</cfsavecontent>

		<cfset fileWrite(themeDir & "/" & runtimeFile, $.setDynamicContent(sourceText), "utf-8")>

	</cffunction>


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
		<cfset renderer.ulTopClass="nav nav-list">
		<cfset renderer.ulNestedClass="nav nav-list">
		<cfset renderer.ulPaginationClass="pagination">

	</cffunction>

</cfcomponent>