require 'mars'
require 'rover'

describe Rover do 

	let (:line1) {"5 5"}
	let (:line2) {"1 2 N"}
	let (:line3) {"LMLMLMLMM"}
	let (:mars) {Mars.new(line1)}
	let (:rover) {Rover.new(line2)}

	context 'initial placement' do 

		it 'should know its start coordinates' do 
			expect(rover.x).to eq(1)
			expect(rover.y).to eq(2)
		end

		it 'should know its start direction' do 
			expect(rover.facing).to eq("N")
		end

	end

	context 'changing direction' do 

		it 'should be able change direction' do
			rover.turn("R")
			expect(rover.facing).to eq("E")
			rover.turn("R")
			expect(rover.facing).to eq("S")
		end

	end

	context 'moving location Rover#move' do 

		it 'should be able to move once' do 
			rover.move
			expect(rover.x).to eq(1)
			expect(rover.y).to eq(3)
		end

		it 'should be able to move, change direction, and move again' do 
			rover.move
			rover.turn("L")
			rover.move
			expect(rover.x).to eq(0)
			expect(rover.y).to eq(3)
		end

	end

	context 'interpreting the input' do
	end

end

