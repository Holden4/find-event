class GridMap

  attr_accessor :grid_squares

  def initialize
    @grid_squares = {}
    generate_grid_squares
  end

  def generate_grid_squares
    (-10..10).each do |x|
    (-10..10).each do |y|
      coordinates="#{x}, #{y}"
      @grid_squares[coordinates]=(GridSquare.new(x,y))
    end
    end
  end
end
