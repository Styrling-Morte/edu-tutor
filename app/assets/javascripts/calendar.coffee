jQuery ->

  currentMonth = moment().format('YYYY-MM')
  nextMonth    = moment().add('month', 1).format('YYYY-MM')
  events = [
    {date:"2016/03/07", title:"Biology Tutoring w/ Scott McPhee", start_time:"5:00PM-6:00PM"}
  ]

  $('#tutor_schedule_clndr').clndr({
    template: $('#tutor_booking_clndr_template').html(),
    showAdjacentMonths: false,
    clickEvents: {
      click: (target)->
        $('#newBookingFormModal').modal('show');
        $('.modal-title').text('New Booking for '+target.date.format('MMMM Do'))
        $('.date_store').text(target.date.format('YYYY-MM-DD'))
    }
  })

  $('#ward_schedule_clndr').clndr({
    template: $('#ward_schedule_clndr_template').html(),
    showAdjacentMonths: false
  })

  $('#ward_schedule_clndr_events').clndr({
    template: $('#ward_schedule_clndr_template').html(),
    events: events,
    showAdjacentMonths: false
  })

  $('#addBookingButton').click ->
    startTime = $('.booking_start option:selected').val()
    endTime   = $('.booking_end option:selected').val()
    booking_start = $('.date_store').text()+startTime
    booking_end   = $('.date_store').text()+endTime
    $('.booking_start option:selected').val(booking_start)
    $('.booking_end option:selected').val(booking_end)
    $('#newBookingForm').submit()
