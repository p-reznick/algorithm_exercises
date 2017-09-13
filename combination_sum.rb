# 39
def combination_sum(candidates, target)
  result = []
  while candidates.length > 0
    combination_sum_helper(candidates, [candidates[0]], result, target)
    candidates.shift
  end
  result
end

def combination_sum_helper(candidates, solution, result, target)
  sum = solution.reduce(&:+)

  if sum == target
    result << solution.clone
  elsif sum < target
    candidates.each_with_index do |num, i|
      solution << num
      combination_sum_helper(candidates[i..-1], solution, result, target)
      solution.pop
    end
  end
end
