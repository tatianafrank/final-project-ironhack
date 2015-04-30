class SiteController < ApplicationController
	def home
		if user_signed_in? && current_user.tags.size > 0
			render 'users_home'
		elsif user_signed_in?
			@tags = Tag.all
			render 'user_home'
		else
			render 'home'
		end
	end

	def addTags
		tags = params[:tags]
		my_tags=Tag.where(id: tags)

    	my_tags.each do |tag| 
    		current_user.tags.push(tag)
    	end
    	redirect_to '/'
	end

	def schedule
	end

	def how
	end
end
