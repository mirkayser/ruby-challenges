require 'pry'

class MaxGold
  def initialize(grid)
    @grid = grid
    @current_gold = 0
    @max_gold = 0
  end

  def neighbors(row, col)
    xs = []
    xs << [row - 1, col] if row > 0
    xs << [row, col - 1] if col > 0
    xs << [row + 1, col] if row < @grid.count - 1
    xs << [row, col + 1] if col < @grid[0].count - 1
    xs
  end

  def backtrack(row, col)
    # get gold currently on square (to be able to return it later)
    gold_on_square = @grid[row][col]
    return unless gold_on_square > 0

    # add to current gold
    @current_gold += gold_on_square

    # set new max
    @max_gold = [@max_gold, @current_gold].max

    # take gold square
    @grid[row][col] = 0
    neighbors(row, col).each do |neighbor|
      backtrack neighbor[0], neighbor[1]
    end

    # return original gold to square & set current gold to 0
    @grid[row][col] = gold_on_square
    @current_gold = 0
  end

  def path_max_gold
    (0..@grid.count - 1).each do |row|
      (0..@grid[0].count - 1).each do |col|
        backtrack row, col
      end
    end

    @max_gold
  end
end
