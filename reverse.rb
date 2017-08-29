# 344
# @param {String} s
# @return {String}

# Stack implementation -- Space: O(N) Time: O(N)

def reverse_string(s)
    reverse = ''
    stack = []
    s.each_char { |char| stack.push char }
    stack.each { |char| reverse.prepend char }
    reverse
end

# In place two pointer implementation -- Space: O(1), Time: O(N)
def reverse_string(s)
    left = 0
    right = s.length - 1
    while left < right
        s[left], s[right] = s[right], s[left]
        left += 1
        right -= 1
    end
    s
end
