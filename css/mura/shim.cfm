<cfoutput>

	// BOOTSTRAP and MURA IMPORTS
	// The imports below bring in a fresh copy of Bootstrap and the core Mura file
	// NOTE: Alternatively, a static version of Bootstrap can replace first two line
	// -----------------------------------------------------------------------------

	<cfif $.siteConfig('mbt-sprites-font-awesome') eq true>

		/*!
		 * Bootstrap v2.1.1
		 *
		 * Copyright 2012 Twitter, Inc
		 * Licensed under the Apache License v2.0
		 * http://www.apache.org/licenses/LICENSE-2.0
		 *
		 * Designed and built with all the love in the world @twitter by @mdo and @fat.
		 */

		// CSS Reset
		@import url("../../bootstrap/less/reset.less");

		// Core variables and mixins
		@import url("../../bootstrap/less/variables.less"); // Modify this for custom colors, font-sizes, etc
		@import url("../../bootstrap/less/mixins.less");

		// Grid system and page structure
		@import url("../../bootstrap/less/scaffolding.less");
		@import url("../../bootstrap/less/grid.less");
		@import url("../../bootstrap/less/layouts.less");

		// Base CSS
		@import url("../../bootstrap/less/type.less");
		@import url("../../bootstrap/less/code.less");
		@import url("../../bootstrap/less/forms.less");
		@import url("../../bootstrap/less/tables.less");

		// Components: common
		@import url("../font-awesome/less/font-awesome.less"); //Path needs to change to font awesome
		@import url("../../bootstrap/less/dropdowns.less");
		@import url("../../bootstrap/less/wells.less");
		@import url("../../bootstrap/less/component-animations.less");
		@import url("../../bootstrap/less/close.less");

		// Components: Buttons and Alerts
		@import url("../../bootstrap/less/buttons.less");
		@import url("../../bootstrap/less/button-groups.less");
		@import url("../../bootstrap/less/alerts.less"); // Note: alerts share common CSS with buttons and thus have styles in buttons.less

		// Components: Nav
		@import url("../../bootstrap/less/navs.less");
		@import url("../../bootstrap/less/navbar.less");
		@import url("../../bootstrap/less/breadcrumbs.less");
		@import url("../../bootstrap/less/pagination.less");
		@import url("../../bootstrap/less/pager.less");

		// Components: Popovers
		@import url("../../bootstrap/less/modals.less");
		@import url("../../bootstrap/less/tooltip.less");
		@import url("../../bootstrap/less/popovers.less");

		// Components: Misc
		@import url("../../bootstrap/less/thumbnails.less");
		@import url("../../bootstrap/less/labels-badges.less");
		@import url("../../bootstrap/less/progress-bars.less");
		@import url("../../bootstrap/less/accordion.less");
		@import url("../../bootstrap/less/carousel.less");
		@import url("../../bootstrap/less/hero-unit.less");

		// Utility classes
		@import url("../../bootstrap/less/utilities.less"); // Has to be last to override when necessary

	<cfelse>
		@import url("../../bootstrap/less/bootstrap.less");
	</cfif>

	@import url("../../bootstrap/less/responsive.less");
	@import url("mura.less");


	// Shim Variables
	@themePath:		'#$.siteConfig('themeAssetPath')#';
	@imagePath:		'#$.siteConfig('themeAssetPath')#/images/';
	@PIE:			'#$.siteConfig('themeAssetPath')#/css/mura/PIE.htc';


	// OPTIONAL: Make all Bootstrap main mixins PIE compatible
	.PIE { behavior: url(@PIE); } // put in class for reusing

	.border-radius, .box-shadow, .transition, .rotate, .scale, .translate, .skew, .translate3d,
	.background-clip, .background-size, .box-sizing, .user-select, .resizable, .content-columns,
	.hyphens, .opacity  {
		.PIE;
	}


	// NAV ELEMENTS
	##navArchive, ##navMultilevel, ##navPeer, ##navPortal, ##navSequential, ##navStandard,
	##navSub, ##svTagCloud, ##svFavoritesList, ##svPageTools {
		margin-bottom: @baseLineHeight;
		padding: 8px 0;
	}

	// Hide login in navbar unless on 1200px or larger
	.navbar ##login { display: none; }

