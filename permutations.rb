# 46
# a preorder traversal solution, with the mental model of a graph
# representing all of the possible solution states
def permute(nums)
  result = []
  permute_helper(nums, [], result)
  result
end

def permute_helper(nums, solution, result)
  if nums.length == solution.length
    result << solution.clone
  else
    nums.each do |num|
      next if solution.include?(num)
      solution << num

      permute_helper(nums, solution, result)

      solution.pop
    end
  end
end
