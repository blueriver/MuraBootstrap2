<!--
	This will add Theme Specific Extended Attributes
-->
<theme>

	<extensions>

		<extension type="Gallery">

			<!--- Bootstrap Gallery Options --->
			<attributeset name="Bootstrap Gallery Options">

				<attribute
					name="mbt-gallery-span"
					label="How many columns per row would you like in your gallery?"
					type="SelectBox"
					hint="Each column is equal to a Bootstrap Span, and will default with the smallest image size. Therefore, make the size of the image being set in site settings for the small size image is equal do the width of the column number (span width) you've chosen. Refer to the bootstrap scaffolding documentation page for exact pixel width for each span"
					defaultValue="span3"
					required="true"
					optionList="span1^span2^span3^span4^span5^span6^span7^span8^span9^span10^span11^span12"
					optionLabelList="1^2^3^4^5^6^7^8^9^10^11^12" />

				<attribute
					name="mbt-gallery-showTitle"
					label="Show the title of each image?"
					type="SelectBox"
					hint="This will show or hide a title for each photo in the gallery"
					defaultValue="true"
					required="true"
					optionList="true^false"
					optionLabelList="Show^Hide" />

				<attribute
					name="mbt-gallery-showSummary"
					label="Show summary if there is one?"
					type="SelectBox"
					hint="This will show or hide a summary for each photo in the gallery if there is one for the image"
					defaultValue="false"
					required="true"
					optionList="true^false"
					optionLabelList="Show^Hide" />

				<!--- <attribute
					name="mbt-gallery-imgStyle"
					label="Which image style?"
					type="SelectBox"
					hint="This gives you an option of how your images will appear. Default is Polaroid. Circle and Round will not work in IE6-8 (unless you use PIE)"
					defaultValue="img-polaroid"
					required="true"
					optionList="img-polaroid^img-circle^img-rounded"
					optionLabelList="Polaroid^Circle^Round" /> --->

			</attributeset>
			<!--- End Bootstrap Gallery Options --->

		</extension>


		<extension type="Site">
			<!--- Bootswatch Options --->
			<attributeset name="Bootstrap or Bootswatch Options">

				<attribute
					name="mbt-bootswatch"
					label="Which Swatch would you like to use, if any?"
					type="SelectBox"
					hint="Provides you with a bootswatch option. Defaults to None, which will use the settings from below"
					defaultValue="None"
					required="true"
					optionList="None^Amelia^Cerulean^Cyborg^Journal^Readable^Simplex^Slate^Spacelab^Spruce^Superhero^United"
					optionLabelList="None^Amelia^Cerulean^Cyborg^Journal^Readable^Simplex^Slate^Spacelab^Spruce^Superhero^United" />

			</attributeset>
			<!--- End Bootswatch Options --->


			<!--- Gray Options --->
			<attributeset name="Bootstrap Gray Options">

				<attribute
					name="mbt-grays-black"
					label="@black"
					hint="Defaults to #000"
					defaultValue="#000"
					required="true" />

				<attribute
					name="mbt-grays-grayDarker"
					label="@grayDarker"
					hint="Defaults to #222"
					defaultValue="#222"
					required="true" />

				<attribute
					name="mbt-grays-grayDark"
					label="@grayDark"
					hint="Defaults to #333"
					defaultValue="#333"
					required="true" />

				<attribute
					name="mbt-grays-gray"
					label="@gray"
					hint="Defaults to #555"
					defaultValue="#555"
					required="true" />

				<attribute
					name="mbt-grays-grayLight"
					label="@grayLight"
					hint="Defaults to #999"
					defaultValue="#999"
					required="true"/>

				<attribute
					name="mbt-grays-grayLighter"
					label="@grayLighter"
					hint="Defaults to #eee"
					defaultValue="#eee"
					required="true" />

				<attribute
					name="mbt-grays-white"
					label="@white"
					hint="Defaults to #fff"
					defaultValue="#fff"
					required="true"  />

			</attributeset>
			<!--- End Grays Options --->


			<!--- Accent Colors Options --->
			<attributeset name="Bootstrap Accent Color Options">

				<attribute
					name="mbt-accents-blue"
					label="@blue"
					hint="Defaults to #049cdb"
					defaultValue="#049cdb"
					required="true" />

				<attribute
					name="mbt-accents-blueDark"
					label="@blueDark"
					hint="Defaults to #0064cd"
					defaultValue="#0064cd"
					required="true"  />

				<attribute
					name="mbt-accents-green"
					label="@green"
					hint="Defaults to #46a546"
					defaultValue="#46a546"
					required="true"  />

				<attribute
					name="mbt-accents-red"
					label="@red"
					hint="Defaults to #9d261d"
					defaultValue="#9d261d"
					required="true" />


				<attribute
					name="mbt-accents-yellow"
					label="@yellow"
					hint="Defaults to #ffc40d"
					defaultValue="#ffc40d"
					required="true"  />

				<attribute
					name="mbt-accents-orange"
					label="@orange"
					hint="Defaults to #f89406"
					defaultValue="#f89406"
					required="true"  />

				<attribute
					name="mbt-accents-pink"
					label="@pink"
					hint="Defaults to #c3325f"
					defaultValue="#c3325f"
					required="true"  />

				<attribute
					name="mbt-accents-purple"
					label="@purple"
					hint="Defaults to #7a43b6"
					defaultValue="#7a43b6"
					required="true"  />

			</attributeset>
			<!--- End Accent Colors Options--->


			<!--- Scaffolding Options --->
			<attributeset name="Bootstrap Scaffolding Options">

				<attribute
					name="mbt-scaffolding-bodyBackground"
					label="@bodyBackground"
					hint="Defaults to @white"
					defaultValue="@white"
					required="true" />

				<attribute
					name="mbt-scaffolding-textColor"
					label="@textColor"
					hint="Defaults to @grayDark"
					defaultValue="@grayDark"
					required="true" />

			</attributeset>
			<!--- End Scaffolding Options --->


			<!--- Links Options --->
			<attributeset name="Bootstrap Links Options">

				<attribute
					name="mbt-links-linkColor"
					label="@linkColor"
					hint="Defaults to #08c"
					defaultValue="#08c"
					required="true" />

				<attribute
					name="mbt-links-linkColorHover"
					label="@linkColorHover"
					hint="Defaults to darken(@linkColor, 15%)"
					defaultValue="darken(@linkColor, 15%)"
					required="true" />

			</attributeset>
			<!--- End Links Options --->


			<!--- Typography Options --->
			<attributeset name="Bootstrap Typography Options">

				<attribute
					name="mbt-typography-sansFontFamily"
					label="@sansFontFamily"
					hint="Defaults to 'Helvetica Neue', Helvetica, Arial, sans-serif"
					defaultValue="'Helvetica Neue', Helvetica, Arial, sans-serif"
					required="true" />

				<attribute
					name="mbt-typography-serifFontFamily"
					label="@serifFontFamily"
					hint="Defaults to Georgia, 'Times New Roman', Times, serif"
					defaultValue="Georgia, 'Times New Roman', Times, serif"
					required="true" />

				<attribute
					name="mbt-typography-monoFontFamily"
					label="@monoFontFamily"
					hint="Defaults to Menlo, Monaco, Consolas, 'Courier New', monospace"
					defaultValue="Menlo, Monaco, Consolas, 'Courier New', monospace"
					required="true" />

				<attribute
					name="mbt-typography-baseFontSize"
					label="@baseFontSize"
					hint="Defaults to 14px"
					defaultValue="14px"
					required="true" />

				<attribute
					name="mbt-typography-baseFontFamily"
					label="@baseFontFamily"
					hint="Defaults to @sansFontFamily"
					defaultValue="@sansFontFamily"
					required="true" />

				<attribute
					name="mbt-typography-baseLineHeight"
					label="@baseLineHeight"
					hint="Defaults to 20px"
					defaultValue="20px"
					required="true" />

				<attribute
					name="mbt-typography-altFontFamily"
					label="@altFontFamily"
					hint="Defaults to @serifFontFamily"
					defaultValue="@serifFontFamily"
					required="true" />

				<attribute
					name="mbt-typography-headingsFontFamily"
					label="@headingsFontFamily"
					hint="Defaults to inherit"
					defaultValue="inherit"
					required="true" />

				<attribute
					name="mbt-typography-headingsFontWeight"
					label="@headingsFontWeight"
					hint="Defaults to bold"
					defaultValue="bold"
					required="true" />

				<attribute
					name="mbt-typography-headingsColor"
					label="@headingsColor"
					hint="Defaults to inherit"
					defaultValue="inherit"
					required="true" />

			</attributeset>
			<!--- End Typography Options --->


			<!--- Tables Options --->
			<attributeset name="Bootstrap Tables Options">

				<attribute
					name="mbt-tables-tableBackground"
					label="@tableBackground"
					hint="Defaults to transparent"
					defaultValue="transparent"
					required="true" />

				<attribute
					name="mbt-tables-tableBackgroundAccent"
					label="@tableBackgroundAccent"
					hint="Defaults to #f9f9f9"
					defaultValue="#f9f9f9"
					required="true" />

				<attribute
					name="mbt-tables-tableBackgroundHover"
					label="@tableBackgroundHover"
					hint="Defaults to #f5f5f5"
					defaultValue="#f5f5f5"
					required="true" />

				<attribute
					name="mbt-tables-tableBorder"
					label="@tableBorder"
					hint="Defaults to #ddd"
					defaultValue="#ddd"
					required="true" />

			</attributeset>
			<!--- End Tables Options --->


			<!--- Buttons Options --->
			<attributeset name="Bootstrap Buttons Options">

				<attribute
					name="mbt-buttons-btnBackground"
					label="@btnBackground"
					hint="Defaults to @white"
					defaultValue="@white"
					required="true" />

				<attribute
					name="mbt-buttons-btnBackgroundHighlight"
					label="@btnBackgroundHighlight"
					hint="Defaults to darken(@white, 10%)"
					defaultValue="darken(@white, 10%)"
					required="true" />

				<attribute
					name="mbt-buttons-btnBorder"
					label="@btnBorder"
					hint="Defaults to #bbb"
					defaultValue="#bbb"
					required="true" />

				<attribute
					name="mbt-buttons-btnPrimaryBackground"
					label="@btnPrimaryBackground"
					hint="Defaults to @linkColor"
					defaultValue="@linkColor"
					required="true" />

				<attribute
					name="mbt-buttons-btnPrimaryBackgroundHighlight"
					label="@btnPrimaryBackgroundHighlight"
					hint="Defaults to spin(@btnPrimaryBackground, 15%)"
					defaultValue="spin(@btnPrimaryBackground, 15%)"
					required="true" />

				<attribute
					name="mbt-buttons-btnInfoBackground"
					label="@btnInfoBackground"
					hint="Defaults to #5bc0de"
					defaultValue="#5bc0de"
					required="true" />

				<attribute
					name="mbt-buttons-btnInfoBackgroundHighlight"
					label="@btnInfoBackgroundHighlight"
					hint="Defaults to #2f96b4"
					defaultValue="#2f96b4"
					required="true" />

				<attribute
					name="mbt-buttons-btnSuccessBackground"
					label="@btnSuccessBackground"
					hint="Defaults to #62c462"
					defaultValue="#62c462"
					required="true" />

				<attribute
					name="mbt-buttons-btnSuccessBackgroundHighlight"
					label="@btnSuccessBackgroundHighlight"
					hint="Defaults to #51a351"
					defaultValue="#51a351"
					required="true" />

				<attribute
					name="mbt-buttons-btnWarningBackground"
					label="@btnWarningBackground"
					hint="Defaults to lighten(@orange, 15%)"
					defaultValue="lighten(@orange, 15%)"
					required="true" />

				<attribute
					name="mbt-buttons-btnWarningBackgroundHighlight"
					label="@btnWarningBackgroundHighlight"
					hint="Defaults to @orange"
					defaultValue="@orange"
					required="true" />

				<attribute
					name="mbt-buttons-btnDangerBackground"
					label="@btnDangerBackground"
					hint="Defaults to #ee5f5b"
					defaultValue="#ee5f5b"
					required="true" />

				<attribute
					name="mbt-buttons-btnDangerBackgroundHighlight"
					label="@btnDangerBackgroundHighlight"
					hint="Defaults to #bd362f"
					defaultValue="#bd362f"
					required="true" />

				<attribute
					name="mbt-buttons-btnInverseBackground"
					label="@btnInverseBackground"
					hint="Defaults to #444"
					defaultValue="#444"
					required="true" />

				<attribute
					name="mbt-buttons-btnInverseBackgroundHighlight"
					label="@btnInverseBackgroundHighlight"
					hint="Defaults to @grayDarker"
					defaultValue="@grayDarker"
					required="true" />

			</attributeset>
			<!--- End Buttons Options --->


			<!--- Forms Options --->
			<attributeset name="Bootstrap Forms Options">

				<attribute
					name="mbt-forms-inputBackground"
					label="@inputBackground"
					hint="Defaults to @white"
					defaultValue="@white"
					required="true" />

				<attribute
					name="mbt-forms-inputBorder"
					label="@inputBorder"
					hint="Defaults to #ccc"
					defaultValue="#ccc"
					required="true" />

				<attribute
					name="mbt-forms-inputBorderRadius"
					label="@inputBorderRadius"
					hint="Defaults to 3px"
					defaultValue="3px"
					required="true" />

				<attribute
					name="mbt-forms-inputDisabledBackground"
					label="@inputDisabledBackground"
					hint="Defaults to @grayLighter"
					defaultValue="@grayLighter"
					required="true" />

				<attribute
					name="mbt-forms-formActionsBackground"
					label="@formActionsBackground"
					hint="Defaults to #f5f5f5"
					defaultValue="#f5f5f5"
					required="true" />

			</attributeset>
			<!--- End Forms Options --->


			<!--- Dropdowns Options --->
			<attributeset name="Bootstrap Dropdowns Options">

				<attribute
					name="mbt-dropdowns-dropdownBackground"
					label="@dropdownBackground"
					hint="Defaults to @white"
					defaultValue="@white"
					required="true" />

				<attribute
					name="mbt-dropdowns-dropdownBorder"
					label="@dropdownBorder"
					hint="Defaults to rgba(0,0,0,.2)"
					defaultValue="rgba(0,0,0,.2)"
					required="true" />

				<attribute
					name="mbt-dropdowns-dropdownDividerTop"
					label="@dropdownDividerTop"
					hint="Defaults to #e5e5e5"
					defaultValue="#e5e5e5"
					required="true" />

				<attribute
					name="mbt-dropdowns-dropdownDividerBottom"
					label="@dropdownDividerBottom"
					hint="Defaults to @white"
					defaultValue="@white"
					required="true" />

				<attribute
					name="mbt-dropdowns-dropdownLinkColor"
					label="@dropdownLinkColor"
					hint="Defaults to @grayDark"
					defaultValue="@grayDark"
					required="true" />

				<attribute
					name="mbt-dropdowns-dropdownLinkColorHover"
					label="@dropdownLinkColorHover"
					hint="Defaults to @white"
					defaultValue="@white"
					required="true" />

				<attribute
					name="mbt-dropdowns-dropdownLinkColorActive"
					label="@dropdownLinkColorActive"
					hint="Defaults to @dropdownLinkColor"
					defaultValue="@dropdownLinkColor"
					required="true" />

				<attribute
					name="mbt-dropdowns-dropdownLinkBackgroundActive"
					label="@dropdownLinkBackgroundActive"
					hint="Defaults to @linkColor"
					defaultValue="@linkColor"
					required="true" />

				<attribute
					name="mbt-dropdowns-dropdownLinkBackgroundHover"
					label="@dropdownLinkBackgroundHover"
					hint="Defaults to @dropdownLinkBackgroundActive"
					defaultValue="@dropdownLinkBackgroundActive"
					required="true" />

			</attributeset>
			<!--- End Dropdowns Options --->




			<!--- COMPONENT VARIABLES --->


			<!--- Sprite Icons Path Options --->
			<attributeset name="Bootstrap Sprite Icons Path Options">

				<attribute
					name="mbt-sprites-iconSpritePath"
					label="@iconSpritePath"
					hint="Defaults to ../../bootstrap/img/glyphicons-halflings.png"
					defaultValue="../../bootstrap/img/glyphicons-halflings.png"
					required="true" />

				<attribute
					name="mbt-sprites-iconWhiteSpritePath"
					label="@iconWhiteSpritePath"
					hint="Defaults to ../../bootstrap/img/glyphicons-halflings-white.png"
					defaultValue="../../bootstrap/img/glyphicons-halflings-white.png"
					required="true" />

				<attribute
					name="mbt-sprites-font-awesome"
					label="Use Font Awesome Instead of Bootstrap Glyphs?"
					type="SelectBox"
					hint="This will bypass using Bootstraps icons, and instead will use Font Awesome. Defaults to No."
					defaultValue="false"
					required="true"
					optionList="false^true"
					optionLabelList="No^Yes" />

			</attributeset>
			<!--- End Sprite Icons Path Options --->


			<!--- Input Placeholder Text Options --->
			<attributeset name="Bootstrap Input Placeholder Text Options">

				<attribute
					name="mbt-input-placeholderText"
					label="@placeholderText"
					hint="Defaults to @grayLight"
					defaultValue="@grayLight"
					required="true" />

			</attributeset>
			<!--- End Input Placeholder Text Options --->



			<!--- HR Border Color Options --->
			<attributeset name="Bootstrap HR Border Color Text Options">

				<attribute
					name="mbt-hr-hrBorder"
					label="@hrBorder"
					hint="Defaults to @grayLighter"
					defaultValue="@grayLighter"
					required="true" />

			</attributeset>
			<!--- End HR Border Color Options --->


			<!--- Horizontal forms & lists Options --->
			<attributeset name="Horizontal forms and lists Options">

				<attribute
					name="mbt-hfl-horizontalComponentOffset"
					label="@horizontalComponentOffset"
					hint="Defaults to 180px"
					defaultValue="180px"
					required="true" />

			</attributeset>
			<!--- End Horizontal forms & lists Options --->


			<!--- Wells --->
			<attributeset name="Well Options">

				<attribute
					name="mbt-wells-wellBackground"
					label="@wellBackground"
					hint="Defaults to #f5f5f5"
					defaultValue="#f5f5f5"
					required="true" />

			</attributeset>
			<!--- End Horizontal forms & lists Options --->


			<!--- Navbar Options --->
			<attributeset name="Bootstrap Navbar Options">

				<attribute
					name="mbt-navbar-navbarCollapseWidth"
					label="@navbarCollapseWidth"
					hint="Defaults to 979px"
					defaultValue="979px"
					required="true" />


				<attribute
					name="mbt-navbar-navbarHeight"
					label="@navbarHeight"
					hint="Defaults to 40px"
					defaultValue="40px"
					required="true" />

				<attribute
					name="mbt-navbar-navbarBackgroundHighlight"
					label="@navbarBackgroundHighlight"
					hint="Defaults to #ffffff"
					defaultValue="#ffffff"
					required="true" />

				<attribute
					name="mbt-navbar-navbarBackground"
					label="@navbarBackground"
					hint="Defaults to darken(@navbarBackgroundHighlight, 5%)"
					defaultValue="darken(@navbarBackgroundHighlight, 5%)"
					required="true" />

				<attribute
					name="mbt-navbar-navbarBorder"
					label="@navbarBorder"
					hint="Defaults to darken(@navbarBackground, 12%);"
					defaultValue="darken(@navbarBackground, 12%)"
					required="true" />


				<attribute
					name="mbt-navbar-navbarText"
					label="@navbarText"
					hint="Defaults to #777"
					defaultValue="#777"
					required="true" />

				<attribute
					name="mbt-navbar-navbarLinkColor"
					label="@navbarLinkColor"
					hint="Defaults to #777"
					defaultValue="#777"
					required="true" />

				<attribute
					name="mbt-navbar-navbarLinkColorHover"
					label="@navbarLinkColorHover"
					hint="Defaults to @grayDark"
					defaultValue="@grayDark"
					required="true" />

				<attribute
					name="mbt-navbar-navbarLinkColorActive"
					label="@navbarLinkColorActive"
					hint="Defaults to @gray"
					defaultValue="@gray"
					required="true" />

				<attribute
					name="mbt-navbar-navbarLinkBackgroundHover"
					label="@navbarLinkBackgroundHover"
					hint="Defaults to transparent"
					defaultValue="transparent"
					required="true" />

				<attribute
					name="mbt-navbar-navbarLinkBackgroundActive"
					label="@navbarLinkBackgroundActive"
					hint="Defaults to darken(@navbarBackground, 5%)"
					defaultValue="darken(@navbarBackground, 5%)"
					required="true" />


				<attribute
					name="mbt-navbar-navbarBrandColor"
					label="@navbarBrandColor"
					hint="Defaults to @navbarLinkColor"
					defaultValue="@navbarLinkColor"
					required="true" />


				<!--- Inverted navbar --->

				<attribute
					name="mbt-navbar-navbarInverseBackground"
					label="@navbarInverseBackground"
					hint="Defaults to #111111"
					defaultValue="#111111"
					required="true" />

				<attribute
					name="mbt-navbar-navbarInverseBackgroundHighlight"
					label="@navbarInverseBackgroundHighlight"
					hint="Defaults to #222222"
					defaultValue="#222222"
					required="true" />

				<attribute
					name="mbt-navbar-navbarInverseBorder"
					label="@navbarInverseBorder"
					hint="Defaults to #252525"
					defaultValue="#252525"
					required="true" />


				<attribute
					name="mbt-navbar-navbarInverseText"
					label="@navbarInverseText"
					hint="Defaults to @grayLight"
					defaultValue="@grayLight"
					required="true" />

				<attribute
					name="mbt-navbar-navbarInverseLinkColor"
					label="@navbarInverseLinkColor"
					hint="Defaults to @grayLight"
					defaultValue="@grayLight"
					required="true" />

				<attribute
					name="mbt-navbar-navbarInverseLinkColorHover"
					label="@navbarInverseLinkColorHover"
					hint="Defaults to @white"
					defaultValue="@white"
					required="true" />

				<attribute
					name="mbt-navbar-navbarInverseLinkColorActive"
					label="@navbarInverseLinkColorActive"
					hint="Defaults to @navbarInverseLinkColorHover"
					defaultValue="@navbarInverseLinkColorHover"
					required="true" />

				<attribute
					name="mbt-navbar-navbarInverseLinkBackgroundHover"
					label="@navbarInverseLinkBackgroundHover"
					hint="Defaults to transparent"
					defaultValue="transparent"
					required="true" />

				<attribute
					name="mbt-navbar-navbarInverseLinkBackgroundActive"
					label="@navbarInverseLinkBackgroundActive"
					hint="Defaults to @navbarInverseBackground"
					defaultValue="@navbarInverseBackground"
					required="true" />


				<attribute
					name="mbt-navbar-navbarInverseSearchBackground"
					label="@navbarInverseSearchBackground"
					hint="Defaults to lighten(@navbarInverseBackground, 25%)"
					defaultValue="lighten(@navbarInverseBackground, 25%)"
					required="true" />

				<attribute
					name="mbt-navbar-navbarInverseSearchBackgroundFocus"
					label="@navbarInverseSearchBackgroundFocus"
					hint="Defaults to @white"
					defaultValue="@white"
					required="true" />

				<attribute
					name="mbt-navbar-navbarInverseSearchBorder"
					label="@navbarInverseSearchBorder"
					hint="Defaults to @navbarInverseBackground"
					defaultValue="@navbarInverseBackground"
					required="true" />

				<attribute
					name="mbt-navbar-navbarInverseSearchPlaceholderColor"
					label="@navbarInverseSearchPlaceholderColor"
					hint="Defaults to #ccc"
					defaultValue="#ccc"
					required="true" />


				<attribute

					name="mbt-navbar-navbarInverseBrandColor"
					label="@navbarInverseBrandColor"
					hint="Defaults to @navbarInverseLinkColor"
					defaultValue="@navbarInverseLinkColor"
					required="true" />

			</attributeset>
			<!--- End Navbar Options --->


			<!--- Pagination Options --->
			<attributeset name="Bootstrap Pagination Options">

				<attribute
					name="mbt-pagination-paginationBackground"
					label="@paginationBackground"
					hint="Defaults to #fff"
					defaultValue="#fff"
					required="true" />

				<attribute
					name="mbt-pagination-paginationBorder"
					label="@paginationBorder"
					hint="Defaults to #ddd"
					defaultValue="#ddd"
					required="true" />

				<attribute
					name="mbt-pagination-paginationActiveBackground"
					label="@paginationActiveBackground"
					hint="Defaults to #f5f5f5"
					defaultValue="#f5f5f5"
					required="true" />

			</attributeset>
			<!--- End Pagination Options --->


			<!--- Hero Unit Options --->
			<attributeset name="Bootstrap Hero Unit Options">

				<attribute
					name="mbt-hero-heroUnitBackground"
					label="@heroUnitBackground"
					hint="Defaults to @grayLighter"
					defaultValue="@grayLighter"
					required="true" />

				<attribute
					name="mbt-hero-heroUnitHeadingColor"
					label="@heroUnitHeadingColor"
					hint="Defaults to inherit"
					defaultValue="inherit"
					required="true" />

				<attribute
					name="mbt-hero-heroUnitLeadColor"
					label="@heroUnitLeadColor"
					hint="Defaults to inherit"
					defaultValue="inherit"
					required="true" />

			</attributeset>
			<!--- End Hero Unit Options --->


			<!--- Form States and Alerts Options --->
			<attributeset name="Bootstrap Form States and Alerts Options">

				<attribute
					name="mbt-form-warningText"
					label="@warningText"
					hint="Defaults to #c09853"
					defaultValue="#c09853"
					required="true" />

				<attribute
					name="mbt-form-warningBackground"
					label="@warningBackground"
					hint="Defaults to #fcf8e3"
					defaultValue="#fcf8e3"
					required="true" />

				<attribute
					name="mbt-form-warningBorder"
					label="@warningBorder"
					hint="Defaults to darken(spin(@warningBackground, -10), 3%)"
					defaultValue="darken(spin(@warningBackground, -10), 3%)"
					required="true" />


				<attribute
					name="mbt-form-errorText"
					label="@errorText"
					hint="Defaults to #b94a48"
					defaultValue="#b94a48"
					required="true" />

				<attribute
					name="mbt-form-errorBackground"
					label="@errorBackground"
					hint="Defaults to #f2dede"
					defaultValue="#f2dede"
					required="true" />

				<attribute
					name="mbt-form-errorBorder"
					label="@errorBorder"
					hint="Defaults to darken(spin(@errorBackground, -10), 3%)"
					defaultValue="darken(spin(@errorBackground, -10), 3%)"
					required="true" />


				<attribute
					name="mbt-form-successText"
					label="@successText"
					hint="Defaults to #468847"
					defaultValue="#468847"
					required="true" />

				<attribute
					name="mbt-form-successBackground"
					label="@successBackground"
					hint="Defaults to #dff0d8"
					defaultValue="#dff0d8"
					required="true" />

				<attribute
					name="mbt-form-successBorder"
					label="@successBorder"
					hint="Defaults to darken(spin(@warningBackground, -10), 5%)"
					defaultValue="darken(spin(@warningBackground, -10), 5%)"
					required="true" />

				<attribute
					name="mbt-form-infoText"
					label="@infoText"
					hint="Defaults to #3a87ad"
					defaultValue="#3a87ad"
					required="true" />

				<attribute
					name="mbt-form-infoBackground"
					label="@infoBackground"
					hint="Defaults to #d9edf7"
					defaultValue="#d9edf7"
					required="true" />

				<attribute
					name="mbt-form-infoBorder"
					label="@infoBorder"
					hint="Defaults to darken(spin(@infoBackground, -10), 7%)"
					defaultValue="darken(spin(@infoBackground, -10), 7%)"
					required="true" />

			</attributeset>
			<!--- End Form States and Alerts Options --->


			<!--- Tooltips and popovers --->
			<attributeset name="Bootstrap Tooltip and popover Options">

				<attribute
					name="mbt-tp-tooltipColor"
					label="@tooltipColor"
					hint="Defaults to #fff"
					defaultValue="#fff"
					required="true" />

				<attribute
					name="mbt-tp-tooltipBackground"
					label="@tooltipBackground"
					hint="Defaults to #000"
					defaultValue="#000"
					required="true" />

				<attribute
					name="mbt-tp-tooltipArrowWidth"
					label="@tooltipArrowWidth"
					hint="Defaults to 5px"
					defaultValue="5px"
					required="true" />

				<attribute
					name="mbt-tp-tooltipArrowColor"
					label="@tooltipArrowColor"
					hint="Defaults to @tooltipBackground"
					defaultValue="@tooltipBackground"
					required="true" />


				<attribute
					name="mbt-tp-popoverBackground"
					label="@popoverBackground"
					hint="Defaults to #fff"
					defaultValue="#fff"
					required="true" />

				<attribute
					name="mbt-tp-popoverArrowWidth"
					label="@popoverArrowWidth"
					hint="Defaults to 10px"
					defaultValue="10px"
					required="true" />

				<attribute
					name="mbt-tp-popoverArrowColor"
					label="@popoverArrowColor"
					hint="Defaults to #fff"
					defaultValue="#fff"
					required="true" />

				<attribute
					name="mbt-tp-popoverTitleBackground"
					label="@popoverTitleBackground"
					hint="Defaults to darken(@popoverBackground, 3%)"
					defaultValue="darken(@popoverBackground, 3%)"
					required="true" />


				<!--- Special enhancement for popovers --->
				<attribute
					name="mbt-tp-popoverArrowOuterWidth"
					label="@popoverArrowOuterWidth"
					hint="Defaults to @popoverArrowWidth + 1"
					defaultValue="@popoverArrowWidth + 1"
					required="true" />

				<attribute
					name="mbt-tp-popoverArrowOuterColor"
					label="@popoverArrowOuterColor"
					hint="Defaults to rgba(0,0,0,.25)"
					defaultValue="rgba(0,0,0,.25)"
					required="true" />


			</attributeset>
			<!--- End Tooltips and popovers --->



			<!--- COMPONENT VARIABLES --->

			<!--- GRID - Default 940px grid --->
			<attributeset name="Bootstrap Grid Options">

				<attribute
					name="mbt-grid-gridColumns"
					label="@gridColumns"
					hint="Defaults to 12"
					defaultValue="12"
					required="true" />

				<attribute
					name="mbt-grid-gridColumnWidth"
					label="@gridColumnWidth"
					hint="Defaults to 60px"
					defaultValue="60px"
					required="true" />

				<attribute
					name="mbt-grid-gridGutterWidth"
					label="@gridGutterWidth"
					hint="Defaults to 20px"
					defaultValue="20px"
					required="true" />

			</attributeset>
			<!--- End GRID - Default 940px grid --->


			<!--- GRID - Default 1200px grid --->
			<attributeset name="Bootstrap Grid Options">

				<attribute
					name="mbt-grid-gridColumnWidth1200"
					label="@gridColumnWidth1200"
					hint="Defaults to 70px"
					defaultValue="70px"
					required="true" />

				<attribute
					name="mbt-grid-gridGutterWidth1200"
					label="@gridGutterWidth1200"
					hint="Defaults to 30px"
					defaultValue="30px"
					required="true" />

			</attributeset>
			<!--- End GRID - Default 1200px grid --->


			<!--- GRID - Default 768px-979px grid --->
			<attributeset name="Bootstrap Grid Options">

				<attribute
					name="mbt-grid-gridColumnWidth768"
					label="@gridColumnWidth768"
					hint="Defaults to 42px"
					defaultValue="60px"
					required="true" />

				<attribute
					name="mbt-grid-gridGutterWidth768"
					label="@gridGutterWidth768"
					hint="Defaults to 20px"
					defaultValue="20px"
					required="true" />

			</attributeset>
			<!--- End GRID - Default 768px-979px grid --->

		</extension>
	</extensions>

</theme>