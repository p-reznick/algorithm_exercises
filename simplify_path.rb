# 71

def simplify_path(path)
  pieces = get_pieces(path)
  new_order = []
  result_path = ''

  pieces.each do |piece|
    if piece == '..'
      new_order.pop
    else
      new_order << piece unless piece == '.'
    end
  end

  new_order.each do |piece|
    result_path.concat('/' + piece)
  end
  result_path == '' ? '/' : result_path
end

def get_pieces(path)
  pieces = []
  piece = ''
  (path.length).times do |i|
    if path[i] != '/'
      piece.concat(path[i])
    else
      pieces << piece if !piece.empty?
      piece = ''
    end
    pieces << piece if i == path.length - 1 && !piece.empty?
  end
    p pieces
  pieces
end
