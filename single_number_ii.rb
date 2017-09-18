# same as single_number.rb, but check whether
# count of ones is evenly divisible by three,
# rather than whether it's even
def single_number(nums)
  single_number = 0

  32.times do |i|
    ones = 0

    nums.length.times do |j|
      if ((nums[j] & (1 << i)) != 0)
        ones += 1
      end
    end

    if ones % 3 != 0
      single_number |= (1 << i)
    end
  end

  single_number
end
