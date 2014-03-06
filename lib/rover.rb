require 'mars'

class Rover

	def initialize
	end

	def coordinates(line2)
		line2.split.take(2).join(',')
	end

	def direction(line2)
		line2.split.last
	end

end
