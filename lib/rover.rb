require 'mars'

class Rover
	attr_accessor :x, :y, :facing
	COMPASS = ["N", "E", "S", "W"]


	def initialize(start_data, limits)
		@yboundary = limits.split[1].to_i
		@xboundary = limits.split[0].to_i
		@x = start_data.split.take(2).first.to_i
		@y = start_data.split.take(2).last.to_i
		@facing = start_data.split.last
	end

	def turn(direction)
		where_in_compass = COMPASS.index(@facing)
		if direction == "L"
			@facing = COMPASS[where_in_compass - 1]
		else
			@facing = COMPASS.fetch(where_in_compass + 1, "N")
		end
	end

	def M
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

	def L
		turn("L")
	end

	def R
		turn("R")
	end

	def reverse 
		if @facing == "N"
			@y -= 1
		elsif @facing == "E"
			@x -= 1
		elsif @facing == "S"
			@y += 1
		else
			@x += 1
		end
	end

	def route(instructions)
		instructions.split(//).each do |cmd|
			self.send cmd unless off_piste?
			self.reverse if off_piste?
		end
	end

	def off_piste?
    @x > @xboundary || @y > @yboundary || @x < 0 || @y < 0
	end


end
