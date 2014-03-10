require 'rover'
require 'satellite'

describe 'Satellite' do 

  let(:satellite) {Satellite.new(IO.read('spec/instructions/input_data.txt'))}

  it 'should take input from nasa scientists' do 
    expect(satellite.input).to eq ["5 5\n", "1 2 N\n", "LMLMLMLMM\n", "3 3 E\n", "MMRMMRMRRM"]
  end

  it 'should initialise rovers' do 
    satellite.initialize_rovers
    expect(satellite.rovercount).to eq(2)
  end

  it 'should read final rover positions and compass points' do 
    satellite.initialize_rovers
    expect(satellite.inspect_rovers).to eq([[1,3,"N"],[5,1,"E"]])
  end

  it 'should send final rover position and compass points back to Nasa' do 
  end



end