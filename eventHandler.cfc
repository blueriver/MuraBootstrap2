<!--- Be sure to reload Mura after adding methods here. A site's local eventHandler.cfc does not need to be init'd via appreload, only theme-specific ones (like this) --->
<cfcomponent extends="mura.cfobject" output="false">

	<!--- This function will create extended attributes for the theme's variables --->
	<cffunction name="onApplicationload" output="false">
		<cfargument name="$">
		<cfset var themeDir=expandPath($.siteConfig('themeIncludePath'))>
		<cfset var shimText="">
		<cfset var themeText="">


		<!--- This is where the file that will be dyamically. --->
		<cfset var shimWithVariables="css/mura/shim.cfm">
		<cfset var themeVariables="css/theme/theme-variables.cfm">

		<!--- This is the resulting output will be saved. --->
		<cfset var shimVarsToLess="css/mura/shim.less">
		<cfset var themeVarsToLess="css/theme/theme-variables.less">

		<cfif not fileExists(themeDir & "/" & shimWithVariables)>
			<cfthrow message="The less source file '#shimWithVariables#' does not exist.">
		</cfif>

		<cfif not fileExists(themeDir & "/" & themeVariables)>
			<cfthrow message="The less source file '#themeVariables#' does not exist.">
		</cfif>

		<cfif fileExists(themeDir & "/" & shimVarsToLess)>
			<cfset fileDelete(themeDir & "/" & shimVarsToLess)>
		</cfif>

		<cfif fileExists(themeDir & "/" & themeVarsToLess)>
			<cfset fileDelete(themeDir & "/" & themeVarsToLess)>
		</cfif>

		<cfsavecontent variable="shimText">
			<cfinclude template="#$.siteConfig('themeIncludePath')#/#shimWithVariables#">
		</cfsavecontent>

		<cfset fileWrite(themeDir & "/" & shimVarsToLess, $.setDynamicContent(shimText), "utf-8")>

		<cfsavecontent variable="themeText">
			<cfinclude template="#$.siteConfig('themeIncludePath')#/#themeVariables#">
		</cfsavecontent>

		<cfset fileWrite(themeDir & "/" & themeVarsToLess, $.setDynamicContent(themeText), "utf-8")>

	</cffunction>


	<cffunction name="onRenderStart" output="false">
		<cfargument name="$">
		<cfset var renderer=$.getContentRenderer()>

		<!--- General Vars --->
		<cfset renderer.generalWrapperClass="well"/>

		<!--- Heading Vars --->
		<cfset renderer.headline="h1"/>
		<cfset renderer.subHead1="h2"/>
		<cfset renderer.subHead2="h3"/>
		<cfset renderer.subHead3="h4"/>
		<cfset renderer.subHead4="h5"/>
		<cfset renderer.subHead5="h6"/>

		<!--- Nav and List Item Vars --->
		<cfset renderer.navWrapperClass="well">
		<cfset renderer.liHasKidsClass="">
		<cfset renderer.liHasKidsCustomString="">

		<cfset renderer.liCurrentClass="active">
		<cfset renderer.liCurrentCustomString="">

		<cfset renderer.aHasKidsClass="">
		<cfset renderer.aHasKidsCustomString=''>
		<cfset renderer.aCurrentClass="active">
		<cfset renderer.aCurrentCustomString="">

		<cfset renderer.ulTopClass="nav nav-list">
		<cfset renderer.ulNestedClass="nav nav-list">
		<cfset renderer.ulNestedCustomString="">
		<cfset renderer.liNestedClass="">

		<!--- Pagination Vars --->
		<cfset renderer.ulPaginationClass="">
		<cfset renderer.ulPaginationWrapperClass="pagination">

		<!--- Form Vars --->
		<cfset renderer.formWrapperClass="well"/>

	</cffunction>


</cfcomponent>