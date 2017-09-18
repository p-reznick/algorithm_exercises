# 70
# recursive
def climb_stairs(n, cache = {})
  return 1 if n <= 1 # since n == 0 is technically a path

  result = (cache[n - 1] || climb_stairs(n - 1, cache)) + (cache[n - 2] || climb_stairs(n - 2, cache))
  cache[n] = result
  result
end

# iterative
def climb_stairs(n)
  dp = [1, 1]

  (2..n).each do |i|
    dp[i] = dp[i - 1] + dp[i - 2]
  end

  dp.last
end
