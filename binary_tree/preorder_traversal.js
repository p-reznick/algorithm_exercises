// leetcode https://leetcode.com/problems/binary-tree-preorder-traversal/description/
// Given a binary tree, return the preorder traversal of its nodes' values.

var preorderTraversal = function(root) {
  const vals = [];
  helper(root, vals);
  return vals;
};

function helper(node, vals) {
  if (node === null) {
    return false;
  }

  vals.push(node.val);
  helper(node.left, vals);
  helper(node.right, vals);
}
