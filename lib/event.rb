require 'csv'

 class Event
   attr_reader :id, :no_tickets, :price, :coords

   def initialize(id)
     @id = id
     @no_tickets = nil
     @price = nil
     @coords = nil
     events_catalog
   end

   def events_catalog
     csv = File.read('event_data.csv')
     events = JSON.parse(csv)
     events.each do |event|
       if event["id"] == @id
         @no_tickets = event["no_tickets"]
         @price = event["price"]
         @coords = event["x_coord"], event["y_coord"]
       end
     end
   end

 end
