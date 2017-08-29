# 34. Time: O(log N) Space: O(1)
def search_range(nums, target)
  left = find_left(0, nums.length - 1, nums, target)
  right = find_right(0, nums.length - 1, nums, target)
  [left == -1 && right != -1 ? right : left, right == -1 && left != -1 ? left : right]
end

def find_left(left, right, nums, target)
  return left if nums[left] == target
  left = left
  right = right

  while left + 1 < right
    mid = (left + (right - left) / 2)

    if nums[mid] == target
      return mid unless nums[mid - 1] == target
      right = mid
    elsif nums[mid] > target
      right = mid
    elsif nums[mid] < target
      left = mid
    end
  end
  -1
end

def find_right(left, right, nums, target)
  return right if nums[right] == target
  left = left
  right = right

  while left + 1 < right
    mid = (left + (right - left) / 2)

    if nums[mid] == target
      return mid unless nums[mid + 1] == target
      left = mid
    elsif nums[mid] > target
      right = mid
    elsif nums[mid] < target
      left = mid
    end
  end
  -1
end
