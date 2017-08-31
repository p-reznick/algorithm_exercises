def search_range(nums, target)
  left = nums.first == target ? 0 : get_left(nums, target)
  right = nums.last == target ? nums.length - 1 : get_right(nums, target)
  [left, right]
end

def get_left(nums, target, start_i=0)
  return -1 if nums.length <= 1 && nums[0] != target
  left = 0
  right = nums.length - 1
  mid = right / 2

  if nums[mid] == target
    return -1 if left > right
    get_left(nums[0..mid], target, start_i)
  elsif nums[mid] > target
    get_left(nums[0...right], target, start_i)
  else
    return -1 if nums.length == 2 && nums[0] != target
    get_left(nums[mid..right], target, start_i + mid)
  end
end

def get_right(nums, target, start_i=0)
  return -1 if nums.length <= 1 && nums[0] != target
  left = 0
  right = nums.length - 1
  mid = right / 2

  if nums[mid] == target
    return -1 if left > right
    get_right(nums[mid..right], target, start_i + mid)
  elsif nums[mid] > target
    get_right(nums[0...right], target, start_i)
  else
    return -1 if nums.length == 2 && nums[1] != target
    get_right(nums[mid..right], target, start_i + mid)
  end
end
