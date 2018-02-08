// https://leetcode.com/problems/linked-list-cycle/description/
/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */

/**
 * @param {ListNode} head
 * @return {boolean}
 */
 // destructive approach
var hasCycle = function(head) {
  if (!head) return false;
  let current = head;

  while (current.next) {
    if (current.val === true) {
      return true;
    } else {
      current.val = true;
    }
    current = current.next;
  }
  return false;
};
// two pointer (fast and slow runner) approach
var hasCycle = function(head) {
  if (!head || !head.next) return false;
  let fast = head.next;
  let slow = head;

  while (fast !== slow) {
    if (!fast.next || !fast.next.next) {
      return false;
    }
    slow = slow.next;
    fast = fast.next.next;
  }
  return true;
};
