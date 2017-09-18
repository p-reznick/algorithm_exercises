# 139
# iterate over the chars from right to left, prepending
# each char to a temp string.  On each iteration, check
# whether the string is in the dictionary.  If it is,
# immediately save the result of a recursive call with
# the substring defined by the chars remaining to the left
# of the matched substring.  If the method ever encounters
# a full string that matches the dictionary, return true.
# if it iterates through the whole string without encountering
# such a string, return false.
def word_break(s, word_dict)
  return true if word_dict.include?(s)
  sub = ''

  (s.length - 1).downto(0) do |i|
    sub.prepend(s[i])
    if word_dict.include?(sub)
      result = word_break(s[0...i], word_dict)
      return result if result
    end
  end
  false
end
