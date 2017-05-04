require 'event'

 describe Event do
   subject(:event) { Event.new(1) }

   it 'Creates new event with id' do
     expect(subject.id).to eq(1)
   end

 end
