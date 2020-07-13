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

  def top
    get(0)
  end 
end