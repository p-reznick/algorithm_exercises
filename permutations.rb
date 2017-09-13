# 46
# a preorder traversal solution, with the mental model of a graph
# representing all of the possible solution states
def permute(nums)
  result = []
  # invoke recursive helper for traversal w result carrying over state
  permute_helper(nums, [], result)
  result
end

def permute_helper(nums, solution, result)
  # recursive base case -- add solution to to results if length is correct
  if nums.length == solution.length
    result << solution.clone
  else
    # else iterate over children, adding them to the solution
    # UNLESS the child is already contained in the solution
    nums.each do |num|
      next if solution.include?(num)
      solution << num

      permute_helper(nums, solution, result)

      solution.pop
    end
  end
end
