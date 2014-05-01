ready = ->
	$('.affixable').affix({
		offset: { top: $('.affixable').offset().top }
	});
	$('nav').height($('.affixable').height());
$(window).load(ready);
$(window).on('page:load', ready);
