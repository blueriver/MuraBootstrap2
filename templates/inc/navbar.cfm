<cfoutput>
<!-- Navbar
  ================================================== -->
  <div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
      <div class="container">
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </a>
        <a class="brand" href="#$.createHREF(filename='')#">#HTMLEditFormat($.siteConfig('site'))#</a>
        <div class="nav-collapse">
          <cf_CacheOMatic key="dspPrimaryNav#request.contentBean.getcontentID()#">
          	#$.dspPrimaryNav(
          		viewDepth="1", 
          		id="navPrimary",
          		displayHome="Never",
          		closePortals="false",
          		showCurrentChildrenOnly="false",
          		ulTopClass="nav",
          		ulNestedClass="dropdown-menu",
              	liHasKidsClass="dropdown",
             	aHasKidsClass="dropdown-toggle",
              	aHasKidsCustomString='data-toggle="dropdown"',
              	liCurrentClass="",
              	aCurrentClass=""
          	)#
         </cf_cacheomatic>
		<!--- Bootstrap only supports 1 level of dropdowns --->
		<!--- 
			Optional named arguments for Primary Nav are: 
			displayHome="Always/Never/Conditional"
			openPortals/closePortals="contentid,contentid" (i.e. show specific sub-content in dropdown nav)
		--->
		
		<form id="searchForm" class="form-search form-inline pull-right" action="#$.createHREF(filename='search-results')#">
        		<input type="text" name="Keywords" id="txtKeywords" class="input-medium search-query" placeholder="Search" />
        		<input type="hidden" name="display" value="search" />
        		<input type="hidden" name="newSearch" value="true" />
        		<input type="hidden" name="noCache" value="1" />
        		<!---<input type="submit" class="btn btn-small" value="Search" />--->
        </form>
        </div>
        
        
        
      </div>
    </div>
  </div>
  </cfoutput>