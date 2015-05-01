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