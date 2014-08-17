windowReady = ->
  jQuery ($) -> 
    $voteLinks = $('.vote-button a')

    $voteLinks.each (i, current) ->
      if $(current).data('voted') == true
        $(current).addClass('voted')

    $voteLinks.on "ajax:complete", (evt, data, status, xhr) ->
      $voteLinks.removeClass('voted')
      $voteLinks.each (i, current)->
        if $(current).data('voted') == false
          $(current).addClass('voted')

$(window).load(windowReady);
$(window).on('page:load', windowReady);