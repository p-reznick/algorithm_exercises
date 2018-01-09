// Given an array of integers, return indices of the two numbers such that they add up to a specific target.
// You may assume that each input would have exactly one solution, and you may not use the same element twice.

// anchor runner approach. time: O(N^2), space: O(1)

var twoSum = function(nums, target) {
  const len = nums.length;

  for (let i = 0; i < len - 1; i += 1) {
    const anchor = nums[i];

    for (let j = i + 1; j < len; j += 1) {
      const runner = nums[j];

      if (anchor + runner === target) {
        return [i, j];
      }
    }
  }
};

// hash-table approach. time: O(N), space: O(N)
var twoSum = function(nums, target) {
  const complements = {};

  nums.forEach((num, idx) => {
    complements[target - num] = idx;
  });

  console.log(complements);

  nums.forEach((num, idx) => {
    const complementIdx = complements[String(num - target)];

    if (complementIdx) {
      return [idx, complementIdx];
    }
  });
};
