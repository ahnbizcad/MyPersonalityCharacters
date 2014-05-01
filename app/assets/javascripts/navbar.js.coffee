ready = ->
	$('.affixable').affix({
		offset: { top: $('.affixable').offset().top, bottom: 400 }
	});
	$('nav').height($('.affixable').height());

$(document).ready(ready);
$(document).on('page:load', ready);
