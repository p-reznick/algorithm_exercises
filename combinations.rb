# 77
# mental model: each passthrough in combine is essentially constructing
# a new graph, with the first element in the array as the root, with this
# pattern repeated recursively down the tree and across the tree, i.e., to
# depth k.  The range of elements is shortened by one from the left on each
# passthrough, since the previous tree will have captured all of the possible
# solutions containing the first element.

def combine(n, k)
  result = []
  nums = (1..n).to_a
  n.times do |_i|
    break if nums.length < k
    combine_helper(nums, [nums[0]], k, result)
    nums.shift
  end
  result
end

def combine_helper(nums, solution, k, result)
  if solution.length == k
    result << solution.clone
  else
    nums.each_with_index do |num, index|
      next if solution.include?(num)
      solution << num

      combine_helper(nums[index + 1...nums.length], solution, k, result)

      solution.pop
    end
  end
end
