def is_symmetric(root)
  return true if root.nil?
  fill_tree(root, get_max_depth(root))
  vals = get_inorder_vals(root)
  p vals
  vals == vals.reverse
end

def get_inorder_vals(root, vals=[])
  return if root.nil?
  get_inorder_vals(root.left, vals)
  vals << root.val
  get_inorder_vals(root.right, vals)
  vals
end

def fill_tree(root, depth=1)
  p root.val
  if depth > 1
    root.left = TreeNode.new(-1) unless root.left
    root.right = TreeNode.new(-1) unless root.right
  elsif depth > 0
    fill_tree(root.right, depth - 1)
    fill_tree(root.left, depth - 1)
  end
end

def get_max_depth(root)
  return 0 if root.nil?

  return 1 + [get_max_depth(root.left), get_max_depth(root.right)].max
end
