def preorder_traversal(root)
  vals = []
  stack = [root]
  return vals if root.nil?

  until stack.empty?
    current = stack.pop
    vals << current.val
    stack << current.right if current.right
    stack << current.left if current.left
  end
  vals
end
