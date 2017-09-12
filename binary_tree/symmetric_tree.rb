# 101
# inorder traversal solution, which builds a list of vals and then compares
# those vals to their reverse -- if a match, tree is symmetrical
# passed 192/193 tests, imperfect solution
def is_symmetric(root)
  return true if root.nil?
  vals = get_inorder_vals(root)
  is_symmetrical_arr?(vals)
end

def get_inorder_vals(root, vals=[])
  return if root.nil?
  if is_leaf?(root)
    vals << root.val
  else
    if root.left
      get_inorder_vals(root.left, vals)
    else
      vals << -1
    end

    vals << root.val

    if root.right
      get_inorder_vals(root.right, vals) if root.right
    else
      vals << -1
    end
  end
  vals
end

def is_leaf?(node)
  node.val && !node.left && !node.right
end

def is_symmetrical_arr?(array)
  return true if array.empty?
  left = 0
  right = array.length - 1
  while left < right
    return false if array[left] != array[right]
    left += 1
    right -= 1
  end
  true
end

# better solution
# a tree is symmetrical if its two children are mirror images of each other.
# from this it follows that we can can evaluate whether each root is identical,
# and then compare the outer and inner children recursively
def is_symmetric(root)
  return true if root.nil?
  is_mirror?(root, root)
end

def is_mirror?(a, b)
  # evaluate the root nodes
  return false if a && !b
  return false if !a && b
  return false if a.val != b.val

  # recursively evaluate the inner children against each other, and the outer children against each other
  # return true if each invocation returns true
  return is_mirror?(a.left, b.right) && is_mirror(a.right, b.left)
end
