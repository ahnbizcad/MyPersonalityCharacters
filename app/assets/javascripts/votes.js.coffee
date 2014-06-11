jQuery ->
  percentages = JSON.parse($('#vote-data'))
  document.write(percentages)
  $('.bar-neti').css("width", 50)