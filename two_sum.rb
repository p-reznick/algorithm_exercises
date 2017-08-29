# 1
# Brute force, Space: O(1) Time: O(N^2)
def two_sum(nums, target)
    l = nums.length

    l.times do |outer|
        inner = 0
        while inner < outer
            return [inner, outer] if nums[inner] + nums[outer] == target
            inner += 1
        end
    end
end
