# Write a function that takes a string as input and returns the string reversed.
# Example:
# Given s = "hello", return "olleh".
# input, output: string

# two pointer solution: time O(N), space: O(1)
def reverse_string(s)
  left = 0
  right = s.length - 1

  while (left < right)
    s[left], s[right] = s[right], s[left]

    left += 1
    right -= 1
  end

  s
end
