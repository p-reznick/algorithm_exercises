// https://leetcode.com/problems/validate-binary-search-tree/description/
/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */
/**
 * @param {TreeNode} root
 * @return {boolean}
 */
var isValidBST = function(root) {
  if (!root) return true;
  const minHolder = [Number.NEGATIVE_INFINITY];
  return inOrderTraversal(root, minHolder);
};

function inOrderTraversal(root, minHolder) {
  let left = true;
  let right = true;
  let current;

  if (root.left) left = inOrderTraversal(root.left, minHolder);

  if (root.val <= minHolder[0]) {
    current = false;
  } else {
    minHolder[0] = root.val;
    current = true;
  }

  if (root.right) right = inOrderTraversal(root.right, minHolder);

  return left && current && right;
}
