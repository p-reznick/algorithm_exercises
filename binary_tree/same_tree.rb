# 100
# Time: O(N) Space: O(1)
# A DnC approach
def is_same_tree(p, q)
  # recursive base case
  return true if p.nil? && q.nil?

  # DnC base problem
  return false if p.nil? && q || q.nil? && p || p.val != q.val

  # return solution, true if left and right child trees are the same, false otherwise
  left_same && right_same
end
