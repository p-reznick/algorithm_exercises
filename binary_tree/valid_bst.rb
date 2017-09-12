# 98
# Inorder traversal approach
def is_valid_bst(root)
  is_valid_bst_helper(root, TreeNode.new(-Float::INFINITY))
end

def is_valid_bst_helper(root, previous)
  # recursive base case
  return true if root.nil?

  left, right = root.left, root.right

  # perform operation on left child recursively
  is_valid_bst_helper(left, root)

  # perform operation on current node
  if previous.val >= root.val
      return false
  end

  # perform operation on right child
  is_valid_bst_helper(right, previous)
end
