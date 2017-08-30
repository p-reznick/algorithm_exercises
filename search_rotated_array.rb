# 33
# Time: O(N) Space: O(1)
# def search(nums, target)
#   index = 0
#   nums.each do |num|
#     return index if num == target
#     index += 1
#   end
#   -1
# end
require 'pry'
# Time: Space:
def search(nums, target)
  min_index = get_min_index(nums)
  left = 0 + min_index % nums.length
  right = min_index - 1 % nums.length

  while left - min_index + 1 % nums.length < right - min_index % nums.length
    mid = left + (right - left) / 2
  end
end

def get_min_index(nums)
  left = 0
  right = nums.length - 1
  return 0 if nums[left] < nums[right]

  while left + 1 < right
    mid = left + (right - left) / 2
    if nums[left] > nums[mid]
      right = mid
    else
      left = mid
    end
  end
  mid
end

p search([4, 5, 6, 7, 0, 1, 2], 5)
