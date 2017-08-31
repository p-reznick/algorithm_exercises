# 367
# Time: O(?) Space: O(1)
def is_perfect_square(n)
  index = 0
  while index**2 <= n
    return true if index**2 == n
    index += 1
  end
  false
end

# Time: O(log N) Space: O(1)
def is_perfect_square(n)
  return true if n == 1 || n == 2
  left = 0
  right = n - 1


  while left + 1 < right
    mid = left + (right - left) / 2
    current_square = mid**2

    if current_square == n
      return true
    elsif current_square < n
      left = mid
    else
      right = mid
    end
  end
  false
end

p is_perfect_square(9)
