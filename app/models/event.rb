class Event < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_and_belongs_to_many :tags

	def self.schedule_for(daydate, user = nil)
		schedule = []
		next_available= daydate
		loop do
		  event=Event
		  	.where('start_time >= ?', next_available)
			.where('start_time < ?', daydate.tomorrow )
			
		

		  if user.present?
		  	event = event.includes(:tags).where(tags: { id: user.tags })
		  end
		  event=event.first



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
	     	start_time= event['start_time'].change(:offset => "-0400")
		     	if event['stop_time'].nil?
		     		end_time= event['start_time']+2.hours
		     	else
		     	 end_time= event['stop_time']
		     	end
		    unless Event.find_by(efid: event['id'])
		    	puts "Importing Eventful event ##{event['id']}"
	      		Event.create(title: title, description: description, location: location, start_time: start_time, end_time: end_time, efid: efid).tags.push(tag)
	    	end
	    end
    end
    def self.import_eventbrite(hash, tag)
    	  hash['events'].each do |event|
    	  unless event['name'].nil?
	      	title=event['name']['text']
	      end
	      unless event['description'].nil?
	      	description=event['description']['text']
	  	  end
	      start_time=event['start']['utc']
		      if event['end'].nil?
			    end_time= event['start']+2.hours
	     	  else
	     	    end_time= event['end']['utc']
	     	  end
	      location=event['venue']['address']['address_1']
	      ebid=event['id']
	      unless event['categories'].nil?
	      	ebcategory=event['categories']['id']
	      end
	     	  unless Event.find_by(ebid: event['id'])
		    	puts "Importing Eventful event ##{event['id']}"
	      		Event.create(title: title, description: description, location: location, start_time: start_time, end_time: end_time, ebid: ebid).tags.push(tag)
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

    def self.dateSearch(date)
	  where("location like ?", "%#{location}%") 
	end

# translating eventbrite structure to my structure. 
     
end


