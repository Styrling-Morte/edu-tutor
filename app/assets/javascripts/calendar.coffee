jQuery ->

  currentMonth = moment().format('YYYY-MM')
  nextMonth    = moment().add('month', 1).format('YYYY-MM')
  events = []


  $('#tutor_schedule_clndr').clndr({
    template: $('#tutor_booking_clndr_template').html(),
    events: events
    showAdjacentMonths: false,
    clickEvents: {
      click: (target)->
        $('#newBookingForm').modal('show');
        $('.modal-title').text('New Booking for '+target.date.format('MMM Do'))
    }
  })

  $('#ward_schedule_clndr').clndr({
      template: $('#ward_schedule_clndr_template').html(),
      events: events,
      showAdjacentMonths: false
    })
