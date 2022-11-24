require_relative 'run'

RSpec.describe A do
  before(:all) do
    @a = A.new
  end

  describe 'hello' do
    it 'returns nil' do
      result = @a.hello
      expect(result).to be(nil)
    end
  end

  describe 'add' do
    it 'returns sum' do
      x = 3
      y = 5
      result = @a.add(x, y)
      expect(result).not_to be(nil)
      expect(result).to eq(3 + 5)


      expect(1.0).to eq(1)
    end
  end
end
