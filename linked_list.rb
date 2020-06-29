require './node'

module LinkedList
  def add(info)
    node = Node.new(info)
    puts "Just created a new node which value is: #{info}"
    if head.nil? || head.value.nil?
      puts 'This is the first node of the list'
      self.head = node
      self.tail = head
      puts "now the head node value is: #{head.value}"
    else
      puts 'gonna add the node at the end of the list'
      current = self.tail
      self.tail = node
      current.next_node = self.tail
      puts "Added #{node.value} at the end"
    end
  end

  def get(index)
    current = head
    puts "Method get: retrieving node with index: #{index}"
    while index > 0 && current
      puts "Method get: current value: #{current.value}"
      current = current.next_node
      index -= 1
    end
    puts "Method get: returns value: #{current.value}"
    current.value
  end

  def add_at(index, item)
    new_node = Node.new(item,get_node(index))
    if index.zero?
      self.head = new_node
      puts "Method add_at. Now the head points to #{new_node.value}"
    else
      get_node(index-1).next_node = new_node
    end
    puts "Method add_at: just added #{item} at index #{index}"
  end

  def remove(index)
    if index.zero?
      head = head.next_node
    else
      get_node(index-1).next_node = get_node(index).next_node
    end
  end

  private

  def get_node(index)
    current = head
    while index > 0 && current
      puts "Method get_node: current value: #{current.value}"
      current = current.next_node
      index -= 1
    end
    puts "Method get_node: returns #{current.value}"
    current
  end
end