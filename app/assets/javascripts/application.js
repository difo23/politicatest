// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
function	updateClock	(	)
{
		var	currentTime	=	new	Date	(	);
		var	currentHours	=	currentTime.getHours	(	);
		var	currentMinutes	=	currentTime.getMinutes	(	);
		var	currentSeconds	=	currentTime.getSeconds	(	);
		//	Pad	the	minutes	and	seconds	with	leading	zeros,	if	required
		currentMinutes	=	(	currentMinutes	<	10	?	"0"	:	""	)	+	currentMinutes;
		currentSeconds	=	(	currentSeconds	<	10	?	"0"	:	""	)	+	currentSeconds;
		//	Choose	either	"AM"	or	"PM"	as	appropriate
		var	timeOfDay	=	(	currentHours	<	12	)	?	"AM"	:	"PM";
		//	Convert	the	hours	component	to	12-hour	format	if	needed
		currentHours	=	(	currentHours	>	12	)	?	currentHours	-	12	:	currentHours;
		//	Convert	an	hours	component	of	"0"	to	"12"
		currentHours	=	(	currentHours	==	0	)	?	12	:	currentHours;
		//	Compose	the	string	for	display
		var	currentTimeString	=	currentHours	+	":"	+	currentMinutes	+	":"	+
currentSeconds	+	"	"	+	timeOfDay;
		//	Update	the	time	display
		document.getElementById("clock").firstChild.nodeValue	=	currentTimeString;
}
