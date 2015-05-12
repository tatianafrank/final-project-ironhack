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


  desc "Import events from eventful"
  task import_eventbrite: :environment do
    # eventSearch= Tag.all
    # eventSearch.each do |tag|

    appKey= {app_key: 'WMFRPMJNWFYT57ZBIN'}
    eventbrite = EventbriteClient.new(appKey)
    # hash = JSON.parse('json string')
    response= Faraday.get 'https://www.eventbriteapi.com/v3/events/search/?token=O6MQ6EAQTEUY4QR7OQ2U&q=hell&venue.city=New%20York'
    p response
                     
  end
end


