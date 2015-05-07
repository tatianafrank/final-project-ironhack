class Api::ScheduleController < ApplicationController
	def my_schedule
		#weekend day from api url from button request
		day=params[:day]
		user= current_user
		
		if day=="sunday" && Date::DAYNAMES[DateTime.now.wday] == 'sunday'
			daydate=Chronic.parse('today 19:00')
		# if the day being clicked on/request is Friday and today is friday...
		elsif day=="saturday" && Date::DAYNAMES[DateTime.now.wday] == 'saturday'
			daydate=Chronic.parse('today 8:00')
		elsif day=="friday" && Date::DAYNAMES[DateTime.now.wday] == 'friday'
			#then the day that events are queried for is Friday
			#chronic is a gem that gives uses day names and finds next soonest
			daydate=Chronic.parse('today 19:00')
		else
			#otherwise query for events that begin the next soonest Friday
			daydate=Chronic.parse(day)
		end
		#query for events using the name of the weekend day and the signed in user's preferences
		schedule=Event.schedule_for(daydate, user)
		puts 'LOOOOKKKK!!!!!:'
		puts daydate
		render json: schedule

	end

end
