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
	def search
		time=[Chronic.parse('friday'), Chronic.parse('saturday'), Chronic.parse('sunday'), Chronic.parse('next friday'), Chronic.parse('next saturday'), Chronic.parse('next sunday')]
		@date=time.map{|date| [date.strftime("%A%B%e"), date]}

		if params[:dates] && params[:tags]
			dateSearch=params[:dates].to_datetime
			@event=Event.joins(:tags).where(tags: {id: params[:tags]}).where(start_time: dateSearch.beginning_of_day...dateSearch.to_datetime.end_of_day)
		else
			@event=[]
		end

		render 'search'
	end
end


