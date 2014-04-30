ready = ->
	$('nav').affix({
		offset: { top: $('nav').offset().top }
	});
	$(".row#nav-affixed").height($('nav').height());
	

$(document).ready(ready);
$(document).on('page:load', ready);
