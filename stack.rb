require './linked_list'

class Stack
  include LinkedList

  attr_accessor :head, :tail
  def initialize()
    @head = Node.new(nil,nil)
    @tail = @head
  end

  def push(number)
    add_at(0,number)
  end

  def pop
    value = get(0)
    remove(0)
    value
  end
end

stack = Stack.new
stack.push(3)

stack.push(5)
puts stack.pop

# => 5


stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop

# => 2


puts stack.pop

# => 3