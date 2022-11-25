require 'pry'

def arithmetic_subarrays(nums, l, r)
  res = []

  m = l.count
  (0..m-1).each do |i|
    sub = nums[l[i]..r[i]]

    sub.sort!
    steps = (0..sub.count-2).map do |k|
      sub[k+1] - sub[k]
    end
    res << (steps.uniq.count == 1)
  end

  res
end
