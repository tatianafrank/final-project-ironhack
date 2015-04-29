class User < ActiveRecord::Base
	has_and_belongs_to_many :tags
	has_and_belongs_to_many :events
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
