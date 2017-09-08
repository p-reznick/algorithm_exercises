def sum_numbers(root)
  return 0 if root.nil?
  paths = []
  stack = [[root, '']]

  until stack.empty?
    current = stack.pop
    node = current[0]
    path = current[1] + node.val.to_s
    stack.push([node.right, path]) if node.right
    stack.push([node.left, path]) if node.left
    if !node.left && !node.right
      paths << path
    end
  end

  integer_paths = paths.map do |path|
    path.to_i
  end

  integer_paths.reduce(&:+)
end
