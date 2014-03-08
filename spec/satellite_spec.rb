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

  it 'should send rover instructions' do 
    satellite.initialize_rovers
    expect(satellite.execute_instructions).to eq([1, 3, "N"], [5, 1, "E"])
  end


end