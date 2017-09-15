# 70
def climb_stairs(n, cache = {})
  return 1 if n <= 1 # since n == 0 is technically a path

  result = (cache[n - 1] || climb_stairs(n - 1, cache)) + (cache[n - 2] || climb_stairs(n - 2, cache))
  cache[n] = result
  result
end