<!---
	// NAVBAR
	// use this to allow to hover dropdown menu if you don't wnat to use JQuery. Remove to force click
	ul.nav li.dropdown:hover ul.dropdown-menu { display: block; }

	// Need to bring up dropdown-menu to negative pixels
	.dropdown-menu { margin-top: -1px; }
	//end NAVBAR
 --->


	// INDEXES
	.content .svIndex {
	 	border-top: 0;
	 	padding-top: 0;
	}

	.svIndex {

		dl {
			border-bottom: 1px solid ##eeeeee;
			padding-bottom: 12px;
			margin-bottom: 12px;
		}

		dd { margin-left: 0; }

		dt.releaseDate {
			font-size: 12px;
			line-height: 1;
			margin-bottom: .25em;
		}
	}
	//end INDEXES


	// CALENDAR
	.svCalendar {
		text-align: center;

		table {

			thead {
				background: ##eee;

				th, th a {
					line-height: 1.5;
					padding: .5em;
					text-align: center;
				}
			}

			td, th {
				border-collapse: collapse;
				border-left: 1px solid ##DDD;
				border-top: 1px solid ##DDD;
				border-bottom: 1px solid ##DDD;
				border-right: 0;
				font-size: inherit;
			}

			table ##previousMonth a,
			table ##nextMonth a {
				font-weight: normal;
				font-size: 150%;
				line-height: 1.1;
				padding: 0;
			}

			.table tbody tr:hover td,
			.table tbody tr:hover th {
				background: ##fff;
			}
		}
	}

	##svCalendarNav {
		th {
			line-height: 1;
			padding: 0;

			a {
				line-height: 1;
				padding: 2px 2px 4px;
			}
		}
	}
	//end CALENDAR

	.comments, .tags, .rating {
	 	font-size: 12px;
	 	line-height: 12px;
	}

	.pagination {
		margin: 24px 0 18px !important;

		 a { padding: 0 14px; }
	}

	// LOGIN
	##svLoginContainer {
		margin: 0;
		width: auto;

		##login label, ##sendLogin label {
			float: left;
		}
	}


	form .required {
	    font-weight: bold;

		label:after {
		    color: ##e32;
		    content: '*';
		    display:inline;
		}
	}

