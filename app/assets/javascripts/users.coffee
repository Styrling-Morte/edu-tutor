jQuery ->

  # New ward form modal
  # Submit on new ward button (SAVE) click modal
  $('#addWardButton').click ->
    $('#newWardUser').submit()
  # Allow Multiple subject select on new ward form
  $('.multiple_select').multiselect({
    columns       : 2,
    search        : true,
    searchOptions : {
      default     : 'Search'
    },
    showCheckbox  : true,
  })

  # Tutor detail form submit button
  $('#buttonQualificationSubmit').click ->
    $('#tutorUser').submit()

  # close Ward dropdown on new ward click
  $(".dropdown-menu li").click ->
    $(@).closest(".dropdown-menu").prev().dropdown("toggle")
