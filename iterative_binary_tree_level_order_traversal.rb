# 102

def level_order(root)
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
  levels
end

def get_vals(arr)
  arr.map do |node|
      node.val
  end
end
