# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/




$(document).ready -> 
  $(".showAtStart").css('visibility', 'visible')
  $(".searchResults").append("<p>This test text being added to search box.</p>");
  $('input:checkbox').change ->
   check = $(@).is(':checked')
   if check
     $(@).parents("tr").removeClass("hideAll")
   else
     $(@).parents("tr").addClass("hideAll")
    


