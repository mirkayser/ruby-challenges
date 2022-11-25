require_relative 'run'

RSpec.describe 'arithmetic_subarrays' do
  before(:all) do
    @nums = [4,6,5,9,3,7]
    @l = [0,0,2]
    @r = [2,3,5]
    @res = arithmetic_subarrays(@nums, @l, @r)
  end

  it 'returns array of booleans' do
    expect(@res).to be_a(Array)
  end

  it 'array has length m' do
    expect(@res.count).to eq(@l.count)
  end

  it 'elems of array are booleans' do
    @res.each do |i| 
      expect([true, false]).to include i
    end
  end
end
