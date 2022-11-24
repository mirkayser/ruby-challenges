require 'pry'

def spiral(r_start, c_start, rows, cols)
  res = [[r_start, c_start]]
  return res unless rows*cols > 1

  1.step(2*(rows + cols), 2).each do |k|

    [[0, 1, k], [1, 0, k], [0, -1, k+1], [-1, 0, k+1]].each do |dr, dc, dk|

      1.step(dk).each do |_dk|
        r_start += dr
        c_start += dc

        in_grid = (
          0 <= r_start && 
          r_start < rows &&
          0 <= c_start &&
          c_start < cols
        )
        res << [r_start, c_start] if in_grid
      end
    end

  end

  res
end
