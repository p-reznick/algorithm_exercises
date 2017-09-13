def permute_unique(nums)
    result = {}
    permute_helper(nums, [], result)
    result.keys
end

def permute_helper(nums, solution, result)

    # check solution is complete, if so, backtrack right away
    if solution.size == nums.size
        vals_solution = solution.map do |i|
            nums[i]
        end
        result[vals_solution] = 1 unless result[vals_solution]
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
