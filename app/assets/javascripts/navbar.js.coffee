windowReady = ->
	$('.affixable').height($('nav').height());
	$('nav').affix({
		offset: { top: $('nav').offset().top };
	});

$(window).load(windowReady);
$(window).on('page:load', windowReady);