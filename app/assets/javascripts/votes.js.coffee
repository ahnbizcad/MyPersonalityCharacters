jQuery ->
  percentage_neti = JSON.parse($('#vote-data'))
  $('.bar-neti').css("width", percentage_neti + '%')
