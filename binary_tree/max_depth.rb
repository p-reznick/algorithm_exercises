# 104
# DnC approach
def max_depth(root)
  # recursive base case
  return 0 if root.nil?

  # divide data (child trees) into left and right
  left_sum = max_depth(root.left)
  right_sum = max_depth(root.right)

  # conquer by determining which of child trees is greater
  greater = left_sum > right_sum ? left_sum : right_sum

  # return combination + 1, indicating additional level of depth
  1 + greater
end
