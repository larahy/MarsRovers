require 'mars'
require 'rover'

class Satellite 

attr_reader :input

  def initialize(input_data)
    @input = input_data.lines
  end

  def boundaries
    @input[0]
  end

  # def start_data
  #   @input[1]
  # end

  # def rover_count
  #   @input.length / 2
  # end

  def rovers
    @rovers ||= []
  end

  def rovercount
    rovers.count 
  end

  def initialize_rovers
    @input.shift
    @input.each_slice(2) do |start_data, instructions|
      rover = Rover.new(start_data)
      rovers << [rover, instructions]
    end
    rovers
  end

  def execute_instructions
    finish_positions = []
    rovers.each do |rover|
      rover[0].course(rover[1])
      finish_positions << [rover.x, rover.y, rover.facing]
    end
    finish_positions
  end

  # def read_rover_position
  #   rovers.each do |rover|
  #   puts "#{rover.x} #{rover.y} #{rover.facing}"
  #   end
  # end


end

