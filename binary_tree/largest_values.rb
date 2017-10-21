# You need to find the largest value in each row of a binary tree. Example: Input: 1 / \ 3 2 / \ \ 5 3 9 Output: [1, 3, 9]
# given: a tree of height N, return an array of length N, where each element is the greatest value on a given level of the tree.
# binary tree, NOT search tree
# empty tree => empty array
# try to minimize time and space complexity

# create array max_vals
# level order traversal of tree
#   on each level, track a single value temp
#   assign temp to first value in level, compare to each successive value
#     if temp is less than current value, reassign temp to current value
#     at end of iteration, push temp into max_vals
# return max_vals

# level-order traversal
# => two queues
#     push all children of nodes in current_level into next_level
#       set temp = first_node.val, compare to each successive_node.val

def largest_values(root)
  return [] if root.nil?
  largest_vals = []

  current_level = [root]
  next_level = []

  loop do
    temp = current_level.first.val # 1

    while current_level.length > 0
      next_level << current_level.first.left if current_level.first.left
      next_level << current_level.first.right if current_level.first.right

      temp = current_level.first.val if temp < current_level.first.val

      current_level.shift
    end

    largest_vals << temp # [1, 3, 9]
    break if next_level.empty?
    current_level = next_level
    next_level = []
  end

  largest_vals
end
