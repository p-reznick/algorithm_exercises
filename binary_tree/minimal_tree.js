// CTCI 4.2
// Given a sorted (increasing order) array with unique integer elements, write an algorithm to create a binary search tree w miminal height

function TreeNode(val) {
    this.val = val;
    this.left = this.right = null;
}

function createMinimalBST(values) {
  return helper(values, 0, values.length - 1);
}

function helper(values, start, end) {
  if (end < start) {
    return null;
  }

  const midpoint = Math.round(start / end);
  const root = new TreeNode(values[midpoint]);
  root.left = helper(values, start, midpoint - 1);
  root.right = helper(values, midpoint + 1, end);

  return root;
}
