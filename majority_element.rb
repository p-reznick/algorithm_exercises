# 169
# iterative solution
def majority_element(nums)
  counts = {}

  nums.each do |elem|
    if counts[elem]
      counts[elem] += 1
    else
      counts[elem] = 1
    end
  end

  majority_elem = nil
  max_count = 0

  counts.keys.each do |key|
    count = counts[key]
    if count > max_count
      max_count = count
      majority_elem = key
    end
    break if max_count > nums.length / 2
  end

  majority_elem
end


# bitwise manipulation solution
def majority_element(nums)
  majority_elem = 0

  32.times do |i|
    ones = 0
    zeroes = 0

    nums.length.times do |j|
      if ((nums[j] & (1 << i)) != 0)
        ones += 1
      else
        zeroes += 1
      end
    end

    if ones > zeroes
      majority_elem |= (1 << i)
    end
  end

  majority_elem
end
