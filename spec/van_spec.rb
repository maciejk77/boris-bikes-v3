require 'van'

describe Van do

  let(:van){ Van.new }
  let(:bike) { double :bike }

  it 'can have a default capacity' do
    expect(van.capacity).to eq(10)
  end

  it 'can have a custom capacity' do
    big_van = Van.new({capacity: 20})
    expect(big_van.capacity).to eq(20)
  end

  it 'can load a bike' do
    van.load(bike)
    expect(van.bikes).to eq [bike]
  end
  
  it 'can release a bike' do
    van.load(bike)
    van.release(bike)
    expect(van.bikes).to eq []
  end
  
end