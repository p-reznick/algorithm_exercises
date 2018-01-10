// CTCI 2.4
// write code to partition a linked list around a given value.  Partitioning
// means that all values are less than the value to the left of the first
// node greater than or equal to the value, and all values to the right are
// greater than or equal to the value.

function ListNode(val) {
   this.val = val;
   this.next = null;
}

// two-list approach: create a lesser and greater list and sort the nodes
// into both of these.  Then merge the lists to produce

function partition(head, val) {
  const lessHead = new ListNode(null);
  const lessTail = lessHead;
  const greaterHead = new ListNode(null);
  const greaterTail = greaterHead;

  let current = head;

  while (current != undefined) {
    if (current.val < val) {
      lessTail.next = current;
      lessTail = current;
    } else {
      greaterTail.next = current;
      greaterTail = current;
    }

    current.next = current;
  }

  lessTail.next = greaterHead.next;
  return lessHead.next;
}

function partition(head, val) {
  let listHead = head;
  let listTail = head;
  let current = head.next;

  while (current != undefined) {
    let next = current.next;
    if (current.val < val) {
      current.next = listHead;
      listHead = current;
    } else {
      listTail.next = current;
      listTail = current;
    }
    current = next;
  }

  return listHead;
}
