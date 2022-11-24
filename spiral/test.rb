require_relative 'run'

RSpec.describe 'spiral' do
  before(:all) do
    r_start = 0
    c_start = 0
    @rows = 1
    @cols = 4
    @res = spiral(r_start, c_start, @rows, @cols)
  end

  it 'returns array of arrays' do
    expect(@res).to be_a(Array)
    @res.each do |coord|
      expect(coord).to be_a(Array)
    end
  end

  it 'all visited coords are in grid' do
    @res.each do |coord|
      expect(coord[0]).to be >= 0
      expect(coord[0]).to be < @rows
      expect(coord[1]).to be >= 0
      expect(coord[1]).to be < @cols
    end
  end

  it 'no duplicate coords' do
    expect(@res).to eq(@res.uniq)
  end

  it 'visited all coords in grid' do
    expect(@res.count).to eq(@rows * @cols)
  end
end
