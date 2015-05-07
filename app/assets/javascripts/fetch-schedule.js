function fetchSchedule (day) { 
  var request = $.get('/api/myschedule/' + day)

  request.done(function (schedule) {
          console.log("Schedule: ", schedule)

	//empty contents before appending 

	$('.js-' + day + '-carousel').empty();
    schedule.forEach(function (event) {
      $('.js-' + day + '-carousel').append(eventHtmlBuilder(event))

    });

    console.log('.js-' + day + '-carousel')
  });
}