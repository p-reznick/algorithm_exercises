# 144
# a preorder traversal whose basic operation is pushing a node's value into an array
def preorder_traversal(root, vals=[])
  # recursive base case
  return [] if root.nil?

  # perform the operation on the current node
  vals << root.val

  # recursively perform operation on left child
  preorder_traversal(root.left, vals)

  # recursively perform operation on left child
  preorder_traversal(root.right, vals)

  # to satisfy requirement that initial invocation return array of vals in preorder order
  vals
end
