# 98
def is_valid_bst(root)
  is_valid_bst_helper(root, TreeNode.new(-Float::INFINITY))
end

def is_valid_bst_helper(root, previous)
  return true if root.nil?
  left, right = root.left, root.right
  is_valid_bst_helper(left, root)

  if previous.val >= root.val
      return false
  end

  is_valid_bst_helper(right, previous)
  true
end
