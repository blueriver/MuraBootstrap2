<cfoutput>
<div class="container">
<hr>
<!-- Footer
      ================================================== -->
	<footer>
		<p class="pull-left">&copy; #HTMLEditFormat($.siteConfig('site'))# #year(now())#</p>
		<p class="pull-right"><a href="##">Back to top</a></p>
	</footer>
</div> <!--- /container from header.cfm --->


	<!--- JS - Should be compiled by local compiler or cfstatic
	=========================================================== --->

    <!--- JQuery - Uncomment this if you want to load at footer, but set jsLib to false in theme root contentRenderer.
    	  Otherwise, you'll end up with two JQuery libraries which will cause conflicts --->
    <!---<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="#$.siteConfig('themeAssetPath')#/js/vendor/jquery-1.8.0.min.js"><\/script>')</script> --->

    <!--- Bootstrap JS - Ordered like Bootstrap for loading --->
	<script src="#$.siteConfig('themeAssetPath')#/bootstrap/js/bootstrap-transition.js"></script>
	<script src="#$.siteConfig('themeAssetPath')#/bootstrap/js/bootstrap-alert.js"></script>
	<script src="#$.siteConfig('themeAssetPath')#/bootstrap/js/bootstrap-modal.js"></script>
	<script src="#$.siteConfig('themeAssetPath')#/bootstrap/js/bootstrap-dropdown.js"></script>
	<script src="#$.siteConfig('themeAssetPath')#/bootstrap/js/bootstrap-scrollspy.js"></script>
	<script src="#$.siteConfig('themeAssetPath')#/bootstrap/js/bootstrap-tab.js"></script>
	<script src="#$.siteConfig('themeAssetPath')#/bootstrap/js/bootstrap-tooltip.js"></script>
	<script src="#$.siteConfig('themeAssetPath')#/bootstrap/js/bootstrap-popover.js"></script>
	<script src="#$.siteConfig('themeAssetPath')#/bootstrap/js/bootstrap-button.js"></script>
	<script src="#$.siteConfig('themeAssetPath')#/bootstrap/js/bootstrap-collapse.js"></script>
	<script src="#$.siteConfig('themeAssetPath')#/bootstrap/js/bootstrap-carousel.js"></script>
	<script src="#$.siteConfig('themeAssetPath')#/bootstrap/js/bootstrap-typeahead.js"></script>
	<script src="#$.siteConfig('themeAssetPath')#/bootstrap/js/bootstrap-affix.js"></script>

	<!--- Prettify if you want code coloring --->
	<script src="#$.siteConfig('themeAssetPath')#/bootstrap/docs/assets/js/google-code-prettify/prettify.js"></script>

	<!--- UI To Top - Use if you want a "back to top" button added to the body bottom --->
	<script src="#$.siteConfig('themeAssetPath')#/js/vendor/jquery-uitotop.js"></script>

    <!--- Main JS - Site Specific Scripts --->
	<script src="#$.siteConfig('themeAssetPath')#/js/main.js"></script>


    <!--- MINIFIED MAIN SCRIPT - should include JQuery, Bootstrap, and Site Specific Scripts
    	  completely minified by local compiler if not using cfstatic
	<script src="#$.siteConfig('themeAssetPath')#/js/main-min.js"></script>
	 --->

	<!---
	<script>
		var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
		(function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
		g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
		s.parentNode.insertBefore(g,s)}(document,'script'));
	</script>
	 --->

</cfoutput>