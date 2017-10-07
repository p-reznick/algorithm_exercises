// 35
var searchInsert = function(nums, target) {
  var left = 0;
  var right = nums.length - 1;
  var mid = 0;
  var pos = 0;

  while (left + 1 < right) {
    var mid = left + (right - left) / 2;
    if (nums[mid] === target) {
      return mid;
    } else if (nums[mid] > target) {
      right = mid - 1;
      pos = mid;
    } else {
      left = mid + 1;
      post = mid;
    }
  }
  return pos;
};
