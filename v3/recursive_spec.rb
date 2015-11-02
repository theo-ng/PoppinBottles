require_relative 'recursive'

describe BottlePops do
  it 'should return 0' do
    expect(BottlePops.new.bottle_poppin(0, 0)).to be 0
  end
  it 'should return 0' do
    expect(BottlePops.new.bottle_poppin(3, 2)).to be 7
  end
  it 'should return 0' do
    expect(BottlePops.new.bottle_poppin(1, 3)).to be 1
  end
  it 'should return 0' do
    expect(BottlePops.new.bottle_poppin(1, 4)).to be 3
  end
  it 'should return 0' do
    expect(BottlePops.new.bottle_poppin(1, 5)).to be 3
  end
  it 'should return 35' do
    expect(BottlePops.new.bottle_poppin(10, 10)).to be 35
  end
end