// leetcode https://leetcode.com/problems/binary-tree-inorder-traversal/description/
// return an array of numbers or null values reflecting an in order traversal
// from root
var inorderTraversal = function(root) {
  const vals = [];
  inorder(root, vals);
  return vals;
};

function inorder(node, vals) {
  if (node === null) {
    return null;
  }
  inorder(node.left, vals);
  vals.push(node.val);
  inorder(node.right, vals);
}
