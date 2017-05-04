require 'grid_map'

 describe GridMap do
   subject(:grid_map) { GridMap.new }

   describe 'Grid is initialized' do
     it 'Creates a new grid' do
       expect(subject).to be_an_instance_of(GridMap)
     end
   end
 end
