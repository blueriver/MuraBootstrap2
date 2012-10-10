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
		<cfset renderer.aHasKidsCustomString="">
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
<!---

<cffunction name="dspNestedNavPrimary" output="false" returntype="string">
		<cfargument name="contentid" type="string" >
		<cfargument name="viewDepth" type="numeric" required="true" default="1">
		<cfargument name="currDepth" type="numeric"  required="true"  default="1">
		<cfargument name="type" type="string"  default="default">
		<cfargument name="today" type="date"  default="#now()#">
		<cfargument name="id" type="string" default="">
		<cfargument name="querystring" type="string" default="">
		<cfargument name="sortBy" type="string" default="orderno">
		<cfargument name="sortDirection" type="string" default="asc">
		<cfargument name="context" type="string" default="#application.configBean.getContext()#">
		<cfargument name="stub" type="string" default="#application.configBean.getStub()#">
		<cfargument name="displayHome" type="string" default="conditional">
		<cfargument name="closePortals" type="string" default="">
		<cfargument name="openPortals" type="string" default="">
		<cfargument name="menuClass" type="string" default="">
		<cfargument name="showCurrentChildrenOnly" type="boolean" default="false">
		<cfargument name="liHasKidsClass" required="true" default="">
		<cfargument name="liHasKidsCustomString" required="true" default="">
		<cfargument name="liCurrentClass" required="true" default="#this.liCurrentClass#">
		<cfargument name="liCurrentCustomString" required="true" default="">
		<cfargument name="aHasKidsClass" required="true" default="">
		<cfargument name="aHasKidsCustomString" required="true" default="">
		<cfargument name="aCurrentClass" required="true" default="#this.aCurrentClass#">
		<cfargument name="aCurrentCustomString" required="true" default="">
		<cfargument name="ulNestedClass" required="true" default="">
		<cfargument name="ulNestedCustomString" required="true" default="">
		<cfargument name="liNestedClass" required="true" default="">

		<cfset var rsSection=variables.contentGateway.getKids('00000000000000000000000000000000000',variables.event.getValue('siteID'),arguments.contentid,arguments.type,arguments.today,0,'',0,arguments.sortBy,arguments.sortDirection,'','','',true)>
		<cfset var adjust=0>
		<cfset var current=0>
		<cfset var link=''>
		<cfset var itemClass=''>
		<cfset var itemId=''>
		<cfset var nest=''>
		<cfset var subnav=false>
		<cfset var theNav="">
		<cfset var topIndex= arrayLen(this.crumbdata)-this.navOffSet />
		<cfset var rsHome=0>
		<cfset var homeLink = "" />
		<cfset var isLimitingOn = false>
		<cfset var isNotLimited = false>
		<cfset var limitingBy = "">
		<cfset var isNavSecondary=arguments.showCurrentChildrenOnly or (arguments.id eq 'navSecondary' or arguments.menuClass eq 'navSecondary')>
		<cfset var homeDisplayed = false>
		<cfset var nestedArgs=structNew()>
		<cfset var linkArgs=structNew()>
		<cfset var started=false>

		<cfif isDefined("arguments.ulTopClass")>
			<cfset arguments.menuclass=arguments.ulTopClass>
		</cfif>

		<cfif len(arguments.closePortals)>
			<cfset limitingBy="closed">
			<cfif isBoolean(arguments.closePortals)>
				<cfset isLimitingOn=arguments.closePortals />
			</cfif>
		</cfif>

		<cfif len(arguments.openPortals)>
			<cfset limitingBy="open">
			<cfif isBoolean(arguments.openPortals)>
				<cfif arguments.openPortals>
					<cfset isLimitingOn=false />
				<cfelse>
					<cfset isLimitingOn=true />
				</cfif>
			</cfif>
		</cfif>

		<cfif rsSection.recordcount>
			<cfset adjust=rsSection.recordcount>
			<cfsavecontent variable="theNav"><cfoutput>

			<cfif not homeDisplayed and arguments.currDepth eq 1 and (arguments.displayHome eq "Always" or (arguments.displayHome eq "Conditional" and variables.event.getValue('contentBean').getcontentid() neq "00000000000000000000000000000000001"))>
				<cfsilent>
					<cfquery name="rsHome" datasource="#application.configBean.getReadOnlyDatasource()#" username="#application.configBean.getReadOnlyDbUsername()#" password="#application.configBean.getReadOnlyDbPassword()#">
					select menutitle,filename from tcontent where contentID=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.contentID#"> and siteid=<cfqueryparam cfsqltype="cf_sql_varchar" value="#variables.event.getValue('siteID')#"> and active=1
					</cfquery>
					<cfset homeLink="#application.configBean.getContext()##getURLStem(variables.event.getValue('siteID'),rsHome.filename)#">
					<cfset homeDisplayed = true>
				</cfsilent>

				<cfset started=true>
				<ul<cfif arguments.currDepth eq 1>#iif(arguments.id neq '',de(' id="#arguments.id#"'),de(''))##iif(arguments.menuClass neq '',de(' class="#arguments.menuClass#"'),de(''))#<cfelse><cfif len(arguments.ulNestedClass)> class="#arguments.ulNestedClass#"</cfif><cfif len(arguments.ulNestedCustomString)> #arguments.ulNestedCustomString#</cfif></cfif>>
				<li class="first <cfif variables.event.getValue('contentBean').getcontentid() eq arguments.contentid> #arguments.liCurrentClass#</cfif>" id="navHome"<cfif len(arguments.liCurrentCustomString)> #arguments.liCurrentCustomString#</cfif>><a href="#homeLink#"<cfif len(arguments.aCurrentClass) and $.content('contentID') eq '00000000000000000000000000000000001'> class="#arguments.aCurrentClass#"</cfif><cfif len(arguments.aCurrentCustomString)> #arguments.aCurrentCustomString#</cfif>>#HTMLEditFormat(rsHome.menuTitle)#</a></li>
			</cfif>

			<cfloop query="rsSection">
			<cfif allowLink(rssection.restricted,rssection.restrictgroups,variables.event.getValue('r').loggedIn)>
			<cfsilent>

			<cfset current=current+1>
			<cfset nest=''>
			<cfset itemClass=''>

			<cfset isNotLimited= rsSection.type eq "Page" or
			not (
				rsSection.type eq "Portal" and
					(isLimitingOn or (
										(limitingBy eq "closed" and listFind(arguments.closePortals,rsSection.contentid))
									or
										(limitingBy eq "open" and not listFind(arguments.openPortals,rsSection.contentid))
									)

					)
					or listFindNoCase("Calendar,Gallery,Link,File",rsSection.type)
				)
			/>

			<cfset subnav= isNumeric(rsSection.kids) and rsSection.kids and arguments.currDepth lt arguments.viewDepth
			and (
					(
					isNotLimited and isNavSecondary and (
														listFind(variables.event.getValue('contentBean').getPath(),"#rsSection.contentID#")
														and
														listLen(rsSection.path) lte listLen(variables.event.getValue('contentBean').getPath())
														)
					)
				or (
					isNotLimited and not isNavSecondary
					)
				)
				and not (rsSection.restricted and not session.mura.isLoggedIn)
			/>

			<cfif subnav>
				<cfset nestedArgs.contentID=rssection.contentid>
				<cfset nestedArgs.currDepth=arguments.currDepth+1>
				<cfset nestedArgs.type=iif(rssection.type eq 'calendar',de('fixed'),de('default'))>
				<cfset nestedArgs.sortBy=rssection.sortBy>
				<cfset nestedArgs.sortDirection=rssection.sortDirection>
				<cfset nestedArgs.menuClass="">
				<cfset nestedArgs.ulTopClass="">
				<cfset structAppend(nestedArgs,arguments,false)>
				<cfset nest=dspNestedNavPrimary(argumentCollection=nestedArgs) />
				<cfset subnav=subnav and find("<li",nest)>
			</cfif>

			<cfif current eq adjust>
				<cfset itemClass=listAppend(itemClass, "last",' ')>
			</cfif>

			<cfif listFind(variables.event.getValue('contentBean').getPath(),"#rsSection.contentid#") and len(arguments.liCurrentClass)>
				<cfset itemClass=listAppend(itemClass,arguments.liCurrentClass," ")/>
			</cfif>

			<cfif subnav and len(arguments.liHasKidsClass)>
				<cfset itemClass=listAppend(itemClass,arguments.liHasKidsClass," ")/>
			</cfif>

			<cfset itemId="nav" & setCamelback(rsSection.menutitle)>

			<cfset linkArgs=structNew()>
			<cfset linkArgs.aHasKidsClass=arguments.aHasKidsClass>
			<cfset linkArgs.aCurrentClass=arguments.aCurrentClass>
			<cfset linkArgs.aCurrentCustomString=arguments.aCurrentCustomString>
			<cfset linkArgs.type=rsSection.type>
			<cfset linkArgs.filename=rsSection.filename>
			<cfset linkArgs.title=rsSection.menutitle>
			<cfset linkArgs.contentid=rsSection.contentid>
			<cfset linkArgs.target=rsSection.target>
			<cfset linkArgs.targetParams=rsSection.targetParams>
			<cfset linkArgs.siteID=variables.event.getValue('siteID')>
			<cfset linkArgs.querystring=arguments.querystring>
			<cfset linkArgs.isParent=subnav>
			<cfset link=addlink(argumentCollection=linkArgs)>

			</cfsilent>

			<cfif not started>
				<cfset started=true>
				<cfset itemClass=listAppend(itemClass, "first",' ')>
				<ul<cfif arguments.currDepth eq 1>#iif(arguments.id neq '',de(' id="#arguments.id#"'),de(''))##iif(arguments.menuClass neq '',de(' class="#arguments.menuClass#"'),de(''))#<cfelse><cfif len(arguments.ulNestedClass)> class="#arguments.ulNestedClass#"</cfif><cfif len(arguments.ulNestedCustomString)> #arguments.ulNestedCustomString#</cfif></cfif>>
			</cfif>
			<li<cfif len(itemClass)> class="#itemClass#"</cfif> id="#itemId#"<cfif len(arguments.liCurrentCustomString)> #arguments.liCurrentCustomString#</cfif>>#link#<cfif subnav>#nest#</cfif></li>
			<cfelse><cfset adjust=adjust-1></cfif></cfloop>
			<cfif started></ul></cfif>
			</cfoutput></cfsavecontent>
		</cfif>
		<cfreturn theNav />
</cffunction>
 --->


</cfcomponent>