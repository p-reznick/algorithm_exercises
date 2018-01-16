// https://leetcode.com/problems/subsets/description/

/**
 * @param {number[]} nums
 * @return {number[][]}
 */
var subsets = function(nums) {
  const solutions = [];
  helper(solutions, [], nums, 0);
  return solutions;
};

function helper(solutions, solution, nums, start) {
  console.log(solution);
  solutions.push(solution.slice());
  for (let i = start; i < nums.length; i += 1) {
    solution.push(nums[i]);
    helper(solutions, solution, nums, i + 1);
    solution.pop();
  }
}
