<cfoutput>
 <head>

    <!--- META
    ================================================== --->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>#HTMLEditFormat($.content('HTMLTitle'))# - #HTMLEditFormat($.siteConfig('site'))#</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="#HTMLEditFormat($.getMetaDesc())#">
    <meta name="keywords" content="#HTMLEditFormat($.getMetaKeywords())#">
    <cfif request.contentBean.getCredits() neq ""><meta name="author" content="#HTMLEditFormat($.content('credits'))#" /></cfif>
    <meta name="generator" content="Mura CMS #$.globalConfig('version')#" />


    <!--- CSS
    ================================================== --->

    <!--- Theme styles - includes Twitter Bootstrap & any modifications, along with responsive styles & fonts --->
    <link href="#$.siteConfig('themeAssetPath')#/css/theme/theme.css" rel="stylesheet">

    <!--- Prettify if you want code coloring --->
    <link href="#$.siteConfig('themeAssetPath')#/bootstrap/docs/assets/js/google-code-prettify/prettify.css" rel="stylesheet">


    <!--- LESS JS - Processing on the server..... fails - not a good idea anyways! --->
    <!--- <link rel="stylesheet/less" type="text/css" href="#$.siteConfig('themeAssetPath')#/css/theme/theme.less">
    <script type="text/javascript" src="#$.siteConfig('themeAssetPath')#/js/vendor/less-1.3.0.min.js"></script>
    <link rel="stylesheet" type="text/css" href="#$.siteConfig('themeAssetPath')#/css/theme/theme.less.css"> --->


    <!--- CFSTATIC - Processing on the server..... fails - Processes all the LESS files, even if you only request one file --->
    <!---
        <cf_CacheOMatic key="globalheadercss">
            #$.static()
            .include("/css/theme/theme.less")
            .renderIncludes("css")#
        </cf_CacheOMatic>
    --->


    <!--- IE SHIM - for IE6-8 support of HTML5 elements
    ================================================== --->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->


    <!--- FAV AND TOUCH ICONS
    ================================================== --->
    <link rel="shortcut icon" href="#$.siteConfig('themeAssetPath')#/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="#$.siteConfig('themeAssetPath')#/images/ico/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="#$.siteConfig('themeAssetPath')#/images/ico/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="#$.siteConfig('themeAssetPath')#/images/ico/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="#$.siteConfig('themeAssetPath')#/images/ico/ico/apple-touch-icon-57-precomposed.png">


    <!--- MURA FEEDS
    ================================================== --->
    <cfset rs=$.getBean('feedManager').getFeeds($.event('siteID'),'Local',true,true) />
    <cfloop query="rs">
    <link rel="alternate" type="application/rss+xml" title="#HTMLEditFormat($.siteConfig('site'))# - #HTMLEditFormat(rs.name)#" href="#XMLFormat('http://#listFirst(cgi.http_host,":")##$.globalConfig('context')#/tasks/feed/?feedID=#rs.feedID#')#" />
    </cfloop>

  </head>
</cfoutput>