<!---
	// // Shim between default Mura CMS styles and Bootstrap
	// body { padding-bottom: 50px; }

	// .sidebar-nav { padding: 9px 0; }

	// // Headings
	// h2 {
	// 	margin-bottom: 12px;
	// 	line-height: 1.1;
	// }

	// .sidebar {

	// 	h1 {
	// 		font-size: 24px;
	// 		line-height: 1.1;
	// 		margin-bottom: .5em;
	// 	}

	// 	 h2 {
	// 		font-size: 19px;
	// 		line-height: 1.1;
	// 		margin-bottom: .5em;
	// 	}

	// 	h3 {
	// 		font-size: 16px;
	// 		line-height: 1.1;
	// 		margin-bottom: .5em;
	// 	}

	// 	h4 {
	// 		font-size: 14px;
	// 		margin-bottom: .5em;
	// 		line-height: 1.1;
	// 	}

	// 	h5 {
	// 		font-size: 12px;
	// 		margin-bottom: .75em;
	// 		line-height: 1.2;
	// 	}

	// 	h6 {
	// 		font-size: 11px;
	// 		margin-bottom: .5em;
	// 		line-height: 1.2;
	// 	}

	// }

	// .navArchive {

	// 	h2, h3 {
	// 		margin-bottom: 0;
	// 	}

	// }


	// // @end


	// .navbar .nav .dropdown .active > a {
	// 	//Overriding bootstrap default becasue it looks weird to have the dropdown "active" nav item highlighted
	// 	color: #222;
	// 	background-color: #fff;
	// }



	// ul.nav {
	// 	margin-bottom: 0;
	// }

	// .navbar .nav > li {
	//   position: relative;
	// }

	// // Nested ULs need to go full width
	// .nav-list li.active ul {
	// 	padding: 0;
	// }


	// .nav-list li li a.active {
	// 	background: transparent;
	// 	color: @linkColor;
	// 	text-shadow: 0 0 0;
	// }

	// // // Anchors need to be fullwidth but padded
	// // .nav-list li.active li a {
	// // 	.indent(2);
	// // }

	// // .nav-list li.active li li a {
	// // 	.indent(3);
	// // }

	// // .nav-list li.active li li li a {
	// // 	.indent(4);
	// // }

	// // .nav-list li.active li li li li a {
	// // 	.indent(5);
	// // }

	// .nav-list li.active li.active a,
	// .nav-list li.active li.active a:hover {
	// 	background: transparent;
	// 	color: @linkColorHover;
	// 	text-shadow: 0 0 0 transparent !important;
	// }

	// form ol, ##svTagCloud ol {
	// 	list-style: none;
	// 	margin: 0;
	// }

	// form legend+p {
	// 	line-height: 1.2;
	// 	padding-top: 1em !important;
	// 	margin-bottom: 1em !important;
	// }



	// .moreResults dt {
	// 	font-size: 12px;
	// 	font-weight: normal;
	// }

	// .svSlideshow dt.releaseDate {
	// 	font-size: 12px;
	// 	margin-bottom: .25em;
	// }

	// .svSlideshow dt.title {
	// 	font-size: 22px;
	// 	margin-bottom: .25em;
	// }

	// ol.svPager {
	// 	text-align: center;

	// 	li {
	// 		margin:0 .25em;
	// 		display:inline-block;
	// 		*display:inline;
	// 		background: #eee;

	// 		&.activeLI {
	// 			a {
	// 				background: #08c;
	// 				color: #fff;
	// 			}
	// 		}
	// 	}
	// }



	// .table-bordered {
	// 	th, td {
	// 		border-left: 1px solid #ddd;
	// 	}
	// }

	// .table {
	// 	th, td {
	// 		padding: 8px;
	// 		line-height: 18px;
	// 		text-align: left;
	// 		vertical-align: top;
	// 		border-top: 1px solid #ddd;
	// 	}
	// }

	// /* @group Globals - Forms (from Mura's reset.css)
	// ===================================== */

	// form {

	// 	legend+ul, legend+ol {
	// 		padding-top: 1em;
	// 	}

	// 	ol, ul {
	// 		margin: 0;

	// 		li {
	// 			list-style: none;
	// 		}
	// 	}
	// }

	// .well form {
	// 	margin-bottom: 0;
	// }

	// .navbar {

	// 	form {
	// 		padding: 8px 0;
	// 		margin-bottom: 0;
	// 	}

	// 	input.search-query {
	// 		padding: 2px 10px;
	// 		line-height: 1;
	// 	}
	// }

	// ##svLoginContainer legend {
	// 	border-bottom: 0;
	// }

	// .sidebar input.text, .sidebar textarea, .sidebar select {
	// 	width: 95%;
	// }



	// p.required {
	// 	display: inline-block;
	//     margin-bottom: 1em !important;
	// 	background: none;

	// 	&:before {
	// 		content: "* ";
	//     	color: red;
	// 	}
	// }


	// .req ins {
	// 	position: absolute;
	// 	left: -9999px;
	// }

	// /* @end Globals - Forms - Required Fields
	// -------------------------------- */

	// ul.dragableFeeds {
	// 	margin-left: 12px;
	// 	margin-right: 12px;
	// }

	// .dragableBoxHeader {
	// 	//Header inside dragable RSS box
	// 	background-color: ##f2f2f2 !important;
	// }

	// .force-block {
	// 	display: block !important;
	// 	float: none;
	// 	clear: both;
	// } --->

</cfoutput>
