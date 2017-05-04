class GridMap

  attr_accessor :grid_squares

  def initialize
    @grid_squares = []
  end

  def generate_grid_squares
    441.times do
      @grid_squares.push("a grid square")
    end
  end
end
