class Api::ScheduleController < ApplicationController
	def my_schedule
		#weekend day from api url from button request
		day=params[:day]
		user= current_user
		
		if day=="sunday" && Date::DAYNAMES[DateTime.now.wday] == 'sunday'
			daydate=Chronic.parse('today 8:00')
		# if the day being clicked on/request is Friday and today is friday...
		elsif day=="saturday" && Date::DAYNAMES[DateTime.now.wday] == 'saturday'
			daydate=Chronic.parse('today 8:00')
		elsif day=="friday" && Date::DAYNAMES[DateTime.now.wday] == 'friday'
		
			daydate=Chronic.parse('today 8:00')
		elsif day=="friday" 
			daydate=Chronic.parse('friday 8:00')
		else
			daydate=Chronic.parse(day + ' 8:00')
		end
		#query for events using the name of the weekend day and the signed in user's preferences
		schedule=Event.schedule_for(daydate, user)
		render json: schedule

	end

	def replace
    	original_event=Event.find_by_id(params[:id])
		new_event= original_event.replacement(current_user)
    	render json: new_event
	end

end
