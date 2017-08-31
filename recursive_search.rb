# Time: O(N) Space: O(N)
def search(nums, target, start_i=0)
  if nums.length == 1
    return target == nums[0] ? start_i : nil
  end

  mid = nums.length / 2
  return search(nums[0...mid], target, start_i) ||
         search(nums[mid..-1], target, start_i + mid)
end
