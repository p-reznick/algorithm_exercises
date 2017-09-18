def can_jump(nums)
  jump_game_helper(nums, nums.length - 1, {})
end

def jump_game_helper(nums, current_index)
  return true if current_index == 0 ||
                 memo[current_index] = true

  (0...current_index).each do |inner_index|
    return true if nums[inner_index] >= (current_index - inner_index) &&
                   jump_game_helper(nums, inner_index)
  end

  false
end
