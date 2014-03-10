require 'mars'
require 'rover'

class Satellite 

attr_reader :input

  def initialize(input_data)
    @input = input_data.lines
  end

  def limits
    @input[0]
  end

  def rovers
    @rovers ||= []
  end

  def rovercount
    rovers.count 
  end

  def initialize_rovers
    limits = @input.shift
    @input.each_slice(2) do |start_data, instructions|
      rover = Rover.new(start_data.chomp, limits)
      rover.route(instructions.chomp)
      rovers << rover
    end
    rovers
  end

  def inspect_rovers
    finish_data = [] 
    rovers.each do |rover|
      finish_data << [rover.x, rover.y, rover.facing]
    end
    finish_data
  end


end

