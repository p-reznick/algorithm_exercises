var isBalanced = function(root, currentDepth=0) {
  if (root === null) {
    return true
  }

  let leftDepth = getMaxDepth(root.left);
  let rightDepth = getMaxDepth(root.right);

  return (Math.abs(leftDepth - rightDepth) <= 1) &&
          isBalanced(root.left) &&
          isBalanced(root.right);
};

function getMaxDepth(root) {
  if (root === null) {
    return 0;
  }

  let leftMax = getMaxDepth(root.left);
  let rightMax = getMaxDepth(root.right);

  return 1 + (leftMax > rightMax ? leftMax : rightMax);
}
