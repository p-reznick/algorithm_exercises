# 110
def is_balanced(root)
  return true if root.nil?

  left_height = get_max_height(root.left)
  right_height = get_max_height(root.right)

  return false if (left_height - right_height).abs > 1

  is_balanced(root.left) && is_balanced(root.right)
end

def get_max_height(root)
  return 0 if root.nil?

  1 + [get_max_height(root.left), get_max_height(root.right)].max
end
