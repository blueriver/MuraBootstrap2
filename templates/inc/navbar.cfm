<cfoutput>


  <div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
      <div class="container">
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </a>
        <a class="brand" href="#$.createHREF(filename='')#">Project name</a>
        <div class="nav-collapse collapse">
          <cf_CacheOMatic key="dspPrimaryNav#$.content('contentid')#">
            #$.dspPrimaryNav(
              viewDepth="1",
              id="navPrimary",
              displayHome="Never",
              closePortals="false",
              showCurrentChildrenOnly="false",
              ulTopClass="nav",
              ulNestedClass="dropdown-menu",
              liHasKidsClass="dropdown",
              liHasKidsCustomString='',
              liHasKidsNestedClass='',
              liNestedClass='',
              aHasKidsClass="dropdown-toggle",
              aHasKidsCustomString='role="button" data-toggle="dropdown" data-target="##"',
              liCurrentClass="active",
              aCurrentClass=''
            )#
         </cf_cacheomatic>
        <!---
          Optional named arguments for Primary Nav are:
          displayHome="Always/Never/Conditional"
          openPortals/closePortals="contentid,contentid" (i.e. show specific sub-content in dropdown nav)
         --->

         <!---
          How best to include these into sub areas?
          <li class="divider"></li>
          <li class="nav-header">Nav header</li>
          --->
            <form id="login" name="frmLogin" method="post" action="?nocache=1" onsubmit="return validate(this);" novalidate="novalidate" class="navbar-form pull-right">
              <input type="text" id="txtUsername" class="span2" name="username" required="true" placeholder="Username" message="#htmlEditFormat($.rbKey('user.usernamerequired'))#" />
              <input type="password" id="txtPassword" class="span2" name="password" required="true" placeholder="Password" message="#htmlEditFormat($.rbKey('user.passwordrequired'))#" />
              <input type="hidden" name="doaction" value="login" />
              <input type="hidden" name="linkServID" value="#HTMLEditFormat($.event('linkServID'))#" />
              <input type="hidden" name="returnURL" value="#HTMLEditFormat($.event('returnURL'))#" />
              <button type="submit" class="btn" value="#htmlEditFormat($.rbKey('user.login'))#">Sign in</button>
            </form>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
</cfoutput>