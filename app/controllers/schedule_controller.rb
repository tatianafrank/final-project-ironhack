class ScheduleController < ApplicationController
	def my_schedule
		day=params[:day]
		@user= current_user
		daydate=Chronic.parse(day)
		@schedule=Event.schedule_for(daydate, current_user)
	end
	
end
