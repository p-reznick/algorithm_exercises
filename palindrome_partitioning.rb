# Kevin's solution
# build trees of all possible consecutive substrings, and as you traverse the tree, the backtrack condition is that a non-palindrome is encountered.  Construct the trees using integers as the node, with each integer referring to how much we "bite off" of the front of the string.
# @param {String} s
# @return {String[][]}
def partition(s)
    result = []
    partition_helper(s, [], result)
    result
end

def partition_helper(s, solution, result)
    if s == ""
        result << solution.clone
    else
        (1..s.size).each do |num|
            substring = s.slice(0, num)
            if palindrome?(substring)
                solution << substring
                partition_helper(s[substring.size..-1], solution, result)
                solution.pop
            end
        end
    end
end

def palindrome?(string)
   return true if string.size == 0 || string.size == 1
   string[0] == string[-1] && palindrome?(string[1..-2])
end
