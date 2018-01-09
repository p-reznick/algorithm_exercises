// Given an array and a value, remove all instances of that value in-place and return the new length.

// Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

// The order of elements can be changed. It doesn't matter what you leave beyond the new length.

// sort and two-pointer slide, non-sort time complexity: O(N)

var removeElement = function(nums, val) {
  if (nums.length === 0) {
    return 0;
  }

  nums.sort((a, b) => {
    return a - b;
  });

  // write correct elems from head of arr, tracking number of wrong elems
  let left = 0;
  let right = 0;
  let wrongCount = 0;

  while (right < nums.length) {
    if (nums[right] !== val) {
      nums[left] = nums[right];
      left += 1;
      right += 1;
    } else {
      while (nums[right] === val) {
        wrongCount += 1;
        right += 1;
      }
    }
  }

  while (wrongCount > 0) {
    nums.pop();
    wrongCount -= 1;
  }

  return nums.length;
}
