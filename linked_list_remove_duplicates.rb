# 83
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  dummy = ListNode.new(nil)
  dummy.next = head
  current = dummy

  while current.next
    if current.val == current.next.val
      current.next = current.next.next
    else
      current = current.next
    end
  end

  dummy.next
end

# recursive
def delete_duplicates(head, previous=ListNode.new(nil))
  return nil unless head
  if !head.next
    return head.val != previous.val ? head : nil
  end

  if previous.val == head.val
    previous.next = delete_duplicates(head.next, previous)
    return previous.next
  else
    head.next = delete_duplicates(head.next, head)
    return head
  end
end
