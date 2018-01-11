// leetcode https://leetcode.com/problems/binary-tree-level-order-traversal/description/
// Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).

/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */
/**
 * @param {TreeNode} root
 * @return {number[][]}
 */
var levelOrder = function(root) {
  if (root === null) {
    return [];
  }

  let currentQueue = [root];
  const levels = [[root.val]];

  while (currentQueue.length > 0) {
    let nextQueue = [];
    const level = [];

    while (currentQueue.length > 0) {
      let tempNode = currentQueue.shift();

      if (tempNode.left != null) {
        nextQueue.push(tempNode.left);
        level.push(tempNode.left.val);
      }
      if (tempNode.right != null) {
        nextQueue.push(tempNode.right);
        level.push(tempNode.right.val);
      }
    }

    if (level.length > 0) {
      levels.push(level);
    }
    currentQueue = nextQueue;
  }
  return levels;
};
