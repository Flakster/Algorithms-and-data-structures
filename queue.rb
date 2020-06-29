require './node'
require './linked_list'

class Queue
  include LinkedList

  attr_accessor :head, :tail
  def initialize()
    @head = Node.new(nil,nil)
    @tail = @head
  end

  def remove
    puts "Popping the element at the head"
    return -1 if empty?
    
    value = self.head.value  
    self.head = self.head.next_node
    value
  end
  
  private 
  
  def empty?
    head.nil? || head.value.nil?
  end
end

queue = Queue.new

queue.add(3)
queue.remove
queue.add(5)
queue.add(7)
queue.remove
queue.remove