def max(nums)
  return nums.max if nums.length <= 2
  mid = nums.length / 2

  return [max(nums[0...mid]), max(nums[mid..nums.length - 1])].max
end

arr = [100, 5, 4, 3, 7, 6, 2, 1, 55, 0]
p max(arr)
