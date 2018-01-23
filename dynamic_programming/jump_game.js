// Given an array of non-negative integers, you are initially positioned at the first index of the array.
// Each element in the array represents your maximum jump length at that position.
// Determine if you are able to reach the last index.
// For example:
// A = [2,3,1,1,4], return true.
// A = [3,2,1,0,4], return false.
/**
 * @param {number[]} nums
 * @return {boolean}
 */
var canJump = function(nums) {
  const memo = [];
  return helper(nums, nums.length - 1, memo);
}

function helper(nums, current_index, memo) {
  if (current_index === 0) {
    return true;
  }

  for (let i = 0; i < current_index; i += 1) {
    if (i + nums[i] >= current_index) {
      if (memo[i] || helper(nums, i, memo)) {
        memo[i] = true;
        return true;
      } else {
        memo[current_index] = false;
      }
    }
  }

  return false;
}
