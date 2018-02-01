// LeetCode https://leetcode.com/problems/product-of-array-except-self/description/
/**
 * @param {number[]} nums
 * @return {number[]}
 */
 // time: O(1) space: O(n^2)
var productExceptSelf = function(nums) {
  const resultArr = [];
  let product = 1;

  // loop 1
  for (let i = 0; i < nums.length; i += 1) {
    resultArr[i] = product;
    product *= nums[i];
  }

  product = 1;
  // loop 2
  for (let j = nums.length - 1; j >= 0; j -= 1) {
    resultArr[j] *= product;
    product *= nums[j];
  }

  return resultArr;
};
