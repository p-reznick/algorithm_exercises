# @param {Integer[]} nums
# @return {Integer}
# input: an array
# return: an integer corresponding to length of array after duplicate has been removed

# 67%, time-complexity unclear because underlying method complexity unknown
def remove_duplicates(nums)
    nums.uniq!
    nums.length
end

# 3.57%, Time: O(N), Space: O(N)
def remove_duplicates(nums)
    already_seen = {}
    index = 0
    while index < nums.length do
        if already_seen[nums[index]].nil?
            already_seen[nums[index]] = 1
            index += 1
        else
           nums.slice!(index)
        end
    end
    nums.length
end
