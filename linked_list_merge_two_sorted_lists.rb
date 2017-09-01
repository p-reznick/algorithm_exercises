# 21
# iterative
# Space: O(N) Time: O(N)
def merge_two_lists(l1, l2)
  return l1 if l2.nil?
  return l2 if l1.nil?

  dummy = ListNode.new(nil)
  tail = dummy

  while l1 && l2
    if l1.val < l2.val
      tail.next = l1
      tail = tail.next
      l1 = l1.next
    else
      tail.next = l2
      tail = tail.next
      l2 = l2.next
    end
  end

  tail.next = l1 if l2.nil?
  tail.next = l2 if l1.nil?
  dummy.next
end

# recursive
# Space: O(N^2) Time: O(N)
def merge_two_lists(l1, l2)
  return l1 if l2.nil?
  return l2 if l1.nil?
  result = nil

  if l1.val < l2.val
    result = l1
    result.next = merge_two_lists(l1.next, l2)
  else
    result = l2
    result.next = merge_two_lists(l1, l2.next)
  end
  result
end
