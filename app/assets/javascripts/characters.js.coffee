(->
  jQuery ($) -> 
    $("#character_universe_ids").select2(
      placeholder: "Select Universe",
      allowClear: true,
      tokenSeparators: [",", " "])
    $("#character_celebrity_ids").select2(
      placeholder: "Select Celebrity",
      allowClear: true,
      tokenSeparators: [",", " "])

).call this