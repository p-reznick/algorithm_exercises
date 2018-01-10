// CTCI 2.6
// check if provided list is a palindrome.

function ListNode(val) {
   this.val = val;
   this.next = null;
}

// reverse the list and then compare the first half of each list
// if compared nodes are all equal, return true, else, false

var isPalindrome = function(head) {
  let reverseHead = reverseAndClone(head);

  let current = head;
  let currentReverse = reverseHead;

  while (head != undefined) {
    if (head.val != reverseHead.val) {
      return false;
    }
    head = head.next;
    reverseHead = reverseHead.next;
  }

  return true;
};

function reverseAndClone(head) {
  let dummyHead = null;

  while (head) {
    let newNode = new ListNode(head.val);
    newNode.next = dummyHead;
    dummyHead = newNode;
    head = head.next;
  }

  return dummyHead;
}
