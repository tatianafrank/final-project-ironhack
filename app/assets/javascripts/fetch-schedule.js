function fetchSchedule (day) { 
  var request = $.get('/api/myschedule/' + day)

  request.done(function (schedule) {
          console.log(schedule)

	//empty contents before appending 

    schedule.forEach(function (event) {
      $('.js-' + day + '-carousel').append(eventHtmlBuilder(event))

    });
    // $('.collapse').on('')
    // register events for accordion

    console.log('.js-' + day + '-carousel')
  });
}