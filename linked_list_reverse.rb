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
def reverse_list(head)
  prev = nil
  current = head
  outrider = ListNode.new(nil)
  while current
    outrider = current.next
    current.next = prev
    prev = current
    current = outrider
  end
  prev
end

#recursive
def reverse_list(head, prev=nil)
  previous = head
  current = head.next
  outrider = current.next

  if current

  end
end
