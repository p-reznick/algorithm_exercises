/**
 * @param {number[]} candidates
 * @param {number} target
 * @return {number[][]}
 */
var combinationSum = function(candidates, target) {
  const solutions = [];
  helper(candidates, 0, [], target, solutions);
  return solutions;
};

function helper(candidates, start, solution, target, solutions) {
  if (sum(solution) === target) {
    solutions.push(solution.slice());
    return;
  } else if (sum(solution) > target) {
    return;
  }

  for (let i = start; i < candidates.length; i += 1) {
    solution.push(candidates[i]);
    helper(candidates, i, solution, target, solutions);
    solution.pop();
  }
}

function sum(arr) {
  let sum = 0;
  arr.forEach((num) => {
    sum += num;
  });
  return sum;
}
