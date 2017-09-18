# 53
# iterate over indices left to right
# for each subarray defined by index i to end of array
# - find max subarray starting at i
#  - decrement right bound of array, generate sum, and compare
#    to existing maximum.  If greater, set max equal to this
# return max
def max_sub_array(nums)
  max = -Float::INFINITY

  (0...nums.length) do |left_i|
    sub

  end

  max
end
