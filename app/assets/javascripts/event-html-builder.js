function eventHtmlBuilder (event) {
	return '<div class="schedule_date wow fadeInLeft">' + moment(event.start_time).format("D")+ '\
            </div>\
            <div class="schedule_month wow fadeInRight">\
		        ' + moment(event.start_time).format("MMM") + '\
		        \
	        </div>\
	        <!-- Accordion item -->\
	        <div class="mini_gap">\
	        </div>\
      	    <div id="accordion1">\
       			<div class="panel wow fadeInDown">\
          			<a data-toggle="collapse" data-parent="#accordion1" href="#' +event.id+'">\
	      				<div class="accordion_left">\
		       				<div class="accordions_titles_small">\
		          				<p class="accordion_date">' + moment(event.start_time).tz('America/New_York').format("h:mmA") + ' ' + '-' + ' ' + moment(event.end_time).tz('America/New_York').format("h:mmA") + '\
		          				</p>\
		        			</div>\
	      				</div>\
		          		<div class="accordion_right">\
		           			<div class="accordions_titles_small">\
		             			<div class="accordion_description">\
		               				 <p>' + event.title + '</p>\
		              			</div>\
		           			</div>\
		          		</div>\
         		 	</a>\
        		</div>\
        		<div id="' + event.id + '" class="panel-collapse collapse accordion_full">\
          			<p>' + event.description + '<div title="Add to Calendar" class="addthisevent">\
					    Add to Calendar\
					    <span class="start">' + moment(event.start_time).tz('America/New_York').format('L') + ' ' + moment(event.start_time).tz('America/New_York').format('H:mm A') + '</span>\
					    <span class="end">' + moment(event.end_time).tz('America/New_York').format('L') + ' ' + moment(event.end_time).tz('America/New_York').format('H:mm A') + '</span>\
					    <span class="timezone">America/New_York</span>\
					    <span class="title">' + event.title + '</span>\
					    <span class="description">'+ event.description +'</span>\
					    <span class="location">'+ event.location + '</span>\
					    <span class="date_format">' + moment(event.start_time).tz('America/New_York').format('L') + '</span>\
					</div>\
          			</p>\
        		</div>\
        		<!-- Accordion item -->\
        		<div class="mini_gap">\
        		</div>\
        		<!-- End of the accordion -->\
     		</div>'}

