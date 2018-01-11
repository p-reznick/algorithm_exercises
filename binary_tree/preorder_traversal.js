// https://leetcode.com/problems/binary-tree-postorder-traversal/description/
// given a binary tree, return the postorder traversal of its nodes' values.
var postorderTraversal = function(root) {
  const vals = [];
  helper(root, vals);
  return vals;
};

function helper(node, vals) {
  if (node === null) {
    return null;
  }

  helper(node.left, vals);
  helper(node.right, vals);
  vals.push(node.val);
}
