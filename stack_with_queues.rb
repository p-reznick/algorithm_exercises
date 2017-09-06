# 255
class MyStack
  attr_accessor :main, :temp

  def initialize()
    self.main = []
    self.temp = []
  end

  def push(x)
    main.push(x)
  end

  def pop()
    transfer_to_temp(main.size - 1)
    pop_val = main.shift
    transfer_to_main
    pop_val
  end

  def top()
    transfer_to_temp(main.size - 1)
    top_val = main.first
    transfer_to_temp
    transfer_to_main
    top_val
  end

  def empty()
    main.length == 0
  end

  private

  def transfer_to_temp(count=main.size)
    count.times do |_i|
      temp.push(main.shift)
    end
  end

  def transfer_to_main(count=temp.size)
    count.times do |_i|
      main.push(temp.shift)
    end
  end
end

# Your MyStack object will be instantiated and called as such:
# obj = MyStack.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()
