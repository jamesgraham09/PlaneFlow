require './lib/plane'

# When we create a new plane, it should have a "flying" status, thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane in question should have its status changed to "landed"
#
# When the plane takes of from the airport, the plane's status should become "flying"

describe Plane do
 
  let(:plane) { Plane.new }
  
  it 'has a flying status when created' do
      plane = Plane.new
      expect(plane).to be_airborne
  end
  
  it 'has a flying status when in the air' do
      plane = Plane.new
      @status = 'airborne'
      expect(plane).to be_airborne
  end
  
  it 'can take off' do
      plane = Plane.new
      @status = 'grounded'
      plane.takeoff
      expect(plane).to be_airborne

  end
  
  it 'can land' do
      plane = Plane.new
      @status = 'airborne'
      plane.land
      expect(plane).to be_grounded
  end

end

