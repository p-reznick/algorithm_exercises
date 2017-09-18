# 136
# bitwise solution
def single_number(nums)
  ans = 0

  len = nums.length
  len.times do |i|
    ans ^= nums[i]
  end

  ans
end

# bitwise solution counting ones and zeroes
# iterate over all numbers
# count the ones for each word
# if the count of ones is odd
# - we know that at the given index, the bit is a one
def single_number(nums)
  single_number = 0

  32.times do |i|
    ones = 0

    nums.length.times do |j|
      if ((nums[j] & (1 << i)) != 0)
        ones += 1
      end
    end

    if ones.odd?
      single_number |= (1 << i)
    end
  end

  single_number
end
