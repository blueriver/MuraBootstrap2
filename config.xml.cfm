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
			<attributeset name="Bootstrap Options">

				<attribute
					name="mbt-grays-Black"
					label="@black"
					hint="Provides base Black color throughout site"
					defaultValue="#000"
					required="true"
					validation="color"
					message="Must be a valid color" />


			</attributeset>
		</extension>
	</extensions>

</theme>