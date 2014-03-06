require 'mars'

describe Mars do 

	let (:line1) {"5 5"}
	let (:line2) {"1 2 N"}
	let (:line3) {"LMLMLMLMM"}
	let (:mars) {Mars.new(line1)}

	context 'upon initialization' do 

		it 'should have n by m no of locations' do 
			expect(mars.plateau.flatten.count).to eq(25)
		end

		it 'should be n columns wide' do 
			expect(mars.plateau.count).to eq(5)
		end

		it 'should be m rows tall' do 
			expect(mars.plateau[0].count).to eq(5)
		end
		

	end

end
