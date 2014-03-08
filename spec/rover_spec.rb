require 'mars'
require 'rover'

describe Rover do 

	let (:line1) {"5 5"}
	let (:line2) {"1 2 N"}
	let (:inquisitive) {"5 5 N"}
	let (:instructions) {"LMLMLMLMM"}
	let (:mars) {Mars.new(line1)}
	let (:rover) {Rover.new(line2)}
	let (:inquisitiverover) {Rover.new(inquisitive)}

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

	context 'moving location Rover#M' do 

		it 'should be able to move once' do 
			rover.M
			expect(rover.x).to eq(1)
			expect(rover.y).to eq(3)
		end

		it 'should be able to move, change direction, and move again' do 
			rover.M
			rover.turn("L")
			rover.M
			expect(rover.x).to eq(0)
			expect(rover.y).to eq(3)
		end

		# it 'should know if a location is off piste' do 
		# 	inquisitiverover.M
		# 	expect(inquisitiverover.off_piste?).to raise_error(RuntimeError)
		# end

	end

	context 'interpreting the input' do

		it 'should take loadsa input' do 
			rover.course('MLM')
			expect(rover.x).to eq(0)
			expect(rover.y).to eq(3)
		end

	end

end

