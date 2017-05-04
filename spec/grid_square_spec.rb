require 'grid_square'

describe GridSquare do
   let(:grid_square) { double :grid_square, coordinates: [3, 0],  event: nil}
   subject(:grid_square2) { GridSquare.new(3,0)}

   it 'Has x and y coordinates' do
      expect(grid_square.coordinates).to eq([3, 0])
   end

   it 'Has no existing events' do
      expect(grid_square.event).to eq(nil)
    end

describe '::event' do
   it 'Loads event information if an event in the grid square exists' do
       expect(grid_square2.event).to eq({:id=>1, :no_tickets=>37, :price=>"$34.48", :coords=>[3, 0]})
   end
end
end
