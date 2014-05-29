windowReady = ->
	$('.affixable-wrapper').height($('.affixable-wrapper > .affixable').height());
	$('.affixable-wrapper > .affixable').affix({
		offset: { top: $('.affixable-wrapper > .affixable').offset().top };
	});

$(window).load(windowReady);
$(window).on('page:load', windowReady);

