class Event < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_and_belongs_to_many :tags

	def self.schedule_for(daydate, user)
		schedule = []
		next_available= daydate
		loop do
		  event=Event.includes(:tags).where(id:user.tags).where('start_time >= ?', next_available)
		  .where('start_time <= ?', daydate.tomorrow-15.hours ).first

			if event.nil?
				break
			end
			schedule.push(event)
			next_available = event.end_time
		end

		return schedule
	end


end


