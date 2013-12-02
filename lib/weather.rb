module Weather

	def new_weather
		random = rand(1..100)
		@weather = 'storm'
	end

	def stormy?
		@weather == 'storm'
	end

	def calm?
		@weather == 'calm'
	end

end

