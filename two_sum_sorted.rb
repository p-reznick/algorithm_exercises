# Two pointer, Space: O(1) Time: O(N)
# This depends on sorted data and the insight that the only way to decrease a sum
# is to move right pointer left, and only way to increase a sum is to move left pointer
# right
def two_sum(numbers, target)
    left = 0
    right = numbers.length - 1

    while (left < right)
        sum = numbers[left] + numbers[right]
        break if sum == target
        right -= 1 if sum > target
        left += 1 if sum < target
    end

    [left + 1, right + 1]
end
