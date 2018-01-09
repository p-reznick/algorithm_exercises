// Given a sorted array, remove the duplicates in-place such that each element appear only once and return the new length.

// Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

// tw pointer slide: time: O(N), space: O(1)
var removeDuplicates = function(nums) {
  if (nums.length === 0) {
    return 0;
  }

  let length = 1;
  let right = 1;
  let left = 0;

  while (right < nums.length) {
    console.log(left, right);
    if (nums[right] === nums[left]) {
      right += 1;
    } else if (nums[right] !== nums[left]) {
      length += 1;
      left += 1;
      nums[left] = nums[right];
    }
  }

  return length;
};
