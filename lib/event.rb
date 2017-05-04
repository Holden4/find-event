require 'csv'

 class Event
   attr_reader :id

   def initialize(id)
     @id = id
   end

   def events_catalog
     csv = File.read('event_data.csv')
     events = JSON.parse(csv)
   end

 end
