require 'grid_square'

describe GridSquare do
   subject(:grid_square) { GridSquare.new }

   it 'is an instance of a cell' do
     expect(subject).to be_an_instance_of(GridSquare)
   end

 end
