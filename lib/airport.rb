require_relative 'plane'

class Airport

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
		@planes << plane
	end

	def takeoff(plane)
		@planes.delete plane
	end

end

airport = Airport.new(6,2)
puts airport.plane_count
puts airport.plane_count
puts @planes
puts @capacity