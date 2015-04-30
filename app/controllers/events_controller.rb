class EventsController < ApplicationController
	def new
		@event=Event.new
	end
	def create
		event_params = params.require(:event).permit(:title, :descripton, :start_date, :end_date, :location)
    	@event = Event.new(event_params)
		@event.save 
	end
	def index
		@events=Event.order(:start_date, 'RANDOM()')
		@user=current_user
	end
	def show
	end
end
