# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/




$(document).ready -> 
  $(".showAtStart").css('visibility', 'visible')
  $('input:checkbox').change ->
   check = $(@).is(':checked')
   if check
     $(@).parents("tr").removeClass("hideAll")
   else
     $(@).parents("tr").addClass("hideAll")
    


