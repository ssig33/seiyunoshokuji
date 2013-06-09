# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#add').click ->
    $('.menu').last().after($('.menu').first().outerHTML())
  $(document).on('click', 'button.delete', ->
    if $('.menu').length > 1
      $(this).parent().parent().remove()
  )
