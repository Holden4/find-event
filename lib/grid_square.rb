require_relative 'event'
require 'csv'

class GridSquare

  attr_reader :coordinates, :event

  def initialize(x,y)
    @coordinates = x,y
    @event = nil
    find_event
    end

private

    def find_event
      events = []
      csv = File.read('event_data.csv')
      events_list = JSON.parse(csv)
      for i in 1..(events_list.length)
        events.push(Event.new(i))
        i  += 1
      end
      events.each do |e|
        if e.coords == @coordinates && @event == nil
          @event = {
           "id": e.id,
           "no_tickets": e.no_tickets,
           "price": e.price,
           "coords": e.coords
         }
        end
      end
  end

end
