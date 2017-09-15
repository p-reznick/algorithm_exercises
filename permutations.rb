#46
# a preorder traversal solution
def permute(nums)
    result = []
    permute_helper(nums, [], result)
    result
end

def permute_helper(nums, solution, result)

    # check solution is complete, if so, backtrack right away
    if solution.size == nums.size
        solution_nums = solution.map { |elem| nums[elem] }
        result << solution_nums if !result.include?(solution_nums)
    else
        nums.each_with_index do |num, idx|
            # root processing
            next if solution.include?(idx)
            solution << idx

            # recursive preorder traversal
            permute_helper(nums, solution, result)

            # state maintenance
            solution.pop
        end
    end
end
