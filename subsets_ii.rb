# El's solution

def subsets_with_dup(nums)
  subset_helper(nums.sort, 0, [], {})
end


def subset_helper(nums, start, subset, results)
  if !results[subset]
    results[subset.clone] = true
  end

  (start...nums.length).each do |i|
    subset << nums[i]
    subset_helper(nums, i+1, subset, results)
    subset.pop
  end
  results.keys
end
