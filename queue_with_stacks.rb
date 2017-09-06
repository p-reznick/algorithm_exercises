# 232
class MyQueue
  attr_accessor :main, :temp

  def initialize()
    self.main = []
    self.temp = []
  end

  def push(x)
    main.push(x)
  end

  def pop()
    transfer_to_temp()
    popped_val = temp.pop()
    transfer_to_main()
    popped_val
  end

  def peek()
    transfer_to_temp()
    peeked_val = temp.last
    transfer_to_main()
    peeked_val
  end

  def empty()
    main.size == 0
  end

  private

  def transfer_to_temp()
    main.size.times do |_i|
      temp.push(main.pop)
    end
  end

  def transfer_to_main()
    temp.size.times do |_i|
      main.push(temp.pop)
    end
  end
end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()
