function fetchSchedule (day) { 
  var request = $.get('/api/myschedule/' + day)

  request.done(function (schedule) {
          console.log(schedule)

    schedule.forEach(function (event) {
      $('.js-' + day + '-carousel').append(eventHtmlBuilder(event))
    });

    console.log('.js-' + day + '-carousel')
  });
}