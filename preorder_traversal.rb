# 144
def preorder_traversal(root, vals=[])
  return [] if root.nil?
  vals << root.val
  preorder_traversal(root.left, vals)
  preorder_traversal(root.right, vals)
  vals
end
