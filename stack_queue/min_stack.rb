# 155
# maintain a separate mins stack and current min variable.  The mins stack
# accepts the value being pushed to main if it's empty or the new val is
# greater than the current min.  The mins val is popped if it is equal to the
# current min.

class MinStack
  attr_accessor :mins, :main, :current_min
  def initialize()
    self.mins = []
    self.main = []
    self.current_min = nil
  end

  def push(x)
    main.push(x)
    if mins.empty? || current_min.nil? || x <= current_min
      self.current_min = x
      mins.push(x)
    end
  end

  def pop()
    temp = main.last
    if mins.last == temp
      mins.pop
      self.current_min = mins.last
    end
    main.pop
    nil
  end

  def top()
    main.last
  end

  def get_min()
    current_min
  end
end
