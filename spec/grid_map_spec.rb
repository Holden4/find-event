require 'grid_map'

  describe GridMap do
    subject(:grid_map) { GridMap.new }

    it 'Creates a grid map containing all grid squares' do
      expect(subject.grid_squares.count).to eq(441)
    end

    it 'Stores a list of cells with events in' do
       expect(subject.event_squares).not_to be_empty
     end
  end
