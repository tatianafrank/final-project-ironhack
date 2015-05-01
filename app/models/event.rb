class Event < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_and_belongs_to_many :tags

	def self.schedule_for(daydate, user)
		user=User.find_by_id(user.id)
		schedule=Event.includes(:tags).where(id:user.tags).where('start_time >= ?', daydate)
.where('start_time <= ?', daydate.tomorrow-15.hours )
		return schedule
	end


end



