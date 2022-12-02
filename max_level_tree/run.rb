require 'pry'


class MaxLevelTree
  def levels(root)
    root_copy = root.dup
    lvl = 1
    r = nil
    while r.nil? do
      r = root_copy.delete_at(0)
    end
    xs = [[r], []]
    while root_copy.count do
      xs[lvl - 1].each do |_x|
        (0..1).each do |_i|
          break unless root_copy.any?

          r = root_copy.delete_at(0)
          xs[lvl] << r unless r.nil?
        end
      end

      break unless root_copy.any?

      lvl += 1
      xs << []
    end

    xs
  end

  def max_level(root)
    xs = levels(root)

    max_amount = -Float::INFINITY
    max_lvl = 0
    (0..xs.count - 1).each do |i|
      r = xs[i].sum
      next unless r > max_amount

      max_amount = r
      max_lvl = i + 1
    end

    max_lvl
  end
end
