# 62
# Dynamic Programming approach; DnC with use of Cache; recursive
def unique_paths(m, n, cache = {})
  return 0 if m < 0 || n < 0
  return 1 if m == 1 || n == 1

  result = (cache[[m - 1, n]] || unique_paths(m - 1, n, cache)) + (cache[[m, n - 1]] || unique_paths(m, n -1, cache))
  cache[[m, n]] = result
  result
end

# iterative approach
def unique_paths(m, n)
  # create grid to hold vals
  # set top-left element to 1, indicating that this is the starting position
  # iterate over grid left to right top to bottom, setting each element to be the
  # sum of the top and left elements
  # m = num_rows; n = num_cols
  grid = (0...m).map do |_i|
    Array.new(n, 0)
  end

  grid[0][0] = 1

  m.times do |outer_i|
    n.times do |inner_i|
      top_val = grid[outer_i - 1][inner_i] || 0
      left_val = grid[outer_i][inner_i - 1] || 0
      grid[outer_i][inner_i] = top_val + left_val unless grid[outer_i][inner_i] > 0
    end
  end
    p grid
  grid[m - 1][n - 1]
end
