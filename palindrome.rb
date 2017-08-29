# 125
# Space: O(1) Time: O(N)
def is_palindrome(s)
    s.gsub!(/[^a-z0-9]/i, '')
    s.downcase!
    left = 0
    right = s.length - 1
    while left < right
        return false if s[left] != s[right]
        left += 1
        right -= 1
    end
    true
end
