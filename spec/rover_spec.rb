require 'mars'
require 'rover'

describe Rover do 

	let (:boundaries) {"5 5"}
	let (:start_data1) {"1 2 N"}
	let (:start_data2) {"3 3 E"}
	let (:instructions1) {"LMLMLMLMM"}
	let (:instructions2) {"MMRMMRMR"}
	let (:mars) {Mars.new(boundaries)}
	let (:rover1) {Rover.new(start_data1)}
	let (:rover2) {Rover.new(start_data2)}

	context 'initial placement' do 

		it 'should know its start coordinates' do 
			expect(rover1.x).to eq(1)
			expect(rover1.y).to eq(2)
		end

		it 'should know its start direction' do 
			expect(rover1.facing).to eq("N")
		end

	end

	context 'changing direction' do 

		it 'should be able change direction' do
			rover1.turn("R")
			expect(rover1.facing).to eq("E")
			rover1.turn("R")
			expect(rover1.facing).to eq("S")
		end

	end

	context 'moving location Rover#M' do 

		it 'should be able to move once' do 
			rover1.M
			expect(rover1.x).to eq(1)
			expect(rover1.y).to eq(3)
		end

		it 'should be able to move, change direction, and move again' do 
			rover1.M
			rover1.turn("L")
			rover1.M
			expect(rover1.x).to eq(0)
			expect(rover1.y).to eq(3)
		end

		# it 'should know if a location is off piste' do 
		# 	inquisitiverover.M
		# 	expect(inquisitiverover.off_piste?).to raise_error(RuntimeError)
		# end

	end

	context 'interpreting the input' do

		it 'should take a series of instructions' do 
			rover1.route(instructions1)
			expect(rover1.x).to eq(1)
			expect(rover1.y).to eq(3)
			expect(rover1.facing).to eq("N")
			rover2.route(instructions2)
			expect(rover2.x).to eq(4)
			expect(rover2.y).to eq(1)
			expect(rover2.facing).to eq("N")
		end

	end

end

