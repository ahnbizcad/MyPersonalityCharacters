windowReady = ->
	$('nav').height($('.affixable').height());
	$('.affixable').affix({
		offset: { top: $('.affixable').offset().top };
	});	

$(window).load(windowReady);
$(window).on('page:load', windowReady);