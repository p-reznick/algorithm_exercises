# 153
# key is to recognize that there is a downward slope in any subarray containing a min element
# Space: O(1) Time: O(log N)

def find_min(nums)
  left = 0
  right = nums.length - 1

  while left + 1 < right
    mid = left + (right - left) / 2
    return nums[0] if nums[left] < nums[mid] && nums[mid] < nums[right] # non-pivot clause

    if nums[left] > nums[mid]
      right = mid
    else
      left = mid
    end
  end
  [nums[left], nums[right]].min
end
