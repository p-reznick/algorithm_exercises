# 266
# solution 1, DnC
def invert_tree(root)
  # recursive base case
  return nil if root.nil?

  # divide
  left = root.left
  right = root.right

  # conquer
  invert_tree(left)
  invert_tree(right)

  # combine
  root.left, root.right = root.right, root.left

  root
end

# solution 2, Preorder traversal
def invert_tree(root)
  # recursive base case
  return nil if root.nil?

  # perform operation (switching left and right children) on root
  root.left, root.right = root.right, root.left

  # recursively perform operation on children
  invert_tree(root.left)
  invert_tree(root.right)

  root
end
