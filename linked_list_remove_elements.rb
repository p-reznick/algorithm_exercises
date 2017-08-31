# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
  dummy = ListNode.new(nil)
  dummy.next = head
  current = dummy

  while current.next
    if current.next.val == val
      current.next = current.next.next
    else
      current = current.next
    end
  end
  dummy.next
end

#recursive solution
def remove_elements(head, val, previous=ListNode.new(nil))
  return nil if head.nil?
  if head.next == nil
    return head.val == val ? nil : head
  end

  if head.val == val
    previous.next = remove_elements(head.next, val, previous)
    return previous.next
  else
    head.next = remove_elements(head.next, val, head)
    return head
  end
end
