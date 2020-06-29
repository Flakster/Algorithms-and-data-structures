require './node'
require './linked_list'

class List
  include LinkedList

  attr_accessor :head, :tail
  def initialize()
    @head = Node.new(nil,nil)
    @tail = @head
  end

  my_list = List.new
  my_list.add(5)

end