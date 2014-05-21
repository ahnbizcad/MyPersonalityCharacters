jQuery ->
	$('#character_universe_tokens').tokenInput '/universes.json',
		theme: 'facebook',
		prePopulate: $('#character_universe_tokens').data('load')
	$('#character_celebrity_tokens').tokenInput '/celebrities.json',
		theme: 'facebook',
		prePopulate: $('#character_celebrity_tokens').data('load')


