windowReady = ->
	$('.affixable').affix({
		offset: { top: $('.affixable').offset().top }
	});
	$('nav').height($('.affixable').height());


$(document).load(ready);
$(document).on('page:load', ready);

$(window).load(windowReady);
$(window).on('page:load', windowReady);