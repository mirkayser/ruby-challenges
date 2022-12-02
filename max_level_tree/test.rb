require_relative 'run'

RSpec.describe MaxLevelTree do
  before(:all) do
    @root1 = [nil, 1, 7, 0, 7, -8, nil, nil]
    @root2 = [989, nil, 10250, 98693, -89388, nil, nil, nil, -32127]
    @instance = MaxLevelTree.new
  end

  describe 'levels' do
    it 'returns array' do
      res = @instance.levels @root1
      expect(res).to be_kind_of(Array)
    end
  end

  describe 'max level' do
    it 'returns integer ' do
      res1 = @instance.max_level @root1
      expect(res1).to be_kind_of(Integer)
      expect(res1).to eq(2)

      res2 = @instance.max_level @root2
      expect(res2).to be_kind_of(Integer)
      expect(res2).to eq(2)
    end
  end
end
