// 1
// anchor/runner pointer solution
// Time: O(N^2) Space: O(1)
var twoSum = function(nums, target) {
  var result;

  for (var i = 0; i < nums.length; i += 1) {
    result = iterateCheck(nums, i, target);
    if (result) {
      break;
    }
  }

  return result;
};

var iterateCheck = function(nums, start, target) {
  for (var j = start + 1; j < nums.length; j += 1) {
    if (nums[start] + nums[j] === target) {
      return [start, j];
    }
  }
};
