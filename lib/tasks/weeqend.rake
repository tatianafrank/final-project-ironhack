require 'eventful/api'

namespace :weeqend do
  desc "Import events from eventful"
  task import_eventful: :environment do
    eventSearch= Tag.all
    eventSearch.each do |tag|
  	eventful = Eventful::API.new 'GNHfp8BVJ5jgh5vT'
	  results = eventful.call 'events/search',
                           :keywords => tag.keyword,
                           :location => 'New York',
                           :page_size => 400

    #this calls the method in the model and passes results to the model
    Event.import_eventful(results, tag)
    end 
  end


  desc "Import events from eventbrite"
  task import_eventbrite: :environment do
    eventSearch= Tag.all
    eventSearch.each do |tag|
      1.upto(20) do |num|   
        response= Faraday.get 'https://www.eventbriteapi.com/v3/events/search/?token=O6MQ6EAQTEUY4QR7OQ2U&venue.city=New%20York&categories=' + tag.ebcategory + '&page=' + num.to_s
        p response
        hash = JSON.parse(response.body)
        Event.import_eventbrite(hash, tag)
      end                 
    end
  end

end
