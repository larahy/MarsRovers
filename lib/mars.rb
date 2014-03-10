require 'satellite'

class Mars 

	attr_reader :plateau, :yboundary, :xboundary

	def initialize(boundaries)
		@yboundary = boundaries.split[1].to_i
		@xboundary = boundaries.split[0].to_i
		@plateau = Array.new(@yboundary) {Array.new(@xboundary)}
	end


end