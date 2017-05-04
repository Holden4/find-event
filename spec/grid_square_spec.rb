require 'grid_square'

describe GridSquare do
   subject(:grid_square) { GridSquare.new(3, 8) }

   it 'Is an instance of a grid square' do
     expect(subject).to be_an_instance_of(GridSquare)
   end

   it 'Has been given both x and y coordinates' do
      expect(subject.coordinates).to eq([3,8])
   end

 end
