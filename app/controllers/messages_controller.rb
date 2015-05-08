class MessagesController < ApplicationController
	def reply
		# account_sid = 'AC443bd92f18bbc08edfe72ae2a96a582f'
		# auth_token = '47b1cd49700757d8292b1d0854d680fc'

		# # set up a client to talk to the Twilio REST API
		# @client = Twilio::REST::Client.new account_sid, auth_token
		# @message=@client.messages.create
		# alternatively, you can preconfigure the client like so

	  	twiml = Twilio::TwiML::Response.new do |r|
	    r.Message "Hey Monkey. Thanks for the message!"
	  	end
	  render xml: twiml.text
	end
end
