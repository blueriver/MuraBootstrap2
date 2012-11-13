//-----------------------------------------------------------------------------------
// Author: David Panzarella (SB InnerWeb Development - www.sbinnerweb.com)
// Date: 9/24/2012
// This file contains scripts for various JS functions
//-----------------------------------------------------------------------------------
$(window).load(function(){window.prettyPrint&&prettyPrint();$("li.dropdown > a.dropdown-toggle").each(function(e,t){$(this).append('<b class="caret"></b>')});$("ul.nav li.dropdown").hover(function(){$(this).find(".dropdown-menu").stop(!0,!0).delay(100).fadeIn()},function(){$(this).find(".dropdown-menu").stop(!0,!0).delay(100).fadeOut()});$(".submenu").scrollspy()});