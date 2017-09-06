# 496
# Time: O(N^2) Space: O(N)
def next_greater_element(find_nums, nums)
  output = []
  find_nums.each_with_index do |num, i|
    output << next_greater(num, nums)
  end
  output
end

def next_greater(target, nums)
  start_i = nil
  nums.each_with_index do |num, i|
    if target == num
      start_i = i
      break
    end
  end

  start_i.upto(nums.length - 1) do |i|
    return nums[i] if nums[i] > target
  end
  -1
end
