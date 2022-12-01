require_relative 'run'


describe 'MaxGold' do
  before(:all) do
    @grid = [
      [0, 6, 0],
      [5, 8, 7],
      [0, 9, 0],
    ]
    @instance = MaxGold.new @grid
  end

  describe 'neighbors' do
    it 'returns array' do
      res = @instance.neighbors(1, 1)
      expect(res).to be_kind_of(Array)
    end
  end

  describe 'backtrack' do
    it 'returns  0' do
      res = @instance.backtrack(1, 1)
      expect(res).to eq(0)
    end
  end

  describe 'path max gold' do
    before(:all) do
      @res = @instance.path_max_gold
    end

    it 'returns integer' do
      expect(@res).to be_kind_of(Integer)
    end

    it 'returns greater than 0' do
      expect(@res).to be > 0
    end
  end
end
