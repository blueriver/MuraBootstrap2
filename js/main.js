//-----------------------------------------------------------------------------------
 // Author: David Panzarella (SB InnerWeb Development - www.sbinnerweb.com)
 // Date: 9/24/2012
 // This file contains scripts for various JS functions
//-----------------------------------------------------------------------------------

$(window).load(function () {

    // make code pretty (optional: you can leave out if you want)
    window.prettyPrint && prettyPrint()

	//-----------------------------------------------------------------------------------
	//	Caret to navBar - Append a caret to any submenu in the navigation that has a sub
	//-----------------------------------------------------------------------------------

		$('li.dropdown > a.dropdown-toggle').each(function(index, element) {
		    $(this).append('<b class="caret"></b>');
		});

		//Add Hover effect to menus
		$('ul.nav li.dropdown').hover(function() {
		  $(this).find('.dropdown-menu').stop(true, true).delay(100).fadeIn();
		}, function() {
		  $(this).find('.dropdown-menu').stop(true, true).delay(100).fadeOut();
		});

		// $('.dropdown-toggle').dropdown()


	//-----------------------------------------------------------------------------------
	//	SubNav - taken from BootSwatch; used for example
	//-----------------------------------------------------------------------------------

		// var $win = $(window)
		//   , $nav = $('.subnav')
		//   , navHeight = $('.navbar').first().height()
		//   , navTop = $('.subnav').length && $('.subnav').offset().top - navHeight
		//   , isFixed = 0

		// processScroll()

		// $win.on('scroll', processScroll)

		// function processScroll() {
		//   var i, scrollTop = $win.scrollTop()
		//   if (scrollTop >= navTop && !isFixed) {
		//     isFixed = 1
		//     $nav.addClass('subnav-fixed')
		//   } else if (scrollTop <= navTop && isFixed) {
		//     isFixed = 0
		//     $nav.removeClass('subnav-fixed')
		//   }
		// }

		$('.submenu').scrollspy();




	// //----------------------------------------------------------------------------------------------------
	// //	Placeholder Support - http://www.hagenburger.net/BLOG/HTML5-Input-Placeholder-Fix-With-jQuery.html
	// //----------------------------------------------------------------------------------------------------

	// 	$('[placeholder]').focus(function() {
	// 	  var input = $(this);
	// 	  if (input.val() == input.attr('placeholder')) {
	// 	    input.val('');
	// 	    input.removeClass('placeholder');
	// 	  }
	// 	}).blur(function() {
	// 	  var input = $(this);
	// 	  if (input.val() == '' || input.val() == input.attr('placeholder')) {
	// 	    input.addClass('placeholder');
	// 	    input.val(input.attr('placeholder'));
	// 	  }
	// 	}).blur();

	// 	$('[placeholder]').parents('form').submit(function() {
	// 	  $(this).find('[placeholder]').each(function() {
	// 	    var input = $(this);
	// 	    if (input.val() == input.attr('placeholder')) {
	// 	      input.val('');
	// 	    }
	// 	  })
	// 	});


	//-----------------------------------------------------------------------------------
	//	Remove Margin From Last P - http://css-tricks.com/snippets/css/remove-margins-first-element/
	//-----------------------------------------------------------------------------------
	//	$(".container p:last-child, .super-container p:last-child, .footer-super-container p:last-child").css("margin-bottom", 0);


	//-----------------------------------------------------------------------------------
	//	PrettyPhoto - http://www.no-margin-for-errors.com/projects/prettyphoto-jquery-lightbox-clone/
	//-----------------------------------------------------------------------------------

			// $("a[data-rel^='prettyPhoto']").prettyPhoto();
			// $(".XYZ a").prettyPhoto();
			// $("a.boxLink").prettyPhoto();


	//-----------------------------------------------------------------------------------
	//	Tipsy & Normal Tooltips - http://onehackoranother.com/projects/jquery/tipsy/
	//-----------------------------------------------------------------------------------

			// $("#sub-sidebar .social a").tipsy({gravity: 's', fade: true});
			// $(".tipsy").tipsy({gravity: 's', fade: true});
			// $("ul.social img").tipsy({gravity: 's', fade: true, delayIn: 2000, delayOut: 200});
			// $("a.popLink").tipsy({gravity: 's', fade: true, delayIn: 2000, delayOut: 200});
			// $(".gallery-item img").tipsy({gravity: 's', fade: true, delayIn: 3000, delayOut: 200});


	//-----------------------------------------------------------------------------------
	//	Widget Overlay Area - custom, no URL
	//-----------------------------------------------------------------------------------

			// var topBar = jQuery('#topbar');
			// var logo = jQuery('#logotype');

			// var topBarHeight = logo.height();

			// topBar.css({
			// 	height : topBarHeight
			// });


			// var widgetOverlay = jQuery('#overlay-master-container');
			// var widgetTrigger = jQuery('#overlay-open a');

			// var widgetOverlayHeight = widgetOverlay.height();

			// widgetOverlay.css({
			// 	marginBottom : -widgetOverlayHeight,
			// 	display : 'block'
			// });

			// widgetTrigger.addClass('close');

			// widgetTrigger.toggle( function() {

			// 	widgetOverlay.animate({
			// 		marginBottom : 0
			// 	}, 600, 'easeInOutCirc');

			// 	widgetTrigger.removeClass('close');

			// }, function() {

			// 	widgetOverlay.animate({
			// 		marginBottom : -widgetOverlayHeight
			// 	}, 600, 'easeInOutCirc');

			// 	widgetTrigger.addClass('close');

			// });


	//-----------------------------------------------------------------------------------
	//	PERSISTENT HEADER - http://css-tricks.com
	//-----------------------------------------------------------------------------------

		// function UpdateTableHeaders() {
		//    $(".persist-area").each(function() {

		//        var el             = $(this),
		//            offset         = el.offset(),
		//            scrollTop      = $(window).scrollTop(),
		//            floatingHeader = $(".floatingHeader", this)

		//        if ((scrollTop > offset.top) && (scrollTop < offset.top + el.height())) {
		//            floatingHeader.css({
		//             "visibility": "visible"
		//            });
		//        } else {
		//            floatingHeader.css({
		//             "visibility": "hidden"
		//            });
		//        };
		//    });
		// }

		// // DOM Ready
		// $(function() {

		//    var clonedHeaderRow;

		//    $(".persist-area").each(function() {
		//        clonedHeaderRow = $(".persist-header", this);
		//        clonedHeaderRow
		//          .before(clonedHeaderRow.clone())
		//          .css("width", clonedHeaderRow.width())
		//          .addClass("floatingHeader");

		//    });

		//    $(window)
		//     .scroll(UpdateTableHeaders)
		//     .trigger("scroll");

		// });





	//-----------------------------------------------------------------------------------
	//	Chosen Select Menu - http://harvesthq.github.com/chosen/
	//-----------------------------------------------------------------------------------

		// $(".chzn-select").chosen();




	//-----------------------------------------------------------------------------------
	// Tabs Activiation
	// //-----------------------------------------------------------------------------------

	// 	var tabs = $('ul.tabs');

	// 	tabs.each(function(i) {

	// 		//Get all tabs
	// 		var tab = $(this).find('> li > a');
	// 		tab.click(function(e) {

	// 			//Get Location of tab's content
	// 			var contentLocation = $(this).attr('href');

	// 			//Let go if not a hashed one
	// 			if(contentLocation.charAt(0)=="#") {

	// 				e.preventDefault();

	// 				//Make Tab Active
	// 				tab.removeClass('active');
	// 				$(this).addClass('active');

	// 				//Show Tab Content & add active class
	// 				$(contentLocation).show().addClass('active').siblings().hide().removeClass('active');

	// 			}
	// 		});
	// 	});
});



//-----------------------------------------------------------------------------------
// iPhone Viewpoint Fix
//-----------------------------------------------------------------------------------

if (navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i)) {
    var viewportmeta = document.querySelector('meta[name="viewport"]');
    if (viewportmeta) {
        viewportmeta.content = 'width=device-width, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0';
        document.body.addEventListener('gesturestart', function () {
            viewportmeta.content = 'width=device-width, minimum-scale=0.25, maximum-scale=1.6';
        }, false);
    }
}
