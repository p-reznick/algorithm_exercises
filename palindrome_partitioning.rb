# string of length l
# create an array with all integers 1..l
# generate all combinations of integers that sum to l, with integer repetition allowed
def partition(string)
  result = []
  target = str.length
  sorted = []
  for idx in 1..target
    sorted << [idx] * target
  end
  backtrack(result, [], sorted, {}, target, 0, 0, string)
  result
end

def backtrack(result, solution, candidates, result, target, start, current_sum)
  return if current_sum > target
  if current_sum == target && !result[solution]
    string_solution = get_strings(solution, string)
    if string_solution.all? do |str|
      is_palindrome?(str)
    end
    result[solution] = 1
    result << solution.clone
  end

  (start...candidates.size).each do |idx|
    backtrack(result, solution + [candidates[idx]], candidates, result, target, idx + 1, current_sum + candidates[idx])
  end

  # without mutating array, consumes additional space with each additional array created
end

def get_strings(arr, string)
  start = 0
  arr.map do |length|
    finish = start + length
    temp = string[start...finish]
    start = finish
    temp
  end
end

def is_palindrome?(str)
  str == str.reverse
end
