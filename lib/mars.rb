class Mars 

	attr_reader :plateau

	def initialize(line1)
		y = line1.split[1].to_i
		x = line1.split[0].to_i
		@plateau = Array.new(y) {Array.new(x)}
	end

end