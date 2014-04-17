ready = ->
	$('nav').height($('.affixable').height());
	$('.affixable').affix({
		offset: { top: $('.affixable').offset().top }
	});
	$('nav').addClass("affix");
$(document).ready(ready);
$(document).on('page:load', ready);
