// leetcode https://leetcode.com/problems/unique-paths/description/
var uniquePaths = function(r, c) {
  const grid = {};

  for (let current_r = 1; current_r <= r; current_r += 1) {
    for (let current_c = 1; current_c <= c; current_c += 1) {
      if (current_r === 1 && current_c === 1) {
        grid['1,1'] = 1;
      } else {
        let left_val = grid[(current_r - 1) + ',' + current_c] || 0;
        let right_val = grid[current_r + ',' + (current_c - 1)] || 0;
        grid[current_r + ',' + current_c] = left_val + right_val;
      }
    }
  }

  return grid[r + ',' + c];
};
