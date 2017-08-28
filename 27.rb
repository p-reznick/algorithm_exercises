# 43.9% Space: O(1) Time: O(N)

def remove_element(nums, val)
    index = 0
    while index < nums.length
        if nums[index] == val
            nums.slice!(index)
        else
            index += 1
        end
    end
    nums.length
end
