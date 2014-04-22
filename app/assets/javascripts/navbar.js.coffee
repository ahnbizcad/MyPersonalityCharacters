ready = ->
	$('nav').affix({
		offset: { top: $('nav').offset().top }
	});
	$('nav').height($('nav').height());
	

$(document).ready(ready);
$(document).on('page:load', ready);
