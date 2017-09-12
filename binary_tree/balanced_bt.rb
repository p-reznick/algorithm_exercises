# 110
# DnC approach
def is_balanced(root)
  # recursive base case
  return true if root.nil?

  # divide data into two trees, each being a bhild
  left_height = get_max_height(root.left)
  right_height = get_max_height(root.right)

  # exit with false if height difference differs by more than 1
  return false if (left_height - right_height).abs > 1

  # combine the recursive result for each branch, returning true only if both are true
  is_balanced(root.left) && is_balanced(root.right)
end

def get_max_height(root)
  return 0 if root.nil?

  1 + [get_max_height(root.left), get_max_height(root.right)].max
end
