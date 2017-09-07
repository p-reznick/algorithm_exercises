# 266
# solution 1
def invert_tree(root)
  return nil if root.nil?
  root.left, root.right = root.right, root.left

  invert_tree(root.left)
  invert_tree(root.right)
  root
end

# solution 2, without superfluous returns in helper
def invert_tree(root)
  return nil if root.nil?
  invert_tree_helper(root)
  root
end

def invert_tree_helper(root)
  root.left, root.right = root.right, root.left

  invert_tree(root.left)
  invert_tree(root.right)
end
