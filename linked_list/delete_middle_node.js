// CTCI 2.3
// delete a middle (i.e., not head or tail node) from a singly linked list
// with access ONLY to the node to be deleted.

// copy the value from the target node's successor into the target, and then
// delete the successor node by reassigning target.next

function ListNode(val) {
   this.val = val;
   this.next = null;
}

function deleteMiddle(node) {
  node.val = node.next.val;
  node.next = node.next.next;
}
