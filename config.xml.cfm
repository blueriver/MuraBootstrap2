<!--
	This will add Theme Specific Extended Attributes

	For additional
	1) Uncomment the extensions node below
	2) Reload Application
	3) That's it!
-->
<theme>

	<extensions>
		<extension type="Site">

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
					hint="Defaults to 13px"
					defaultValue="13px"
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
					hint="Defaults to 18px"
					defaultValue="18px"
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
					hint="Defaults to #ccc"
					defaultValue="#ccc"
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
					hint="Defaults to @gray"
					defaultValue="@gray"
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
					name="mbt-dropdowns-dropdownLinkBackgroundHover"
					label="@dropdownLinkBackgroundHover"
					hint="Defaults to @linkColor"
					defaultValue="@linkColor"
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


			<!--- Navbar Options --->
			<attributeset name="Bootstrap Navbar Options">

				<attribute
					name="mbt-navbar-navbarHeight"
					label="@navbarHeight"
					hint="Defaults to 40px"
					defaultValue="40px"
					required="true" />

				<attribute
					name="mbt-navbar-navbarBackground"
					label="@navbarBackground"
					hint="Defaults to @grayDarker"
					defaultValue="@grayDarker"
					required="true" />

				<attribute
					name="mbt-navbar-navbarBackgroundHighlight"
					label="@navbarBackgroundHighlight"
					hint="Defaults to @grayDark"
					defaultValue="@grayDark"
					required="true" />

				<attribute
					name="mbt-navbar-navbarText"
					label="@navbarText"
					hint="Defaults to @grayLight"
					defaultValue="@grayLight"
					required="true" />

				<attribute
					name="mbt-navbar-navbarLinkColor"
					label="@navbarLinkColor"
					hint="Defaults to @grayLight"
					defaultValue="@grayLight"
					required="true" />

				<attribute
					name="mbt-navbar-navbarLinkColorHover"
					label="@navbarLinkColorHover"
					hint="Defaults to @white"
					defaultValue="@white"
					required="true" />

				<attribute
					name="mbt-navbar-navbarLinkColorActive"
					label="@navbarLinkColorActive"
					hint="Defaults to @navbarLinkColorHover"
					defaultValue="@navbarLinkColorHover"
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
					hint="Defaults to @navbarBackground"
					defaultValue="@navbarBackground"
					required="true" />

				<attribute
					name="mbt-navbar-navbarSearchBackground"
					label="@navbarSearchBackground"
					hint="Defaults to lighten(@navbarBackground, 25%)"
					defaultValue="lighten(@navbarBackground, 25%)"
					required="true" />

				<attribute
					name="mbt-navbar-navbarSearchBackgroundFocus"
					label="@navbarSearchBackgroundFocus"
					hint="Defaults to @white"
					defaultValue="@white"
					required="true" />

				<attribute
					name="mbt-navbar-navbarSearchBorder"
					label="@navbarSearchBorder"
					hint="Defaults to darken(@navbarSearchBackground, 30%)"
					defaultValue="darken(@navbarSearchBackground, 30%)"
					required="true" />

				<attribute
					name="mbt-navbar-navbarSearchPlaceholderColor"
					label="@navbarSearchPlaceholderColor"
					hint="Defaults to #ccc"
					defaultValue="#ccc"
					required="true" />

				<attribute
					name="mbt-navbar-navbarBrandColor"
					label="@navbarBrandColor"
					hint="Defaults to @navbarLinkColor"
					defaultValue="@navbarLinkColor"
					required="true" />

			</attributeset>
			<!--- End Navbar Options --->


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
					hint="Defaults to darken(spin(@warningBackground, -10), 3%)"
					defaultValue="darken(spin(@warningBackground, -10), 3%)"
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
					hint="Defaults to darken(spin(@infoBackground, -10), 3%)"
					defaultValue="darken(spin(@infoBackground, -10), 3%)"
					required="true" />

			</attributeset>
			<!--- End Form States and Alerts Options --->




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

			<!--- GRID - Fluid --->
			<attributeset name="Bootstrap Grid Options">

				<attribute
					name="mbt-fluid-fluidGridColumnWidth"
					label="@fluidGridColumnWidth"
					hint="Defaults to 6.382978723%"
					defaultValue="6.382978723%"
					required="true" />

				<attribute
					name="mbt-fluid-fluidGridGutterWidth"
					label="@fluidGridGutterWidth"
					hint="Defaults to 2.127659574%"
					defaultValue="2.127659574%"
					required="true" />

			</attributeset>
			<!--- End GRID - Default 940px grid --->

		</extension>
	</extensions>

</theme>