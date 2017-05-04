require 'grid_map'

  describe GridMap do
    subject(:grid_map) { GridMap.new }

    it 'Creates a grid map containing all grid squares' do
      subject.generate_grid_squares
      expect(subject.grid_squares.count).to eq(441)

    end
  end
