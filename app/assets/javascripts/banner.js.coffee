$(document).on 'turbolinks:load', ->
  $('#sign-up-btn').click ->
    $('#login-btn').removeClass('show')
    $('#intro').removeClass('show')
    $('#sign-up').addClass('show')

  $('#login-btn').click ->
    $('#sign-up-btn').removeClass('show')
    $('#intro').removeClass('show')
    $('#login-btn').addClass('show')