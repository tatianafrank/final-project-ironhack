class Event < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_and_belongs_to_many :tags

	def self.schedule_for(daydate, user)
		next_available= daydate
		schedule=Event.includes(:tags).where(id:user.tags).where('start_time >= ?', next_available)
.where('start_time <= ?', daydate.tomorrow )
		user=User.find_by_id(user.id)
		return schedule
	end


end



