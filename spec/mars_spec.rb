require 'mars'

describe Mars do 

	let (:limits) {"5 5"}
	let (:mars) {Mars.new(limits)}

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
		
		it 'should know its limits' do 
			expect(mars.yboundary).to eq(5)
			expect(mars.xboundary).to eq(5)
		end

	end

end
