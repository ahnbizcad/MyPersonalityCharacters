(->
  jQuery ($) -> 
    $("#celebrity_character_ids").select2(
      placeholder: "Select Character",
      allowClear: true,
      tokenSeparators: [",", " "])

).call this