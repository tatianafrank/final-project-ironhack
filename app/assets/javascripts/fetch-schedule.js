function fetchSchedule (day) { 
  //gets the api route which calls the myschedule method from api schedule controller
  //this sets the daydate and passes it to schedule_for method in Event model 
  var request = $.get('/api/myschedule/' + day)
  //when results from db call are returned schedule is passed.. 
  //from the event model to the function
  request.done(function (schedule) {
	//empty contents before appending 
	$('.js-' + day + '-carousel').empty();
  //iterates through the schedule array where events have been pushed from event model/schedule_for query
    schedule.forEach(function (event) {
      //appends html and event detail interpolation to each day's carousel
      $('.js-' + day + '-carousel').append(eventHtmlBuilder(event))

    });
    //used for addthisevent api to refresh the code on AJAX calls
    addthisevent.refresh();
  });
}