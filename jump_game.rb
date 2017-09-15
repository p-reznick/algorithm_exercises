def can_jump(nums)
  can_reach?(nums, nums.length - 1, 0)
end

def can_reach?(nums, index, jump_length)
  if nums[index] > jump_length && index == 0
    return true
  elsif nums[index] > jump_length
    can_reach?(nums, index - 1, 1)
  else
    return false
  end
end
