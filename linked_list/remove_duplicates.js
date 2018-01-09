// CTCI 2.1 remove duplicate nodes from unsorted linked list
// def of list node
function ListNode(val) {
   this.val = val;
   this.next = null;
}

function removeDuplicates(head) {
  const seenValues = {};
  let current = head;
  let falseHead = new ListNode(null);
  let previous = falseHead;
  falseHead.next = head;

  while (current.next != undefined) {
    current = current.next;

    if (seenValues[current.val]) {
      previous.next = current.next;
    } else {
      seenValues[val] = true;
      previous = current;
    }

    current = current.next;
  }

  return falseHead.next;
}
