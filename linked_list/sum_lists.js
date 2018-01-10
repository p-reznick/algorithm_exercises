// CTCI 2.5 sum lists
// two linked lists represent numbers, where head is last digit, i.e., ones digit.
// return a linked list representing the sum of the two lists, in the same
// format.

function ListNode(val) {
   this.val = val;
   this.next = null;
}

// recursive solution: extract values from heads, perform addition.
// return new node with ones digit and set as next value a recursive call,
// passing in each next node AND the carry value.

function sumLists(a, b, carry) {
  if (a === null && b === null && carry === null) {
    return null;
  }

  let value = carry;

  if (a) {
    value += a.val;
  }
  if (b) {
    value += b.val;
  }

  const result = value % 10;
  const nextCarry = value > 10 ? 1 : 0;
  const nextA = (a ? a.next : null);
  const nextB = (b ? b.next : null);

  const newNode = ListNode(result);
  newNode.next = sumLists(nextA, nextB, nextCarry);

  return newNode;
}
