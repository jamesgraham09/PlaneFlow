class Plane

	def initialize
		@status = 'airborne'
	end

	def grounded?
		@status == 'grounded'
	end

	def airborne?
		@status == 'airborne'
	end

	def land
		@status = 'grounded'
	end

	def takeoff
		@status = 'airborne'
	end


end