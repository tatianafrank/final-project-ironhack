class Api::ScheduleController < ApplicationController
	def my_schedule
		#weekend day from api url from button request
		day=params[:day]
		user= current_user
		# if the day being clicked on/request is Friday and today is friday...
		if day==="Friday" && Date::DAYNAMES[DateTime.now.wday] === 'Friday'
			#then the day that events are queried for is Friday
			#chronic is a gem that gives uses day names and finds next soonest
			daydate=Chronic.parse('today 19:00')
		elsif day==="Saturday" && Date::DAYNAMES[DateTime.now.wday] === 'Saturday'
			daydate=Chronic.parse('today 8:00')
		if day==="Sunday" && Date::DAYNAMES[DateTime.now.wday] === 'Friday'
			daydate=Chronic.parse('today 19:00')
		else
			#otherwise query for events that begin the next soonest Friday
			daydate=Chronic.parse(day)
		end
		#query for events using the name of the weekend day and the signed in user's preferences
		schedule=Event.schedule_for(daydate, current_user)
		render json: schedule
	end
end
