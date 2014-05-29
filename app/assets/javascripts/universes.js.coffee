jQuery ->
	$("#universe_character_ids").select2(
		placeholder: "Select Universe",
		allowClear: true,
		tokenSeparators: [",", " "])
