<cfsetting showdebugoutput="no">
<cfset $=application.serviceFactory.getBean("MuraScope").init(session.siteID)>
<cfset renderer=$.getContentRenderer()>
<cfcontent reset="yes" type="text/javascript">
/*
Copyright (c) 2003-2010, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license

Add additional customizations or override editor config settings below.

*/

CKEDITOR.editorConfig = function( config )
{
    // config.language = 'fr';
    // config.uiColor = '#AADC6E';

	config.enterMode = CKEDITOR.ENTER_BR;
	config.shiftEnterMode = CKEDITOR.ENTER_BR;
	//config.ProtectedSource.Add( /<br[\s\S]*?\/>/g ) ;   // BR Tags
	config.ignoreEmptyParagraph = true;

};
