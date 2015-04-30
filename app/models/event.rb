class Event < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_and_belongs_to_many :tags

	def self.schedule_for(daydate, user)
		schedule=Event.includes(:tags).where(id:user.tags)
		user=User.find_by_id(user.id)
		next_available= daydate
		return schedule
	end


end
