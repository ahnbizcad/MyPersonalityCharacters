ready = ->
	$('.affixable').affix({
		offset: { top: $('.affixable').offset().top }
	});
	$('nav').height($('.affixable').height());

$(document).ready(ready);
$(document).on('page:load', ready);
