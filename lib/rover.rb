require 'mars'

class Rover
	attr_accessor :x, :y, :facing
	COMPASS = ["N", "E", "S", "W"]

	def initialize(line2)
		@x = start_coordinates(line2).first.to_i
		@y = start_coordinates(line2).last.to_i
		@facing = start_direction(line2)
	end

	def start_coordinates(line2)
		line2.split.take(2)
	end

	def start_direction(line2)
		line2.split.last
	end

	def turn(direction)
		where_in_compass = COMPASS.index(@facing)
		if direction == "L"
			@facing = COMPASS[where_in_compass - 1]
		else
			@facing = COMPASS[where_in_compass + 1]
		end
	end

	def move
		if @facing == "N"
			@y += 1
		elsif @facing == "E"
			@x += 1
		elsif @facing == "S"
			@y -= 1
		else
			@x -= 1
		end
	end


end
