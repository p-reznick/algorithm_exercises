var maxDepth = function(root) {
  if (root === null) {
    return 0;
  }

  let leftDepth = maxDepth(root.left);
  let rightDepth = maxDepth(root.right);

  return (leftDepth > rightDepth ? leftDepth + 1 : rightDepth + 1);
};
