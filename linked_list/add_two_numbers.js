// https://leetcode.com/problems/add-two-numbers/description/

/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */
/**
 * @param {ListNode} l1
 * @param {ListNode} l2
 * @return {ListNode}
 */
var addTwoNumbers = function(l1, l2) {
  const result = new ListNode(null);
  let currentL1 = l1;
  let currentL2 = l2;
  let currentResult = result;
  let carryVal = 0;

  while (currentL1 || currentL2 || carryVal > 0) {
    const val1 = currentL1 ? currentL1.val : 0;
    const val2 = currentL2 ? currentL2.val : 0;
    const total = val1 + val2 + carryVal;
    carryVal = total >= 10 ? 1 : 0;
    const newVal = total >= 10 ? total - 10 : total;

    let nextNode = new ListNode(newVal);
    currentResult.next = nextNode;
    currentResult = nextNode;

    if (currentL1) currentL1 = currentL1.next;
    if (currentL2) currentL2 = currentL2.next;
  }

  return result.next;
};
