# 151
def reverse_words(input)
  result = ''
  left = input.length - 1
  right = input.length - 1

  while result.length < input.length
    while input[left] != ' ' && left >= 0
      left -= 1
    end

    result.concat(input[left + 1..right])
    result += ' ' unless result.length == input.length
    right = left - 1
    left -= 1
  end

  result
end
