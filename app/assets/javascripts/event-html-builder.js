function eventHtmlBuilder (event) {
	return '<div class="schedule_date wow fadeInLeft">\
            </div>\
            <div class="schedule_month wow fadeInRight">\
		        MAY RTCM\
		        \
	        </div>\
	        <!-- Accordion item -->\
	        <div class="mini_gap">\
	        </div>\
      	    <div id="accordion1">\
       			<div class="panel wow fadeInDown">\
          			<a data-toggle="collapse" data-parent="#accordion1" href="#<%=event.id%>">\
	      				<div class="accordion_left">\
		       				<div class="accordions_titles_small">\
		          				<p class="accordion_date">' + event.start_time + '-' + event.end_time + '\
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
        		<div id=' + event.id + 'class="panel-collapse collapse accordion_full">\
          			<p>' + event.description + '<a href="multi-reservation.html" class="schedule_reservation wow btn eventime_button">\
           			Make Reservation</a>\
          			</p>\
        		</div>\
        		<!-- Accordion item -->\
        		<div class="mini_gap">\
        		</div>\
        		<!-- End of the accordion -->\
     		</div>'}

