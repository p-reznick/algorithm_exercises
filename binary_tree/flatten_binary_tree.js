// https://leetcode.com/problems/flatten-binary-tree-to-linked-list/description/
/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */
/**
 * @param {TreeNode} root
 * @return {void} Do not return anything, modify root in-place instead.
 */

// SOLUTION 1, USING A QUEUE

var flatten = function(root) {
  if (root === null) return;
  const queue = [];
  traverse(root, queue);
  while (queue.length > 0) {
    const current = queue.shift();
    current.left = null;
    current.right = queue[0];
  }
};

function traverse(root, queue) {
  if (root === null) return;
  queue.push(root);
  traverse(root.left, queue);
  traverse(root.right, queue);
}
