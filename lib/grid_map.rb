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

end
