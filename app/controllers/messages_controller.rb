class MessagesController < ApplicationController
	def reply
	  	twiml = Twilio::TwiML::Response.new do |r|
			if session[:have_messaged].nil?
				session[:have_messaged] = true
				r.Message 'Hello. Would you like to see plans for this weekend?'
			else
				if params[:Body]=='yes' || params[:Body]=='friday'
					r.Message 'Here are some events for this Friday. For Saturday or Sunday events, text back "saturday" or "sunday"
					7:00- Gallery Opening- 200 Broadway Ny, NY
					9:30- Block Party- 58 Mercer St Ny, Ny'
				elsif params[:Body]=='saturday'
					r.Message 'Here are some events for this Saturday. For Friday or Sunday events, text back "friday" or "sunday"
					5:00- Golf Tournament- 700 Broadway Ny, NY
					7:30- Wine Tasting- 28 Mercer St Ny, Ny'
				elsif params[:Body] == 'sunday'
					r.Message 'Here are some events for this Sunday. For Friday or Saturday events, text back "friday" or "saturday"
					3:00- Tennis Tournament- 400 Broadway Ny, NY
					6:30- Movie Premiere- 88 Mercer St Ny, Ny'
				end
			end
	  	end
	  render xml: twiml.text
	end
end
