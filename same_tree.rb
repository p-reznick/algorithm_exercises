# 100
# Time: O(N) Space: O(1)
# A DnC approach
def is_same_tree(p, q)
  # recursive base case
  return true if p.nil? && q.nil?

  # DnC base problem
  return false if p.nil? && q || q.nil? && p || p.val != q.val

  left_same = is_same_tree(p.left, q.left)
  right_same = is_same_tree(p.right, q.right)

  left_same && right_same
end
