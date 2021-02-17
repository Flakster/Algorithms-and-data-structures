require './node'

module LinkedList
  def add(info)
    node = Node.new(info)
    if head.nil? || head.value.nil?
      self.head = node
      self.tail = head
    else
      current = self.tail
      self.tail = node
      current.next_node = self.tail
    end
  end

  def get(index)
    current = head
    while index > 0 && current
      current = current.next_node
      index -= 1
    end
    current.value
  end

  def add_at(index, item)
    new_node = Node.new(item,get_node(index))
    if index.zero?
      if self.head.nil?
        self.tail = new_node
      end
      self.head = new_node
    else
      get_node(index-1).next_node = new_node
    end
  end

  def remove(index)
    if index.zero?
      self.head = self.head.next_node
    else
      get_node(index-1).next_node = get_node(index).next_node
    end
  end

  def empty?
    self.head.nil?
  end

  private

  def get_node(index)
    current = head
    while index > 0 && current
      current = current.next_node
      index -= 1
    end
    current
  end
end
