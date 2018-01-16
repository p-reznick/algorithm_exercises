// https://leetcode.com/problems/combinations/description/
/**
 * @param {number} n
 * @param {number} k
 * @return {number[][]}
 */
var combine = function(n, k) {
  const solutions = [];
  helper(1, n, k, [], solutions);
  return solutions;
};

function helper(start, end, length, solution, solutions) {
  if (solution.length === length) {
    solutions.push(solution.slice());
  }

  for (let i = start; i <= end; i += 1) {
    solution.push(i);
    helper(i + 1, end, length, solution, solutions);
    solution.pop();
  }
}
