$('.js-friday-btn').on('click', function(){

	fetchSchedule('friday');

	$('.js-whole-carousel').carousel(0)
});
$('.js-saturday-btn').on('click', function(){

  fetchSchedule('saturday');

  $('.js-whole-carousel').carousel(1)
});
$('.js-sunday-btn').on('click', function(){

  fetchSchedule('sunday');

  $('.js-whole-carousel').carousel(2)
});

$('.js-more-options').click(replaceClick);

function replaceClick (event){
	var btn = $(event.target)
	var id= btn.data('id')
	var request = $.get('/api/event/' + id +'/replace')

	request.done(function (event){
	 	// save html to do stuff with it in jquery
		var html = $(eventHtmlBuilder(event));
		var firstSib= btn.closest('.specialDiv');
		firstSib.after(html)
		var secSib= firstSib.prev();
		var thirSib= secSib.prev();
		var fourthSib= thirSib.prev();
		console.log(firstSib);
		firstSib.remove();
		secSib.remove();
		thirSib.remove();
		fourthSib.remove();
		console.log(secSib);
		// find the button inside new html to add the same click to it
		html.find('.js-more-options').click(replaceClick)
		addthisevent.refresh();
	})
}