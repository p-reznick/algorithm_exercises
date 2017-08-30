# 162

require 'pry'
def find_peak_element(nums)
  left = 0
  right = nums.length - 1
  mid = left + (right - left) / 2

  while !is_peak_element?(mid, nums)
    left_difference = (nums[left] - nums[mid]).abs
    right_difference = (nums[right] - nums[mid]).abs

    if mid - left > left_difference
      right = mid
    else
      left = mid
    end
    mid = left + (right - left) / 2
  end
  mid
end

def is_peak_element?(index, nums)
  return true if nums.length == 1
  val = nums[index]

  (val > nums[index - 1] && val > nums[index + 1]) ||
  (index == 0 && val > nums[1]) ||
  (index == nums.length - 1 && val > nums[nums.length - 2])
end

p find_peak_element([1, 2, 3, 1])
