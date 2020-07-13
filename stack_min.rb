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

  def min
    current = self.head
    current && min = current.value
    while !current.nil?
      current.value && current.value < min && min = current.value
      current = current.next_node
    end
    min
  end
end

stack = Stack.new


stack.push(3)

stack.push(5)

puts stack.min

# => 3


stack.pop

stack.push(7)

puts stack.min

# => 3


stack.push(2)

puts stack.min

# => 2


stack.pop

puts stack.min

# => 3