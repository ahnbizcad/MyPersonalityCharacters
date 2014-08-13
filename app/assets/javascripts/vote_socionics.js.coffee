windowReady = ->
  jQuery ($) -> 
    $('.vote-button a').on 'ajax:success', (evt, data, status, xhr)->
      $('.vote-button a').removedClass('voted')
      alert('debugger')
      if ( data.voted == false )
        $('this').addClass('voted')

$(window).load(windowReady);
$(window).on('page:load', windowReady);