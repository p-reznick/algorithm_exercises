// k window slide, time complexity O(N)

var twoSum = function(numbers, target) {
  let k = numbers.length;
  let left = 0;
  let right = k - 1;

  while (numbers[left] + numbers[right] !== target) {
    if (numbers[left] + numbers[right] > target) {
      right -= 1;
    } else if (numbers[left] + numbers[right] < target) {
      left += 1;
    }
  }

  return [left + 1, right + 1];
};
