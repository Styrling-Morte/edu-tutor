jQuery ->

  # Generate fullCalendar
  $('#calendar').fullCalendar({
    allDaySlot: false
    firstDay: 1
    header: {
      right: 'prev,next today'
    }
  })

  # New ward form modal
  # Submit on new ward button (SAVE) click modal
  $('#addWardButton').click ->
    $('#newWardUser').submit()
  # Allow Multiple subject select on new ward form
  $('.multiple_select').multiselect({
    placeholder   : '',
    columns       : 2,
    search        : true,
    searchOptions : {
      default     : 'Search'
    },
    showCheckbox  : true,
    })
