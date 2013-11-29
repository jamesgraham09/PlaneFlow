require './lib/airport'
require './lib/plane'
require './lib/weather'

 
# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport and how that is impermented.
#
# If the airport is full then no planes can land
describe Airport do
  let(:airport) { Airport.new }
  
  context 'taking off and landing' do
    
    it 'a plane can land' do
      airport = Airport.new(6,0)
      plane = Plane.new
      airport.land(plane)
      expect(airport.plane_count).to eq(1)
      end
    
    it 'a plane can take off' do
      airport = Airport.new(6,1)
      plane = airport.planes.first
      airport.takeoff(plane)
      expect(airport.plane_count).to eq(0)
      end
  
  end
  
  context 'traffic control' do

    it "airport knows when it is full" do
      airport = Airport.new(6,6)
      expect(airport.full?).to eq(true)
      end

    it 'a plane cannot land if the airport is full' do
      airport = Airport.new(6,6)
      plane = Plane.new
      expect(lambda { airport.land(plane)}).to raise_error(RuntimeError)
      end
    
  end
end


 
# grand final
# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!
describe "The grand finale (last spec)" do
  it 'all planes can land and all planes can take off' do
  end
end