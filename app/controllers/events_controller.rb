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
	  if params[:search]
		@user=current_user
	    @users = User.search(params[:search]).order("created_at DESC")
	  else
		@events=Event.order(:start_date, 'RANDOM()')
	end
	def show
	end
	def search
		render 'search'
	end
end
