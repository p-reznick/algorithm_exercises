# 637

def average_of_levels(root)
  return [] if root.nil?
  levels = []
  queue = [root]

  until queue.empty?
    levels << get_vals(queue)
    temp = []
    until queue.empty?
      node = queue.shift
      temp << node.left if node.left
      temp << node.right if node.right
    end
    queue = temp
  end

  levels.map do |level|
    level.sum.to_f / level.size
  end
end

def get_vals(arr)
  arr.map do |node|
      node.val
  end
end
