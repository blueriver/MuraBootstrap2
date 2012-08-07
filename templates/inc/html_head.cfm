<cfoutput>
 <head>
    <meta charset="utf-8">
    <title>#HTMLEditFormat($.content('HTMLTitle'))# - #HTMLEditFormat($.siteConfig('site'))#</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="#HTMLEditFormat($.getMetaDesc())#">
    <meta name="author" content="#HTMLEditFormat($.getMetaKeywords())#">

    <cfif request.contentBean.getCredits() neq ""><meta name="author" content="#HTMLEditFormat($.content('credits'))#" /></cfif>
    <meta name="generator" content="Mura CMS #$.globalConfig('version')#" />

    <!--- Le Mura styles --->
    <!--- <link href="#$.siteConfig('assetPath')#/css/mura.min.css" rel="stylesheet">
    <link href="#$.siteConfig('themeAssetPath')#/css/mura/mura.less" rel="stylesheet/less"> --->

    <!--- Le static Bootstrap styles --->
    <!--- <link href="#$.siteConfig('themeAssetPath')#/css/bootstrap-static/bootstrap.css" rel="stylesheet">
    <link href="#$.siteConfig('themeAssetPath')#/css/bootstrap-static/responsive.css" rel="stylesheet"> --->






    <!--- Le Less styles --->
    <link href="#$.siteConfig('themeAssetPath')#/css/theme/theme.less" rel="stylesheet/less">
  	<script src="#$.siteConfig('themeAssetPath')#/js/less-1.3.0.min.js"></script>


    <!--- BOOTSTRAP DOC STYLES --->
    <!--- <link href="#$.siteConfig('themeAssetPath')#/bootstrap/docs/assets/css/docs.css" rel="stylesheet">
    <link href="#$.siteConfig('themeAssetPath')#/bootstrap/docs/assets/js/google-code-prettify/prettify.css" rel="stylesheet">

    <!--- TEMP: Pre-processed css file for faster development --->
    <link href="#$.siteConfig('themeAssetPath')#/css/theme/theme.css" rel="stylesheet">--->

    <!--- ** Preferred method using cfStatic, but CURRENTLY BROKEN **
    <cf_CacheOMatic key="globalheadercss">
        #$.static()
        .include("/css/theme/")
        .renderIncludes("css")#
    </cf_CacheOMatic>--->

    <!--- Le HTML5 shim, for IE6-8 support of HTML5 elements --->
    <!---[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]--->

    <!--- Le fav and touch icons --->
    <link rel="shortcut icon" href="#$.siteConfig('assetPath')#/images/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="#$.siteConfig('themeAssetPath')#/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="#$.siteConfig('themeAssetPath')#/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="#$.siteConfig('themeAssetPath')#/ico/apple-touch-icon-57-precomposed.png">

    <cfset rs=$.getBean('feedManager').getFeeds($.event('siteID'),'Local',true,true) />
    <cfloop query="rs">
    <link rel="alternate" type="application/rss+xml" title="#HTMLEditFormat($.siteConfig('site'))# - #HTMLEditFormat(rs.name)#" href="#XMLFormat('http://#listFirst(cgi.http_host,":")##$.globalConfig('context')#/tasks/feed/?feedID=#rs.feedID#')#" />
    </cfloop>
  </head>
</cfoutput>