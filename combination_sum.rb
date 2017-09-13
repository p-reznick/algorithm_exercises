def combination_sum2(candidates, target)
  result = []
  sorted = candidates.sort
  backtrack(result, [], sorted, {}, target, 0, 0)
  result
end

def backtrack(result, temp, candidates, found, target, start, current_sum)
  return if current_sum > target
  if current_sum == target && !found[temp]
    found[temp] = 1
    result << temp.clone
  end

  (start...candidates.size).each do |idx|
    backtrack(result, temp + [candidates[idx]], candidates, found, target, idx + 1, current_sum + candidates[idx])
  end

  # without mutating array, consumes additional space with each additional array created
end
