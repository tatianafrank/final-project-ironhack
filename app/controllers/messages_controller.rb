class MessagesController < ApplicationController
	def reply
	  	twiml = Twilio::TwiML::Response.new do |r|
			if session[:have_messaged].nil?
				session[:have_messaged] = true
				r.Message 'Hello. Would you like to see plans for this weekend?'
			else
				if params[:Body].downcase =='yes' || params[:Body]=='friday'
					schedule=Event.schedule_for(Chronic.parse('friday'))
					message=" "
					   schedule.each do |event|
					    message += "#{event.start_time.in_time_zone("Eastern Time (US & Canada)").strftime("%l:%M%p")} - #{event.end_time.in_time_zone("Eastern Time (US & Canada)").strftime("%l:%M%p")} - #{event.title} - #{event.location}"
	                	end
						r.Message 'Here are some events for this Friday. For Saturday or Sunday events, text back "saturday" or "sunday"' + message
				elsif params[:Body]=='saturday'
					schedule=Event.schedule_for(Chronic.parse('saturday'))
					message=" "
					   schedule.each do |event|
					    message += "#{event.start_time.in_time_zone("Eastern Time (US & Canada)").strftime("%l:%M%p")} - #{event.end_time.in_time_zone("Eastern Time (US & Canada)").strftime("%l:%M%p")} - #{event.title} - #{event.location}"
					   end
					r.Message 'Here are some events for this Saturday. For Friday or Sunday events, text back "friday" or "sunday"'

				elsif params[:Body] == 'sunday'
					schedule=Event.schedule_for(Chronic.parse('sunday'))
					message=" "
					   schedule.each do |event|
					    message += "
					    #{event.start_time.in_time_zone("Eastern Time (US & Canada)").strftime("%l:%M%p")} - #{event.end_time.in_time_zone("Eastern Time (US & Canada)").strftime("%l:%M%p")} - #{event.title} - #{event.location}"
						end
					r.Message 'Here are some events for this Sunday. For Friday or Saturday events, text back "friday" or "saturday"'
				end
			end
	  	end
	  render xml: twiml.text
	end
end



