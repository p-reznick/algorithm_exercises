# 62
def unique_paths(m, n, cache = {})
  return 0 if m < 0 || n < 0
  return 1 if m == 1 || n == 1

  result = (cache[n] || unique_paths(m - 1, n, cache)) + (cache[n] || unique_paths(m, n -1, cache))
  cache[result] = true
  result
end
