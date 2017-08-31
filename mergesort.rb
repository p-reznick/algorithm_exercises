# Time: O(N log N) -- binary process to reduce data to single
# array, linear recombination for each level of binary tree
# Space: O(N)
def mergesort(nums)
  return nums if nums.length == 1

  mid = nums.length / 2

  left = mergesort(nums[0...mid])
  right = mergesort(nums[mid..-1])

  merge(left, right)
end

def merge(left, right)
  result = []

  while !(left.empty? || right.empty?)
    if left.first <= right.first
      result << left.shift
    else
      result << right.shift
    end
  end

  result.concat(left) unless left.empty?
  result.concat(right) unless right.empty?
  result
end
