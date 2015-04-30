class ScheduleController < ApplicationController
	def my_schedule
		@user= current_user
		friday=Chronic.parse('friday')
		@schedule=Event.schedule_for(friday, current_user)
	
	end
end
