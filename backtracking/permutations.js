//https://leetcode.com/problems/permutations/description/
// Permutations

/**
 * @param {number[]} nums
 * @return {number[][]}
 */
var permute = function(nums) {
  const solutions = [];

  helper(nums, [], solutions);

  return solutions;
};

function helper(nums, solution, solutions) {
  if (solution.length === nums.length) {
    solutions.push(solution.slice());
  } else {
    for (let i = 0; i < nums.length; i += 1) {
      if (solution.indexOf(nums[i]) == -1) {
        solution.push(nums[i]);
        helper(nums, solution, solutions);
        solution.pop();
      }
    }
  }
}
