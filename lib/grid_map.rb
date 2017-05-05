class GridMap

  attr_accessor :grid_squares, :event_squares

  def initialize
    @grid_squares = {}
    @event_squares = []
    generate_grid_squares
    find_event_squares

  end

private

  def generate_grid_squares
    (-10..10).each do |x|
      (-10..10).each do |y|
        coordinates="#{x}, #{y}"
          @grid_squares[coordinates]=(GridSquare.new(x,y))
      end
    end
  end

  def find_event_squares
    @grid_squares.each do |c|
      @event_squares.push(c) if c[1].event != nil
    end
  end

  def find_closest_events(coords)
    counter = 0
    hash = {}
    output = "Closest Events to (#{coords})\n"

    @event_squares.each do |grid_squares|
      xdifference = (coords.split(",")[0].to_i) - (grid_squares[0].split(",")[0].to_i)
      ydifference = (coords.split(",")[1].to_i) - (grid_squares[0].split(",")[1].to_i)
      distance = xdifference.abs + ydifference.abs
      hash.store(distance, grid_squares[0])
    end
    hash.sort_by{|k,v| k}.to_h.each do |k, v|
        c = @grid_squares[v]
        output += "Event #{sprintf '%03d', c.event[:id]} -  #{c.event[:price]}, Distance #{k}" + "\n"
        counter += 1
        break if counter == 5
    end
    puts output
  end

end
