windowReady = ->
  jQuery ($) -> 
    $("#celebrity_character_ids").select2(
      placeholder: "Select Character",
      allowClear: true,
      tokenSeparators: [",", " "])

$(window).load(windowReady)
$(window).on('page:load', windowReady)