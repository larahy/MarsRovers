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

	def course(line3)
		line3.split(//).each do |cmd|
			self.send cmd
		end
	end


	# loop do 
	# 	begin 
	# 		print "Hello Nasa ;) Please enter the upper right coordinates of the plateau?"
	# 		layout = gets.chomp
	# 		print "Please enter the coordinates and direction of your first Rover in the format 'X coordinate, Y coordinate, compass direction'. For example '1 2 N'"
	# 		line2 = gets.chomp
	# 		print "Please enter the course you would like your Rover to take in the format 'TURN MOVE', where a left turn is represented by an 'L' and a right turn is represented by a 'R'.  For example 'LMLMLMLMM'"
	# 		line3 = gets.chomp
	# 		print "If you have any more Rovers please enter the coordinates here "
	# 	end
end
