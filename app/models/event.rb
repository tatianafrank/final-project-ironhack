class Event < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_and_belongs_to_many :tags

	def self.schedule_for(daydate, user)
		schedule = []
		next_available= daydate
		loop do
		  event=Event.includes(:tags)
		  	.where(tags: { id: user.tags })
		  	.where('start_time >= ?', next_available)
			.where('start_time <= ?', daydate.tomorrow-15.hours )
			.first

			if event.nil?
				break
			end

			schedule.push(event)
			next_available = event.end_time
		end

		return schedule
	end
	#self makes it a class method. bc instance method is something you call on a specific event
    def self.import_eventful(results, tag)
    	results['events']['event'].each do |event|
	     	title= event['title']
	     	description= event['description']
	     	location= event['venue_name']
	     	efid= event['id']
	     	start_time= event['start_time']
		     	if event['stop_time'].nil?
		     		end_time= event['start_time']+2.hours
		     	else
		     	 end_time= event['stop_time']
		     	end
		    unless Event.find_by(efid: event['id'])
	      		Event.create(title: title, description: description, location: location, start_time: start_time, end_time: end_time, efid: efid).tags.push(tag)
	    	end
	    end
    end

    def replacement(user)
		start=self.start_time
		event=Event.includes(:tags)
		  	.where(tags: { id: user.tags })
		  	.where('start_time >= ?', start)
			.where('start_time <= ?', start + 1.hour)
			.where('events.id != ?', self.id).first
		return event
    end

     
end


