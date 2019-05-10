$(document).on 'turbolinks:load', ->
  $("#avatar-input").change( -> 
    if ($(this).val() != '')
      $('#avatar-form-btn').show()
  )