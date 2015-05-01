class ScheduleController < ApplicationController
	def my_schedule
		@user= current_user
			if Date::DAYNAMES[DateTime.now.wday] === 'Sunday'
				daydate=Chronic.parse('today 8:00')
			elsif Date::DAYNAMES[DateTime.now.wday] === 'Saturday'
				daydate=Chronic.parse('today 8:00')
			elsif Date::DAYNAMES[DateTime.now.wday] === 'Friday'
				daydate=Chronic.parse('today 19:00')
			else
			daydate=Chronic.parse('friday 19:00')
			end
		@schedule=Event.schedule_for(daydate, current_user)
	end
	
end
