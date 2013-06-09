# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $('#add').click ->
    $('.menu').last().after($('.menu').first().outerHTML())
    $('.menu').last().find('input').val('')
$(document).on('page:change', ready)
$ ->
  ready()
  $(document).on('click', 'button.delete', ->
    if $('.menu').length > 1
      $(this).parent().parent().remove()
  )
