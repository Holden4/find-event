class GridSquare

  attr_reader :coordinates, :event

  def initialize(x,y)
    @coordinates = x,y
    @event = nil
    find_event
    end

    def find_event
      events = []
      csv = File.read('event_data.csv')
      events_list = JSON.parse(csv)
      for i in 0..(events_list.length)
        if Event.new(i) != "Event doesn't exist."
          events.push(Event.new(i))
          i  += 1
        end
      end
      events.each do |e|
        if e.coords == @coordinates
          @event = [e.id, e.no_tickets, e.price, e.coords] if @event == nil
        end
      end
  end

end
