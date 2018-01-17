//https://leetcode.com/problems/climbing-stairs/description/
// You are climbing a stair case. It takes n steps to reach to the top.
// Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
// Note: Given n will be a positive integer.
/**
 * @param {number} n
 * @return {number}
 */
var climbStairs = function(n) {
  const memo = [];
  memo[0] = 0;
  memo[1] = 1;
  memo[2] = 2;

  return helper(n, memo);
};

function helper(n, memo) {
  if (memo[n]) {
    return memo[n];
  } else {
    memo[n] = helper(n - 1, memo) + helper(n - 2, memo);
    return memo[n];
  }
}
