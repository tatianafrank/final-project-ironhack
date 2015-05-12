# require 'eventbrite-client'

# namespace :weeqend do
#   desc "Import events from eventful"
#   task import_eventbrite: :environment do
#     eventSearch= Tag.all
#     eventSearch.each do |tag|
#   	eventbrite = EventbriteClient.new 'WMFRPMJNWFYT57ZBIN'
# 	  results = eventbrite.search {'start_date.range_start' => DateTime.now}
#                            # :keywords => tag.keyword,
#                            # :location => 'New York',
#                            # :page_size => 400

#     #this calls the method in the model and passes results to the model
#     # Event.import_eventful(results, tag)
#     p results
#     end 
#   end
# end