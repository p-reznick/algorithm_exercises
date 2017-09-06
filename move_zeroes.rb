# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
# Time: O(N^2) Space: O(1)
# def move_zeroes(nums)
#   count = 0
#   read = 0
#   while nums[read + 1]
#     if nums[read] == 0
#       count += 1
#       nums.slice!(read)
#     else
#       read += 1
#     end
#   end
#
#   count.times do
#     nums.push(0)
#   end
#   nums
# end

def move_zeroes(nums)
  slow = 0
  fast = 0
  while fast <= nums.length - 1
    if nums[slow] == 0
      temp = nums[fast]
      nums[fast] = 0
      nums[slow] = temp
      fast += 1
    else
      slow += 1
      fast += 1
    end
  end
  nums
end

nums = [1, 0]
p move_zeroes(nums)
