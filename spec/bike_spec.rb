require 'bike'

describe Bike do
  let(:bike) { Bike.new }

  it 'knows it is working' do
    expect(bike).to be_working
  end

  it 'can break' do
    bike.break!
    expect(bike).not_to be_working
  end

  it 'can be fixed when broken' do
    bike.break!
    bike.fix!
    expect(bike).to be_working
  end

  it 'cannot be fixed if already working' do
    expect { bike.fix! }.to raise_error('Already working')
  end
end
