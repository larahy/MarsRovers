require 'mars'
require 'rover'

describe Rover do 

	let (:line1) {"5 5"}
	let (:line2) {"1 2 N"}
	let (:line3) {"LMLMLMLMM"}
	let (:mars) {Mars.new(line1)}
	let (:rover) {Rover.new}

	context 'placement' do 

		it 'should know its start coordinates' do 
			expect(rover.coordinates(line2)).to eq("1,2")
		end

		it 'should know its start direction' do 
			expect(rover.direction(line2)).to eq("N")
		end

	end

end

