# Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
#
# You may assume no duplicates in the array.
#
# Here are few examples.
# [1,3,5,6], 5 → 2
# [1,3,5,6], 2 → 1
# [1,3,5,6], 7 → 4
# [1,3,5,6], 0 → 0
require 'pry'
def search_insert(nums, target)
  left = 0
  right = nums.length - 1

  while left + 1 < right
    mid = left + (right - left) / 2
    mid_val = nums[mid]
    if mid_val == target
      return mid
    elsif mid_val < target
      left = mid
    elsif mid_val > target
      right = mid
    end
  end

  if target < nums[left]
    left
  elsif target > nums[right]
    right + 1
  elsif target < nums[right]
    right
  else
    left
  end
end

p search_insert([1,3], 1) # 2
