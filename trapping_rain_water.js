// leetcode https://leetcode.com/problems/trapping-rain-water/description/

/**
 * @param {number[]} height
 * @return {number}
 */
var trap = function(height) {
  const lMaxs = [];
  const rMaxs = [];
  let lMax = 0;
  let rMax = 0;
  let total = 0;

  for (let i = 0; i < height.length; i += 1) {
    lMax = lMax > height[i] ? lMax : height[i];
    lMaxs[i] = lMax;
  }

  for (let i = height.length - 1; i >= 0; i -= 1) {
    rMax = rMax > height[i] ? rMax : height[i];
    rMaxs[i] = rMax;
  }

  for (let i = 0; i < height.length; i += 1) {
    let max = lMaxs[i] > rMaxs[i] ? rMaxs[i] : lMaxs[i];
    total += (max - height[i]);
  }

  return total;
};
