require 'event'

 describe Event do
   subject(:event) { Event.new(1) }

   describe 'attributes' do
     it 'Has a unique id' do
       expect(subject.id).to eq(1)
     end

     it 'Has a certain number of tickets' do
       expect(subject.no_tickets).to eq(37)
     end

     it 'Has a price in USD' do
       expect(subject.price).to eq("$34.48")
     end

     it 'Has a set of coordinates' do
       expect(subject.coords).to eq([3, 0])
     end
   end
 end
