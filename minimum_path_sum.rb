def min_path_sum(grid, row = grid.length, col = grid[0].length, sum = 0)
  sum += grid[row][col] if row == 1 && col == 2 ||
                           row == 2 && col == 1

  col_decrement = min_path_sum(grid, row, col - 1, sum)
  row_decrement = min_path_sum(grid, row - 1, col, sum)

  sum += ()(col_decrement > row_decrement ? row_decrement : col_decrement) + grid[row][col])
  sum
end

# kalyan's solution
def min_path_sum(grid)
  m = grid.length
  n = grid[0].length
  min_path_sum_helper(grid, m-1, n-1, {})
end

def min_path_sum_helper(grid, m, n, cache)
  return 0 if m < 0 || n < 0
  return grid[m][n] if m == 0 && n == 0
  sum_from_top = m == 0 ? nil : (cache[[m-1,n]] || min_path_sum_helper(grid, m-1, n, cache))
  sum_from_left = n == 0 ? nil : (cache[[m,n-1]] || min_path_sum_helper(grid, m, n-1, cache))

  if sum_from_top.nil?
    total = grid[m][n] + sum_from_left
  elsif sum_from_left.nil?
    total = grid[m][n] + sum_from_top
  else
    total = grid[m][n] + [sum_from_left, sum_from_top].min
  end

  cache[[m, n]] = total
  total
end
