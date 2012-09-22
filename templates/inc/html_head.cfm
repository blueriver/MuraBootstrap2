<cfoutput>
 <head>

    <!--- META
    ================================================== --->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <title>#HTMLEditFormat($.content('HTMLTitle'))# - #HTMLEditFormat($.siteConfig('site'))#</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="#HTMLEditFormat($.getMetaDesc())#">
    <meta name="keywords" content="#HTMLEditFormat($.getMetaKeywords())#">
    <cfif request.contentBean.getCredits() neq ""><meta name="author" content="#HTMLEditFormat($.content('credits'))#" /></cfif>
    <meta name="generator" content="Mura CMS #$.globalConfig('version')#" />


    <!--- CSS
    ================================================== --->

    <!---- Min Mura styles ---->
    <link href="#$.siteConfig('assetPath')#/css/mura.min.css" rel="stylesheet">

    <!--- Theme styles - includes Twitter Bootstrap & any modifications, along with responsive styles & fonts --->
    <link href="#$.siteConfig('themeAssetPath')#/css/theme/theme.css" rel="stylesheet">
    <!--- <link href="//netdna.bootstrapcdn.com/bootswatch/2.1.0/amelia/bootstrap.min.css" rel="stylesheet"> --->

    <!---
        <cf_CacheOMatic key="globalheadercss">
            #$.static()
            .include("/css/theme/")
            .renderIncludes("css")#
        </cf_CacheOMatic>
    --->


    <!--- IE SHIM - for IE6-8 support of HTML5 elements
    ================================================== --->
    <!--[if lt IE 9]>
      <script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.5.3/modernizr.min.js"></script>
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

    <!--- JQUERY - should go in footer.
    ================================================== --->
    <!--- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline --->
    <script src="//code.jquery.com/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="#$.siteConfig('themeAssetPath')#/js/jquery.js"><\/script>')</script>


    <!--- GOOGLE ANALYTICS
    ==================================================
    <script>
        var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']]; // Change UA-XXXXX-X to be your site's ID
        (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.async=1;
        g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
        s.parentNode.insertBefore(g,s)}(document,'script'));
    </script>
    --->

  </head>

  </head>
</cfoutput>