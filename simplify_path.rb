# 71
# most test cases
def simplify_path(path)
  return '/' if path =~ /^\/+$/
  pieces = get_pieces(path)
  new_order = []
  result_path = ''

  pieces.each do |piece|
    if piece =~ /[^\/]+/i ||
       piece != '.' ||
       piece != '..'
      new_order << piece
    elsif piece == '..'
      new_order.pop
    end
  end

  new_order.each do |piece|
    result_path.concat('/' + piece)
  end
  result_path.empty? ? '/' : result_path
end

def get_pieces(path)
  pieces = []
  piece = ''
  (path.length).times do |i|
    if path[i] != '/'
      piece.concat(path[i])
    else
      pieces << piece unless piece.empty?
      piece = ''
    end
  end
  pieces
end
