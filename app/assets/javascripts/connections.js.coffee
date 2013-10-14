# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



main = ->
  $body = $(document.body)
  $body.on 'click', 'a', (ev) ->
    ev.stopPropagation()

  $body.on 'click', '.connection-table tbody tr', (ev) ->
    url = $(ev.currentTarget).data('url')
    window.location.href = url if url


$ -> main()