require './lib/airport'
require './lib/plane'
require './lib/weather'

    # Include a weather condition using a module.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy, the plane can not take off and must remain in the airport.
    # 
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport
    
  describe Weather do 
    context 'weather conditions' do
      it 'a plane cannot take off when there is a storm brewing' do
        airport = Airport.new(6,0)
        plane = Plane.new
        weather = Weather.new
        weather == 'storm'
        expect(lambda { airport.land(plane)}).to raise_error(RuntimeError)
      end
       
      it 'a plane cannot land in the middle of a storm' do
      end
    
    end
  end

