<cfoutput>
<!DOCTYPE html>
<html lang="en">
<cfinclude template="inc/html_head.cfm">
	<body id="#$.getTopID()#" class="#$.createCSSid($.content('menuTitle'))#">
		<cfinclude template="inc/navbar.cfm">
		<div class="container">
      		<div class="row">
	      		<div class="span3 sidebar">
	      		    #$.dspObjects(1)#
	      		</div><!--/span-->
				<div class="span6 content">
					<cfinclude template="inc/breadcrumb.cfm">
					#$.dspBody(body=$.content('body'),pageTitle=$.content('title'),crumbList=0,showMetaImage=1)#
					#$.dspObjects(2)#
			    </div><!--/span-->
				<div class="span3 sidebar">
					#$.dspObjects(3)#
				</div><!--/span-->
			</div><!--/row-->
		<cfinclude template="inc/footer.cfm">
		<cfinclude template="inc/footer_js.cfm">
	</body>
</html>
</cfoutput>

        
          