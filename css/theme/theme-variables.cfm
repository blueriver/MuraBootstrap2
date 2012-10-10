<cfoutput>
<!---
	THEME VARIABLES

	This file recieves the values from the site's extended attributes
	and saves them into the theme-variables.less file.

	It will default to those styles that are set in site settings, unless
	the option to use Bootswatch is chosen, which will determine the switch
	below to find the correct variables file.

--->

	<cfswitch expression="#$.siteConfig('mbt-bootswatch')#">

		<cfcase value="Amelia">
			<cfinclude template="../bootswatch/amelia/variables.less" />
			<cfinclude template="../bootswatch/amelia/bootswatch.less" />
		</cfcase>

		<cfcase value="Cerulean">
			<cfinclude template="../bootswatch/cerulean/variables.less" />
			<cfinclude template="../bootswatch/cerulean/bootswatch.less" />
		</cfcase>

		<cfcase value="Cyborg">
			<cfinclude template="../bootswatch/cyborg/variables.less" />
			<cfinclude template="../bootswatch/cyborg/bootswatch.less" />
		</cfcase>

		<cfcase value="Journal">
			<cfinclude template="../bootswatch/journal/variables.less" />
			<cfinclude template="../bootswatch/journal/bootswatch.less" />
		</cfcase>

		<cfcase value="Readable">
			<cfinclude template="../bootswatch/readable/variables.less" />
			<cfinclude template="../bootswatch/readable/bootswatch.less" />
		</cfcase>

		<cfcase value="Simplex">
			<cfinclude template="../bootswatch/simplex/variables.less" />
			<cfinclude template="../bootswatch/simplex/bootswatch.less" />
		</cfcase>

		<cfcase value="Slate">
			<cfinclude template="../bootswatch/slate/variables.less" />
			<cfinclude template="../bootswatch/slate/bootswatch.less" />
		</cfcase>

		<cfcase value="Spacelab">
			<cfinclude template="../bootswatch/spacelab/variables.less" />
			<cfinclude template="../bootswatch/spacelab/bootswatch.less" />
		</cfcase>

		<cfcase value="Spruce">
			<cfinclude template="../bootswatch/spruce/variables.less" />
			<cfinclude template="../bootswatch/spruce/bootswatch.less" />
		</cfcase>

		<cfcase value="Superhero">
			<cfinclude template="../bootswatch/superhero/variables.less" />
			<cfinclude template="../bootswatch/superhero/bootswatch.less" />
		</cfcase>

		<cfcase value="United">
			<cfinclude template="../bootswatch/united/variables.less" />
			<cfinclude template="../bootswatch/united/bootswatch.less" />
		</cfcase>

		<cfcase value="None">
			<!--- Grays
			--------------------------------------------------------------------------------------------------------------------->
			@black:                 #$.siteConfig('mbt-grays-black')#;
			@grayDarker:            #$.siteConfig('mbt-grays-grayDarker')#;
			@grayDark:              #$.siteConfig('mbt-grays-grayDark')#;
			@gray:                  #$.siteConfig('mbt-grays-gray')#;
			@grayLight:             #$.siteConfig('mbt-grays-grayLight')#;
			@grayLighter:           #$.siteConfig('mbt-grays-grayLighter')#;
			@white:           		#$.siteConfig('mbt-grays-white')#;


			<!--- Accent colors
			--------------------------------------------------------------------------------------------------------------------->
			@blue:                  #$.siteConfig('mbt-accents-blue')#;
			@blueDark:              #$.siteConfig('mbt-accents-blueDark')#;
			@green:                 #$.siteConfig('mbt-accents-green')#;
			@red:                   #$.siteConfig('mbt-accents-red')#;
			@yellow:                #$.siteConfig('mbt-accents-yellow')#;
			@orange:                #$.siteConfig('mbt-accents-orange')#;
			@pink:                  #$.siteConfig('mbt-accents-pink')#;
			@purple:                #$.siteConfig('mbt-accents-purple')#;


			<!--- Scaffolding
			--------------------------------------------------------------------------------------------------------------------->
			@bodyBackground:        #$.siteConfig('mbt-scaffolding-bodyBackground')#;
			@textColor:             #$.siteConfig('mbt-scaffolding-textColor')#;


			<!--- Links
			--------------------------------------------------------------------------------------------------------------------->
			@linkColor:             #$.siteConfig('mbt-links-linkColor')#;
			@linkColorHover:        #$.siteConfig('mbt-links-linkColorHover')#;


			<!--- Typography
			--------------------------------------------------------------------------------------------------------------------->
			@sansFontFamily:        #$.siteConfig('mbt-typography-sansFontFamily')#;
			@serifFontFamily:       #$.siteConfig('mbt-typography-serifFontFamily')#;
			@monoFontFamily:        #$.siteConfig('mbt-typography-monoFontFamily')#;

			@baseFontSize:          #$.siteConfig('mbt-typography-baseFontSize')#;
			@baseFontFamily:        #$.siteConfig('mbt-typography-baseFontFamily')#;
			@baseLineHeight:        #$.siteConfig('mbt-typography-baseLineHeight')#;
			@altFontFamily:         #$.siteConfig('mbt-typography-altFontFamily')#;

			@headingsFontFamily:    #$.siteConfig('mbt-typography-headingsFontFamily')#;<!--- empty to use BS default, @baseFontFamily --->
			@headingsFontWeight:    #$.siteConfig('mbt-typography-headingsFontWeight')#;<!--- instead of browser default, bold --->
			@headingsColor:         #$.siteConfig('mbt-typography-headingsColor')#;<!--- empty to use BS default, @textColor --->


			<!--- Tables
			--------------------------------------------------------------------------------------------------------------------->
			@tableBackground:                   #$.siteConfig('mbt-tables-tableBackground')#;<!--- overall background-color --->
			@tableBackgroundAccent:             #$.siteConfig('mbt-tables-tableBackgroundAccent')#;<!--- for striping --->
			@tableBackgroundHover:              #$.siteConfig('mbt-tables-tableBackgroundHover')#;<!--- for hover --->
			@tableBorder:                       #$.siteConfig('mbt-tables-tableBorder')#;<!--- table and cell border --->


			<!--- Buttons
			--------------------------------------------------------------------------------------------------------------------->
			@btnBackground:                     #$.siteConfig('mbt-buttons-btnBackground')#;
			@btnBackgroundHighlight:            #$.siteConfig('mbt-buttons-btnBackgroundHighlight')#;
			@btnBorder:                         #$.siteConfig('mbt-buttons-btnBorder')#;

			@btnPrimaryBackground:              #$.siteConfig('mbt-buttons-btnPrimaryBackground')#;
			@btnPrimaryBackgroundHighlight:     #$.siteConfig('mbt-buttons-btnPrimaryBackgroundHighlight')#;

			@btnInfoBackground:                 #$.siteConfig('mbt-buttons-btnInfoBackground')#;
			@btnInfoBackgroundHighlight:        #$.siteConfig('mbt-buttons-btnInfoBackgroundHighlight')#;

			@btnSuccessBackground:              #$.siteConfig('mbt-buttons-btnSuccessBackground')#;
			@btnSuccessBackgroundHighlight:     #$.siteConfig('mbt-buttons-btnSuccessBackgroundHighlight')#;

			@btnWarningBackground:              #$.siteConfig('mbt-buttons-btnWarningBackground')#;
			@btnWarningBackgroundHighlight:     #$.siteConfig('mbt-buttons-btnWarningBackgroundHighlight')#;

			@btnDangerBackground:               #$.siteConfig('mbt-buttons-btnDangerBackground')#;
			@btnDangerBackgroundHighlight:      #$.siteConfig('mbt-buttons-btnDangerBackgroundHighlight')#;

			@btnInverseBackground:              #$.siteConfig('mbt-buttons-btnInverseBackground')#;
			@btnInverseBackgroundHighlight:     #$.siteConfig('mbt-buttons-btnInverseBackgroundHighlight')#;


			<!--- Forms
			--------------------------------------------------------------------------------------------------------------------->
			@inputBackground:               #$.siteConfig('mbt-forms-inputBackground')#;
			@inputBorder:                   #$.siteConfig('mbt-forms-inputBorder')#;
			@inputBorderRadius:       		#$.siteConfig('mbt-forms-inputBorderRadius')#;
			@inputDisabledBackground:       #$.siteConfig('mbt-forms-inputDisabledBackground')#;
			@formActionsBackground:         #$.siteConfig('mbt-forms-formActionsBackground')#;


			<!--- Dropdowns
			--------------------------------------------------------------------------------------------------------------------->
			@dropdownBackground:            #$.siteConfig('mbt-dropdowns-dropdownBackground')#;
			@dropdownBorder:                #$.siteConfig('mbt-dropdowns-dropdownBorder')#;
			@dropdownLinkBackgroundHover:   #$.siteConfig('mbt-dropdowns-dropdownDividerTop')#;
			@dropdownDividerBottom:  		#$.siteConfig('mbt-dropdowns-dropdownDividerBottom')#;

			@dropdownLinkColor:             #$.siteConfig('mbt-dropdowns-dropdownLinkColor')#;
			@dropdownLinkColorHover:        #$.siteConfig('mbt-dropdowns-dropdownLinkColorHover')#;
			@dropdownLinkColorActive:   	#$.siteConfig('mbt-dropdowns-dropdownLinkColorActive')#;

			@dropdownLinkBackgroundActive:   #$.siteConfig('mbt-dropdowns-dropdownLinkBackgroundActive')#;
			@dropdownLinkBackgroundHover:   #$.siteConfig('mbt-dropdowns-dropdownLinkBackgroundHover')#;




			<!--- COMPONENT VARIABLES
			--------------------------------------------------------------------------------------------------------------------->


			<!--- Z-index master list
			--------------------------------------------------------------------------------------------------------------------->
			<!--- Used for a bird's eye view of components dependent on the z-axis --->
			<!--- Try to avoid customizing these :) --->
			@zindexDropdown:          1000;
			@zindexPopover:           1010;
			@zindexTooltip:           1020;
			@zindexFixedNavbar:       1030;
			@zindexModalBackdrop:     1040;
			@zindexModal:             1050;


			<!--- Sprite icons path
			--------------------------------------------------------------------------------------------------------------------->
			@iconSpritePath:          "#$.siteConfig('mbt-sprites-iconSpritePath')#";
			@iconWhiteSpritePath:     "#$.siteConfig('mbt-sprites-iconSpritePath')#";


			<!--- Input placeholder text color
			--------------------------------------------------------------------------------------------------------------------->
			@placeholderText:         #$.siteConfig('mbt-input-placeholderText')#;


			<!--- Hr border color
			--------------------------------------------------------------------------------------------------------------------->
			@hrBorder:                #$.siteConfig('mbt-hr-hrBorder')#;


			<!--- Horizontal forms & lists
			--------------------------------------------------------------------------------------------------------------------->
			@horizontalComponentOffset:       #$.siteConfig('mbt-hfl-horizontalComponentOffset')#;


			<!--- Wells
			--------------------------------------------------------------------------------------------------------------------->
			@wellBackground:       			  #$.siteConfig('mbt-wells-wellBackground')#;


			<!--- Navbar
			--------------------------------------------------------------------------------------------------------------------->
			@navbarCollapseWidth:             #$.siteConfig('mbt-navbar-navbarCollapseWidth')#;

			@navbarHeight:                    #$.siteConfig('mbt-navbar-navbarHeight')#;
			@navbarBackgroundHighlight:       #$.siteConfig('mbt-navbar-navbarBackgroundHighlight')#;
			@navbarBackground:                #$.siteConfig('mbt-navbar-navbarBackground')#;
			@navbarBorder:                	  #$.siteConfig('mbt-navbar-navbarBorder')#;

			@navbarText:                      #$.siteConfig('mbt-navbar-navbarText')#;
			@navbarLinkColor:                 #$.siteConfig('mbt-navbar-navbarLinkColor')#;
			@navbarLinkColorHover:            #$.siteConfig('mbt-navbar-navbarLinkColorHover')#;
			@navbarLinkColorActive:           #$.siteConfig('mbt-navbar-navbarLinkColorActive')#;
			@navbarLinkBackgroundHover:       #$.siteConfig('mbt-navbar-navbarLinkBackgroundHover')#;
			@navbarLinkBackgroundActive:      #$.siteConfig('mbt-navbar-navbarLinkBackgroundActive')#;

			@navbarBrandColor:                #$.siteConfig('mbt-navbar-navbarBrandColor')#;

			<!--- Inverted navbar --->
			@navbarInverseBackground:         #$.siteConfig('mbt-navbar-navbarInverseBackground')#;
			@navbarInverseBackgroundHighlight: #$.siteConfig('mbt-navbar-navbarInverseBackgroundHighlight')#;
			@navbarInverseBorder:                #$.siteConfig('mbt-navbar-navbarInverseBorder')#;

			@navbarInverseText:               #$.siteConfig('mbt-navbar-navbarInverseText')#;		@navbarInverseLinkColor:          #$.siteConfig('mbt-navbar-navbarInverseLinkColor')#;
			@navbarInverseLinkColorHover:     #$.siteConfig('mbt-navbar-navbarInverseLinkColorHover')#;
			@navbarInverseLinkColorActive:    #$.siteConfig('mbt-navbar-navbarInverseLinkColorActive')#;
			@navbarInverseLinkBackgroundHover: #$.siteConfig('mbt-navbar-navbarInverseLinkBackgroundHover')#;
			@navbarInverseLinkBackgroundActive: #$.siteConfig('mbt-navbar-navbarInverseLinkBackgroundActive')#;


			@navbarInverseSearchBackground:   #$.siteConfig('mbt-navbar-navbarInverseSearchBackgroundFocus')#;
			@navbarInverseSearchBackgroundFocus:#$.siteConfig('mbt-navbar-navbarInverseSearchBackgroundFocus')#;
			@navbarInverseSearchBorder:       #$.siteConfig('mbt-navbar-navbarInverseSearchBorder')#;
			@navbarInverseSearchPlaceholderColor: #$.siteConfig('mbt-navbar-navbarInverseSearchPlaceholderColor')#;

			@navbarInverseBrandColor: 		  #$.siteConfig('mbt-navbar-navbarInverseBrandColor')#;



			<!--- Pagination
			--------------------------------------------------------------------------------------------------------------------->
			@paginationBackground:              #$.siteConfig('mbt-pagination-paginationBackground')#;
			@paginationBorder:            		#$.siteConfig('mbt-pagination-paginationBorder')#;
			@paginationActiveBackground:        #$.siteConfig('mbt-pagination-paginationActiveBackground')#;


			<!--- Hero unit
			--------------------------------------------------------------------------------------------------------------------->
			@heroUnitBackground:              #$.siteConfig('mbt-hero-heroUnitBackground')#;
			@heroUnitHeadingColor:            #$.siteConfig('mbt-hero-heroUnitLeadColor')#;
			@heroUnitLeadColor:               #$.siteConfig('mbt-hero-heroUnitLeadColor')#;


			<!--- Form states and alerts
			--------------------------------------------------------------------------------------------------------------------->
			@warningText:             #$.siteConfig('mbt-form-warningText')#;
			@warningBackground:       #$.siteConfig('mbt-form-warningBackground')#;
			@warningBorder:           #$.siteConfig('mbt-form-warningBorder')#;

			@errorText:               #$.siteConfig('mbt-form-errorText')#;
			@errorBackground:         #$.siteConfig('mbt-form-errorBackground')#;
			@errorBorder:             #$.siteConfig('mbt-form-errorBorder')#;

			@successText:             #$.siteConfig('mbt-form-successText')#;
			@successBackground:       #$.siteConfig('mbt-form-successBackground')#;
			@successBorder:           #$.siteConfig('mbt-form-successBorder')#;

			@infoText:                #$.siteConfig('mbt-form-infoText')#;
			@infoBackground:          #$.siteConfig('mbt-form-infoBackground')#;
			@infoBorder:              #$.siteConfig('mbt-form-infoBorder')#;


			<!--- Form states and alerts
			--------------------------------------------------------------------------------------------------------------------->
			@tooltipColor:            #$.siteConfig('mbt-tp-tooltipColor')#;
			@tooltipBackground:       #$.siteConfig('mbt-tp-tooltipBackground')#;
			@tooltipArrowWidth:       #$.siteConfig('mbt-tp-tooltipArrowWidth')#;
			@tooltipArrowColor:       #$.siteConfig('mbt-tp-tooltipArrowColor')#;

			@popoverBackground:       #$.siteConfig('mbt-tp-popoverBackground')#;
			@popoverArrowWidth:       #$.siteConfig('mbt-tp-popoverArrowWidth')#;
			@popoverArrowColor:       #$.siteConfig('mbt-tp-popoverArrowColor')#;
			@popoverTitleBackground:  #$.siteConfig('mbt-tp-popoverTitleBackground')#;

			@popoverArrowOuterWidth:  #$.siteConfig('mbt-tp-popoverArrowOuterWidth')#;
			@popoverArrowOuterColor:  #$.siteConfig('mbt-tp-popoverArrowOuterColor')#;




			<!--- GRID
			--------------------------------------------------------------------------------------------------------------------->


			<!--- Default 940px grid
			--------------------------------------------------------------------------------------------------------------------->
			@gridColumns:             #$.siteConfig('mbt-grid-gridColumns')#;
			@gridColumnWidth:         #$.siteConfig('mbt-grid-gridColumnWidth')#;
			@gridGutterWidth:         #$.siteConfig('mbt-grid-gridGutterWidth')#;
			@gridRowWidth:            (@gridColumns * @gridColumnWidth) + (@gridGutterWidth * (@gridColumns - 1));


			// 1200px min
			@gridColumnWidth1200:     #$.siteConfig('mbt-grid-gridColumnWidth1200')#;
			@gridGutterWidth1200:     #$.siteConfig('mbt-grid-gridGutterWidth1200')#;
			@gridRowWidth1200:        (@gridColumns * @gridColumnWidth1200) + (@gridGutterWidth1200 * (@gridColumns - 1));

			// 768px-979px
			@gridColumnWidth768:      #$.siteConfig('mbt-grid-gridColumnWidth768')#;
			@gridGutterWidth768:      #$.siteConfig('mbt-grid-gridGutterWidth768')#;
			@gridRowWidth768:         (@gridColumns * @gridColumnWidth768) + (@gridGutterWidth768 * (@gridColumns - 1));


			// Fluid grid
			// -------------------------
			@fluidGridColumnWidth:    percentage(@gridColumnWidth/@gridRowWidth);
			@fluidGridGutterWidth:    percentage(@gridGutterWidth/@gridRowWidth);

			// 1200px min
			@fluidGridColumnWidth1200:     percentage(@gridColumnWidth1200/@gridRowWidth1200);
			@fluidGridGutterWidth1200:     percentage(@gridGutterWidth1200/@gridRowWidth1200);

			// 768px-979px
			@fluidGridColumnWidth768:      percentage(@gridColumnWidth768/@gridRowWidth768);
			@fluidGridGutterWidth768:      percentage(@gridGutterWidth768/@gridRowWidth768);

		</cfcase>




		<cfdefaultcase>

			<!--- Grays
			--------------------------------------------------------------------------------------------------------------------->
			@black:                 #$.siteConfig('mbt-grays-black')#;
			@grayDarker:            #$.siteConfig('mbt-grays-grayDarker')#;
			@grayDark:              #$.siteConfig('mbt-grays-grayDark')#;
			@gray:                  #$.siteConfig('mbt-grays-gray')#;
			@grayLight:             #$.siteConfig('mbt-grays-grayLight')#;
			@grayLighter:           #$.siteConfig('mbt-grays-grayLighter')#;
			@white:           		#$.siteConfig('mbt-grays-white')#;


			<!--- Accent colors
			--------------------------------------------------------------------------------------------------------------------->
			@blue:                  #$.siteConfig('mbt-accents-blue')#;
			@blueDark:              #$.siteConfig('mbt-accents-blueDark')#;
			@green:                 #$.siteConfig('mbt-accents-green')#;
			@red:                   #$.siteConfig('mbt-accents-red')#;
			@yellow:                #$.siteConfig('mbt-accents-yellow')#;
			@orange:                #$.siteConfig('mbt-accents-orange')#;
			@pink:                  #$.siteConfig('mbt-accents-pink')#;
			@purple:                #$.siteConfig('mbt-accents-purple')#;


			<!--- Scaffolding
			--------------------------------------------------------------------------------------------------------------------->
			@bodyBackground:        #$.siteConfig('mbt-scaffolding-bodyBackground')#;
			@textColor:             #$.siteConfig('mbt-scaffolding-textColor')#;


			<!--- Links
			--------------------------------------------------------------------------------------------------------------------->
			@linkColor:             #$.siteConfig('mbt-links-linkColor')#;
			@linkColorHover:        #$.siteConfig('mbt-links-linkColorHover')#;


			<!--- Typography
			--------------------------------------------------------------------------------------------------------------------->
			@sansFontFamily:        #$.siteConfig('mbt-typography-sansFontFamily')#;
			@serifFontFamily:       #$.siteConfig('mbt-typography-serifFontFamily')#;
			@monoFontFamily:        #$.siteConfig('mbt-typography-monoFontFamily')#;

			@baseFontSize:          #$.siteConfig('mbt-typography-baseFontSize')#;
			@baseFontFamily:        #$.siteConfig('mbt-typography-baseFontFamily')#;
			@baseLineHeight:        #$.siteConfig('mbt-typography-baseLineHeight')#;
			@altFontFamily:         #$.siteConfig('mbt-typography-altFontFamily')#;

			@headingsFontFamily:    #$.siteConfig('mbt-typography-headingsFontFamily')#;<!--- empty to use BS default, @baseFontFamily --->
			@headingsFontWeight:    #$.siteConfig('mbt-typography-headingsFontWeight')#;<!--- instead of browser default, bold --->
			@headingsColor:         #$.siteConfig('mbt-typography-headingsColor')#;<!--- empty to use BS default, @textColor --->


			<!--- Tables
			--------------------------------------------------------------------------------------------------------------------->
			@tableBackground:                   #$.siteConfig('mbt-tables-tableBackground')#;<!--- overall background-color --->
			@tableBackgroundAccent:             #$.siteConfig('mbt-tables-tableBackgroundAccent')#;<!--- for striping --->
			@tableBackgroundHover:              #$.siteConfig('mbt-tables-tableBackgroundHover')#;<!--- for hover --->
			@tableBorder:                       #$.siteConfig('mbt-tables-tableBorder')#;<!--- table and cell border --->


			<!--- Buttons
			--------------------------------------------------------------------------------------------------------------------->
			@btnBackground:                     #$.siteConfig('mbt-buttons-btnBackground')#;
			@btnBackgroundHighlight:            #$.siteConfig('mbt-buttons-btnBackgroundHighlight')#;
			@btnBorder:                         #$.siteConfig('mbt-buttons-btnBorder')#;

			@btnPrimaryBackground:              #$.siteConfig('mbt-buttons-btnPrimaryBackground')#;
			@btnPrimaryBackgroundHighlight:     #$.siteConfig('mbt-buttons-btnPrimaryBackgroundHighlight')#;

			@btnInfoBackground:                 #$.siteConfig('mbt-buttons-btnInfoBackground')#;
			@btnInfoBackgroundHighlight:        #$.siteConfig('mbt-buttons-btnInfoBackgroundHighlight')#;

			@btnSuccessBackground:              #$.siteConfig('mbt-buttons-btnSuccessBackground')#;
			@btnSuccessBackgroundHighlight:     #$.siteConfig('mbt-buttons-btnSuccessBackgroundHighlight')#;

			@btnWarningBackground:              #$.siteConfig('mbt-buttons-btnWarningBackground')#;
			@btnWarningBackgroundHighlight:     #$.siteConfig('mbt-buttons-btnWarningBackgroundHighlight')#;

			@btnDangerBackground:               #$.siteConfig('mbt-buttons-btnDangerBackground')#;
			@btnDangerBackgroundHighlight:      #$.siteConfig('mbt-buttons-btnDangerBackgroundHighlight')#;

			@btnInverseBackground:              #$.siteConfig('mbt-buttons-btnInverseBackground')#;
			@btnInverseBackgroundHighlight:     #$.siteConfig('mbt-buttons-btnInverseBackgroundHighlight')#;


			<!--- Forms
			--------------------------------------------------------------------------------------------------------------------->
			@inputBackground:               #$.siteConfig('mbt-forms-inputBackground')#;
			@inputBorder:                   #$.siteConfig('mbt-forms-inputBorder')#;
			@inputBorderRadius:       		#$.siteConfig('mbt-forms-inputBorderRadius')#;
			@inputDisabledBackground:       #$.siteConfig('mbt-forms-inputDisabledBackground')#;
			@formActionsBackground:         #$.siteConfig('mbt-forms-formActionsBackground')#;


			<!--- Dropdowns
			--------------------------------------------------------------------------------------------------------------------->
			@dropdownBackground:            #$.siteConfig('mbt-dropdowns-dropdownBackground')#;
			@dropdownBorder:                #$.siteConfig('mbt-dropdowns-dropdownBorder')#;
			@dropdownLinkColor:             #$.siteConfig('mbt-dropdowns-dropdownLinkColor')#;
			@dropdownLinkColorHover:        #$.siteConfig('mbt-dropdowns-dropdownLinkColorHover')#;
			@dropdownLinkBackgroundHover:   #$.siteConfig('mbt-dropdowns-dropdownLinkBackgroundHover')#;
			@dropdownLinkBackgroundHover:   #$.siteConfig('mbt-dropdowns-dropdownDividerTop')#;
			@dropdownDividerBottom:  		#$.siteConfig('mbt-dropdowns-dropdownDividerBottom')#;




			<!--- COMPONENT VARIABLES
			--------------------------------------------------------------------------------------------------------------------->


			<!--- Z-index master list
			--------------------------------------------------------------------------------------------------------------------->
			<!--- Used for a bird's eye view of components dependent on the z-axis --->
			<!--- Try to avoid customizing these :) --->
			@zindexDropdown:          1000;
			@zindexPopover:           1010;
			@zindexTooltip:           1020;
			@zindexFixedNavbar:       1030;
			@zindexModalBackdrop:     1040;
			@zindexModal:             1050;


			<!--- Sprite icons path
			--------------------------------------------------------------------------------------------------------------------->
			@iconSpritePath:          "#$.siteConfig('mbt-sprites-iconSpritePath')#";
			@iconWhiteSpritePath:     "#$.siteConfig('mbt-sprites-iconSpritePath')#";


			<!--- Input placeholder text color
			--------------------------------------------------------------------------------------------------------------------->
			@placeholderText:         #$.siteConfig('mbt-input-placeholderText')#;


			<!--- Hr border color
			--------------------------------------------------------------------------------------------------------------------->
			@hrBorder:                #$.siteConfig('mbt-hr-hrBorder')#;


			<!--- Navbar
			--------------------------------------------------------------------------------------------------------------------->
			@navbarHeight:                    #$.siteConfig('mbt-navbar-navbarHeight')#;
			@navbarBackground:                #$.siteConfig('mbt-navbar-navbarBackground')#;
			@navbarBackgroundHighlight:       #$.siteConfig('mbt-navbar-navbarBackgroundHighlight')#;

			@navbarText:                      #$.siteConfig('mbt-navbar-navbarText')#;
			@navbarLinkColor:                 #$.siteConfig('mbt-navbar-navbarLinkColor')#;
			@navbarLinkColorHover:            #$.siteConfig('mbt-navbar-navbarLinkColorHover')#;
			@navbarLinkColorActive:           #$.siteConfig('mbt-navbar-navbarLinkColorActive')#;
			@navbarLinkBackgroundHover:       #$.siteConfig('mbt-navbar-navbarLinkBackgroundHover')#;
			@navbarLinkBackgroundActive:      #$.siteConfig('mbt-navbar-navbarLinkBackgroundActive')#;

			@navbarSearchBackground:          #$.siteConfig('mbt-navbar-navbarSearchBackgroundFocus')#;
			@navbarSearchBackgroundFocus:     #$.siteConfig('mbt-navbar-navbarSearchBackgroundFocus')#;
			@navbarSearchBorder:              #$.siteConfig('mbt-navbar-navbarSearchBorder')#;
			@navbarSearchPlaceholderColor:    #$.siteConfig('mbt-navbar-navbarSearchPlaceholderColor')#;
			@navbarBrandColor:                #$.siteConfig('mbt-navbar-navbarBrandColor')#;


			<!--- Hero unit
			--------------------------------------------------------------------------------------------------------------------->
			@heroUnitBackground:              #$.siteConfig('mbt-hero-heroUnitBackground')#;
			@heroUnitHeadingColor:            #$.siteConfig('mbt-hero-heroUnitLeadColor')#;
			@heroUnitLeadColor:               #$.siteConfig('mbt-hero-heroUnitLeadColor')#;


			<!--- Form states and alerts
			--------------------------------------------------------------------------------------------------------------------->
			@warningText:             #$.siteConfig('mbt-form-warningText')#;
			@warningBackground:       #$.siteConfig('mbt-form-warningBackground')#;
			@warningBorder:           #$.siteConfig('mbt-form-warningBorder')#;

			@errorText:               #$.siteConfig('mbt-form-errorText')#;
			@errorBackground:         #$.siteConfig('mbt-form-errorBackground')#;
			@errorBorder:             #$.siteConfig('mbt-form-errorBorder')#;

			@successText:             #$.siteConfig('mbt-form-successText')#;
			@successBackground:       #$.siteConfig('mbt-form-successBackground')#;
			@successBorder:           #$.siteConfig('mbt-form-successBorder')#;

			@infoText:                #$.siteConfig('mbt-form-infoText')#;
			@infoBackground:          #$.siteConfig('mbt-form-infoBackground')#;
			@infoBorder:              #$.siteConfig('mbt-form-infoBorder')#;




			<!--- GRID
			--------------------------------------------------------------------------------------------------------------------->


			<!--- Default 940px grid
			--------------------------------------------------------------------------------------------------------------------->
			@gridColumns:             #$.siteConfig('mbt-grid-gridColumns')#;
			@gridColumnWidth:         #$.siteConfig('mbt-grid-gridColumnWidth')#;
			@gridGutterWidth:         #$.siteConfig('mbt-grid-gridGutterWidth')#;
			@gridRowWidth:            (@gridColumns * @gridColumnWidth) + (@gridGutterWidth * (@gridColumns - 1));


			// 1200px min
			@gridColumnWidth1200:     70px;
			@gridGutterWidth1200:     30px;
			@gridRowWidth1200:        (@gridColumns * @gridColumnWidth1200) + (@gridGutterWidth1200 * (@gridColumns - 1));

			// 768px-979px
			@gridColumnWidth768:      42px;
			@gridGutterWidth768:      20px;
			@gridRowWidth768:         (@gridColumns * @gridColumnWidth768) + (@gridGutterWidth768 * (@gridColumns - 1));


			// Fluid grid
			// -------------------------
			@fluidGridColumnWidth:    percentage(@gridColumnWidth/@gridRowWidth);
			@fluidGridGutterWidth:    percentage(@gridGutterWidth/@gridRowWidth);

			// 1200px min
			@fluidGridColumnWidth1200:     percentage(@gridColumnWidth1200/@gridRowWidth1200);
			@fluidGridGutterWidth1200:     percentage(@gridGutterWidth1200/@gridRowWidth1200);

			// 768px-979px
			@fluidGridColumnWidth768:      percentage(@gridColumnWidth768/@gridRowWidth768);
			@fluidGridGutterWidth768:      percentage(@gridGutterWidth768/@gridRowWidth768);

		</cfdefaultcase>

	</cfswitch>

</cfoutput>