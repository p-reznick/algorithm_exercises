require 'pry'

def find_kth_largest(nums, k)
  # binding.pry
  pivot_i = partition!(nums, 0, nums.length - 1)
  pivot_val = nums[pivot_i]

  loop do
    if pivot_i == nums.length - k
      return nums[pivot_i]
    elsif pivot_i < nums.length - k
      pivot_i = partition!(nums, 0, pivot_i - 1)
    else
      pivot_i = partition!(nums, pivot_i + 1, nums.length - 1)
    end
  end
end

def partition!(nums, left, right)
  pivot_index = right
  right -= 1
  pivot_val = nums[pivot_index]

  loop do
    # binding.pry
    while nums[left] < pivot_val
      break if left == nums.length - 1
      left += 1
    end

    while nums[right] > pivot_val
      break if right == 0
      right -= 1
    end

    if left >= right
      break
    else
      nums[left], nums[right] = nums[right], nums[left]
    end
  end

  nums[left], nums[pivot_index] = nums[pivot_index], nums[left]
  left
end

# p find_kth_largest([2, 1], 1)
# 1, 2, 3, 4, 5, 6 => 5 at index 4
