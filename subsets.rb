# 78
# times out on case at bottom
def subsets(nums)
  result = []
  subsets_helper(nums, [], result)
  result
end

def subsets_helper(nums, solution, result)
  temp_solution = solution.sort.clone
  if !result.include?(temp_solution)
    result << temp_solution
  end
  nums.each do |num|
    next if solution.include?(num)
    solution << num

    subsets_helper(nums, solution, result)

    solution.pop
  end
end

p subsets([1,2,3,4,5,6,7,8,10,0])
