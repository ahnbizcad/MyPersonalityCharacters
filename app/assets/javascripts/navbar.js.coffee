windowReady = ->
	$('.affixable').affix({
		offset: { top: $('.affixable').offset().top }
	});
	$('nav').height($('.affixable').height());

$(window).load(windowReady);
$(window).on('page:load', windowReady);