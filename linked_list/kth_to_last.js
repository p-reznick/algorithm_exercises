// CTCI 2.2
// use a two runner approach: the right runner iterates K times from the head.
// then the two runners iterate in parallel until the right runner reaches the
// end of the list.  The left runner will be pointing to the kth from last node.
// assuming here that list is at least k long. k = 1 will return last node.
function ListNode(val) {
   this.val = val;
   this.next = null;
}

function getKthFromLast(head, k) {
  let right = head;
  let left = head;

  for (let i = k; i > 1; i -= 1) {
    right = right.next;
  }

  while (right.next != undefined) {
    right = right.next;
    left = left.next;
  }

  return left;
}
