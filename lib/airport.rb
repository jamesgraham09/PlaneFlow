require './lib/plane'
require './lib/weather'

class Airport

	include Weather

	attr_accessor :planes

	def initialize(capacity, starting_planes)
		@capacity = capacity
		@planes = []
		starting_planes.times do 
			plane = Plane.new
			@planes << plane
			end
	end

	def plane_count
		@planes.count
	end

	def full?
		@capacity <= plane_count
	end

	def land(plane) 
		raise "airportfull" if full?
		raise "toostormy" if stormy?
		@planes << plane
	end

	def takeoff(plane)
		raise "toostormy" if stormy?
		@planes.delete plane
	end

end

# airport = Airport.new(6,2)
# puts airport.plane_count
# puts airport.plane_count
# puts @planes
# puts @capacity

# airport = Airport.new(6,5)
# puts airport.full?
# plane = Plane.new
# airport.land(plane)
# puts airport.full?
# plance = Plane.new
# airport.land(plane)