# 104
def max_depth(root)
  return 0 if root.nil?
  left_sum = max_depth(root.left)
  right_sum = max_depth(root.right)
  greater = left_sum > right_sum ? left_sum : right_sum
  1 + greater
end
