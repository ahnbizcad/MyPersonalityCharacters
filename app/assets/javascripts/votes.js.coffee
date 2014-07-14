windowReady = ->

  jQuery ($) ->
    # votedOnModel = true if (votes table has record with this votable, and current_user.) How to get this from rails to js? use callback?
    # look up votes table for this user and this votable, and for matching votes, call voteUp() function on the particular one... based on string?

    $('.vote-button > a').on 'click', ->
      voteData = $(this).attr("data-vote-type")
      $(this).ajax
        type: "POST"
        url: "/character/:id/vote_socionics"
        data: { voteData }
        dataType: "json"
        beforeSend: ->
          $(this).append("sending")
        always:  (jqXHR, textStatus, errorThrown) ->
          alert("always")
        done: (data) ->
          $(this).find('div').html('<img src="/assets/upvoted.png" alt="Upvoted">')
        error: (data) ->
        

$(window).load(windowReady);
$(window).on('page:load', windowReady);